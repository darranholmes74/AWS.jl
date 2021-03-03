# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: mediapackage
using AWS.Compat
using AWS.UUIDs

"""
    configure_logs(id)
    configure_logs(id, params::Dict{String,<:Any})

Changes the Channel's properities to configure log subscription

# Arguments
- `id`: The ID of the channel to log subscription.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"egressAccessLogs"`:
- `"ingressAccessLogs"`:
"""
configure_logs(id; aws_config::AbstractAWSConfig=global_aws_config()) = mediapackage("PUT", "/channels/$(id)/configure_logs"; aws_config=aws_config)
configure_logs(id, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = mediapackage("PUT", "/channels/$(id)/configure_logs", params; aws_config=aws_config)

"""
    create_channel(id)
    create_channel(id, params::Dict{String,<:Any})

Creates a new Channel.

# Arguments
- `id`: The ID of the Channel. The ID must be unique within the region and it
cannot be
  changed after a Channel is created.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"description"`: A short text description of the Channel.
- `"tags"`:
"""
create_channel(id; aws_config::AbstractAWSConfig=global_aws_config()) = mediapackage("POST", "/channels", Dict{String, Any}("id"=>id); aws_config=aws_config)
create_channel(id, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = mediapackage("POST", "/channels", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("id"=>id), params)); aws_config=aws_config)

"""
    create_harvest_job(end_time, id, origin_endpoint_id, s3_destination, start_time)
    create_harvest_job(end_time, id, origin_endpoint_id, s3_destination, start_time, params::Dict{String,<:Any})

Creates a new HarvestJob record.

# Arguments
- `end_time`: The end of the time-window which will be harvested
- `id`: The ID of the HarvestJob. The ID must be unique within the region
and it cannot be
  changed after the HarvestJob is submitted
- `origin_endpoint_id`: The ID of the OriginEndpoint that the HarvestJob will harvest
  from.
This cannot be changed after the HarvestJob is submitted.
- `s3_destination`:
- `start_time`: The start of the time-window which will be harvested

"""
create_harvest_job(endTime, id, originEndpointId, s3Destination, startTime; aws_config::AbstractAWSConfig=global_aws_config()) = mediapackage("POST", "/harvest_jobs", Dict{String, Any}("endTime"=>endTime, "id"=>id, "originEndpointId"=>originEndpointId, "s3Destination"=>s3Destination, "startTime"=>startTime); aws_config=aws_config)
create_harvest_job(endTime, id, originEndpointId, s3Destination, startTime, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = mediapackage("POST", "/harvest_jobs", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("endTime"=>endTime, "id"=>id, "originEndpointId"=>originEndpointId, "s3Destination"=>s3Destination, "startTime"=>startTime), params)); aws_config=aws_config)

"""
    create_origin_endpoint(channel_id, id)
    create_origin_endpoint(channel_id, id, params::Dict{String,<:Any})

Creates a new OriginEndpoint record.

# Arguments
- `channel_id`: The ID of the Channel that the OriginEndpoint will be associated with.
This
  cannot be changed after the OriginEndpoint is created.
- `id`: The ID of the OriginEndpoint.  The ID must be unique within the region
and it
  cannot be changed after the OriginEndpoint is created.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"authorization"`:
- `"cmafPackage"`:
- `"dashPackage"`:
- `"description"`: A short text description of the OriginEndpoint.
- `"hlsPackage"`:
- `"manifestName"`: A short string that will be used as the filename of the OriginEndpoint
  URL (defaults to \"index\").
- `"mssPackage"`:
- `"origination"`: Control whether origination of video is allowed for this OriginEndpoint.
  If set to ALLOW, the OriginEndpoint
may by requested, pursuant to any other form of access
  control. If set to DENY, the OriginEndpoint may not be
requested. This can be helpful for
  Live to VOD harvesting, or for temporarily disabling origination
- `"startoverWindowSeconds"`: Maximum duration (seconds) of content to retain for startover
  playback.
If not specified, startover playback will be disabled for the OriginEndpoint.
- `"tags"`:
- `"timeDelaySeconds"`: Amount of delay (seconds) to enforce on the playback of live
  content.
If not specified, there will be no time delay in effect for the OriginEndpoint.
- `"whitelist"`: A list of source IP CIDR blocks that will be allowed to access the
  OriginEndpoint.
"""
create_origin_endpoint(channelId, id; aws_config::AbstractAWSConfig=global_aws_config()) = mediapackage("POST", "/origin_endpoints", Dict{String, Any}("channelId"=>channelId, "id"=>id); aws_config=aws_config)
create_origin_endpoint(channelId, id, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = mediapackage("POST", "/origin_endpoints", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("channelId"=>channelId, "id"=>id), params)); aws_config=aws_config)

"""
    delete_channel(id)
    delete_channel(id, params::Dict{String,<:Any})

Deletes an existing Channel.

# Arguments
- `id`: The ID of the Channel to delete.

"""
delete_channel(id; aws_config::AbstractAWSConfig=global_aws_config()) = mediapackage("DELETE", "/channels/$(id)"; aws_config=aws_config)
delete_channel(id, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = mediapackage("DELETE", "/channels/$(id)", params; aws_config=aws_config)

"""
    delete_origin_endpoint(id)
    delete_origin_endpoint(id, params::Dict{String,<:Any})

Deletes an existing OriginEndpoint.

# Arguments
- `id`: The ID of the OriginEndpoint to delete.

"""
delete_origin_endpoint(id; aws_config::AbstractAWSConfig=global_aws_config()) = mediapackage("DELETE", "/origin_endpoints/$(id)"; aws_config=aws_config)
delete_origin_endpoint(id, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = mediapackage("DELETE", "/origin_endpoints/$(id)", params; aws_config=aws_config)

"""
    describe_channel(id)
    describe_channel(id, params::Dict{String,<:Any})

Gets details about a Channel.

# Arguments
- `id`: The ID of a Channel.

"""
describe_channel(id; aws_config::AbstractAWSConfig=global_aws_config()) = mediapackage("GET", "/channels/$(id)"; aws_config=aws_config)
describe_channel(id, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = mediapackage("GET", "/channels/$(id)", params; aws_config=aws_config)

"""
    describe_harvest_job(id)
    describe_harvest_job(id, params::Dict{String,<:Any})

Gets details about an existing HarvestJob.

# Arguments
- `id`: The ID of the HarvestJob.

"""
describe_harvest_job(id; aws_config::AbstractAWSConfig=global_aws_config()) = mediapackage("GET", "/harvest_jobs/$(id)"; aws_config=aws_config)
describe_harvest_job(id, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = mediapackage("GET", "/harvest_jobs/$(id)", params; aws_config=aws_config)

"""
    describe_origin_endpoint(id)
    describe_origin_endpoint(id, params::Dict{String,<:Any})

Gets details about an existing OriginEndpoint.

# Arguments
- `id`: The ID of the OriginEndpoint.

"""
describe_origin_endpoint(id; aws_config::AbstractAWSConfig=global_aws_config()) = mediapackage("GET", "/origin_endpoints/$(id)"; aws_config=aws_config)
describe_origin_endpoint(id, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = mediapackage("GET", "/origin_endpoints/$(id)", params; aws_config=aws_config)

"""
    list_channels()
    list_channels(params::Dict{String,<:Any})

Returns a collection of Channels.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: Upper bound on number of records to return.
- `"nextToken"`: A token used to resume pagination from the end of a previous request.
"""
list_channels(; aws_config::AbstractAWSConfig=global_aws_config()) = mediapackage("GET", "/channels"; aws_config=aws_config)
list_channels(params::AbstractDict{String, Any}; aws_config::AbstractAWSConfig=global_aws_config()) = mediapackage("GET", "/channels", params; aws_config=aws_config)

"""
    list_harvest_jobs()
    list_harvest_jobs(params::Dict{String,<:Any})

Returns a collection of HarvestJob records.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"includeChannelId"`: When specified, the request will return only HarvestJobs associated
  with the given Channel ID.
- `"includeStatus"`: When specified, the request will return only HarvestJobs in the given
  status.
- `"maxResults"`: The upper bound on the number of records to return.
- `"nextToken"`: A token used to resume pagination from the end of a previous request.
"""
list_harvest_jobs(; aws_config::AbstractAWSConfig=global_aws_config()) = mediapackage("GET", "/harvest_jobs"; aws_config=aws_config)
list_harvest_jobs(params::AbstractDict{String, Any}; aws_config::AbstractAWSConfig=global_aws_config()) = mediapackage("GET", "/harvest_jobs", params; aws_config=aws_config)

"""
    list_origin_endpoints()
    list_origin_endpoints(params::Dict{String,<:Any})

Returns a collection of OriginEndpoint records.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"channelId"`: When specified, the request will return only OriginEndpoints associated
  with the given Channel ID.
- `"maxResults"`: The upper bound on the number of records to return.
- `"nextToken"`: A token used to resume pagination from the end of a previous request.
"""
list_origin_endpoints(; aws_config::AbstractAWSConfig=global_aws_config()) = mediapackage("GET", "/origin_endpoints"; aws_config=aws_config)
list_origin_endpoints(params::AbstractDict{String, Any}; aws_config::AbstractAWSConfig=global_aws_config()) = mediapackage("GET", "/origin_endpoints", params; aws_config=aws_config)

"""
    list_tags_for_resource(resource-arn)
    list_tags_for_resource(resource-arn, params::Dict{String,<:Any})



# Arguments
- `resource-arn`:

"""
list_tags_for_resource(resource_arn; aws_config::AbstractAWSConfig=global_aws_config()) = mediapackage("GET", "/tags/$(resource-arn)"; aws_config=aws_config)
list_tags_for_resource(resource_arn, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = mediapackage("GET", "/tags/$(resource-arn)", params; aws_config=aws_config)

"""
    rotate_channel_credentials(id)
    rotate_channel_credentials(id, params::Dict{String,<:Any})

Changes the Channel's first IngestEndpoint's username and password. WARNING - This API is
deprecated. Please use RotateIngestEndpointCredentials instead

# Arguments
- `id`: The ID of the channel to update.

"""
rotate_channel_credentials(id; aws_config::AbstractAWSConfig=global_aws_config()) = mediapackage("PUT", "/channels/$(id)/credentials"; aws_config=aws_config)
rotate_channel_credentials(id, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = mediapackage("PUT", "/channels/$(id)/credentials", params; aws_config=aws_config)

"""
    rotate_ingest_endpoint_credentials(id, ingest_endpoint_id)
    rotate_ingest_endpoint_credentials(id, ingest_endpoint_id, params::Dict{String,<:Any})

Rotate the IngestEndpoint's username and password, as specified by the IngestEndpoint's id.

# Arguments
- `id`: The ID of the channel the IngestEndpoint is on.
- `ingest_endpoint_id`: The id of the IngestEndpoint whose credentials should be rotated

"""
rotate_ingest_endpoint_credentials(id, ingest_endpoint_id; aws_config::AbstractAWSConfig=global_aws_config()) = mediapackage("PUT", "/channels/$(id)/ingest_endpoints/$(ingest_endpoint_id)/credentials"; aws_config=aws_config)
rotate_ingest_endpoint_credentials(id, ingest_endpoint_id, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = mediapackage("PUT", "/channels/$(id)/ingest_endpoints/$(ingest_endpoint_id)/credentials", params; aws_config=aws_config)

"""
    tag_resource(resource-arn, tags)
    tag_resource(resource-arn, tags, params::Dict{String,<:Any})



# Arguments
- `resource-arn`:
- `tags`:

"""
tag_resource(resource_arn, tags; aws_config::AbstractAWSConfig=global_aws_config()) = mediapackage("POST", "/tags/$(resource-arn)", Dict{String, Any}("tags"=>tags); aws_config=aws_config)
tag_resource(resource_arn, tags, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = mediapackage("POST", "/tags/$(resource-arn)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("tags"=>tags), params)); aws_config=aws_config)

"""
    untag_resource(resource-arn, tag_keys)
    untag_resource(resource-arn, tag_keys, params::Dict{String,<:Any})



# Arguments
- `resource-arn`:
- `tag_keys`: The key(s) of tag to be deleted

"""
untag_resource(resource_arn, tagKeys; aws_config::AbstractAWSConfig=global_aws_config()) = mediapackage("DELETE", "/tags/$(resource-arn)", Dict{String, Any}("tagKeys"=>tagKeys); aws_config=aws_config)
untag_resource(resource_arn, tagKeys, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = mediapackage("DELETE", "/tags/$(resource-arn)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("tagKeys"=>tagKeys), params)); aws_config=aws_config)

"""
    update_channel(id)
    update_channel(id, params::Dict{String,<:Any})

Updates an existing Channel.

# Arguments
- `id`: The ID of the Channel to update.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"description"`: A short text description of the Channel.
"""
update_channel(id; aws_config::AbstractAWSConfig=global_aws_config()) = mediapackage("PUT", "/channels/$(id)"; aws_config=aws_config)
update_channel(id, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = mediapackage("PUT", "/channels/$(id)", params; aws_config=aws_config)

"""
    update_origin_endpoint(id)
    update_origin_endpoint(id, params::Dict{String,<:Any})

Updates an existing OriginEndpoint.

# Arguments
- `id`: The ID of the OriginEndpoint to update.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"authorization"`:
- `"cmafPackage"`:
- `"dashPackage"`:
- `"description"`: A short text description of the OriginEndpoint.
- `"hlsPackage"`:
- `"manifestName"`: A short string that will be appended to the end of the Endpoint URL.
- `"mssPackage"`:
- `"origination"`: Control whether origination of video is allowed for this OriginEndpoint.
  If set to ALLOW, the OriginEndpoint
may by requested, pursuant to any other form of access
  control. If set to DENY, the OriginEndpoint may not be
requested. This can be helpful for
  Live to VOD harvesting, or for temporarily disabling origination
- `"startoverWindowSeconds"`: Maximum duration (in seconds) of content to retain for
  startover playback.
If not specified, startover playback will be disabled for the
  OriginEndpoint.
- `"timeDelaySeconds"`: Amount of delay (in seconds) to enforce on the playback of live
  content.
If not specified, there will be no time delay in effect for the OriginEndpoint.
- `"whitelist"`: A list of source IP CIDR blocks that will be allowed to access the
  OriginEndpoint.
"""
update_origin_endpoint(id; aws_config::AbstractAWSConfig=global_aws_config()) = mediapackage("PUT", "/origin_endpoints/$(id)"; aws_config=aws_config)
update_origin_endpoint(id, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = mediapackage("PUT", "/origin_endpoints/$(id)", params; aws_config=aws_config)
