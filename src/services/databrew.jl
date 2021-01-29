# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: databrew
using AWS.Compat
using AWS.UUIDs

"""
    BatchDeleteRecipeVersion()

Deletes one or more versions of a recipe at a time. The entire request will be rejected if:   The recipe does not exist.   There is an invalid version identifier in the list of versions.   The verision list is empty.   The version list size exceeds 50.   The verison list contains duplicate entries.   The request will complete successfully, but with partial failures, if:   A version does not exist.   A version is being used by a job.   You specify LATEST_WORKING, but it's being used by a project.   The version fails to be deleted.   The LATEST_WORKING version will only be deleted if the recipe has no other versions. If you try to delete LATEST_WORKING while other versions exist (or if they can't be deleted), then LATEST_WORKING will be listed as partial failure in the response.

# Required Parameters
- `RecipeVersions`: An array of version identifiers, for the recipe versions to be deleted. You can specify numeric versions (X.Y) or LATEST_WORKING. LATEST_PUBLISHED is not supported.
- `name`: The name of the recipe whose versions are to be deleted.

"""
batch_delete_recipe_version(RecipeVersions, name; aws_config::AbstractAWSConfig=global_aws_config()) = databrew("POST", "/recipes/$(name)/batchDeleteRecipeVersion", Dict{String, Any}("RecipeVersions"=>RecipeVersions); aws_config=aws_config)
batch_delete_recipe_version(RecipeVersions, name, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = databrew("POST", "/recipes/$(name)/batchDeleteRecipeVersion", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("RecipeVersions"=>RecipeVersions), args)); aws_config=aws_config)

"""
    CreateDataset()

Creates a new DataBrew dataset.

# Required Parameters
- `Input`: 
- `Name`: The name of the dataset to be created. Valid characters are alphanumeric (A-Z, a-z, 0-9), hyphen (-), period (.), and space.

# Optional Parameters
- `FormatOptions`: 
- `Tags`: Metadata tags to apply to this dataset.
"""
create_dataset(Input, Name; aws_config::AbstractAWSConfig=global_aws_config()) = databrew("POST", "/datasets", Dict{String, Any}("Input"=>Input, "Name"=>Name); aws_config=aws_config)
create_dataset(Input, Name, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = databrew("POST", "/datasets", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Input"=>Input, "Name"=>Name), args)); aws_config=aws_config)

"""
    CreateProfileJob()

Creates a new job to analyze a dataset and create its data profile.

# Required Parameters
- `DatasetName`: The name of the dataset that this job is to act upon.
- `Name`: The name of the job to be created. Valid characters are alphanumeric (A-Z, a-z, 0-9), hyphen (-), period (.), and space.
- `OutputLocation`: 
- `RoleArn`: The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role to be assumed when DataBrew runs the job.

# Optional Parameters
- `EncryptionKeyArn`: The Amazon Resource Name (ARN) of an encryption key that is used to protect the job.
- `EncryptionMode`: The encryption mode for the job, which can be one of the following:    SSE-KMS - para&gt;SSE-KMS - server-side encryption with AWS KMS-managed keys.    SSE-S3 - Server-side encryption with keys managed by Amazon S3.  
- `LogSubscription`: Enables or disables Amazon CloudWatch logging for the job. If logging is enabled, CloudWatch writes one log stream for each job run.
- `MaxCapacity`: The maximum number of nodes that DataBrew can use when the job processes data.
- `MaxRetries`: The maximum number of times to retry the job after a job run fails.
- `Tags`: Metadata tags to apply to this job.
- `Timeout`: The job's timeout in minutes. A job that attempts to run longer than this timeout period ends with a status of TIMEOUT.
"""
create_profile_job(DatasetName, Name, OutputLocation, RoleArn; aws_config::AbstractAWSConfig=global_aws_config()) = databrew("POST", "/profileJobs", Dict{String, Any}("DatasetName"=>DatasetName, "Name"=>Name, "OutputLocation"=>OutputLocation, "RoleArn"=>RoleArn); aws_config=aws_config)
create_profile_job(DatasetName, Name, OutputLocation, RoleArn, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = databrew("POST", "/profileJobs", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("DatasetName"=>DatasetName, "Name"=>Name, "OutputLocation"=>OutputLocation, "RoleArn"=>RoleArn), args)); aws_config=aws_config)

"""
    CreateProject()

Creates a new DataBrew project.

# Required Parameters
- `DatasetName`: The name of an existing dataset to associate this project with.
- `Name`: A unique name for the new project. Valid characters are alphanumeric (A-Z, a-z, 0-9), hyphen (-), period (.), and space.
- `RecipeName`: The name of an existing recipe to associate with the project.
- `RoleArn`: The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role to be assumed for this request.

# Optional Parameters
- `Sample`: 
- `Tags`: Metadata tags to apply to this project.
"""
create_project(DatasetName, Name, RecipeName, RoleArn; aws_config::AbstractAWSConfig=global_aws_config()) = databrew("POST", "/projects", Dict{String, Any}("DatasetName"=>DatasetName, "Name"=>Name, "RecipeName"=>RecipeName, "RoleArn"=>RoleArn); aws_config=aws_config)
create_project(DatasetName, Name, RecipeName, RoleArn, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = databrew("POST", "/projects", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("DatasetName"=>DatasetName, "Name"=>Name, "RecipeName"=>RecipeName, "RoleArn"=>RoleArn), args)); aws_config=aws_config)

"""
    CreateRecipe()

Creates a new DataBrew recipe.

# Required Parameters
- `Name`: A unique name for the recipe. Valid characters are alphanumeric (A-Z, a-z, 0-9), hyphen (-), period (.), and space.
- `Steps`: An array containing the steps to be performed by the recipe. Each recipe step consists of one recipe action and (optionally) an array of condition expressions.

# Optional Parameters
- `Description`: A description for the recipe.
- `Tags`: Metadata tags to apply to this recipe.
"""
create_recipe(Name, Steps; aws_config::AbstractAWSConfig=global_aws_config()) = databrew("POST", "/recipes", Dict{String, Any}("Name"=>Name, "Steps"=>Steps); aws_config=aws_config)
create_recipe(Name, Steps, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = databrew("POST", "/recipes", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Name"=>Name, "Steps"=>Steps), args)); aws_config=aws_config)

"""
    CreateRecipeJob()

Creates a new job to transform input data, using steps defined in an existing AWS Glue DataBrew recipe

# Required Parameters
- `Name`: A unique name for the job. Valid characters are alphanumeric (A-Z, a-z, 0-9), hyphen (-), period (.), and space.
- `Outputs`: One or more artifacts that represent the output from running the job.
- `RoleArn`: The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role to be assumed when DataBrew runs the job.

# Optional Parameters
- `DatasetName`: The name of the dataset that this job processes.
- `EncryptionKeyArn`: The Amazon Resource Name (ARN) of an encryption key that is used to protect the job.
- `EncryptionMode`: The encryption mode for the job, which can be one of the following:    SSE-KMS - Server-side encryption with AWS KMS-managed keys.    SSE-S3 - Server-side encryption with keys managed by Amazon S3.  
- `LogSubscription`: Enables or disables Amazon CloudWatch logging for the job. If logging is enabled, CloudWatch writes one log stream for each job run.
- `MaxCapacity`: The maximum number of nodes that DataBrew can consume when the job processes data.
- `MaxRetries`: The maximum number of times to retry the job after a job run fails.
- `ProjectName`: Either the name of an existing project, or a combination of a recipe and a dataset to associate with the recipe.
- `RecipeReference`: 
- `Tags`: Metadata tags to apply to this job.
- `Timeout`: The job's timeout in minutes. A job that attempts to run longer than this timeout period ends with a status of TIMEOUT.
"""
create_recipe_job(Name, Outputs, RoleArn; aws_config::AbstractAWSConfig=global_aws_config()) = databrew("POST", "/recipeJobs", Dict{String, Any}("Name"=>Name, "Outputs"=>Outputs, "RoleArn"=>RoleArn); aws_config=aws_config)
create_recipe_job(Name, Outputs, RoleArn, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = databrew("POST", "/recipeJobs", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Name"=>Name, "Outputs"=>Outputs, "RoleArn"=>RoleArn), args)); aws_config=aws_config)

"""
    CreateSchedule()

Creates a new schedule for one or more DataBrew jobs. Jobs can be run at a specific date and time, or at regular intervals.

# Required Parameters
- `CronExpression`: The date or dates and time or times when the jobs are to be run. For more information, see Cron expressions in the AWS Glue DataBrew Developer Guide.
- `Name`: A unique name for the schedule. Valid characters are alphanumeric (A-Z, a-z, 0-9), hyphen (-), period (.), and space.

# Optional Parameters
- `JobNames`: The name or names of one or more jobs to be run.
- `Tags`: Metadata tags to apply to this schedule.
"""
create_schedule(CronExpression, Name; aws_config::AbstractAWSConfig=global_aws_config()) = databrew("POST", "/schedules", Dict{String, Any}("CronExpression"=>CronExpression, "Name"=>Name); aws_config=aws_config)
create_schedule(CronExpression, Name, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = databrew("POST", "/schedules", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("CronExpression"=>CronExpression, "Name"=>Name), args)); aws_config=aws_config)

"""
    DeleteDataset()

Deletes a dataset from DataBrew.

# Required Parameters
- `name`: The name of the dataset to be deleted.

"""
delete_dataset(name; aws_config::AbstractAWSConfig=global_aws_config()) = databrew("DELETE", "/datasets/$(name)"; aws_config=aws_config)
delete_dataset(name, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = databrew("DELETE", "/datasets/$(name)", args; aws_config=aws_config)

"""
    DeleteJob()

Deletes the specified DataBrew job.

# Required Parameters
- `name`: The name of the job to be deleted.

"""
delete_job(name; aws_config::AbstractAWSConfig=global_aws_config()) = databrew("DELETE", "/jobs/$(name)"; aws_config=aws_config)
delete_job(name, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = databrew("DELETE", "/jobs/$(name)", args; aws_config=aws_config)

"""
    DeleteProject()

Deletes an existing DataBrew project.

# Required Parameters
- `name`: The name of the project to be deleted.

"""
delete_project(name; aws_config::AbstractAWSConfig=global_aws_config()) = databrew("DELETE", "/projects/$(name)"; aws_config=aws_config)
delete_project(name, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = databrew("DELETE", "/projects/$(name)", args; aws_config=aws_config)

"""
    DeleteRecipeVersion()

Deletes a single version of a DataBrew recipe.

# Required Parameters
- `name`: The name of the recipe.
- `recipeVersion`: The version of the recipe to be deleted. You can specify a numeric versions (X.Y) or LATEST_WORKING. LATEST_PUBLISHED is not supported.

"""
delete_recipe_version(name, recipeVersion; aws_config::AbstractAWSConfig=global_aws_config()) = databrew("DELETE", "/recipes/$(name)/recipeVersion/$(recipeVersion)"; aws_config=aws_config)
delete_recipe_version(name, recipeVersion, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = databrew("DELETE", "/recipes/$(name)/recipeVersion/$(recipeVersion)", args; aws_config=aws_config)

"""
    DeleteSchedule()

Deletes the specified DataBrew schedule.

# Required Parameters
- `name`: The name of the schedule to be deleted.

"""
delete_schedule(name; aws_config::AbstractAWSConfig=global_aws_config()) = databrew("DELETE", "/schedules/$(name)"; aws_config=aws_config)
delete_schedule(name, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = databrew("DELETE", "/schedules/$(name)", args; aws_config=aws_config)

"""
    DescribeDataset()

Returns the definition of a specific DataBrew dataset.

# Required Parameters
- `name`: The name of the dataset to be described.

"""
describe_dataset(name; aws_config::AbstractAWSConfig=global_aws_config()) = databrew("GET", "/datasets/$(name)"; aws_config=aws_config)
describe_dataset(name, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = databrew("GET", "/datasets/$(name)", args; aws_config=aws_config)

"""
    DescribeJob()

Returns the definition of a specific DataBrew job.

# Required Parameters
- `name`: The name of the job to be described.

"""
describe_job(name; aws_config::AbstractAWSConfig=global_aws_config()) = databrew("GET", "/jobs/$(name)"; aws_config=aws_config)
describe_job(name, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = databrew("GET", "/jobs/$(name)", args; aws_config=aws_config)

"""
    DescribeProject()

Returns the definition of a specific DataBrew project.

# Required Parameters
- `name`: The name of the project to be described.

"""
describe_project(name; aws_config::AbstractAWSConfig=global_aws_config()) = databrew("GET", "/projects/$(name)"; aws_config=aws_config)
describe_project(name, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = databrew("GET", "/projects/$(name)", args; aws_config=aws_config)

"""
    DescribeRecipe()

Returns the definition of a specific DataBrew recipe corresponding to a particular version.

# Required Parameters
- `name`: The name of the recipe to be described.

# Optional Parameters
- `recipeVersion`: The recipe version identifier. If this parameter isn't specified, then the latest published version is returned.
"""
describe_recipe(name; aws_config::AbstractAWSConfig=global_aws_config()) = databrew("GET", "/recipes/$(name)"; aws_config=aws_config)
describe_recipe(name, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = databrew("GET", "/recipes/$(name)", args; aws_config=aws_config)

"""
    DescribeSchedule()

Returns the definition of a specific DataBrew schedule.

# Required Parameters
- `name`: The name of the schedule to be described.

"""
describe_schedule(name; aws_config::AbstractAWSConfig=global_aws_config()) = databrew("GET", "/schedules/$(name)"; aws_config=aws_config)
describe_schedule(name, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = databrew("GET", "/schedules/$(name)", args; aws_config=aws_config)

"""
    ListDatasets()

Lists all of the DataBrew datasets.

# Optional Parameters
- `maxResults`: The maximum number of results to return in this request. 
- `nextToken`: The token returned by a previous call to retrieve the next set of results.
"""
list_datasets(; aws_config::AbstractAWSConfig=global_aws_config()) = databrew("GET", "/datasets"; aws_config=aws_config)
list_datasets(args::AbstractDict{String, Any}; aws_config::AbstractAWSConfig=global_aws_config()) = databrew("GET", "/datasets", args; aws_config=aws_config)

"""
    ListJobRuns()

Lists all of the previous runs of a particular DataBrew job.

# Required Parameters
- `name`: The name of the job.

# Optional Parameters
- `maxResults`: The maximum number of results to return in this request. 
- `nextToken`: The token returned by a previous call to retrieve the next set of results.
"""
list_job_runs(name; aws_config::AbstractAWSConfig=global_aws_config()) = databrew("GET", "/jobs/$(name)/jobRuns"; aws_config=aws_config)
list_job_runs(name, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = databrew("GET", "/jobs/$(name)/jobRuns", args; aws_config=aws_config)

"""
    ListJobs()

Lists all of the DataBrew jobs that are defined.

# Optional Parameters
- `datasetName`: The name of a dataset. Using this parameter indicates to return only those jobs that act on the specified dataset.
- `maxResults`: The maximum number of results to return in this request. 
- `nextToken`: A token generated by DataBrew that specifies where to continue pagination if a previous request was truncated. To get the next set of pages, pass in the NextToken value from the response object of the previous page call. 
- `projectName`: The name of a project. Using this parameter indicates to return only those jobs that are associated with the specified project.
"""
list_jobs(; aws_config::AbstractAWSConfig=global_aws_config()) = databrew("GET", "/jobs"; aws_config=aws_config)
list_jobs(args::AbstractDict{String, Any}; aws_config::AbstractAWSConfig=global_aws_config()) = databrew("GET", "/jobs", args; aws_config=aws_config)

"""
    ListProjects()

Lists all of the DataBrew projects that are defined.

# Optional Parameters
- `maxResults`: The maximum number of results to return in this request. 
- `nextToken`: The token returned by a previous call to retrieve the next set of results.
"""
list_projects(; aws_config::AbstractAWSConfig=global_aws_config()) = databrew("GET", "/projects"; aws_config=aws_config)
list_projects(args::AbstractDict{String, Any}; aws_config::AbstractAWSConfig=global_aws_config()) = databrew("GET", "/projects", args; aws_config=aws_config)

"""
    ListRecipeVersions()

Lists the versions of a particular DataBrew recipe, except for LATEST_WORKING.

# Required Parameters
- `name`: The name of the recipe for which to return version information.

# Optional Parameters
- `maxResults`: The maximum number of results to return in this request. 
- `nextToken`: The token returned by a previous call to retrieve the next set of results.
"""
list_recipe_versions(name; aws_config::AbstractAWSConfig=global_aws_config()) = databrew("GET", "/recipeVersions", Dict{String, Any}("name"=>name); aws_config=aws_config)
list_recipe_versions(name, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = databrew("GET", "/recipeVersions", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("name"=>name), args)); aws_config=aws_config)

"""
    ListRecipes()

Lists all of the DataBrew recipes that are defined.

# Optional Parameters
- `maxResults`: The maximum number of results to return in this request. 
- `nextToken`: The token returned by a previous call to retrieve the next set of results.
- `recipeVersion`: Return only those recipes with a version identifier of LATEST_WORKING or LATEST_PUBLISHED. If RecipeVersion is omitted, ListRecipes returns all of the LATEST_PUBLISHED recipe versions. Valid values: LATEST_WORKING | LATEST_PUBLISHED 
"""
list_recipes(; aws_config::AbstractAWSConfig=global_aws_config()) = databrew("GET", "/recipes"; aws_config=aws_config)
list_recipes(args::AbstractDict{String, Any}; aws_config::AbstractAWSConfig=global_aws_config()) = databrew("GET", "/recipes", args; aws_config=aws_config)

"""
    ListSchedules()

Lists the DataBrew schedules that are defined.

# Optional Parameters
- `jobName`: The name of the job that these schedules apply to.
- `maxResults`: The maximum number of results to return in this request. 
- `nextToken`: The token returned by a previous call to retrieve the next set of results.
"""
list_schedules(; aws_config::AbstractAWSConfig=global_aws_config()) = databrew("GET", "/schedules"; aws_config=aws_config)
list_schedules(args::AbstractDict{String, Any}; aws_config::AbstractAWSConfig=global_aws_config()) = databrew("GET", "/schedules", args; aws_config=aws_config)

"""
    ListTagsForResource()

Lists all the tags for a DataBrew resource. 

# Required Parameters
- `ResourceArn`: The Amazon Resource Name (ARN) string that uniquely identifies the DataBrew resource. 

"""
list_tags_for_resource(ResourceArn; aws_config::AbstractAWSConfig=global_aws_config()) = databrew("GET", "/tags/$(ResourceArn)"; aws_config=aws_config)
list_tags_for_resource(ResourceArn, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = databrew("GET", "/tags/$(ResourceArn)", args; aws_config=aws_config)

"""
    PublishRecipe()

Publishes a new version of a DataBrew recipe.

# Required Parameters
- `name`: The name of the recipe to be published.

# Optional Parameters
- `Description`: A description of the recipe to be published, for this version of the recipe.
"""
publish_recipe(name; aws_config::AbstractAWSConfig=global_aws_config()) = databrew("POST", "/recipes/$(name)/publishRecipe"; aws_config=aws_config)
publish_recipe(name, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = databrew("POST", "/recipes/$(name)/publishRecipe", args; aws_config=aws_config)

"""
    SendProjectSessionAction()

Performs a recipe step within an interactive DataBrew session that's currently open.

# Required Parameters
- `name`: The name of the project to apply the action to.

# Optional Parameters
- `ClientSessionId`: A unique identifier for an interactive session that's currently open and ready for work. The action will be performed on this session.
- `Preview`: If true, the result of the recipe step will be returned, but not applied.
- `RecipeStep`: 
- `StepIndex`: The index from which to preview a step. This index is used to preview the result of steps that have already been applied, so that the resulting view frame is from earlier in the view frame stack.
- `ViewFrame`: 
"""
send_project_session_action(name; aws_config::AbstractAWSConfig=global_aws_config()) = databrew("PUT", "/projects/$(name)/sendProjectSessionAction"; aws_config=aws_config)
send_project_session_action(name, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = databrew("PUT", "/projects/$(name)/sendProjectSessionAction", args; aws_config=aws_config)

"""
    StartJobRun()

Runs a DataBrew job.

# Required Parameters
- `name`: The name of the job to be run.

"""
start_job_run(name; aws_config::AbstractAWSConfig=global_aws_config()) = databrew("POST", "/jobs/$(name)/startJobRun"; aws_config=aws_config)
start_job_run(name, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = databrew("POST", "/jobs/$(name)/startJobRun", args; aws_config=aws_config)

"""
    StartProjectSession()

Creates an interactive session, enabling you to manipulate data in a DataBrew project.

# Required Parameters
- `name`: The name of the project to act upon.

# Optional Parameters
- `AssumeControl`: A value that, if true, enables you to take control of a session, even if a different client is currently accessing the project.
"""
start_project_session(name; aws_config::AbstractAWSConfig=global_aws_config()) = databrew("PUT", "/projects/$(name)/startProjectSession"; aws_config=aws_config)
start_project_session(name, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = databrew("PUT", "/projects/$(name)/startProjectSession", args; aws_config=aws_config)

"""
    StopJobRun()

Stops a particular run of a job.

# Required Parameters
- `name`: The name of the job to be stopped.
- `runId`: The ID of the job run to be stopped.

"""
stop_job_run(name, runId; aws_config::AbstractAWSConfig=global_aws_config()) = databrew("POST", "/jobs/$(name)/jobRun/$(runId)/stopJobRun"; aws_config=aws_config)
stop_job_run(name, runId, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = databrew("POST", "/jobs/$(name)/jobRun/$(runId)/stopJobRun", args; aws_config=aws_config)

"""
    TagResource()

Adds metadata tags to a DataBrew resource, such as a dataset, project, recipe, job, or schedule.

# Required Parameters
- `ResourceArn`: The DataBrew resource to which tags should be added. The value for this parameter is an Amazon Resource Name (ARN). For DataBrew, you can tag a dataset, a job, a project, or a recipe.
- `Tags`: One or more tags to be assigned to the resource.

"""
tag_resource(ResourceArn, Tags; aws_config::AbstractAWSConfig=global_aws_config()) = databrew("POST", "/tags/$(ResourceArn)", Dict{String, Any}("Tags"=>Tags); aws_config=aws_config)
tag_resource(ResourceArn, Tags, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = databrew("POST", "/tags/$(ResourceArn)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Tags"=>Tags), args)); aws_config=aws_config)

"""
    UntagResource()

Removes metadata tags from a DataBrew resource.

# Required Parameters
- `ResourceArn`: A DataBrew resource from which you want to remove a tag or tags. The value for this parameter is an Amazon Resource Name (ARN). 
- `tagKeys`: The tag keys (names) of one or more tags to be removed.

"""
untag_resource(ResourceArn, tagKeys; aws_config::AbstractAWSConfig=global_aws_config()) = databrew("DELETE", "/tags/$(ResourceArn)", Dict{String, Any}("tagKeys"=>tagKeys); aws_config=aws_config)
untag_resource(ResourceArn, tagKeys, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = databrew("DELETE", "/tags/$(ResourceArn)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("tagKeys"=>tagKeys), args)); aws_config=aws_config)

"""
    UpdateDataset()

Modifies the definition of an existing DataBrew dataset.

# Required Parameters
- `Input`: 
- `name`: The name of the dataset to be updated.

# Optional Parameters
- `FormatOptions`: 
"""
update_dataset(Input, name; aws_config::AbstractAWSConfig=global_aws_config()) = databrew("PUT", "/datasets/$(name)", Dict{String, Any}("Input"=>Input); aws_config=aws_config)
update_dataset(Input, name, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = databrew("PUT", "/datasets/$(name)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Input"=>Input), args)); aws_config=aws_config)

"""
    UpdateProfileJob()

Modifies the definition of an existing profile job.

# Required Parameters
- `OutputLocation`: 
- `RoleArn`: The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role to be assumed when DataBrew runs the job.
- `name`: The name of the job to be updated.

# Optional Parameters
- `EncryptionKeyArn`: The Amazon Resource Name (ARN) of an encryption key that is used to protect the job.
- `EncryptionMode`: The encryption mode for the job, which can be one of the following:    SSE-KMS - Server-side encryption with AWS KMS-managed keys.    SSE-S3 - Server-side encryption with keys managed by Amazon S3.  
- `LogSubscription`: Enables or disables Amazon CloudWatch logging for the job. If logging is enabled, CloudWatch writes one log stream for each job run.
- `MaxCapacity`: The maximum number of compute nodes that DataBrew can use when the job processes data.
- `MaxRetries`: The maximum number of times to retry the job after a job run fails.
- `Timeout`: The job's timeout in minutes. A job that attempts to run longer than this timeout period ends with a status of TIMEOUT.
"""
update_profile_job(OutputLocation, RoleArn, name; aws_config::AbstractAWSConfig=global_aws_config()) = databrew("PUT", "/profileJobs/$(name)", Dict{String, Any}("OutputLocation"=>OutputLocation, "RoleArn"=>RoleArn); aws_config=aws_config)
update_profile_job(OutputLocation, RoleArn, name, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = databrew("PUT", "/profileJobs/$(name)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("OutputLocation"=>OutputLocation, "RoleArn"=>RoleArn), args)); aws_config=aws_config)

"""
    UpdateProject()

Modifies the definition of an existing DataBrew project.

# Required Parameters
- `RoleArn`: The Amazon Resource Name (ARN) of the IAM role to be assumed for this request.
- `name`: The name of the project to be updated.

# Optional Parameters
- `Sample`: 
"""
update_project(RoleArn, name; aws_config::AbstractAWSConfig=global_aws_config()) = databrew("PUT", "/projects/$(name)", Dict{String, Any}("RoleArn"=>RoleArn); aws_config=aws_config)
update_project(RoleArn, name, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = databrew("PUT", "/projects/$(name)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("RoleArn"=>RoleArn), args)); aws_config=aws_config)

"""
    UpdateRecipe()

Modifies the definition of the LATEST_WORKING version of a DataBrew recipe.

# Required Parameters
- `name`: The name of the recipe to be updated.

# Optional Parameters
- `Description`: A description of the recipe.
- `Steps`: One or more steps to be performed by the recipe. Each step consists of an action, and the conditions under which the action should succeed.
"""
update_recipe(name; aws_config::AbstractAWSConfig=global_aws_config()) = databrew("PUT", "/recipes/$(name)"; aws_config=aws_config)
update_recipe(name, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = databrew("PUT", "/recipes/$(name)", args; aws_config=aws_config)

"""
    UpdateRecipeJob()

Modifies the definition of an existing DataBrew recipe job.

# Required Parameters
- `Outputs`: One or more artifacts that represent the output from running the job. 
- `RoleArn`: The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role to be assumed when DataBrew runs the job.
- `name`: The name of the job to update.

# Optional Parameters
- `EncryptionKeyArn`: The Amazon Resource Name (ARN) of an encryption key that is used to protect the job.
- `EncryptionMode`: The encryption mode for the job, which can be one of the following:    SSE-KMS - Server-side encryption with AWS KMS-managed keys.    SSE-S3 - Server-side encryption with keys managed by Amazon S3.  
- `LogSubscription`: Enables or disables Amazon CloudWatch logging for the job. If logging is enabled, CloudWatch writes one log stream for each job run.
- `MaxCapacity`: The maximum number of nodes that DataBrew can consume when the job processes data.
- `MaxRetries`: The maximum number of times to retry the job after a job run fails.
- `Timeout`: The job's timeout in minutes. A job that attempts to run longer than this timeout period ends with a status of TIMEOUT.
"""
update_recipe_job(Outputs, RoleArn, name; aws_config::AbstractAWSConfig=global_aws_config()) = databrew("PUT", "/recipeJobs/$(name)", Dict{String, Any}("Outputs"=>Outputs, "RoleArn"=>RoleArn); aws_config=aws_config)
update_recipe_job(Outputs, RoleArn, name, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = databrew("PUT", "/recipeJobs/$(name)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Outputs"=>Outputs, "RoleArn"=>RoleArn), args)); aws_config=aws_config)

"""
    UpdateSchedule()

Modifies the definition of an existing DataBrew schedule.

# Required Parameters
- `CronExpression`: The date or dates and time or times when the jobs are to be run. For more information, see Cron expressions in the AWS Glue DataBrew Developer Guide.
- `name`: The name of the schedule to update.

# Optional Parameters
- `JobNames`: The name or names of one or more jobs to be run for this schedule.
"""
update_schedule(CronExpression, name; aws_config::AbstractAWSConfig=global_aws_config()) = databrew("PUT", "/schedules/$(name)", Dict{String, Any}("CronExpression"=>CronExpression); aws_config=aws_config)
update_schedule(CronExpression, name, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = databrew("PUT", "/schedules/$(name)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("CronExpression"=>CronExpression), args)); aws_config=aws_config)
