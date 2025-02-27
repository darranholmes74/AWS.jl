# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: sagemaker_geospatial
using AWS.Compat
using AWS.UUIDs

"""
    delete_earth_observation_job(arn)
    delete_earth_observation_job(arn, params::Dict{String,<:Any})

Use this operation to delete an Earth Observation job.

# Arguments
- `arn`: The Amazon Resource Name (ARN) of the Earth Observation job being deleted.

"""
function delete_earth_observation_job(
    Arn; aws_config::AbstractAWSConfig=global_aws_config()
)
    return sagemaker_geospatial(
        "DELETE",
        "/earth-observation-jobs/$(Arn)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function delete_earth_observation_job(
    Arn, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return sagemaker_geospatial(
        "DELETE",
        "/earth-observation-jobs/$(Arn)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    delete_vector_enrichment_job(arn)
    delete_vector_enrichment_job(arn, params::Dict{String,<:Any})

Use this operation to delete a Vector Enrichment job.

# Arguments
- `arn`: The Amazon Resource Name (ARN) of the Vector Enrichment job being deleted.

"""
function delete_vector_enrichment_job(
    Arn; aws_config::AbstractAWSConfig=global_aws_config()
)
    return sagemaker_geospatial(
        "DELETE",
        "/vector-enrichment-jobs/$(Arn)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function delete_vector_enrichment_job(
    Arn, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return sagemaker_geospatial(
        "DELETE",
        "/vector-enrichment-jobs/$(Arn)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    export_earth_observation_job(arn, execution_role_arn, output_config)
    export_earth_observation_job(arn, execution_role_arn, output_config, params::Dict{String,<:Any})

Use this operation to export results of an Earth Observation job and optionally source
images used as input to the EOJ to an S3 location.

# Arguments
- `arn`: The input Amazon Resource Name (ARN) of the Earth Observation job being exported.
- `execution_role_arn`: The Amazon Resource Name (ARN) of the IAM role that you specified
  for the job.
- `output_config`: An object containing information about the output file.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"ExportSourceImages"`: The source images provided to the Earth Observation job being
  exported.
"""
function export_earth_observation_job(
    Arn, ExecutionRoleArn, OutputConfig; aws_config::AbstractAWSConfig=global_aws_config()
)
    return sagemaker_geospatial(
        "POST",
        "/export-earth-observation-job",
        Dict{String,Any}(
            "Arn" => Arn,
            "ExecutionRoleArn" => ExecutionRoleArn,
            "OutputConfig" => OutputConfig,
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function export_earth_observation_job(
    Arn,
    ExecutionRoleArn,
    OutputConfig,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return sagemaker_geospatial(
        "POST",
        "/export-earth-observation-job",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "Arn" => Arn,
                    "ExecutionRoleArn" => ExecutionRoleArn,
                    "OutputConfig" => OutputConfig,
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    export_vector_enrichment_job(arn, execution_role_arn, output_config)
    export_vector_enrichment_job(arn, execution_role_arn, output_config, params::Dict{String,<:Any})

Use this operation to copy results of a Vector Enrichment job to an S3 location.

# Arguments
- `arn`: The Amazon Resource Name (ARN) of the Vector Enrichment job.
- `execution_role_arn`: The Amazon Resource Name (ARN) of the IAM rolewith permission to
  upload to the location in OutputConfig.
- `output_config`: Output location information for exporting Vector Enrichment Job results.

"""
function export_vector_enrichment_job(
    Arn, ExecutionRoleArn, OutputConfig; aws_config::AbstractAWSConfig=global_aws_config()
)
    return sagemaker_geospatial(
        "POST",
        "/export-vector-enrichment-jobs",
        Dict{String,Any}(
            "Arn" => Arn,
            "ExecutionRoleArn" => ExecutionRoleArn,
            "OutputConfig" => OutputConfig,
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function export_vector_enrichment_job(
    Arn,
    ExecutionRoleArn,
    OutputConfig,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return sagemaker_geospatial(
        "POST",
        "/export-vector-enrichment-jobs",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "Arn" => Arn,
                    "ExecutionRoleArn" => ExecutionRoleArn,
                    "OutputConfig" => OutputConfig,
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_earth_observation_job(arn)
    get_earth_observation_job(arn, params::Dict{String,<:Any})

Get the details for a previously initiated Earth Observation job.

# Arguments
- `arn`: The Amazon Resource Name (ARN) of the Earth Observation job.

"""
function get_earth_observation_job(Arn; aws_config::AbstractAWSConfig=global_aws_config())
    return sagemaker_geospatial(
        "GET",
        "/earth-observation-jobs/$(Arn)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function get_earth_observation_job(
    Arn, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return sagemaker_geospatial(
        "GET",
        "/earth-observation-jobs/$(Arn)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_raster_data_collection(arn)
    get_raster_data_collection(arn, params::Dict{String,<:Any})

Use this operation to get details of a specific raster data collection.

# Arguments
- `arn`: The Amazon Resource Name (ARN) of the raster data collection.

"""
function get_raster_data_collection(Arn; aws_config::AbstractAWSConfig=global_aws_config())
    return sagemaker_geospatial(
        "GET",
        "/raster-data-collection/$(Arn)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function get_raster_data_collection(
    Arn, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return sagemaker_geospatial(
        "GET",
        "/raster-data-collection/$(Arn)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_tile(arn, image_assets, target, x, y, z)
    get_tile(arn, image_assets, target, x, y, z, params::Dict{String,<:Any})

Gets a web mercator tile for the given Earth Observation job.

# Arguments
- `arn`: The Amazon Resource Name (ARN) of the tile operation.
- `image_assets`: The particular assets or bands to tile.
- `target`: Determines what part of the Earth Observation job to tile. 'INPUT' or 'OUTPUT'
  are the valid options.
- `x`: The x coordinate of the tile input.
- `y`: The y coordinate of the tile input.
- `z`: The z coordinate of the tile input.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"ImageMask"`: Determines whether or not to return a valid data mask.
- `"OutputDataType"`: The output data type of the tile operation.
- `"OutputFormat"`: The data format of the output tile. The formats include .npy, .png and
  .jpg.
- `"PropertyFilters"`: Property filters for the imagery to tile.
- `"TimeRangeFilter"`: Time range filter applied to imagery to find the images to tile.
"""
function get_tile(
    Arn, ImageAssets, Target, x, y, z; aws_config::AbstractAWSConfig=global_aws_config()
)
    return sagemaker_geospatial(
        "GET",
        "/tile/$(z)/$(x)/$(y)",
        Dict{String,Any}("Arn" => Arn, "ImageAssets" => ImageAssets, "Target" => Target);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function get_tile(
    Arn,
    ImageAssets,
    Target,
    x,
    y,
    z,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return sagemaker_geospatial(
        "GET",
        "/tile/$(z)/$(x)/$(y)",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "Arn" => Arn, "ImageAssets" => ImageAssets, "Target" => Target
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_vector_enrichment_job(arn)
    get_vector_enrichment_job(arn, params::Dict{String,<:Any})

Retrieves details of a Vector Enrichment Job for a given job Amazon Resource Name (ARN).

# Arguments
- `arn`: The Amazon Resource Name (ARN) of the Vector Enrichment job.

"""
function get_vector_enrichment_job(Arn; aws_config::AbstractAWSConfig=global_aws_config())
    return sagemaker_geospatial(
        "GET",
        "/vector-enrichment-jobs/$(Arn)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function get_vector_enrichment_job(
    Arn, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return sagemaker_geospatial(
        "GET",
        "/vector-enrichment-jobs/$(Arn)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_earth_observation_jobs()
    list_earth_observation_jobs(params::Dict{String,<:Any})

Use this operation to get a list of the Earth Observation jobs associated with the calling
Amazon Web Services account.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"MaxResults"`: The total number of items to return.
- `"NextToken"`: If the previous response was truncated, you receive this token. Use it in
  your next request to receive the next set of results.
- `"SortBy"`: The parameter by which to sort the results.
- `"SortOrder"`: An optional value that specifies whether you want the results sorted in
  Ascending or Descending order.
- `"StatusEquals"`: A filter that retrieves only jobs with a specific status.
"""
function list_earth_observation_jobs(; aws_config::AbstractAWSConfig=global_aws_config())
    return sagemaker_geospatial(
        "POST",
        "/list-earth-observation-jobs";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function list_earth_observation_jobs(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return sagemaker_geospatial(
        "POST",
        "/list-earth-observation-jobs",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_raster_data_collections()
    list_raster_data_collections(params::Dict{String,<:Any})

Use this operation to get raster data collections.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"MaxResults"`: The total number of items to return.
- `"NextToken"`: If the previous response was truncated, you receive this token. Use it in
  your next request to receive the next set of results.
"""
function list_raster_data_collections(; aws_config::AbstractAWSConfig=global_aws_config())
    return sagemaker_geospatial(
        "GET",
        "/raster-data-collections";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function list_raster_data_collections(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return sagemaker_geospatial(
        "GET",
        "/raster-data-collections",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_tags_for_resource(resource_arn)
    list_tags_for_resource(resource_arn, params::Dict{String,<:Any})

Lists the tags attached to the resource.

# Arguments
- `resource_arn`: The Amazon Resource Name (ARN) of the resource you want to tag.

"""
function list_tags_for_resource(
    ResourceArn; aws_config::AbstractAWSConfig=global_aws_config()
)
    return sagemaker_geospatial(
        "GET",
        "/tags/$(ResourceArn)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function list_tags_for_resource(
    ResourceArn,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return sagemaker_geospatial(
        "GET",
        "/tags/$(ResourceArn)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_vector_enrichment_jobs()
    list_vector_enrichment_jobs(params::Dict{String,<:Any})

Retrieves a list of vector enrichment jobs.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"MaxResults"`: The maximum number of items to return.
- `"NextToken"`: If the previous response was truncated, you receive this token. Use it in
  your next request to receive the next set of results.
- `"SortBy"`: The parameter by which to sort the results.
- `"SortOrder"`: An optional value that specifies whether you want the results sorted in
  Ascending or Descending order.
- `"StatusEquals"`: A filter that retrieves only jobs with a specific status.
"""
function list_vector_enrichment_jobs(; aws_config::AbstractAWSConfig=global_aws_config())
    return sagemaker_geospatial(
        "POST",
        "/list-vector-enrichment-jobs";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function list_vector_enrichment_jobs(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return sagemaker_geospatial(
        "POST",
        "/list-vector-enrichment-jobs",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    search_raster_data_collection(arn, raster_data_collection_query)
    search_raster_data_collection(arn, raster_data_collection_query, params::Dict{String,<:Any})

Allows you run image query on a specific raster data collection to get a list of the
satellite imagery matching the selected filters.

# Arguments
- `arn`: The Amazon Resource Name (ARN) of the raster data collection.
- `raster_data_collection_query`:

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"NextToken"`: If the previous response was truncated, you receive this token. Use it in
  your next request to receive the next set of results.
"""
function search_raster_data_collection(
    Arn, RasterDataCollectionQuery; aws_config::AbstractAWSConfig=global_aws_config()
)
    return sagemaker_geospatial(
        "POST",
        "/search-raster-data-collection",
        Dict{String,Any}(
            "Arn" => Arn, "RasterDataCollectionQuery" => RasterDataCollectionQuery
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function search_raster_data_collection(
    Arn,
    RasterDataCollectionQuery,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return sagemaker_geospatial(
        "POST",
        "/search-raster-data-collection",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "Arn" => Arn, "RasterDataCollectionQuery" => RasterDataCollectionQuery
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    start_earth_observation_job(input_config, job_config, name)
    start_earth_observation_job(input_config, job_config, name, params::Dict{String,<:Any})

Use this operation to create an Earth observation job.

# Arguments
- `input_config`: Input configuration information for the Earth Observation job.
- `job_config`: An object containing information about the job configuration.
- `name`: The name of the Earth Observation job.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"ClientToken"`: A unique token that guarantees that the call to this API is idempotent.
- `"ExecutionRoleArn"`: The Amazon Resource Name (ARN) of the IAM role that you specified
  for the job.
- `"KmsKeyId"`: The Amazon Key Management Service (KMS) key ID for server-side encryption.
- `"Tags"`: Each tag consists of a key and a value.
"""
function start_earth_observation_job(
    InputConfig, JobConfig, Name; aws_config::AbstractAWSConfig=global_aws_config()
)
    return sagemaker_geospatial(
        "POST",
        "/earth-observation-jobs",
        Dict{String,Any}(
            "InputConfig" => InputConfig,
            "JobConfig" => JobConfig,
            "Name" => Name,
            "ClientToken" => string(uuid4()),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function start_earth_observation_job(
    InputConfig,
    JobConfig,
    Name,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return sagemaker_geospatial(
        "POST",
        "/earth-observation-jobs",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "InputConfig" => InputConfig,
                    "JobConfig" => JobConfig,
                    "Name" => Name,
                    "ClientToken" => string(uuid4()),
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    start_vector_enrichment_job(execution_role_arn, input_config, job_config, name)
    start_vector_enrichment_job(execution_role_arn, input_config, job_config, name, params::Dict{String,<:Any})

Creates a Vector Enrichment job for the supplied job type. Currently, there are two
supported job types: reverse geocoding and map matching.

# Arguments
- `execution_role_arn`: The Amazon Resource Name (ARN) of the IAM role that you specified
  for the job.
- `input_config`: Input configuration information for the Vector Enrichment job.
- `job_config`: An object containing information about the job configuration.
- `name`: The name of the Vector Enrichment job.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"ClientToken"`: A unique token that guarantees that the call to this API is idempotent.
- `"KmsKeyId"`: The Amazon Key Management Service (KMS) key ID for server-side encryption.
- `"Tags"`: Each tag consists of a key and a value.
"""
function start_vector_enrichment_job(
    ExecutionRoleArn,
    InputConfig,
    JobConfig,
    Name;
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return sagemaker_geospatial(
        "POST",
        "/vector-enrichment-jobs",
        Dict{String,Any}(
            "ExecutionRoleArn" => ExecutionRoleArn,
            "InputConfig" => InputConfig,
            "JobConfig" => JobConfig,
            "Name" => Name,
            "ClientToken" => string(uuid4()),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function start_vector_enrichment_job(
    ExecutionRoleArn,
    InputConfig,
    JobConfig,
    Name,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return sagemaker_geospatial(
        "POST",
        "/vector-enrichment-jobs",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "ExecutionRoleArn" => ExecutionRoleArn,
                    "InputConfig" => InputConfig,
                    "JobConfig" => JobConfig,
                    "Name" => Name,
                    "ClientToken" => string(uuid4()),
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    stop_earth_observation_job(arn)
    stop_earth_observation_job(arn, params::Dict{String,<:Any})

Use this operation to stop an existing earth observation job.

# Arguments
- `arn`: The Amazon Resource Name (ARN) of the Earth Observation job being stopped.

"""
function stop_earth_observation_job(Arn; aws_config::AbstractAWSConfig=global_aws_config())
    return sagemaker_geospatial(
        "POST",
        "/earth-observation-jobs/stop",
        Dict{String,Any}("Arn" => Arn);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function stop_earth_observation_job(
    Arn, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return sagemaker_geospatial(
        "POST",
        "/earth-observation-jobs/stop",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("Arn" => Arn), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    stop_vector_enrichment_job(arn)
    stop_vector_enrichment_job(arn, params::Dict{String,<:Any})

Stops the Vector Enrichment job for a given job ARN.

# Arguments
- `arn`: The Amazon Resource Name (ARN) of the Vector Enrichment job.

"""
function stop_vector_enrichment_job(Arn; aws_config::AbstractAWSConfig=global_aws_config())
    return sagemaker_geospatial(
        "POST",
        "/vector-enrichment-jobs/stop",
        Dict{String,Any}("Arn" => Arn);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function stop_vector_enrichment_job(
    Arn, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return sagemaker_geospatial(
        "POST",
        "/vector-enrichment-jobs/stop",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("Arn" => Arn), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    tag_resource(resource_arn, tags)
    tag_resource(resource_arn, tags, params::Dict{String,<:Any})

The resource you want to tag.

# Arguments
- `resource_arn`: The Amazon Resource Name (ARN) of the resource you want to tag.
- `tags`: Each tag consists of a key and a value.

"""
function tag_resource(ResourceArn, Tags; aws_config::AbstractAWSConfig=global_aws_config())
    return sagemaker_geospatial(
        "PUT",
        "/tags/$(ResourceArn)",
        Dict{String,Any}("Tags" => Tags);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function tag_resource(
    ResourceArn,
    Tags,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return sagemaker_geospatial(
        "PUT",
        "/tags/$(ResourceArn)",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("Tags" => Tags), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    untag_resource(resource_arn, tag_keys)
    untag_resource(resource_arn, tag_keys, params::Dict{String,<:Any})

The resource you want to untag.

# Arguments
- `resource_arn`: The Amazon Resource Name (ARN) of the resource you want to untag.
- `tag_keys`: Keys of the tags you want to remove.

"""
function untag_resource(
    ResourceArn, tagKeys; aws_config::AbstractAWSConfig=global_aws_config()
)
    return sagemaker_geospatial(
        "DELETE",
        "/tags/$(ResourceArn)",
        Dict{String,Any}("tagKeys" => tagKeys);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function untag_resource(
    ResourceArn,
    tagKeys,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return sagemaker_geospatial(
        "DELETE",
        "/tags/$(ResourceArn)",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("tagKeys" => tagKeys), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
