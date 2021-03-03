# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: amplify
using AWS.Compat
using AWS.UUIDs

"""
    create_app(name)
    create_app(name, params::Dict{String,<:Any})

 Creates a new Amplify app.

# Arguments
- `name`:  The name for an Amplify app.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"accessToken"`:  The personal access token for a third-party source control system for
  an Amplify app. The personal access token is used to create a webhook and a read-only
  deploy key. The token is not stored.
- `"autoBranchCreationConfig"`:  The automated branch creation configuration for an Amplify
  app.
- `"autoBranchCreationPatterns"`:  The automated branch creation glob patterns for an
  Amplify app.
- `"basicAuthCredentials"`:  The credentials for basic authorization for an Amplify app.
- `"buildSpec"`:  The build specification (build spec) for an Amplify app.
- `"customHeaders"`: The custom HTTP headers for an Amplify app.
- `"customRules"`:  The custom rewrite and redirect rules for an Amplify app.
- `"description"`:  The description for an Amplify app.
- `"enableAutoBranchCreation"`:  Enables automated branch creation for an Amplify app.
- `"enableBasicAuth"`:  Enables basic authorization for an Amplify app. This will apply to
  all branches that are part of this app.
- `"enableBranchAutoBuild"`:  Enables the auto building of branches for an Amplify app.
- `"enableBranchAutoDeletion"`:  Automatically disconnects a branch in the Amplify Console
  when you delete a branch from your Git repository.
- `"environmentVariables"`:  The environment variables map for an Amplify app.
- `"iamServiceRoleArn"`:  The AWS Identity and Access Management (IAM) service role for an
  Amplify app.
- `"oauthToken"`:  The OAuth token for a third-party source control system for an Amplify
  app. The OAuth token is used to create a webhook and a read-only deploy key. The OAuth
  token is not stored.
- `"platform"`:  The platform or framework for an Amplify app.
- `"repository"`:  The repository for an Amplify app.
- `"tags"`:  The tag for an Amplify app.
"""
create_app(name; aws_config::AbstractAWSConfig=global_aws_config()) = amplify("POST", "/apps", Dict{String, Any}("name"=>name); aws_config=aws_config)
create_app(name, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = amplify("POST", "/apps", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("name"=>name), params)); aws_config=aws_config)

"""
    create_backend_environment(app_id, environment_name)
    create_backend_environment(app_id, environment_name, params::Dict{String,<:Any})

 Creates a new backend environment for an Amplify app.

# Arguments
- `app_id`:  The unique ID for an Amplify app.
- `environment_name`:  The name for the backend environment.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"deploymentArtifacts"`:  The name of deployment artifacts.
- `"stackName"`:  The AWS CloudFormation stack name of a backend environment.
"""
create_backend_environment(appId, environmentName; aws_config::AbstractAWSConfig=global_aws_config()) = amplify("POST", "/apps/$(appId)/backendenvironments", Dict{String, Any}("environmentName"=>environmentName); aws_config=aws_config)
create_backend_environment(appId, environmentName, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = amplify("POST", "/apps/$(appId)/backendenvironments", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("environmentName"=>environmentName), params)); aws_config=aws_config)

"""
    create_branch(app_id, branch_name)
    create_branch(app_id, branch_name, params::Dict{String,<:Any})

 Creates a new branch for an Amplify app.

# Arguments
- `app_id`:  The unique ID for an Amplify app.
- `branch_name`:  The name for the branch.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"backendEnvironmentArn"`:  The Amazon Resource Name (ARN) for a backend environment that
  is part of an Amplify app.
- `"basicAuthCredentials"`:  The basic authorization credentials for the branch.
- `"buildSpec"`:  The build specification (build spec) for the branch.
- `"description"`:  The description for the branch.
- `"displayName"`:  The display name for a branch. This is used as the default domain
  prefix.
- `"enableAutoBuild"`:  Enables auto building for the branch.
- `"enableBasicAuth"`:  Enables basic authorization for the branch.
- `"enableNotification"`:  Enables notifications for the branch.
- `"enablePerformanceMode"`: Enables performance mode for the branch. Performance mode
  optimizes for faster hosting performance by keeping content cached at the edge for a longer
  interval. When performance mode is enabled, hosting configuration or code changes can take
  up to 10 minutes to roll out.
- `"enablePullRequestPreview"`:  Enables pull request previews for this branch.
- `"environmentVariables"`:  The environment variables for the branch.
- `"framework"`:  The framework for the branch.
- `"pullRequestEnvironmentName"`:  The Amplify environment name for the pull request.
- `"stage"`:  Describes the current stage for the branch.
- `"tags"`:  The tag for the branch.
- `"ttl"`:  The content Time To Live (TTL) for the website in seconds.
"""
create_branch(appId, branchName; aws_config::AbstractAWSConfig=global_aws_config()) = amplify("POST", "/apps/$(appId)/branches", Dict{String, Any}("branchName"=>branchName); aws_config=aws_config)
create_branch(appId, branchName, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = amplify("POST", "/apps/$(appId)/branches", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("branchName"=>branchName), params)); aws_config=aws_config)

"""
    create_deployment(app_id, branch_name)
    create_deployment(app_id, branch_name, params::Dict{String,<:Any})

 Creates a deployment for a manually deployed Amplify app. Manually deployed apps are not
connected to a repository.

# Arguments
- `app_id`:  The unique ID for an Amplify app.
- `branch_name`:  The name for the branch, for the job.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"fileMap"`:  An optional file map that contains the file name as the key and the file
  content md5 hash as the value. If this argument is provided, the service will generate a
  unique upload URL per file. Otherwise, the service will only generate a single upload URL
  for the zipped files.
"""
create_deployment(appId, branchName; aws_config::AbstractAWSConfig=global_aws_config()) = amplify("POST", "/apps/$(appId)/branches/$(branchName)/deployments"; aws_config=aws_config)
create_deployment(appId, branchName, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = amplify("POST", "/apps/$(appId)/branches/$(branchName)/deployments", params; aws_config=aws_config)

"""
    create_domain_association(app_id, domain_name, sub_domain_settings)
    create_domain_association(app_id, domain_name, sub_domain_settings, params::Dict{String,<:Any})

 Creates a new domain association for an Amplify app. This action associates a custom
domain with the Amplify app

# Arguments
- `app_id`:  The unique ID for an Amplify app.
- `domain_name`:  The domain name for the domain association.
- `sub_domain_settings`:  The setting for the subdomain.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"autoSubDomainCreationPatterns"`:  Sets the branch patterns for automatic subdomain
  creation.
- `"autoSubDomainIAMRole"`:  The required AWS Identity and Access Management (IAM) service
  role for the Amazon Resource Name (ARN) for automatically creating subdomains.
- `"enableAutoSubDomain"`:  Enables the automated creation of subdomains for branches.
"""
create_domain_association(appId, domainName, subDomainSettings; aws_config::AbstractAWSConfig=global_aws_config()) = amplify("POST", "/apps/$(appId)/domains", Dict{String, Any}("domainName"=>domainName, "subDomainSettings"=>subDomainSettings); aws_config=aws_config)
create_domain_association(appId, domainName, subDomainSettings, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = amplify("POST", "/apps/$(appId)/domains", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("domainName"=>domainName, "subDomainSettings"=>subDomainSettings), params)); aws_config=aws_config)

"""
    create_webhook(app_id, branch_name)
    create_webhook(app_id, branch_name, params::Dict{String,<:Any})

 Creates a new webhook on an Amplify app.

# Arguments
- `app_id`:  The unique ID for an Amplify app.
- `branch_name`:  The name for a branch that is part of an Amplify app.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"description"`:  The description for a webhook.
"""
create_webhook(appId, branchName; aws_config::AbstractAWSConfig=global_aws_config()) = amplify("POST", "/apps/$(appId)/webhooks", Dict{String, Any}("branchName"=>branchName); aws_config=aws_config)
create_webhook(appId, branchName, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = amplify("POST", "/apps/$(appId)/webhooks", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("branchName"=>branchName), params)); aws_config=aws_config)

"""
    delete_app(app_id)
    delete_app(app_id, params::Dict{String,<:Any})

 Deletes an existing Amplify app specified by an app ID.

# Arguments
- `app_id`:  The unique ID for an Amplify app.

"""
delete_app(appId; aws_config::AbstractAWSConfig=global_aws_config()) = amplify("DELETE", "/apps/$(appId)"; aws_config=aws_config)
delete_app(appId, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = amplify("DELETE", "/apps/$(appId)", params; aws_config=aws_config)

"""
    delete_backend_environment(app_id, environment_name)
    delete_backend_environment(app_id, environment_name, params::Dict{String,<:Any})

 Deletes a backend environment for an Amplify app.

# Arguments
- `app_id`:  The unique ID of an Amplify app.
- `environment_name`:  The name of a backend environment of an Amplify app.

"""
delete_backend_environment(appId, environmentName; aws_config::AbstractAWSConfig=global_aws_config()) = amplify("DELETE", "/apps/$(appId)/backendenvironments/$(environmentName)"; aws_config=aws_config)
delete_backend_environment(appId, environmentName, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = amplify("DELETE", "/apps/$(appId)/backendenvironments/$(environmentName)", params; aws_config=aws_config)

"""
    delete_branch(app_id, branch_name)
    delete_branch(app_id, branch_name, params::Dict{String,<:Any})

 Deletes a branch for an Amplify app.

# Arguments
- `app_id`:  The unique ID for an Amplify app.
- `branch_name`:  The name for the branch.

"""
delete_branch(appId, branchName; aws_config::AbstractAWSConfig=global_aws_config()) = amplify("DELETE", "/apps/$(appId)/branches/$(branchName)"; aws_config=aws_config)
delete_branch(appId, branchName, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = amplify("DELETE", "/apps/$(appId)/branches/$(branchName)", params; aws_config=aws_config)

"""
    delete_domain_association(app_id, domain_name)
    delete_domain_association(app_id, domain_name, params::Dict{String,<:Any})

 Deletes a domain association for an Amplify app.

# Arguments
- `app_id`:  The unique id for an Amplify app.
- `domain_name`:  The name of the domain.

"""
delete_domain_association(appId, domainName; aws_config::AbstractAWSConfig=global_aws_config()) = amplify("DELETE", "/apps/$(appId)/domains/$(domainName)"; aws_config=aws_config)
delete_domain_association(appId, domainName, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = amplify("DELETE", "/apps/$(appId)/domains/$(domainName)", params; aws_config=aws_config)

"""
    delete_job(app_id, branch_name, job_id)
    delete_job(app_id, branch_name, job_id, params::Dict{String,<:Any})

 Deletes a job for a branch of an Amplify app.

# Arguments
- `app_id`:  The unique ID for an Amplify app.
- `branch_name`:  The name for the branch, for the job.
- `job_id`:  The unique ID for the job.

"""
delete_job(appId, branchName, jobId; aws_config::AbstractAWSConfig=global_aws_config()) = amplify("DELETE", "/apps/$(appId)/branches/$(branchName)/jobs/$(jobId)"; aws_config=aws_config)
delete_job(appId, branchName, jobId, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = amplify("DELETE", "/apps/$(appId)/branches/$(branchName)/jobs/$(jobId)", params; aws_config=aws_config)

"""
    delete_webhook(webhook_id)
    delete_webhook(webhook_id, params::Dict{String,<:Any})

 Deletes a webhook.

# Arguments
- `webhook_id`:  The unique ID for a webhook.

"""
delete_webhook(webhookId; aws_config::AbstractAWSConfig=global_aws_config()) = amplify("DELETE", "/webhooks/$(webhookId)"; aws_config=aws_config)
delete_webhook(webhookId, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = amplify("DELETE", "/webhooks/$(webhookId)", params; aws_config=aws_config)

"""
    generate_access_logs(app_id, domain_name)
    generate_access_logs(app_id, domain_name, params::Dict{String,<:Any})

 Returns the website access logs for a specific time range using a presigned URL.

# Arguments
- `app_id`:  The unique ID for an Amplify app.
- `domain_name`:  The name of the domain.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"endTime"`:  The time at which the logs should end. The time range specified is
  inclusive of the end time.
- `"startTime"`:  The time at which the logs should start. The time range specified is
  inclusive of the start time.
"""
generate_access_logs(appId, domainName; aws_config::AbstractAWSConfig=global_aws_config()) = amplify("POST", "/apps/$(appId)/accesslogs", Dict{String, Any}("domainName"=>domainName); aws_config=aws_config)
generate_access_logs(appId, domainName, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = amplify("POST", "/apps/$(appId)/accesslogs", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("domainName"=>domainName), params)); aws_config=aws_config)

"""
    get_app(app_id)
    get_app(app_id, params::Dict{String,<:Any})

 Returns an existing Amplify app by appID.

# Arguments
- `app_id`:  The unique ID for an Amplify app.

"""
get_app(appId; aws_config::AbstractAWSConfig=global_aws_config()) = amplify("GET", "/apps/$(appId)"; aws_config=aws_config)
get_app(appId, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = amplify("GET", "/apps/$(appId)", params; aws_config=aws_config)

"""
    get_artifact_url(artifact_id)
    get_artifact_url(artifact_id, params::Dict{String,<:Any})

 Returns the artifact info that corresponds to an artifact id.

# Arguments
- `artifact_id`:  The unique ID for an artifact.

"""
get_artifact_url(artifactId; aws_config::AbstractAWSConfig=global_aws_config()) = amplify("GET", "/artifacts/$(artifactId)"; aws_config=aws_config)
get_artifact_url(artifactId, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = amplify("GET", "/artifacts/$(artifactId)", params; aws_config=aws_config)

"""
    get_backend_environment(app_id, environment_name)
    get_backend_environment(app_id, environment_name, params::Dict{String,<:Any})

 Returns a backend environment for an Amplify app.

# Arguments
- `app_id`:  The unique id for an Amplify app.
- `environment_name`:  The name for the backend environment.

"""
get_backend_environment(appId, environmentName; aws_config::AbstractAWSConfig=global_aws_config()) = amplify("GET", "/apps/$(appId)/backendenvironments/$(environmentName)"; aws_config=aws_config)
get_backend_environment(appId, environmentName, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = amplify("GET", "/apps/$(appId)/backendenvironments/$(environmentName)", params; aws_config=aws_config)

"""
    get_branch(app_id, branch_name)
    get_branch(app_id, branch_name, params::Dict{String,<:Any})

 Returns a branch for an Amplify app.

# Arguments
- `app_id`:  The unique ID for an Amplify app.
- `branch_name`:  The name for the branch.

"""
get_branch(appId, branchName; aws_config::AbstractAWSConfig=global_aws_config()) = amplify("GET", "/apps/$(appId)/branches/$(branchName)"; aws_config=aws_config)
get_branch(appId, branchName, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = amplify("GET", "/apps/$(appId)/branches/$(branchName)", params; aws_config=aws_config)

"""
    get_domain_association(app_id, domain_name)
    get_domain_association(app_id, domain_name, params::Dict{String,<:Any})

 Returns the domain information for an Amplify app.

# Arguments
- `app_id`:  The unique id for an Amplify app.
- `domain_name`:  The name of the domain.

"""
get_domain_association(appId, domainName; aws_config::AbstractAWSConfig=global_aws_config()) = amplify("GET", "/apps/$(appId)/domains/$(domainName)"; aws_config=aws_config)
get_domain_association(appId, domainName, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = amplify("GET", "/apps/$(appId)/domains/$(domainName)", params; aws_config=aws_config)

"""
    get_job(app_id, branch_name, job_id)
    get_job(app_id, branch_name, job_id, params::Dict{String,<:Any})

 Returns a job for a branch of an Amplify app.

# Arguments
- `app_id`:  The unique ID for an Amplify app.
- `branch_name`:  The branch name for the job.
- `job_id`:  The unique ID for the job.

"""
get_job(appId, branchName, jobId; aws_config::AbstractAWSConfig=global_aws_config()) = amplify("GET", "/apps/$(appId)/branches/$(branchName)/jobs/$(jobId)"; aws_config=aws_config)
get_job(appId, branchName, jobId, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = amplify("GET", "/apps/$(appId)/branches/$(branchName)/jobs/$(jobId)", params; aws_config=aws_config)

"""
    get_webhook(webhook_id)
    get_webhook(webhook_id, params::Dict{String,<:Any})

 Returns the webhook information that corresponds to a specified webhook ID.

# Arguments
- `webhook_id`:  The unique ID for a webhook.

"""
get_webhook(webhookId; aws_config::AbstractAWSConfig=global_aws_config()) = amplify("GET", "/webhooks/$(webhookId)"; aws_config=aws_config)
get_webhook(webhookId, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = amplify("GET", "/webhooks/$(webhookId)", params; aws_config=aws_config)

"""
    list_apps()
    list_apps(params::Dict{String,<:Any})

 Returns a list of the existing Amplify apps.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`:  The maximum number of records to list in a single response.
- `"nextToken"`:  A pagination token. If non-null, the pagination token is returned in a
  result. Pass its value in another request to retrieve more entries.
"""
list_apps(; aws_config::AbstractAWSConfig=global_aws_config()) = amplify("GET", "/apps"; aws_config=aws_config)
list_apps(params::AbstractDict{String, Any}; aws_config::AbstractAWSConfig=global_aws_config()) = amplify("GET", "/apps", params; aws_config=aws_config)

"""
    list_artifacts(app_id, branch_name, job_id)
    list_artifacts(app_id, branch_name, job_id, params::Dict{String,<:Any})

 Returns a list of artifacts for a specified app, branch, and job.

# Arguments
- `app_id`:  The unique ID for an Amplify app.
- `branch_name`:  The name of a branch that is part of an Amplify app.
- `job_id`:  The unique ID for a job.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`:  The maximum number of records to list in a single response.
- `"nextToken"`:  A pagination token. Set to null to start listing artifacts from start. If
  a non-null pagination token is returned in a result, pass its value in here to list more
  artifacts.
"""
list_artifacts(appId, branchName, jobId; aws_config::AbstractAWSConfig=global_aws_config()) = amplify("GET", "/apps/$(appId)/branches/$(branchName)/jobs/$(jobId)/artifacts"; aws_config=aws_config)
list_artifacts(appId, branchName, jobId, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = amplify("GET", "/apps/$(appId)/branches/$(branchName)/jobs/$(jobId)/artifacts", params; aws_config=aws_config)

"""
    list_backend_environments(app_id)
    list_backend_environments(app_id, params::Dict{String,<:Any})

 Lists the backend environments for an Amplify app.

# Arguments
- `app_id`:  The unique ID for an Amplify app.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"environmentName"`:  The name of the backend environment
- `"maxResults"`:  The maximum number of records to list in a single response.
- `"nextToken"`:  A pagination token. Set to null to start listing backend environments
  from the start. If a non-null pagination token is returned in a result, pass its value in
  here to list more backend environments.
"""
list_backend_environments(appId; aws_config::AbstractAWSConfig=global_aws_config()) = amplify("GET", "/apps/$(appId)/backendenvironments"; aws_config=aws_config)
list_backend_environments(appId, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = amplify("GET", "/apps/$(appId)/backendenvironments", params; aws_config=aws_config)

"""
    list_branches(app_id)
    list_branches(app_id, params::Dict{String,<:Any})

 Lists the branches of an Amplify app.

# Arguments
- `app_id`:  The unique ID for an Amplify app.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`:  The maximum number of records to list in a single response.
- `"nextToken"`:  A pagination token. Set to null to start listing branches from the start.
  If a non-null pagination token is returned in a result, pass its value in here to list more
  branches.
"""
list_branches(appId; aws_config::AbstractAWSConfig=global_aws_config()) = amplify("GET", "/apps/$(appId)/branches"; aws_config=aws_config)
list_branches(appId, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = amplify("GET", "/apps/$(appId)/branches", params; aws_config=aws_config)

"""
    list_domain_associations(app_id)
    list_domain_associations(app_id, params::Dict{String,<:Any})

 Returns the domain associations for an Amplify app.

# Arguments
- `app_id`:  The unique ID for an Amplify app.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`:  The maximum number of records to list in a single response.
- `"nextToken"`:  A pagination token. Set to null to start listing apps from the start. If
  non-null, a pagination token is returned in a result. Pass its value in here to list more
  projects.
"""
list_domain_associations(appId; aws_config::AbstractAWSConfig=global_aws_config()) = amplify("GET", "/apps/$(appId)/domains"; aws_config=aws_config)
list_domain_associations(appId, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = amplify("GET", "/apps/$(appId)/domains", params; aws_config=aws_config)

"""
    list_jobs(app_id, branch_name)
    list_jobs(app_id, branch_name, params::Dict{String,<:Any})

 Lists the jobs for a branch of an Amplify app.

# Arguments
- `app_id`:  The unique ID for an Amplify app.
- `branch_name`:  The name for a branch.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`:  The maximum number of records to list in a single response.
- `"nextToken"`:  A pagination token. Set to null to start listing steps from the start. If
  a non-null pagination token is returned in a result, pass its value in here to list more
  steps.
"""
list_jobs(appId, branchName; aws_config::AbstractAWSConfig=global_aws_config()) = amplify("GET", "/apps/$(appId)/branches/$(branchName)/jobs"; aws_config=aws_config)
list_jobs(appId, branchName, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = amplify("GET", "/apps/$(appId)/branches/$(branchName)/jobs", params; aws_config=aws_config)

"""
    list_tags_for_resource(resource_arn)
    list_tags_for_resource(resource_arn, params::Dict{String,<:Any})

 Returns a list of tags for a specified Amazon Resource Name (ARN).

# Arguments
- `resource_arn`:  The Amazon Resource Name (ARN) to use to list tags.

"""
list_tags_for_resource(resourceArn; aws_config::AbstractAWSConfig=global_aws_config()) = amplify("GET", "/tags/$(resourceArn)"; aws_config=aws_config)
list_tags_for_resource(resourceArn, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = amplify("GET", "/tags/$(resourceArn)", params; aws_config=aws_config)

"""
    list_webhooks(app_id)
    list_webhooks(app_id, params::Dict{String,<:Any})

 Returns a list of webhooks for an Amplify app.

# Arguments
- `app_id`:  The unique ID for an Amplify app.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`:  The maximum number of records to list in a single response.
- `"nextToken"`:  A pagination token. Set to null to start listing webhooks from the start.
  If non-null,the pagination token is returned in a result. Pass its value in here to list
  more webhooks.
"""
list_webhooks(appId; aws_config::AbstractAWSConfig=global_aws_config()) = amplify("GET", "/apps/$(appId)/webhooks"; aws_config=aws_config)
list_webhooks(appId, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = amplify("GET", "/apps/$(appId)/webhooks", params; aws_config=aws_config)

"""
    start_deployment(app_id, branch_name)
    start_deployment(app_id, branch_name, params::Dict{String,<:Any})

 Starts a deployment for a manually deployed app. Manually deployed apps are not connected
to a repository.

# Arguments
- `app_id`:  The unique ID for an Amplify app.
- `branch_name`:  The name for the branch, for the job.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"jobId"`:  The job ID for this deployment, generated by the create deployment request.
- `"sourceUrl"`:  The source URL for this deployment, used when calling start deployment
  without create deployment. The source URL can be any HTTP GET URL that is publicly
  accessible and downloads a single .zip file.
"""
start_deployment(appId, branchName; aws_config::AbstractAWSConfig=global_aws_config()) = amplify("POST", "/apps/$(appId)/branches/$(branchName)/deployments/start"; aws_config=aws_config)
start_deployment(appId, branchName, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = amplify("POST", "/apps/$(appId)/branches/$(branchName)/deployments/start", params; aws_config=aws_config)

"""
    start_job(app_id, branch_name, job_type)
    start_job(app_id, branch_name, job_type, params::Dict{String,<:Any})

 Starts a new job for a branch of an Amplify app.

# Arguments
- `app_id`:  The unique ID for an Amplify app.
- `branch_name`:  The branch name for the job.
- `job_type`:  Describes the type for the job. The job type RELEASE starts a new job with
  the latest change from the specified branch. This value is available only for apps that are
  connected to a repository. The job type RETRY retries an existing job. If the job type
  value is RETRY, the jobId is also required.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"commitId"`:  The commit ID from a third-party repository provider for the job.
- `"commitMessage"`:  The commit message from a third-party repository provider for the
  job.
- `"commitTime"`:  The commit date and time for the job.
- `"jobId"`:  The unique ID for an existing job. This is required if the value of jobType
  is RETRY.
- `"jobReason"`:  A descriptive reason for starting this job.
"""
start_job(appId, branchName, jobType; aws_config::AbstractAWSConfig=global_aws_config()) = amplify("POST", "/apps/$(appId)/branches/$(branchName)/jobs", Dict{String, Any}("jobType"=>jobType); aws_config=aws_config)
start_job(appId, branchName, jobType, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = amplify("POST", "/apps/$(appId)/branches/$(branchName)/jobs", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("jobType"=>jobType), params)); aws_config=aws_config)

"""
    stop_job(app_id, branch_name, job_id)
    stop_job(app_id, branch_name, job_id, params::Dict{String,<:Any})

 Stops a job that is in progress for a branch of an Amplify app.

# Arguments
- `app_id`:  The unique ID for an Amplify app.
- `branch_name`:  The name for the branch, for the job.
- `job_id`:  The unique id for the job.

"""
stop_job(appId, branchName, jobId; aws_config::AbstractAWSConfig=global_aws_config()) = amplify("DELETE", "/apps/$(appId)/branches/$(branchName)/jobs/$(jobId)/stop"; aws_config=aws_config)
stop_job(appId, branchName, jobId, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = amplify("DELETE", "/apps/$(appId)/branches/$(branchName)/jobs/$(jobId)/stop", params; aws_config=aws_config)

"""
    tag_resource(resource_arn, tags)
    tag_resource(resource_arn, tags, params::Dict{String,<:Any})

 Tags the resource with a tag key and value.

# Arguments
- `resource_arn`:  The Amazon Resource Name (ARN) to use to tag a resource.
- `tags`:  The tags used to tag the resource.

"""
tag_resource(resourceArn, tags; aws_config::AbstractAWSConfig=global_aws_config()) = amplify("POST", "/tags/$(resourceArn)", Dict{String, Any}("tags"=>tags); aws_config=aws_config)
tag_resource(resourceArn, tags, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = amplify("POST", "/tags/$(resourceArn)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("tags"=>tags), params)); aws_config=aws_config)

"""
    untag_resource(resource_arn, tag_keys)
    untag_resource(resource_arn, tag_keys, params::Dict{String,<:Any})

 Untags a resource with a specified Amazon Resource Name (ARN).

# Arguments
- `resource_arn`:  The Amazon Resource Name (ARN) to use to untag a resource.
- `tag_keys`:  The tag keys to use to untag a resource.

"""
untag_resource(resourceArn, tagKeys; aws_config::AbstractAWSConfig=global_aws_config()) = amplify("DELETE", "/tags/$(resourceArn)", Dict{String, Any}("tagKeys"=>tagKeys); aws_config=aws_config)
untag_resource(resourceArn, tagKeys, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = amplify("DELETE", "/tags/$(resourceArn)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("tagKeys"=>tagKeys), params)); aws_config=aws_config)

"""
    update_app(app_id)
    update_app(app_id, params::Dict{String,<:Any})

 Updates an existing Amplify app.

# Arguments
- `app_id`:  The unique ID for an Amplify app.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"accessToken"`:  The personal access token for a third-party source control system for
  an Amplify app. The token is used to create webhook and a read-only deploy key. The token
  is not stored.
- `"autoBranchCreationConfig"`:  The automated branch creation configuration for an Amplify
  app.
- `"autoBranchCreationPatterns"`:  Describes the automated branch creation glob patterns
  for an Amplify app.
- `"basicAuthCredentials"`:  The basic authorization credentials for an Amplify app.
- `"buildSpec"`:  The build specification (build spec) for an Amplify app.
- `"customHeaders"`: The custom HTTP headers for an Amplify app.
- `"customRules"`:  The custom redirect and rewrite rules for an Amplify app.
- `"description"`:  The description for an Amplify app.
- `"enableAutoBranchCreation"`:  Enables automated branch creation for an Amplify app.
- `"enableBasicAuth"`:  Enables basic authorization for an Amplify app.
- `"enableBranchAutoBuild"`:  Enables branch auto-building for an Amplify app.
- `"enableBranchAutoDeletion"`:  Automatically disconnects a branch in the Amplify Console
  when you delete a branch from your Git repository.
- `"environmentVariables"`:  The environment variables for an Amplify app.
- `"iamServiceRoleArn"`:  The AWS Identity and Access Management (IAM) service role for an
  Amplify app.
- `"name"`:  The name for an Amplify app.
- `"oauthToken"`:  The OAuth token for a third-party source control system for an Amplify
  app. The token is used to create a webhook and a read-only deploy key. The OAuth token is
  not stored.
- `"platform"`:  The platform for an Amplify app.
- `"repository"`:  The name of the repository for an Amplify app
"""
update_app(appId; aws_config::AbstractAWSConfig=global_aws_config()) = amplify("POST", "/apps/$(appId)"; aws_config=aws_config)
update_app(appId, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = amplify("POST", "/apps/$(appId)", params; aws_config=aws_config)

"""
    update_branch(app_id, branch_name)
    update_branch(app_id, branch_name, params::Dict{String,<:Any})

 Updates a branch for an Amplify app.

# Arguments
- `app_id`:  The unique ID for an Amplify app.
- `branch_name`:  The name for the branch.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"backendEnvironmentArn"`:  The Amazon Resource Name (ARN) for a backend environment that
  is part of an Amplify app.
- `"basicAuthCredentials"`:  The basic authorization credentials for the branch.
- `"buildSpec"`:  The build specification (build spec) for the branch.
- `"description"`:  The description for the branch.
- `"displayName"`:  The display name for a branch. This is used as the default domain
  prefix.
- `"enableAutoBuild"`:  Enables auto building for the branch.
- `"enableBasicAuth"`:  Enables basic authorization for the branch.
- `"enableNotification"`:  Enables notifications for the branch.
- `"enablePerformanceMode"`: Enables performance mode for the branch. Performance mode
  optimizes for faster hosting performance by keeping content cached at the edge for a longer
  interval. When performance mode is enabled, hosting configuration or code changes can take
  up to 10 minutes to roll out.
- `"enablePullRequestPreview"`:  Enables pull request previews for this branch.
- `"environmentVariables"`:  The environment variables for the branch.
- `"framework"`:  The framework for the branch.
- `"pullRequestEnvironmentName"`:  The Amplify environment name for the pull request.
- `"stage"`:  Describes the current stage for the branch.
- `"ttl"`:  The content Time to Live (TTL) for the website in seconds.
"""
update_branch(appId, branchName; aws_config::AbstractAWSConfig=global_aws_config()) = amplify("POST", "/apps/$(appId)/branches/$(branchName)"; aws_config=aws_config)
update_branch(appId, branchName, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = amplify("POST", "/apps/$(appId)/branches/$(branchName)", params; aws_config=aws_config)

"""
    update_domain_association(app_id, domain_name, sub_domain_settings)
    update_domain_association(app_id, domain_name, sub_domain_settings, params::Dict{String,<:Any})

 Creates a new domain association for an Amplify app.

# Arguments
- `app_id`:  The unique ID for an Amplify app.
- `domain_name`:  The name of the domain.
- `sub_domain_settings`:  Describes the settings for the subdomain.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"autoSubDomainCreationPatterns"`:  Sets the branch patterns for automatic subdomain
  creation.
- `"autoSubDomainIAMRole"`:  The required AWS Identity and Access Management (IAM) service
  role for the Amazon Resource Name (ARN) for automatically creating subdomains.
- `"enableAutoSubDomain"`:  Enables the automated creation of subdomains for branches.
"""
update_domain_association(appId, domainName, subDomainSettings; aws_config::AbstractAWSConfig=global_aws_config()) = amplify("POST", "/apps/$(appId)/domains/$(domainName)", Dict{String, Any}("subDomainSettings"=>subDomainSettings); aws_config=aws_config)
update_domain_association(appId, domainName, subDomainSettings, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = amplify("POST", "/apps/$(appId)/domains/$(domainName)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("subDomainSettings"=>subDomainSettings), params)); aws_config=aws_config)

"""
    update_webhook(webhook_id)
    update_webhook(webhook_id, params::Dict{String,<:Any})

 Updates a webhook.

# Arguments
- `webhook_id`:  The unique ID for a webhook.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"branchName"`:  The name for a branch that is part of an Amplify app.
- `"description"`:  The description for a webhook.
"""
update_webhook(webhookId; aws_config::AbstractAWSConfig=global_aws_config()) = amplify("POST", "/webhooks/$(webhookId)"; aws_config=aws_config)
update_webhook(webhookId, params::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = amplify("POST", "/webhooks/$(webhookId)", params; aws_config=aws_config)
