# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: greengrassv2
using AWS.Compat
using AWS.UUIDs

"""
    CancelDeployment()

Cancels a deployment. This operation cancels the deployment for devices that haven't yet received it. If a device already received the deployment, this operation doesn't change anything for that device.

# Required Parameters
- `deploymentId`: The ID of the deployment.

"""
cancel_deployment(deploymentId; aws_config::AbstractAWSConfig=global_aws_config()) = greengrassv2("POST", "/greengrass/v2/deployments/$(deploymentId)/cancel"; aws_config=aws_config)
cancel_deployment(deploymentId, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = greengrassv2("POST", "/greengrass/v2/deployments/$(deploymentId)/cancel", args; aws_config=aws_config)

"""
    CreateComponentVersion()

Creates a component. Components are software that run on AWS IoT Greengrass core devices. After you develop and test a component on your core device, you can use this operation to upload your component to AWS IoT Greengrass. Then, you can deploy the component to other core devices. You can use this operation to do the following:    Create components from recipes  Create a component from a recipe, which is a file that defines the component's metadata, parameters, dependencies, lifecycle, artifacts, and platform capability. For more information, see AWS IoT Greengrass component recipe reference in the AWS IoT Greengrass V2 Developer Guide. To create a component from a recipe, specify inlineRecipe when you call this operation.    Create components from Lambda functions  Create a component from an AWS Lambda function that runs on AWS IoT Greengrass. This creates a recipe and artifacts from the Lambda function's deployment package. You can use this operation to migrate Lambda functions from AWS IoT Greengrass V1 to AWS IoT Greengrass V2. This function only accepts Lambda functions that use the following runtimes:   Python 2.7 – python2.7    Python 3.7 – python3.7    Python 3.8 – python3.8    Java 8 – java8    Node.js 10 – nodejs10.x    Node.js 12 – nodejs12.x    To create a component from a Lambda function, specify lambdaFunction when you call this operation.  

# Optional Parameters
- `inlineRecipe`: The recipe to use to create the component. The recipe defines the component's metadata, parameters, dependencies, lifecycle, artifacts, and platform compatibility. You must specify either inlineRecipe or lambdaFunction.
- `lambdaFunction`: The parameters to create a component from a Lambda function. You must specify either inlineRecipe or lambdaFunction.
- `tags`: A list of key-value pairs that contain metadata for the resource. For more information, see Tag your resources in the AWS IoT Greengrass V2 Developer Guide.
"""
create_component_version(; aws_config::AbstractAWSConfig=global_aws_config()) = greengrassv2("POST", "/greengrass/v2/createComponentVersion"; aws_config=aws_config)
create_component_version(args::AbstractDict{String, Any}; aws_config::AbstractAWSConfig=global_aws_config()) = greengrassv2("POST", "/greengrass/v2/createComponentVersion", args; aws_config=aws_config)

"""
    CreateDeployment()

Creates a continuous deployment for a target, which is a AWS IoT Greengrass core device or group of core devices. When you add a new core device to a group of core devices that has a deployment, AWS IoT Greengrass deploys that group's deployment to the new device. You can define one deployment for each target. When you create a new deployment for a target that has an existing deployment, you replace the previous deployment. AWS IoT Greengrass applies the new deployment to the target devices. Every deployment has a revision number that indicates how many deployment revisions you define for a target. Use this operation to create a new revision of an existing deployment. This operation returns the revision number of the new deployment when you create it. For more information, see the Create deployments in the AWS IoT Greengrass V2 Developer Guide.

# Required Parameters
- `targetArn`: The ARN of the target AWS IoT thing or thing group.

# Optional Parameters
- `components`: The components to deploy. This is a dictionary, where each key is the name of a component, and each key's value is the version and configuration to deploy for that component.
- `deploymentName`: The name of the deployment. You can create deployments without names. If you create a deployment without a name, the AWS IoT Greengrass V2 console shows the deployment name as &lt;targetType&gt;:&lt;targetName&gt;, where targetType and targetName are the type and name of the deployment target.
- `deploymentPolicies`: The deployment policies for the deployment. These policies define how the deployment updates components and handles failure.
- `iotJobConfiguration`: The job configuration for the deployment configuration. The job configuration specifies the rollout, timeout, and stop configurations for the deployment configuration.
- `tags`: A list of key-value pairs that contain metadata for the resource. For more information, see Tag your resources in the AWS IoT Greengrass V2 Developer Guide.
"""
create_deployment(targetArn; aws_config::AbstractAWSConfig=global_aws_config()) = greengrassv2("POST", "/greengrass/v2/deployments", Dict{String, Any}("targetArn"=>targetArn); aws_config=aws_config)
create_deployment(targetArn, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = greengrassv2("POST", "/greengrass/v2/deployments", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("targetArn"=>targetArn), args)); aws_config=aws_config)

"""
    DeleteComponent()

Deletes a version of a component from AWS IoT Greengrass.  This operation deletes the component's recipe and artifacts. As a result, deployments that refer to this component version will fail. If you have deployments that use this component version, you can remove the component from the deployment or update the deployment to use a valid version. 

# Required Parameters
- `arn`: The ARN of the component version.

"""
delete_component(arn; aws_config::AbstractAWSConfig=global_aws_config()) = greengrassv2("DELETE", "/greengrass/v2/components/$(arn)"; aws_config=aws_config)
delete_component(arn, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = greengrassv2("DELETE", "/greengrass/v2/components/$(arn)", args; aws_config=aws_config)

"""
    DeleteCoreDevice()

Deletes a AWS IoT Greengrass core device, which is an AWS IoT thing. This operation removes the core device from the list of core devices. This operation doesn't delete the AWS IoT thing. For more information about how to delete the AWS IoT thing, see DeleteThing in the AWS IoT API Reference.

# Required Parameters
- `coreDeviceThingName`: The name of the core device. This is also the name of the AWS IoT thing.

"""
delete_core_device(coreDeviceThingName; aws_config::AbstractAWSConfig=global_aws_config()) = greengrassv2("DELETE", "/greengrass/v2/coreDevices/$(coreDeviceThingName)"; aws_config=aws_config)
delete_core_device(coreDeviceThingName, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = greengrassv2("DELETE", "/greengrass/v2/coreDevices/$(coreDeviceThingName)", args; aws_config=aws_config)

"""
    DescribeComponent()

Retrieves metadata for a version of a component.

# Required Parameters
- `arn`: The ARN of the component version.

"""
describe_component(arn; aws_config::AbstractAWSConfig=global_aws_config()) = greengrassv2("GET", "/greengrass/v2/components/$(arn)/metadata"; aws_config=aws_config)
describe_component(arn, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = greengrassv2("GET", "/greengrass/v2/components/$(arn)/metadata", args; aws_config=aws_config)

"""
    GetComponent()

Gets the recipe for a version of a component. Core devices can call this operation to identify the artifacts and requirements to install a component.

# Required Parameters
- `arn`: The ARN of the component version.

# Optional Parameters
- `recipeOutputFormat`: The format of the recipe.
"""
get_component(arn; aws_config::AbstractAWSConfig=global_aws_config()) = greengrassv2("GET", "/greengrass/v2/components/$(arn)"; aws_config=aws_config)
get_component(arn, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = greengrassv2("GET", "/greengrass/v2/components/$(arn)", args; aws_config=aws_config)

"""
    GetComponentVersionArtifact()

Gets the pre-signed URL to download a public component artifact. Core devices call this operation to identify the URL that they can use to download an artifact to install.

# Required Parameters
- `arn`: The ARN of the component version. Specify the ARN of a public component version.
- `artifactName`: The name of the artifact. You can use the GetComponent operation to download the component recipe, which includes the URI of the artifact. The artifact name is the section of the URI after the scheme. For example, in the artifact URI greengrass:SomeArtifact.zip, the artifact name is SomeArtifact.zip.

"""
get_component_version_artifact(arn, artifactName; aws_config::AbstractAWSConfig=global_aws_config()) = greengrassv2("GET", "/greengrass/v2/components/$(arn)/artifacts/$(artifactName)"; aws_config=aws_config)
get_component_version_artifact(arn, artifactName, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = greengrassv2("GET", "/greengrass/v2/components/$(arn)/artifacts/$(artifactName)", args; aws_config=aws_config)

"""
    GetCoreDevice()

Retrieves metadata for a AWS IoT Greengrass core device.

# Required Parameters
- `coreDeviceThingName`: The name of the core device. This is also the name of the AWS IoT thing.

"""
get_core_device(coreDeviceThingName; aws_config::AbstractAWSConfig=global_aws_config()) = greengrassv2("GET", "/greengrass/v2/coreDevices/$(coreDeviceThingName)"; aws_config=aws_config)
get_core_device(coreDeviceThingName, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = greengrassv2("GET", "/greengrass/v2/coreDevices/$(coreDeviceThingName)", args; aws_config=aws_config)

"""
    GetDeployment()

Gets a deployment. Deployments define the components that run on AWS IoT Greengrass core devices.

# Required Parameters
- `deploymentId`: The ID of the deployment.

"""
get_deployment(deploymentId; aws_config::AbstractAWSConfig=global_aws_config()) = greengrassv2("GET", "/greengrass/v2/deployments/$(deploymentId)"; aws_config=aws_config)
get_deployment(deploymentId, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = greengrassv2("GET", "/greengrass/v2/deployments/$(deploymentId)", args; aws_config=aws_config)

"""
    ListComponentVersions()

Retrieves a paginated list of all versions for a component.

# Required Parameters
- `arn`: The ARN of the component version.

# Optional Parameters
- `maxResults`: The maximum number of results to be returned per paginated request.
- `nextToken`: The token to be used for the next set of paginated results.
"""
list_component_versions(arn; aws_config::AbstractAWSConfig=global_aws_config()) = greengrassv2("GET", "/greengrass/v2/components/$(arn)/versions"; aws_config=aws_config)
list_component_versions(arn, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = greengrassv2("GET", "/greengrass/v2/components/$(arn)/versions", args; aws_config=aws_config)

"""
    ListComponents()

Retrieves a paginated list of component summaries. This list includes components that you have permission to view.

# Optional Parameters
- `maxResults`: The maximum number of results to be returned per paginated request.
- `nextToken`: The token to be used for the next set of paginated results.
- `scope`: The scope of the components to list. Default: PRIVATE 
"""
list_components(; aws_config::AbstractAWSConfig=global_aws_config()) = greengrassv2("GET", "/greengrass/v2/components"; aws_config=aws_config)
list_components(args::AbstractDict{String, Any}; aws_config::AbstractAWSConfig=global_aws_config()) = greengrassv2("GET", "/greengrass/v2/components", args; aws_config=aws_config)

"""
    ListCoreDevices()

Retrieves a paginated list of AWS IoT Greengrass core devices.

# Optional Parameters
- `maxResults`: The maximum number of results to be returned per paginated request.
- `nextToken`: The token to be used for the next set of paginated results.
- `status`: The core device status by which to filter. If you specify this parameter, the list includes only core devices that have this status. Choose one of the following options:    HEALTHY – The AWS IoT Greengrass Core software and all components run on the core device without issue.    UNHEALTHY – The AWS IoT Greengrass Core software or a component is in a failed state on the core device.  
- `thingGroupArn`: The ARN of the AWS IoT thing group by which to filter. If you specify this parameter, the list includes only core devices that are members of this thing group.
"""
list_core_devices(; aws_config::AbstractAWSConfig=global_aws_config()) = greengrassv2("GET", "/greengrass/v2/coreDevices"; aws_config=aws_config)
list_core_devices(args::AbstractDict{String, Any}; aws_config::AbstractAWSConfig=global_aws_config()) = greengrassv2("GET", "/greengrass/v2/coreDevices", args; aws_config=aws_config)

"""
    ListDeployments()

Retrieves a paginated list of deployments.

# Optional Parameters
- `historyFilter`: The filter for the list of deployments. Choose one of the following options:    ALL – The list includes all deployments.    LATEST_ONLY – The list includes only the latest revision of each deployment.   Default: LATEST_ONLY 
- `maxResults`: The maximum number of results to be returned per paginated request.
- `nextToken`: The token to be used for the next set of paginated results.
- `targetArn`: The ARN of the target AWS IoT thing or thing group.
"""
list_deployments(; aws_config::AbstractAWSConfig=global_aws_config()) = greengrassv2("GET", "/greengrass/v2/deployments"; aws_config=aws_config)
list_deployments(args::AbstractDict{String, Any}; aws_config::AbstractAWSConfig=global_aws_config()) = greengrassv2("GET", "/greengrass/v2/deployments", args; aws_config=aws_config)

"""
    ListEffectiveDeployments()

Retrieves a paginated list of deployment jobs that AWS IoT Greengrass sends to AWS IoT Greengrass core devices.

# Required Parameters
- `coreDeviceThingName`: The name of the core device. This is also the name of the AWS IoT thing.

# Optional Parameters
- `maxResults`: The maximum number of results to be returned per paginated request.
- `nextToken`: The token to be used for the next set of paginated results.
"""
list_effective_deployments(coreDeviceThingName; aws_config::AbstractAWSConfig=global_aws_config()) = greengrassv2("GET", "/greengrass/v2/coreDevices/$(coreDeviceThingName)/effectiveDeployments"; aws_config=aws_config)
list_effective_deployments(coreDeviceThingName, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = greengrassv2("GET", "/greengrass/v2/coreDevices/$(coreDeviceThingName)/effectiveDeployments", args; aws_config=aws_config)

"""
    ListInstalledComponents()

Retrieves a paginated list of the components that a AWS IoT Greengrass core device runs.

# Required Parameters
- `coreDeviceThingName`: The name of the core device. This is also the name of the AWS IoT thing.

# Optional Parameters
- `maxResults`: The maximum number of results to be returned per paginated request.
- `nextToken`: The token to be used for the next set of paginated results.
"""
list_installed_components(coreDeviceThingName; aws_config::AbstractAWSConfig=global_aws_config()) = greengrassv2("GET", "/greengrass/v2/coreDevices/$(coreDeviceThingName)/installedComponents"; aws_config=aws_config)
list_installed_components(coreDeviceThingName, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = greengrassv2("GET", "/greengrass/v2/coreDevices/$(coreDeviceThingName)/installedComponents", args; aws_config=aws_config)

"""
    ListTagsForResource()

Retrieves the list of tags for an AWS IoT Greengrass resource.

# Required Parameters
- `resourceArn`: The ARN of the resource.

"""
list_tags_for_resource(resourceArn; aws_config::AbstractAWSConfig=global_aws_config()) = greengrassv2("GET", "/tags/$(resourceArn)"; aws_config=aws_config)
list_tags_for_resource(resourceArn, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = greengrassv2("GET", "/tags/$(resourceArn)", args; aws_config=aws_config)

"""
    ResolveComponentCandidates()

Retrieves a list of components that meet the component, version, and platform requirements of a deployment. AWS IoT Greengrass core devices call this operation when they receive a deployment to identify the components to install. This operation identifies components that meet all dependency requirements for a deployment. If the requirements conflict, then this operation returns an error and the deployment fails. For example, this occurs if component A requires version &gt;2.0.0 and component B requires version &lt;2.0.0 of a component dependency. When you specify the component candidates to resolve, AWS IoT Greengrass compares each component's digest from the core device with the component's digest in the AWS Cloud. If the digests don't match, then AWS IoT Greengrass specifies to use the version from the AWS Cloud.  To use this operation, you must use the data plane API endpoint and authenticate with an AWS IoT device certificate. For more information, see AWS IoT Greengrass endpoints and quotas. 

# Required Parameters
- `componentCandidates`: The list of components to resolve.
- `platform`: The platform to use to resolve compatible components.

"""
resolve_component_candidates(componentCandidates, platform; aws_config::AbstractAWSConfig=global_aws_config()) = greengrassv2("POST", "/greengrass/v2/resolveComponentCandidates", Dict{String, Any}("componentCandidates"=>componentCandidates, "platform"=>platform); aws_config=aws_config)
resolve_component_candidates(componentCandidates, platform, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = greengrassv2("POST", "/greengrass/v2/resolveComponentCandidates", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("componentCandidates"=>componentCandidates, "platform"=>platform), args)); aws_config=aws_config)

"""
    TagResource()

Adds tags to an AWS IoT Greengrass resource. If a tag already exists for the resource, this operation updates the tag's value.

# Required Parameters
- `resourceArn`: The ARN of the resource to tag.
- `tags`: A list of key-value pairs that contain metadata for the resource. For more information, see Tag your resources in the AWS IoT Greengrass V2 Developer Guide.

"""
tag_resource(resourceArn, tags; aws_config::AbstractAWSConfig=global_aws_config()) = greengrassv2("POST", "/tags/$(resourceArn)", Dict{String, Any}("tags"=>tags); aws_config=aws_config)
tag_resource(resourceArn, tags, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = greengrassv2("POST", "/tags/$(resourceArn)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("tags"=>tags), args)); aws_config=aws_config)

"""
    UntagResource()

Removes a tag from an AWS IoT Greengrass resource.

# Required Parameters
- `resourceArn`: The ARN of the resource to untag.
- `tagKeys`: A list of keys for tags to remove from the resource.

"""
untag_resource(resourceArn, tagKeys; aws_config::AbstractAWSConfig=global_aws_config()) = greengrassv2("DELETE", "/tags/$(resourceArn)", Dict{String, Any}("tagKeys"=>tagKeys); aws_config=aws_config)
untag_resource(resourceArn, tagKeys, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = greengrassv2("DELETE", "/tags/$(resourceArn)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("tagKeys"=>tagKeys), args)); aws_config=aws_config)
