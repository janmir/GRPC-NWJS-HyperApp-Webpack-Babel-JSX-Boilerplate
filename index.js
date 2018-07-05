import { h, app } from "hyperapp"
import * as grpc from "grpc"
import * as messages from "./grpc_pb"
import * as services from "./grpc_grpc_pb"

const state = {
    
}

const actions = {
    
}

const view = (state, actions) => (
    <div>Hello World!!</div>
)

const hype = app(state, actions, view, document.body)