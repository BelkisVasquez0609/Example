import Example.network;
import ballerina/io;

public function main() {
  string|error mainResult = network:remoteF();
  if mainResult is error {

  }
  io:println(mainResult);
}