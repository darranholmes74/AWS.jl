# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: mobile_analytics
using AWS.Compat
using AWS.UUIDs

"""
    put_events(events, x-amz-_client-_context)
    put_events(events, x-amz-_client-_context, params::Dict{String,<:Any})

The PutEvents operation records one or more events. You can have up to 1,500 unique custom
events per app, any combination of up to 40 attributes and metrics per custom event, and
any number of attribute or metric values.

# Arguments
- `events`: An array of Event JSON objects
- `x-amz-_client-_context`: The client context including the client ID, app title, app
  version and package name.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"x-amz-Client-Context-Encoding"`: The encoding used for the client context.
"""
put_events(events, x_amz_Client_Context; aws_config::AbstractAWSConfig=global_aws_config()) = mobile_analytics("POST", "/2014-06-05/events", Dict{String, Any}("events"=>events, "headers"=>Dict{String, Any}("x-amz-Client-Context"=>x_amz_Client_Context)); aws_config=aws_config)
put_events(events, x_amz_Client_Context, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = mobile_analytics("POST", "/2014-06-05/events", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("events"=>events, "headers"=>Dict{String, Any}("x-amz-Client-Context"=>x_amz_Client_Context)), params)); aws_config=aws_config)
