package uk.gov.hmcts.reform.cdapi.util;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.junit.jupiter.MockitoExtension;
import uk.gov.hmcts.reform.cdapi.exception.InvalidRequestException;

import static org.junit.jupiter.api.Assertions.assertThrows;

@ExtendWith(MockitoExtension.class)
class ValidationUtilTest {


    @Test
    void test_invalid_flagtype_() {
        InvalidRequestException invalidRequestException = assertThrows(
            InvalidRequestException.class,
            () -> ValidationUtil.validationFlagType(
                "test"
            )
        );
        Assertions.assertEquals("Allowed values are PARTY or CASE", invalidRequestException.getMessage());
    }

    @Test
    void test_validation_flagtype() {
        Assertions.assertDoesNotThrow(() -> ValidationUtil.validationFlagType(
            "Party"));

    }
}
