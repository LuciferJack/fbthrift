/**
 * Autogenerated by Thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */

// This autogenerated skeleton file illustrates how to build a server.
// You should copy it to another filename to avoid overwriting it.

#include "thrift/compiler/test/fixtures/types/gen-cpp/SomeService.h"
#include <thrift/lib/cpp/async/TEventServer.h>
#include <thrift/lib/cpp/server/TConnectionContext.h>
#include <thrift/lib/cpp/util/TEventServerCreator.h>

using apache::thrift::TProcessor;
using apache::thrift::async::TEventServer;
using apache::thrift::util::TEventServerCreator;

using std::shared_ptr;

using namespace  ::apache::thrift::fixtures::types;

class SomeServiceHandler : virtual public SomeServiceIf {
 public:
  SomeServiceHandler() {
    // Your initialization goes here
  }

  void bounce_map( ::apache::thrift::fixtures::types::SomeMap& _return, const  ::apache::thrift::fixtures::types::SomeMap& m) {
    // Your implementation goes here
    printf("bounce_map\n");
  }

};

int main(int argc, char **argv) {
  int port = 9090;
  shared_ptr<SomeServiceHandler> handler(new SomeServiceHandler());
  shared_ptr<TProcessor> processor(new SomeServiceProcessor(handler));
  TEventServerCreator serverCreator(processor, port);
  shared_ptr<TEventServer> server = serverCreator.createEventServer();
  server->serve();
  return 0;
}
