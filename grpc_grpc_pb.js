// GENERATED CODE -- DO NOT EDIT!

'use strict';
var grpc = require('grpc');
var grpc_pb = require('./grpc_pb.js');

function serialize_main_Package(arg) {
  if (!(arg instanceof grpc_pb.Package)) {
    throw new Error('Expected argument of type main.Package');
  }
  return new Buffer(arg.serializeBinary());
}

function deserialize_main_Package(buffer_arg) {
  return grpc_pb.Package.deserializeBinary(new Uint8Array(buffer_arg));
}


var RPCService = exports.RPCService = {
  connect: {
    path: '/main.RPC/Connect',
    requestStream: true,
    responseStream: true,
    requestType: grpc_pb.Package,
    responseType: grpc_pb.Package,
    requestSerialize: serialize_main_Package,
    requestDeserialize: deserialize_main_Package,
    responseSerialize: serialize_main_Package,
    responseDeserialize: deserialize_main_Package,
  },
};

exports.RPCClient = grpc.makeGenericClientConstructor(RPCService);
