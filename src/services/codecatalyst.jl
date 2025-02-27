# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: codecatalyst
using AWS.Compat
using AWS.UUIDs

"""
    create_access_token(name)
    create_access_token(name, params::Dict{String,<:Any})

Creates a personal access token (PAT) for the current user. A personal access token (PAT)
is similar to a password. It is associated with your user account. You use PATs to access
Amazon CodeCatalyst resources such as source repositories from third-party applications
like Git and integrated development environments (IDEs). For more information, see Managing
personal access tokens in Amazon CodeCatalyst.

# Arguments
- `name`: The friendly name of the personal access token.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"expiresTime"`: The date and time the personal access token expires, in coordinated
  universal time (UTC) timestamp format as specified in RFC 3339.
"""
function create_access_token(name; aws_config::AbstractAWSConfig=global_aws_config())
    return codecatalyst(
        "PUT",
        "/v1/accessTokens",
        Dict{String,Any}("name" => name);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function create_access_token(
    name, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return codecatalyst(
        "PUT",
        "/v1/accessTokens",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("name" => name), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    create_dev_environment(instance_type, persistent_storage, project_name, space_name)
    create_dev_environment(instance_type, persistent_storage, project_name, space_name, params::Dict{String,<:Any})

Creates a Dev Environment in Amazon CodeCatalyst, a cloud-based development Dev Environment
that you can use to quickly work on the code stored in the source repositories of your
project.   When created in the Amazon CodeCatalyst console, by default a Dev Environment is
configured to have a 2 core processor, 4GB of RAM, and 16GB of persistent storage. None of
these defaults apply to a Dev Environment created programmatically.

# Arguments
- `instance_type`: The Amazon EC2 instace type to use for the Dev Environment.
- `persistent_storage`: Information about the amount of storage allocated to the Dev
  Environment.   By default, a Dev Environment is configured to have 16GB of persistent
  storage when created from the Amazon CodeCatalyst console, but there is no default when
  programmatically creating a Dev Environment. Valid values for persistent storage are based
  on memory sizes in 16GB increments. Valid values are 16, 32, and 64.
- `project_name`: The name of the project in the space.
- `space_name`: The name of the space.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"alias"`: The user-defined alias for a Dev Environment.
- `"clientToken"`: A user-specified idempotency token. Idempotency ensures that an API
  request completes only once. With an idempotent request, if the original request completes
  successfully, the subsequent retries return the result from the original successful request
  and have no additional effect.
- `"ides"`: Information about the integrated development environment (IDE) configured for a
  Dev Environment.  An IDE is required to create a Dev Environment. For Dev Environment
  creation, this field contains configuration information and must be provided.
- `"inactivityTimeoutMinutes"`: The amount of time the Dev Environment will run without any
  activity detected before stopping, in minutes. Only whole integers are allowed. Dev
  Environments consume compute minutes when running.
- `"repositories"`: The source repository that contains the branch to clone into the Dev
  Environment.
"""
function create_dev_environment(
    instanceType,
    persistentStorage,
    projectName,
    spaceName;
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return codecatalyst(
        "PUT",
        "/v1/spaces/$(spaceName)/projects/$(projectName)/devEnvironments",
        Dict{String,Any}(
            "instanceType" => instanceType, "persistentStorage" => persistentStorage
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function create_dev_environment(
    instanceType,
    persistentStorage,
    projectName,
    spaceName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return codecatalyst(
        "PUT",
        "/v1/spaces/$(spaceName)/projects/$(projectName)/devEnvironments",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "instanceType" => instanceType, "persistentStorage" => persistentStorage
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    create_project(display_name, space_name)
    create_project(display_name, space_name, params::Dict{String,<:Any})

Creates a project in a specified space.

# Arguments
- `display_name`: The friendly name of the project that will be displayed to users.
- `space_name`: The name of the space.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"description"`: The description of the project. This description will be displayed to
  all users of the project. We recommend providing a brief description of the project and its
  intended purpose.
"""
function create_project(
    displayName, spaceName; aws_config::AbstractAWSConfig=global_aws_config()
)
    return codecatalyst(
        "PUT",
        "/v1/spaces/$(spaceName)/projects",
        Dict{String,Any}("displayName" => displayName);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function create_project(
    displayName,
    spaceName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return codecatalyst(
        "PUT",
        "/v1/spaces/$(spaceName)/projects",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("displayName" => displayName), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    create_source_repository_branch(name, project_name, source_repository_name, space_name)
    create_source_repository_branch(name, project_name, source_repository_name, space_name, params::Dict{String,<:Any})

Creates a branch in a specified source repository in Amazon CodeCatalyst.   This API only
creates a branch in a source repository hosted in Amazon CodeCatalyst. You cannot use this
API to create a branch in a linked repository.

# Arguments
- `name`: The name for the branch you're creating.
- `project_name`: The name of the project in the space.
- `source_repository_name`: The name of the repository where you want to create a branch.
- `space_name`: The name of the space.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"headCommitId"`: The commit ID in an existing branch from which you want to create the
  new branch.
"""
function create_source_repository_branch(
    name,
    projectName,
    sourceRepositoryName,
    spaceName;
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return codecatalyst(
        "PUT",
        "/v1/spaces/$(spaceName)/projects/$(projectName)/sourceRepositories/$(sourceRepositoryName)/branches/$(name)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function create_source_repository_branch(
    name,
    projectName,
    sourceRepositoryName,
    spaceName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return codecatalyst(
        "PUT",
        "/v1/spaces/$(spaceName)/projects/$(projectName)/sourceRepositories/$(sourceRepositoryName)/branches/$(name)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    delete_access_token(id)
    delete_access_token(id, params::Dict{String,<:Any})

Deletes a specified personal access token (PAT). A personal access token can only be
deleted by the user who created it.

# Arguments
- `id`: The ID of the personal access token to delete. You can find the IDs of all PATs
  associated with your user account by calling ListAccessTokens.

"""
function delete_access_token(id; aws_config::AbstractAWSConfig=global_aws_config())
    return codecatalyst(
        "DELETE",
        "/v1/accessTokens/$(id)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function delete_access_token(
    id, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return codecatalyst(
        "DELETE",
        "/v1/accessTokens/$(id)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    delete_dev_environment(id, project_name, space_name)
    delete_dev_environment(id, project_name, space_name, params::Dict{String,<:Any})

Deletes a Dev Environment.

# Arguments
- `id`: The system-generated unique ID of the Dev Environment you want to delete. To
  retrieve a list of Dev Environment IDs, use ListDevEnvironments.
- `project_name`: The name of the project in the space.
- `space_name`: The name of the space.

"""
function delete_dev_environment(
    id, projectName, spaceName; aws_config::AbstractAWSConfig=global_aws_config()
)
    return codecatalyst(
        "DELETE",
        "/v1/spaces/$(spaceName)/projects/$(projectName)/devEnvironments/$(id)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function delete_dev_environment(
    id,
    projectName,
    spaceName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return codecatalyst(
        "DELETE",
        "/v1/spaces/$(spaceName)/projects/$(projectName)/devEnvironments/$(id)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_dev_environment(id, project_name, space_name)
    get_dev_environment(id, project_name, space_name, params::Dict{String,<:Any})

Returns information about a Dev Environment for a source repository in a project. Dev
Environments are specific to the user who creates them.

# Arguments
- `id`: The system-generated unique ID of the Dev Environment for which you want to view
  information. To retrieve a list of Dev Environment IDs, use ListDevEnvironments.
- `project_name`: The name of the project in the space.
- `space_name`: The name of the space.

"""
function get_dev_environment(
    id, projectName, spaceName; aws_config::AbstractAWSConfig=global_aws_config()
)
    return codecatalyst(
        "GET",
        "/v1/spaces/$(spaceName)/projects/$(projectName)/devEnvironments/$(id)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function get_dev_environment(
    id,
    projectName,
    spaceName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return codecatalyst(
        "GET",
        "/v1/spaces/$(spaceName)/projects/$(projectName)/devEnvironments/$(id)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_project(name, space_name)
    get_project(name, space_name, params::Dict{String,<:Any})

Returns information about a project.

# Arguments
- `name`: The name of the project in the space.
- `space_name`: The name of the space.

"""
function get_project(name, spaceName; aws_config::AbstractAWSConfig=global_aws_config())
    return codecatalyst(
        "GET",
        "/v1/spaces/$(spaceName)/projects/$(name)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function get_project(
    name,
    spaceName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return codecatalyst(
        "GET",
        "/v1/spaces/$(spaceName)/projects/$(name)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_source_repository_clone_urls(project_name, source_repository_name, space_name)
    get_source_repository_clone_urls(project_name, source_repository_name, space_name, params::Dict{String,<:Any})

Returns information about the URLs that can be used with a Git client to clone a source
repository.

# Arguments
- `project_name`: The name of the project in the space.
- `source_repository_name`: The name of the source repository.
- `space_name`: The name of the space.

"""
function get_source_repository_clone_urls(
    projectName,
    sourceRepositoryName,
    spaceName;
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return codecatalyst(
        "GET",
        "/v1/spaces/$(spaceName)/projects/$(projectName)/sourceRepositories/$(sourceRepositoryName)/cloneUrls";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function get_source_repository_clone_urls(
    projectName,
    sourceRepositoryName,
    spaceName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return codecatalyst(
        "GET",
        "/v1/spaces/$(spaceName)/projects/$(projectName)/sourceRepositories/$(sourceRepositoryName)/cloneUrls",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_space(name)
    get_space(name, params::Dict{String,<:Any})

Returns information about an space.

# Arguments
- `name`: The name of the space.

"""
function get_space(name; aws_config::AbstractAWSConfig=global_aws_config())
    return codecatalyst(
        "GET", "/v1/spaces/$(name)"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end
function get_space(
    name, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return codecatalyst(
        "GET",
        "/v1/spaces/$(name)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_subscription(space_name)
    get_subscription(space_name, params::Dict{String,<:Any})

Returns information about the Amazon Web Services account used for billing purposes and the
billing plan for the space.

# Arguments
- `space_name`: The name of the space.

"""
function get_subscription(spaceName; aws_config::AbstractAWSConfig=global_aws_config())
    return codecatalyst(
        "GET",
        "/v1/spaces/$(spaceName)/subscription";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function get_subscription(
    spaceName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return codecatalyst(
        "GET",
        "/v1/spaces/$(spaceName)/subscription",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_user_details()
    get_user_details(params::Dict{String,<:Any})

Returns information about a user.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"id"`: The system-generated unique ID of the user.
- `"userName"`: The name of the user as displayed in Amazon CodeCatalyst.
"""
function get_user_details(; aws_config::AbstractAWSConfig=global_aws_config())
    return codecatalyst(
        "GET", "/userDetails"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end
function get_user_details(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return codecatalyst(
        "GET",
        "/userDetails",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_access_tokens()
    list_access_tokens(params::Dict{String,<:Any})

Lists all personal access tokens (PATs) associated with the user who calls the API. You can
only list PATs associated with your user account.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: The maximum number of results to show in a single call to this API. If
  the number of results is larger than the number you specified, the response will include a
  NextToken element, which you can use to obtain additional results.
- `"nextToken"`: A token returned from a call to this API to indicate the next batch of
  results to return, if any.
"""
function list_access_tokens(; aws_config::AbstractAWSConfig=global_aws_config())
    return codecatalyst(
        "POST", "/v1/accessTokens"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end
function list_access_tokens(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return codecatalyst(
        "POST",
        "/v1/accessTokens",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_dev_environments(project_name, space_name)
    list_dev_environments(project_name, space_name, params::Dict{String,<:Any})

Retrives a list of Dev Environments in a project.

# Arguments
- `project_name`: The name of the project in the space.
- `space_name`: The name of the space.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"filters"`: Information about filters to apply to narrow the results returned in the
  list.
- `"maxResults"`: The maximum number of results to show in a single call to this API. If
  the number of results is larger than the number you specified, the response will include a
  NextToken element, which you can use to obtain additional results.
- `"nextToken"`: A token returned from a call to this API to indicate the next batch of
  results to return, if any.
"""
function list_dev_environments(
    projectName, spaceName; aws_config::AbstractAWSConfig=global_aws_config()
)
    return codecatalyst(
        "POST",
        "/v1/spaces/$(spaceName)/projects/$(projectName)/devEnvironments";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function list_dev_environments(
    projectName,
    spaceName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return codecatalyst(
        "POST",
        "/v1/spaces/$(spaceName)/projects/$(projectName)/devEnvironments",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_event_logs(end_time, space_name, start_time)
    list_event_logs(end_time, space_name, start_time, params::Dict{String,<:Any})

Retrieves a list of events that occurred during a specified time period in a space. You can
use these events to audit user and system activity in a space.

# Arguments
- `end_time`: The time after which you do not want any events retrieved, in coordinated
  universal time (UTC) timestamp format as specified in RFC 3339.
- `space_name`: The name of the space.
- `start_time`: The date and time when you want to start retrieving events, in coordinated
  universal time (UTC) timestamp format as specified in RFC 3339.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"eventName"`: The name of the event.
- `"maxResults"`: The maximum number of results to show in a single call to this API. If
  the number of results is larger than the number you specified, the response will include a
  NextToken element, which you can use to obtain additional results.
- `"nextToken"`: A token returned from a call to this API to indicate the next batch of
  results to return, if any.
"""
function list_event_logs(
    endTime, spaceName, startTime; aws_config::AbstractAWSConfig=global_aws_config()
)
    return codecatalyst(
        "POST",
        "/v1/spaces/$(spaceName)/eventLogs",
        Dict{String,Any}("endTime" => endTime, "startTime" => startTime);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function list_event_logs(
    endTime,
    spaceName,
    startTime,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return codecatalyst(
        "POST",
        "/v1/spaces/$(spaceName)/eventLogs",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}("endTime" => endTime, "startTime" => startTime),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_projects(space_name)
    list_projects(space_name, params::Dict{String,<:Any})

Retrieves a list of projects.

# Arguments
- `space_name`: The name of the space.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"filters"`: Information about filters to apply to narrow the results returned in the
  list.
- `"maxResults"`: The maximum number of results to show in a single call to this API. If
  the number of results is larger than the number you specified, the response will include a
  NextToken element, which you can use to obtain additional results.
- `"nextToken"`: A token returned from a call to this API to indicate the next batch of
  results to return, if any.
"""
function list_projects(spaceName; aws_config::AbstractAWSConfig=global_aws_config())
    return codecatalyst(
        "POST",
        "/v1/spaces/$(spaceName)/projects";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function list_projects(
    spaceName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return codecatalyst(
        "POST",
        "/v1/spaces/$(spaceName)/projects",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_source_repositories(project_name, space_name)
    list_source_repositories(project_name, space_name, params::Dict{String,<:Any})

Retrieves a list of source repositories in a project.

# Arguments
- `project_name`: The name of the project in the space.
- `space_name`: The name of the space.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: The maximum number of results to show in a single call to this API. If
  the number of results is larger than the number you specified, the response will include a
  NextToken element, which you can use to obtain additional results.
- `"nextToken"`: A token returned from a call to this API to indicate the next batch of
  results to return, if any.
"""
function list_source_repositories(
    projectName, spaceName; aws_config::AbstractAWSConfig=global_aws_config()
)
    return codecatalyst(
        "POST",
        "/v1/spaces/$(spaceName)/projects/$(projectName)/sourceRepositories";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function list_source_repositories(
    projectName,
    spaceName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return codecatalyst(
        "POST",
        "/v1/spaces/$(spaceName)/projects/$(projectName)/sourceRepositories",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_source_repository_branches(project_name, source_repository_name, space_name)
    list_source_repository_branches(project_name, source_repository_name, space_name, params::Dict{String,<:Any})

Retrieves a list of branches in a specified source repository.

# Arguments
- `project_name`: The name of the project in the space.
- `source_repository_name`: The name of the source repository.
- `space_name`: The name of the space.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: The maximum number of results to show in a single call to this API. If
  the number of results is larger than the number you specified, the response will include a
  NextToken element, which you can use to obtain additional results.
- `"nextToken"`: A token returned from a call to this API to indicate the next batch of
  results to return, if any.
"""
function list_source_repository_branches(
    projectName,
    sourceRepositoryName,
    spaceName;
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return codecatalyst(
        "POST",
        "/v1/spaces/$(spaceName)/projects/$(projectName)/sourceRepositories/$(sourceRepositoryName)/branches";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function list_source_repository_branches(
    projectName,
    sourceRepositoryName,
    spaceName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return codecatalyst(
        "POST",
        "/v1/spaces/$(spaceName)/projects/$(projectName)/sourceRepositories/$(sourceRepositoryName)/branches",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_spaces()
    list_spaces(params::Dict{String,<:Any})

Retrieves a list of spaces.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"nextToken"`: A token returned from a call to this API to indicate the next batch of
  results to return, if any.
"""
function list_spaces(; aws_config::AbstractAWSConfig=global_aws_config())
    return codecatalyst(
        "POST", "/v1/spaces"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end
function list_spaces(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return codecatalyst(
        "POST", "/v1/spaces", params; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end

"""
    start_dev_environment(id, project_name, space_name)
    start_dev_environment(id, project_name, space_name, params::Dict{String,<:Any})

Starts a specified Dev Environment and puts it into an active state.

# Arguments
- `id`: The system-generated unique ID of the Dev Environment.
- `project_name`: The name of the project in the space.
- `space_name`: The name of the space.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"ides"`: Information about the integrated development environment (IDE) configured for a
  Dev Environment.
- `"inactivityTimeoutMinutes"`: The amount of time the Dev Environment will run without any
  activity detected before stopping, in minutes. Only whole integers are allowed. Dev
  Environments consume compute minutes when running.
- `"instanceType"`: The Amazon EC2 instace type to use for the Dev Environment.
"""
function start_dev_environment(
    id, projectName, spaceName; aws_config::AbstractAWSConfig=global_aws_config()
)
    return codecatalyst(
        "PUT",
        "/v1/spaces/$(spaceName)/projects/$(projectName)/devEnvironments/$(id)/start";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function start_dev_environment(
    id,
    projectName,
    spaceName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return codecatalyst(
        "PUT",
        "/v1/spaces/$(spaceName)/projects/$(projectName)/devEnvironments/$(id)/start",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    start_dev_environment_session(id, project_name, session_configuration, space_name)
    start_dev_environment_session(id, project_name, session_configuration, space_name, params::Dict{String,<:Any})

Starts a session for a specified Dev Environment.

# Arguments
- `id`: The system-generated unique ID of the Dev Environment.
- `project_name`: The name of the project in the space.
- `session_configuration`:
- `space_name`: The name of the space.

"""
function start_dev_environment_session(
    id,
    projectName,
    sessionConfiguration,
    spaceName;
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return codecatalyst(
        "PUT",
        "/v1/spaces/$(spaceName)/projects/$(projectName)/devEnvironments/$(id)/session",
        Dict{String,Any}("sessionConfiguration" => sessionConfiguration);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function start_dev_environment_session(
    id,
    projectName,
    sessionConfiguration,
    spaceName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return codecatalyst(
        "PUT",
        "/v1/spaces/$(spaceName)/projects/$(projectName)/devEnvironments/$(id)/session",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}("sessionConfiguration" => sessionConfiguration),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    stop_dev_environment(id, project_name, space_name)
    stop_dev_environment(id, project_name, space_name, params::Dict{String,<:Any})

Pauses a specified Dev Environment and places it in a non-running state. Stopped Dev
Environments do not consume compute minutes.

# Arguments
- `id`: The system-generated unique ID of the Dev Environment.
- `project_name`: The name of the project in the space.
- `space_name`: The name of the space.

"""
function stop_dev_environment(
    id, projectName, spaceName; aws_config::AbstractAWSConfig=global_aws_config()
)
    return codecatalyst(
        "PUT",
        "/v1/spaces/$(spaceName)/projects/$(projectName)/devEnvironments/$(id)/stop";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function stop_dev_environment(
    id,
    projectName,
    spaceName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return codecatalyst(
        "PUT",
        "/v1/spaces/$(spaceName)/projects/$(projectName)/devEnvironments/$(id)/stop",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    stop_dev_environment_session(id, project_name, session_id, space_name)
    stop_dev_environment_session(id, project_name, session_id, space_name, params::Dict{String,<:Any})

Stops a session for a specified Dev Environment.

# Arguments
- `id`: The system-generated unique ID of the Dev Environment. To obtain this ID, use
  ListDevEnvironments.
- `project_name`: The name of the project in the space.
- `session_id`: The system-generated unique ID of the Dev Environment session. This ID is
  returned by StartDevEnvironmentSession.
- `space_name`: The name of the space.

"""
function stop_dev_environment_session(
    id, projectName, sessionId, spaceName; aws_config::AbstractAWSConfig=global_aws_config()
)
    return codecatalyst(
        "DELETE",
        "/v1/spaces/$(spaceName)/projects/$(projectName)/devEnvironments/$(id)/session/$(sessionId)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function stop_dev_environment_session(
    id,
    projectName,
    sessionId,
    spaceName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return codecatalyst(
        "DELETE",
        "/v1/spaces/$(spaceName)/projects/$(projectName)/devEnvironments/$(id)/session/$(sessionId)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    update_dev_environment(id, project_name, space_name)
    update_dev_environment(id, project_name, space_name, params::Dict{String,<:Any})

Changes one or more values for a Dev Environment. Updating certain values of the Dev
Environment will cause a restart.

# Arguments
- `id`: The system-generated unique ID of the Dev Environment.
- `project_name`: The name of the project in the space.
- `space_name`: The name of the space.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"alias"`: The user-specified alias for the Dev Environment. Changing this value will not
  cause a restart.
- `"clientToken"`: A user-specified idempotency token. Idempotency ensures that an API
  request completes only once. With an idempotent request, if the original request completes
  successfully, the subsequent retries return the result from the original successful request
  and have no additional effect.
- `"ides"`: Information about the integrated development environment (IDE) configured for a
  Dev Environment.
- `"inactivityTimeoutMinutes"`: The amount of time the Dev Environment will run without any
  activity detected before stopping, in minutes. Only whole integers are allowed. Dev
  Environments consume compute minutes when running.  Changing this value will cause a
  restart of the Dev Environment if it is running.
- `"instanceType"`: The Amazon EC2 instace type to use for the Dev Environment.   Changing
  this value will cause a restart of the Dev Environment if it is running.
"""
function update_dev_environment(
    id, projectName, spaceName; aws_config::AbstractAWSConfig=global_aws_config()
)
    return codecatalyst(
        "PATCH",
        "/v1/spaces/$(spaceName)/projects/$(projectName)/devEnvironments/$(id)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function update_dev_environment(
    id,
    projectName,
    spaceName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return codecatalyst(
        "PATCH",
        "/v1/spaces/$(spaceName)/projects/$(projectName)/devEnvironments/$(id)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    verify_session()
    verify_session(params::Dict{String,<:Any})

Verifies whether the calling user has a valid Amazon CodeCatalyst login and session. If
successful, this returns the ID of the user in Amazon CodeCatalyst.

"""
function verify_session(; aws_config::AbstractAWSConfig=global_aws_config())
    return codecatalyst(
        "GET", "/session"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end
function verify_session(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return codecatalyst(
        "GET", "/session", params; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end
