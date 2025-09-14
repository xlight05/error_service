import  ballerina/http;
service on new http:Listener(8080) {

    resource function get hello() returns string {
        return "Hello, World!";
    }
    
    resource function get four() returns http:BadRequest {
        return http:BAD_REQUEST;
    }

    resource function get five() returns http:InternalServerError {
        return http:INTERNAL_SERVER_ERROR;
    }
}
