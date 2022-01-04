package uk.gov.hmcts.reform.cdapi.idam;

import com.google.gson.Gson;
import com.google.gson.annotations.SerializedName;
import com.mifmif.common.regex.Generex;
import io.restassured.RestAssured;
import io.restassured.response.Response;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.extern.slf4j.Slf4j;
import uk.gov.hmcts.reform.cdapi.config.TestConfigProperties;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import static org.apache.commons.lang3.StringUtils.isBlank;
import static org.assertj.core.api.Assertions.assertThat;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.springframework.http.HttpHeaders.CONTENT_TYPE;
import static org.springframework.http.MediaType.APPLICATION_FORM_URLENCODED_VALUE;
import static org.springframework.http.MediaType.APPLICATION_JSON_VALUE;
import static uk.gov.hmcts.reform.cdapi.AuthorizationFunctionalTest.CREDS;
import static uk.gov.hmcts.reform.cdapi.AuthorizationFunctionalTest.EMAIL;
import static uk.gov.hmcts.reform.cdapi.AuthorizationFunctionalTest.generateRandomEmail;

@Slf4j
public class IdamOpenIdClient {

    private TestConfigProperties testConfig;

    private Gson gson = new Gson();

    private static String openIdTokenCommonDataAdmin;

    private static String sidamPassword;

    public IdamOpenIdClient(TestConfigProperties testConfig) {
        this.testConfig = testConfig;
    }

    public Map<String, String> createUser(String userRole) {
        return createUser(userRole, generateRandomEmail(), "First", "Last");
    }

    public Map<String, String> createUser(String userRole, String userEmail, String firstName, String lastName) {
        //Generating a random user
        String userGroup = "";
        String password = generateSidamPassword();

        String id = UUID.randomUUID().toString();

        Role role = new Role(userRole);

        List<Role> roles = new ArrayList<>();
        roles.add(role);

        Group group = new Group(userGroup);

        User user = new User(userEmail, firstName, id, lastName, password, roles, group);

        String serializedUser = gson.toJson(user);

        Response createdUserResponse = RestAssured
            .given()
            .relaxedHTTPSValidation()
            .baseUri(testConfig.getIdamApiUrl())
            .header(CONTENT_TYPE, APPLICATION_JSON_VALUE)
            .body(serializedUser)
            .post("/testing-support/accounts")
            .andReturn();


        log.info("openIdTokenResponse createUser response: " + createdUserResponse.getStatusCode());

        assertThat(createdUserResponse.getStatusCode()).isEqualTo(201);

        Map<String, String> userCreds = new HashMap<>();
        userCreds.put(EMAIL, userEmail);
        userCreds.put(CREDS, password);
        return userCreds;
    }

    public String getOpenIdToken() {

        if (openIdTokenCommonDataAdmin == null) {
            Map<String, String> userCreds = createUser("commondata-admin");
            openIdTokenCommonDataAdmin = getOpenIdToken(userCreds.get(EMAIL), userCreds.get(CREDS));
        }
        return openIdTokenCommonDataAdmin;
    }

    public String getOpenIdToken(String userEmail, String password) {

        Map<String, String> tokenParams = new HashMap<>();
        tokenParams.put("grant_type", "password");
        tokenParams.put("username", userEmail);
        tokenParams.put("password", password);
        tokenParams.put("client_id", testConfig.getClientId());
        tokenParams.put("client_secret", testConfig.getClientSecret());
        tokenParams.put("redirect_uri", testConfig.getOauthRedirectUrl());
        tokenParams.put("scope", "openid profile roles search-user");

        log.info("getOpenIdToken Request: " + tokenParams);
        Response openIdTokenResponse = RestAssured
            .given()
            .relaxedHTTPSValidation()
            .baseUri(testConfig.getIdamApiUrl())
            .header(CONTENT_TYPE, APPLICATION_FORM_URLENCODED_VALUE)
            .params(tokenParams)
            .post("/o/token")
            .andReturn();

        log.info("getOpenIdToken response: " + openIdTokenResponse.getStatusCode());

        assertEquals(200, openIdTokenResponse.getStatusCode());

        BearerTokenResponse accessTokenResponse = gson.fromJson(openIdTokenResponse.getBody()
                                                                    .asString(), BearerTokenResponse.class);
        return accessTokenResponse.getAccessToken();

    }


    public void deleteSidamUser(String email) {
        try {
            log.info("delete sidam user with email");
            RestAssured
                .given()
                .relaxedHTTPSValidation()
                .baseUri(testConfig.getIdamApiUrl())
                .header(CONTENT_TYPE, APPLICATION_FORM_URLENCODED_VALUE)
                .delete("/testing-support/accounts/" + email);
        } catch (Exception ex) {
            log.error("unable to delete sidam user with email");
        }
    }

    @AllArgsConstructor
    class User {
        private String email;
        private String forename;
        private String id;
        private String surname;
        private String password;
        private List<Role> roles;
        private Group group;
    }

    @AllArgsConstructor
    class Role {
        private String code;
    }

    @AllArgsConstructor
    class Group {
        private String code;
    }

    @Getter
    @AllArgsConstructor
    class AuthorizationResponse {
        private String code;
    }

    @Getter
    @AllArgsConstructor
    class BearerTokenResponse {
        @SerializedName("access_token")
        private String accessToken;
    }

    public static String generateSidamPassword() {
        if (isBlank(sidamPassword)) {
            sidamPassword = new Generex("([A-Z])([a-z]{4})([0-9]{4})").random();
        }
        return sidamPassword;
    }

}
