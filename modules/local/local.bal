import ballerina/io;
 
public function localIO() returns json|error{
    string path = "./files/example.json";
    json Jsonv = check io:fileReadJson(path);
    json Students = {
        Jsonv,
        "students":{
            "Name":"Yazmin",
            "Group":"A"
        }
    };
	 io:Error? result = io:fileWriteJson(path,Students);
        json|error JsonComplete = check io:fileReadJson(path);
            return(check JsonComplete);
}
