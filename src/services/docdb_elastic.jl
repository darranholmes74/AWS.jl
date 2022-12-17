# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: docdb_elastic
using AWS.Compat
using AWS.UUIDs

"""
    create_cluster(admin_user_name, admin_user_password, auth_type, cluster_name, shard_capacity, shard_count)
    create_cluster(admin_user_name, admin_user_password, auth_type, cluster_name, shard_capacity, shard_count, params::Dict{String,<:Any})

Creates a new Elastic DocumentDB cluster and returns its Cluster structure.

# Arguments
- `admin_user_name`: The name of the Elastic DocumentDB cluster administrator.
  Constraints:   Must be from 1 to 63 letters or numbers.   The first character must be a
  letter.   Cannot be a reserved word.
- `admin_user_password`: The password for the Elastic DocumentDB cluster administrator and
  can contain any printable ASCII characters.  Constraints:   Must contain from 8 to 100
  characters.   Cannot contain a forward slash (/), double quote (\"), or the \"at\" symbol
  (@).
- `auth_type`: The authentication type for the Elastic DocumentDB cluster.
- `cluster_name`: The name of the new Elastic DocumentDB cluster. This parameter is stored
  as a lowercase string.  Constraints:   Must contain from 1 to 63 letters, numbers, or
  hyphens.   The first character must be a letter.   Cannot end with a hyphen or contain two
  consecutive hyphens.    Example: my-cluster
- `shard_capacity`: The capacity of each shard in the new Elastic DocumentDB cluster.
- `shard_count`: The number of shards to create in the new Elastic DocumentDB cluster.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"clientToken"`: The client token for the Elastic DocumentDB cluster.
- `"kmsKeyId"`: The KMS key identifier to use to encrypt the new Elastic DocumentDB
  cluster. The KMS key identifier is the Amazon Resource Name (ARN) for the KMS encryption
  key. If you are creating a cluster using the same Amazon account that owns this KMS
  encryption key, you can use the KMS key alias instead of the ARN as the KMS encryption key.
  If an encryption key is not specified, Elastic DocumentDB uses the default encryption key
  that KMS creates for your account. Your account has a different default encryption key for
  each Amazon Region.
- `"preferredMaintenanceWindow"`: The weekly time range during which system maintenance can
  occur, in Universal Coordinated Time (UTC).  Format: ddd:hh24:mi-ddd:hh24:mi   Default: a
  30-minute window selected at random from an 8-hour block of time for each Amazon Web
  Services Region, occurring on a random day of the week.  Valid days: Mon, Tue, Wed, Thu,
  Fri, Sat, Sun  Constraints: Minimum 30-minute window.
- `"subnetIds"`: The Amazon EC2 subnet IDs for the new Elastic DocumentDB cluster.
- `"tags"`: The tags to be assigned to the new Elastic DocumentDB cluster.
- `"vpcSecurityGroupIds"`: A list of EC2 VPC security groups to associate with the new
  Elastic DocumentDB cluster.
"""
function create_cluster(
    adminUserName,
    adminUserPassword,
    authType,
    clusterName,
    shardCapacity,
    shardCount;
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return docdb_elastic(
        "POST",
        "/cluster",
        Dict{String,Any}(
            "adminUserName" => adminUserName,
            "adminUserPassword" => adminUserPassword,
            "authType" => authType,
            "clusterName" => clusterName,
            "shardCapacity" => shardCapacity,
            "shardCount" => shardCount,
            "clientToken" => string(uuid4()),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function create_cluster(
    adminUserName,
    adminUserPassword,
    authType,
    clusterName,
    shardCapacity,
    shardCount,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return docdb_elastic(
        "POST",
        "/cluster",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "adminUserName" => adminUserName,
                    "adminUserPassword" => adminUserPassword,
                    "authType" => authType,
                    "clusterName" => clusterName,
                    "shardCapacity" => shardCapacity,
                    "shardCount" => shardCount,
                    "clientToken" => string(uuid4()),
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    create_cluster_snapshot(cluster_arn, snapshot_name)
    create_cluster_snapshot(cluster_arn, snapshot_name, params::Dict{String,<:Any})

Creates a snapshot of a cluster.

# Arguments
- `cluster_arn`: The arn of the Elastic DocumentDB cluster that the snapshot will be taken
  from.
- `snapshot_name`: The name of the Elastic DocumentDB snapshot.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"tags"`: The tags to be assigned to the new Elastic DocumentDB snapshot.
"""
function create_cluster_snapshot(
    clusterArn, snapshotName; aws_config::AbstractAWSConfig=global_aws_config()
)
    return docdb_elastic(
        "POST",
        "/cluster-snapshot",
        Dict{String,Any}("clusterArn" => clusterArn, "snapshotName" => snapshotName);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function create_cluster_snapshot(
    clusterArn,
    snapshotName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return docdb_elastic(
        "POST",
        "/cluster-snapshot",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "clusterArn" => clusterArn, "snapshotName" => snapshotName
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    delete_cluster(cluster_arn)
    delete_cluster(cluster_arn, params::Dict{String,<:Any})

Delete a Elastic DocumentDB cluster.

# Arguments
- `cluster_arn`: The arn of the Elastic DocumentDB cluster that is to be deleted.

"""
function delete_cluster(clusterArn; aws_config::AbstractAWSConfig=global_aws_config())
    return docdb_elastic(
        "DELETE",
        "/cluster/$(clusterArn)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function delete_cluster(
    clusterArn,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return docdb_elastic(
        "DELETE",
        "/cluster/$(clusterArn)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    delete_cluster_snapshot(snapshot_arn)
    delete_cluster_snapshot(snapshot_arn, params::Dict{String,<:Any})

Delete a Elastic DocumentDB snapshot.

# Arguments
- `snapshot_arn`: The arn of the Elastic DocumentDB snapshot that is to be deleted.

"""
function delete_cluster_snapshot(
    snapshotArn; aws_config::AbstractAWSConfig=global_aws_config()
)
    return docdb_elastic(
        "DELETE",
        "/cluster-snapshot/$(snapshotArn)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function delete_cluster_snapshot(
    snapshotArn,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return docdb_elastic(
        "DELETE",
        "/cluster-snapshot/$(snapshotArn)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_cluster(cluster_arn)
    get_cluster(cluster_arn, params::Dict{String,<:Any})

Returns information about a specific Elastic DocumentDB cluster.

# Arguments
- `cluster_arn`: The arn of the Elastic DocumentDB cluster.

"""
function get_cluster(clusterArn; aws_config::AbstractAWSConfig=global_aws_config())
    return docdb_elastic(
        "GET",
        "/cluster/$(clusterArn)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function get_cluster(
    clusterArn,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return docdb_elastic(
        "GET",
        "/cluster/$(clusterArn)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_cluster_snapshot(snapshot_arn)
    get_cluster_snapshot(snapshot_arn, params::Dict{String,<:Any})

Returns information about a specific Elastic DocumentDB snapshot

# Arguments
- `snapshot_arn`: The arn of the Elastic DocumentDB snapshot.

"""
function get_cluster_snapshot(
    snapshotArn; aws_config::AbstractAWSConfig=global_aws_config()
)
    return docdb_elastic(
        "GET",
        "/cluster-snapshot/$(snapshotArn)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function get_cluster_snapshot(
    snapshotArn,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return docdb_elastic(
        "GET",
        "/cluster-snapshot/$(snapshotArn)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_cluster_snapshots()
    list_cluster_snapshots(params::Dict{String,<:Any})

Returns information about Elastic DocumentDB snapshots for a specified cluster.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"clusterArn"`: The arn of the Elastic DocumentDB cluster.
- `"maxResults"`: The maximum number of entries to recieve in the response.
- `"nextToken"`: The nextToken which is used the get the next page of data.
"""
function list_cluster_snapshots(; aws_config::AbstractAWSConfig=global_aws_config())
    return docdb_elastic(
        "GET", "/cluster-snapshots"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end
function list_cluster_snapshots(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return docdb_elastic(
        "GET",
        "/cluster-snapshots",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_clusters()
    list_clusters(params::Dict{String,<:Any})

Returns information about provisioned Elastic DocumentDB clusters.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: The maximum number of entries to recieve in the response.
- `"nextToken"`: The nextToken which is used the get the next page of data.
"""
function list_clusters(; aws_config::AbstractAWSConfig=global_aws_config())
    return docdb_elastic(
        "GET", "/clusters"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end
function list_clusters(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return docdb_elastic(
        "GET", "/clusters", params; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end

"""
    list_tags_for_resource(resource_arn)
    list_tags_for_resource(resource_arn, params::Dict{String,<:Any})

Lists all tags on a Elastic DocumentDB resource

# Arguments
- `resource_arn`: The arn of the Elastic DocumentDB resource.

"""
function list_tags_for_resource(
    resourceArn; aws_config::AbstractAWSConfig=global_aws_config()
)
    return docdb_elastic(
        "GET",
        "/tags/$(resourceArn)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function list_tags_for_resource(
    resourceArn,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return docdb_elastic(
        "GET",
        "/tags/$(resourceArn)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    restore_cluster_from_snapshot(cluster_name, snapshot_arn)
    restore_cluster_from_snapshot(cluster_name, snapshot_arn, params::Dict{String,<:Any})

Restores a Elastic DocumentDB cluster from a snapshot.

# Arguments
- `cluster_name`: The name of the Elastic DocumentDB cluster.
- `snapshot_arn`: The arn of the Elastic DocumentDB snapshot.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"kmsKeyId"`: The KMS key identifier to use to encrypt the new Elastic DocumentDB
  cluster. The KMS key identifier is the Amazon Resource Name (ARN) for the KMS encryption
  key. If you are creating a cluster using the same Amazon account that owns this KMS
  encryption key, you can use the KMS key alias instead of the ARN as the KMS encryption key.
  If an encryption key is not specified here, Elastic DocumentDB uses the default encryption
  key that KMS creates for your account. Your account has a different default encryption key
  for each Amazon Region.
- `"subnetIds"`: The Amazon EC2 subnet IDs for the Elastic DocumentDB cluster.
- `"tags"`: A list of the tag names to be assigned to the restored DB cluster, in the form
  of an array of key-value pairs in which the key is the tag name and the value is the key
  value.
- `"vpcSecurityGroupIds"`: A list of EC2 VPC security groups to associate with the Elastic
  DocumentDB cluster.
"""
function restore_cluster_from_snapshot(
    clusterName, snapshotArn; aws_config::AbstractAWSConfig=global_aws_config()
)
    return docdb_elastic(
        "POST",
        "/cluster-snapshot/$(snapshotArn)/restore",
        Dict{String,Any}("clusterName" => clusterName);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function restore_cluster_from_snapshot(
    clusterName,
    snapshotArn,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return docdb_elastic(
        "POST",
        "/cluster-snapshot/$(snapshotArn)/restore",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("clusterName" => clusterName), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    tag_resource(resource_arn, tags)
    tag_resource(resource_arn, tags, params::Dict{String,<:Any})

Adds metadata tags to a Elastic DocumentDB resource

# Arguments
- `resource_arn`: The arn of the Elastic DocumentDB resource.
- `tags`: The tags to be assigned to the Elastic DocumentDB resource.

"""
function tag_resource(resourceArn, tags; aws_config::AbstractAWSConfig=global_aws_config())
    return docdb_elastic(
        "POST",
        "/tags/$(resourceArn)",
        Dict{String,Any}("tags" => tags);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function tag_resource(
    resourceArn,
    tags,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return docdb_elastic(
        "POST",
        "/tags/$(resourceArn)",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("tags" => tags), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    untag_resource(resource_arn, tag_keys)
    untag_resource(resource_arn, tag_keys, params::Dict{String,<:Any})

Removes metadata tags to a Elastic DocumentDB resource

# Arguments
- `resource_arn`: The arn of the Elastic DocumentDB resource.
- `tag_keys`: The tag keys to be removed from the Elastic DocumentDB resource.

"""
function untag_resource(
    resourceArn, tagKeys; aws_config::AbstractAWSConfig=global_aws_config()
)
    return docdb_elastic(
        "DELETE",
        "/tags/$(resourceArn)",
        Dict{String,Any}("tagKeys" => tagKeys);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function untag_resource(
    resourceArn,
    tagKeys,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return docdb_elastic(
        "DELETE",
        "/tags/$(resourceArn)",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("tagKeys" => tagKeys), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    update_cluster(cluster_arn)
    update_cluster(cluster_arn, params::Dict{String,<:Any})

Modifies a Elastic DocumentDB cluster. This includes updating admin-username/password,
upgrading API version setting up a backup window and maintenance window

# Arguments
- `cluster_arn`: The arn of the Elastic DocumentDB cluster.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"adminUserPassword"`: The password for the Elastic DocumentDB cluster administrator.
  This password can contain any printable ASCII character except forward slash (/), double
  quote (\"), or the \"at\" symbol (@).  Constraints: Must contain from 8 to 100 characters.
- `"authType"`: The authentication type for the Elastic DocumentDB cluster.
- `"clientToken"`: The client token for the Elastic DocumentDB cluster.
- `"preferredMaintenanceWindow"`: The weekly time range during which system maintenance can
  occur, in Universal Coordinated Time (UTC).  Format: ddd:hh24:mi-ddd:hh24:mi   Default: a
  30-minute window selected at random from an 8-hour block of time for each Amazon Web
  Services Region, occurring on a random day of the week.  Valid days: Mon, Tue, Wed, Thu,
  Fri, Sat, Sun  Constraints: Minimum 30-minute window.
- `"shardCapacity"`: The capacity of each shard in the Elastic DocumentDB cluster.
- `"shardCount"`: The number of shards to create in the Elastic DocumentDB cluster.
- `"subnetIds"`: The number of shards to create in the Elastic DocumentDB cluster.
- `"vpcSecurityGroupIds"`: A list of EC2 VPC security groups to associate with the new
  Elastic DocumentDB cluster.
"""
function update_cluster(clusterArn; aws_config::AbstractAWSConfig=global_aws_config())
    return docdb_elastic(
        "PUT",
        "/cluster/$(clusterArn)",
        Dict{String,Any}("clientToken" => string(uuid4()));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function update_cluster(
    clusterArn,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return docdb_elastic(
        "PUT",
        "/cluster/$(clusterArn)",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("clientToken" => string(uuid4())), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
