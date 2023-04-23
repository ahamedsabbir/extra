<?php
namespace Aws\ECRPublic;

use Aws\AwsClient;

/**
 * This client is used to interact with the **Amazon Elastic Container Registry Public** service.
 * @method \Aws\Result batchCheckLayerAvailability(array $args = [])
 * @method \GuzzleHttp\Promise\Promise batchCheckLayerAvailabilityAsync(array $args = [])
 * @method \Aws\Result batchDeleteImage(array $args = [])
 * @method \GuzzleHttp\Promise\Promise batchDeleteImageAsync(array $args = [])
 * @method \Aws\Result completeLayerUpload(array $args = [])
 * @method \GuzzleHttp\Promise\Promise completeLayerUploadAsync(array $args = [])
 * @method \Aws\Result createresources(array $args = [])
 * @method \GuzzleHttp\Promise\Promise createresourcesAsync(array $args = [])
 * @method \Aws\Result deleteresources(array $args = [])
 * @method \GuzzleHttp\Promise\Promise deleteresourcesAsync(array $args = [])
 * @method \Aws\Result deleteresourcesPolicy(array $args = [])
 * @method \GuzzleHttp\Promise\Promise deleteresourcesPolicyAsync(array $args = [])
 * @method \Aws\Result describeImageTags(array $args = [])
 * @method \GuzzleHttp\Promise\Promise describeImageTagsAsync(array $args = [])
 * @method \Aws\Result describeImages(array $args = [])
 * @method \GuzzleHttp\Promise\Promise describeImagesAsync(array $args = [])
 * @method \Aws\Result describeRegistries(array $args = [])
 * @method \GuzzleHttp\Promise\Promise describeRegistriesAsync(array $args = [])
 * @method \Aws\Result describeRepositories(array $args = [])
 * @method \GuzzleHttp\Promise\Promise describeRepositoriesAsync(array $args = [])
 * @method \Aws\Result getAuthorizationToken(array $args = [])
 * @method \GuzzleHttp\Promise\Promise getAuthorizationTokenAsync(array $args = [])
 * @method \Aws\Result getRegistryCatalogData(array $args = [])
 * @method \GuzzleHttp\Promise\Promise getRegistryCatalogDataAsync(array $args = [])
 * @method \Aws\Result getresourcesCatalogData(array $args = [])
 * @method \GuzzleHttp\Promise\Promise getresourcesCatalogDataAsync(array $args = [])
 * @method \Aws\Result getresourcesPolicy(array $args = [])
 * @method \GuzzleHttp\Promise\Promise getresourcesPolicyAsync(array $args = [])
 * @method \Aws\Result initiateLayerUpload(array $args = [])
 * @method \GuzzleHttp\Promise\Promise initiateLayerUploadAsync(array $args = [])
 * @method \Aws\Result listTagsForResource(array $args = [])
 * @method \GuzzleHttp\Promise\Promise listTagsForResourceAsync(array $args = [])
 * @method \Aws\Result putImage(array $args = [])
 * @method \GuzzleHttp\Promise\Promise putImageAsync(array $args = [])
 * @method \Aws\Result putRegistryCatalogData(array $args = [])
 * @method \GuzzleHttp\Promise\Promise putRegistryCatalogDataAsync(array $args = [])
 * @method \Aws\Result putresourcesCatalogData(array $args = [])
 * @method \GuzzleHttp\Promise\Promise putresourcesCatalogDataAsync(array $args = [])
 * @method \Aws\Result setresourcesPolicy(array $args = [])
 * @method \GuzzleHttp\Promise\Promise setresourcesPolicyAsync(array $args = [])
 * @method \Aws\Result tagResource(array $args = [])
 * @method \GuzzleHttp\Promise\Promise tagResourceAsync(array $args = [])
 * @method \Aws\Result untagResource(array $args = [])
 * @method \GuzzleHttp\Promise\Promise untagResourceAsync(array $args = [])
 * @method \Aws\Result uploadLayerPart(array $args = [])
 * @method \GuzzleHttp\Promise\Promise uploadLayerPartAsync(array $args = [])
 */
class ECRPublicClient extends AwsClient {}