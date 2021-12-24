package uk.gov.hmcts.reform.cdapi.controllers;


import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import io.swagger.annotations.ApiResponse;
import io.swagger.annotations.ApiResponses;
import io.swagger.annotations.Authorization;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import uk.gov.hmcts.reform.cdapi.domain.CaseFlag;
import uk.gov.hmcts.reform.cdapi.service.CaseFlagService;

import static org.springframework.http.MediaType.APPLICATION_JSON_VALUE;
import static uk.gov.hmcts.reform.cdapi.util.ValidationUtil.validationFlagType;

@RestController
@Slf4j
@RequestMapping(
    path = "/refdata/commondata/caseflags"
)
public class CaseFlagApiController {

    @Autowired
    CaseFlagService caseFlagService;

    @ApiOperation(
        value = "CommonData API will be used to retrieve the list of case flags for a " +
            "given service id.",
        notes = "Any valid IDAM role should be able to access this API ",
        authorizations = {
            @Authorization(value = "ServiceAuthorization"),
            @Authorization(value = "Authorization")
        }
    )
    @ApiResponses({
        @ApiResponse(
            code = 200,
            message = "Successfully retrieved list of Case Flag for the request provided",
            response = CaseFlag.class
        ),
        @ApiResponse(
            code = 400,
            message = "Bad Request"
        ),
        @ApiResponse(
            code = 401,
            message = "Forbidden Error: Access denied"
        ),
        @ApiResponse(
            code = 500,
            message = "Internal Server Error"
        )
    })
    @GetMapping(
        produces = APPLICATION_JSON_VALUE,
        path = "/service-id={service-id}"
    )
    public ResponseEntity<?> retrieveCaseFlagsByServiceId(
        @PathVariable(value = "service-id")
        @ApiParam(name = "service-id",
            value = "Any Valid String is allowed",
            required = true)
            String serviceId,
        @RequestParam(value = "flag-type", required = false)
        @ApiParam(name = "flag-type",
            value = "Allowed Values are PARTY or CASE")
            String flagType,
        @RequestParam(value = "welsh-required", required = false)
        @ApiParam(name = "welsh-required",
            value = "Allowed Values are Y or N")
            String welshRequired
    ) {
        if (null != flagType)
            validationFlagType(flagType);
        log.info("Calling Service layer");
        CaseFlag caseFlag = caseFlagService.retrieveCaseFlagByServiceId(serviceId, flagType);
        return ResponseEntity.ok().body(caseFlag);
    }

}
