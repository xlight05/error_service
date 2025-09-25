import  ballerina/http;
import ballerina/io;
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

    resource function get log() returns http:InternalServerError {
        io:println("[Log this shit] ...");
        return http:INTERNAL_SERVER_ERROR;
    }


    resource function get head(http:Request req) returns string|error {
        string header = check req.getHeader("x-jwt-assertion");
        io:println("JWT Assertion: ");
        io:println(header);
        return header;
    }
}
