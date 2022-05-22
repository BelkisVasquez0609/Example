import ballerina/http;
public function remoteF() returns string|error {
 http:Client httpV = check new("https://en.wikipedia.org/wiki/Ballerina_(programming_language)");

 string|error response = <string>check httpV->get("/");
 return(response);
}
