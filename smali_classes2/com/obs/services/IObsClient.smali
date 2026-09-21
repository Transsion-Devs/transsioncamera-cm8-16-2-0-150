.class public interface abstract Lcom/obs/services/IObsClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/obs/services/IObsBucketExtendClient;


# virtual methods
.method public abstract abortMultipartUpload(Lcom/obs/services/model/AbortMultipartUploadRequest;)Lcom/obs/services/model/HeaderResponse;
.end method

.method public abstract appendObject(Lcom/obs/services/model/AppendObjectRequest;)Lcom/obs/services/model/AppendObjectResult;
.end method

.method public abstract close()V
.end method

.method public abstract completeMultipartUpload(Lcom/obs/services/model/CompleteMultipartUploadRequest;)Lcom/obs/services/model/CompleteMultipartUploadResult;
.end method

.method public abstract copyObject(Lcom/obs/services/model/CopyObjectRequest;)Lcom/obs/services/model/CopyObjectResult;
.end method

.method public abstract copyObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/CopyObjectResult;
.end method

.method public abstract copyPart(Lcom/obs/services/model/CopyPartRequest;)Lcom/obs/services/model/CopyPartResult;
.end method

.method public abstract createBucket(Lcom/obs/services/model/CreateBucketRequest;)Lcom/obs/services/model/ObsBucket;
.end method

.method public abstract createBucket(Lcom/obs/services/model/ObsBucket;)Lcom/obs/services/model/ObsBucket;
.end method

.method public abstract createBucket(Ljava/lang/String;)Lcom/obs/services/model/ObsBucket;
.end method

.method public abstract createBucket(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/ObsBucket;
.end method

.method public abstract createPostSignature(Lcom/obs/services/model/PostSignatureRequest;)Lcom/obs/services/model/PostSignatureResponse;
.end method

.method public abstract createTemporarySignature(Lcom/obs/services/model/TemporarySignatureRequest;)Lcom/obs/services/model/TemporarySignatureResponse;
.end method

.method public abstract createVirtualBucket(Lcom/obs/services/model/CreateVirtualBucketRequest;)Lcom/obs/services/model/CreateVirtualBucketResult;
.end method

.method public abstract deleteBucket(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/HeaderResponse;
.end method

.method public abstract deleteBucket(Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
.end method

.method public abstract deleteBucketCors(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/HeaderResponse;
.end method

.method public abstract deleteBucketCors(Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
.end method

.method public abstract deleteBucketDirectColdAccess(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/HeaderResponse;
.end method

.method public abstract deleteBucketDirectColdAccess(Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
.end method

.method public abstract deleteBucketEncryption(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/HeaderResponse;
.end method

.method public abstract deleteBucketEncryption(Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
.end method

.method public abstract deleteBucketLifecycle(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/HeaderResponse;
.end method

.method public abstract deleteBucketLifecycle(Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
.end method

.method public abstract deleteBucketPolicy(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/HeaderResponse;
.end method

.method public abstract deleteBucketPolicy(Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
.end method

.method public abstract deleteBucketReplication(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/HeaderResponse;
.end method

.method public abstract deleteBucketReplication(Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
.end method

.method public abstract deleteBucketTagging(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/HeaderResponse;
.end method

.method public abstract deleteBucketTagging(Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
.end method

.method public abstract deleteBucketWebsite(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/HeaderResponse;
.end method

.method public abstract deleteBucketWebsite(Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
.end method

.method public abstract deleteInventoryConfiguration(Lcom/obs/services/model/inventory/DeleteInventoryConfigurationRequest;)Lcom/obs/services/model/HeaderResponse;
.end method

.method public abstract deleteObject(Lcom/obs/services/model/DeleteObjectRequest;)Lcom/obs/services/model/DeleteObjectResult;
.end method

.method public abstract deleteObject(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/DeleteObjectResult;
.end method

.method public abstract deleteObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/DeleteObjectResult;
.end method

.method public abstract deleteObjectTagging(Lcom/obs/services/model/ObjectTaggingRequest;)Lcom/obs/services/model/HeaderResponse;
.end method

.method public abstract deleteObjects(Lcom/obs/services/model/DeleteObjectsRequest;)Lcom/obs/services/model/DeleteObjectsResult;
.end method

.method public abstract deleteReadAheadObjects(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/ReadAheadResult;
.end method

.method public abstract doesObjectExist(Lcom/obs/services/model/GetObjectMetadataRequest;)Z
.end method

.method public abstract doesObjectExist(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract downloadFile(Lcom/obs/services/model/DownloadFileRequest;)Lcom/obs/services/model/DownloadFileResult;
.end method

.method public abstract getBucketAcl(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/AccessControlList;
.end method

.method public abstract getBucketAcl(Ljava/lang/String;)Lcom/obs/services/model/AccessControlList;
.end method

.method public abstract getBucketCors(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketCors;
.end method

.method public abstract getBucketCors(Ljava/lang/String;)Lcom/obs/services/model/BucketCors;
.end method

.method public abstract getBucketDirectColdAccess(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketDirectColdAccess;
.end method

.method public abstract getBucketDirectColdAccess(Ljava/lang/String;)Lcom/obs/services/model/BucketDirectColdAccess;
.end method

.method public abstract getBucketEncryption(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketEncryption;
.end method

.method public abstract getBucketEncryption(Ljava/lang/String;)Lcom/obs/services/model/BucketEncryption;
.end method

.method public abstract getBucketLifecycle(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/LifecycleConfiguration;
.end method

.method public abstract getBucketLifecycle(Ljava/lang/String;)Lcom/obs/services/model/LifecycleConfiguration;
.end method

.method public abstract getBucketLocation(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketLocationResponse;
.end method

.method public abstract getBucketLocation(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getBucketLocationV2(Ljava/lang/String;)Lcom/obs/services/model/BucketLocationResponse;
.end method

.method public abstract getBucketLogging(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketLoggingConfiguration;
.end method

.method public abstract getBucketLogging(Ljava/lang/String;)Lcom/obs/services/model/BucketLoggingConfiguration;
.end method

.method public abstract getBucketMetadata(Lcom/obs/services/model/BucketMetadataInfoRequest;)Lcom/obs/services/model/BucketMetadataInfoResult;
.end method

.method public abstract getBucketNotification(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketNotificationConfiguration;
.end method

.method public abstract getBucketNotification(Ljava/lang/String;)Lcom/obs/services/model/BucketNotificationConfiguration;
.end method

.method public abstract getBucketPolicy(Lcom/obs/services/model/BaseBucketRequest;)Ljava/lang/String;
.end method

.method public abstract getBucketPolicy(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getBucketPolicyV2(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketPolicyResponse;
.end method

.method public abstract getBucketPolicyV2(Ljava/lang/String;)Lcom/obs/services/model/BucketPolicyResponse;
.end method

.method public abstract getBucketQuota(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketQuota;
.end method

.method public abstract getBucketQuota(Ljava/lang/String;)Lcom/obs/services/model/BucketQuota;
.end method

.method public abstract getBucketReplication(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/ReplicationConfiguration;
.end method

.method public abstract getBucketReplication(Ljava/lang/String;)Lcom/obs/services/model/ReplicationConfiguration;
.end method

.method public abstract getBucketRequestPayment(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/RequestPaymentConfiguration;
.end method

.method public abstract getBucketRequestPayment(Ljava/lang/String;)Lcom/obs/services/model/RequestPaymentConfiguration;
.end method

.method public abstract getBucketStorageInfo(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketStorageInfo;
.end method

.method public abstract getBucketStorageInfo(Ljava/lang/String;)Lcom/obs/services/model/BucketStorageInfo;
.end method

.method public abstract getBucketStoragePolicy(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketStoragePolicyConfiguration;
.end method

.method public abstract getBucketStoragePolicy(Ljava/lang/String;)Lcom/obs/services/model/BucketStoragePolicyConfiguration;
.end method

.method public abstract getBucketTagging(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketTagInfo;
.end method

.method public abstract getBucketTagging(Ljava/lang/String;)Lcom/obs/services/model/BucketTagInfo;
.end method

.method public abstract getBucketVersioning(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketVersioningConfiguration;
.end method

.method public abstract getBucketVersioning(Ljava/lang/String;)Lcom/obs/services/model/BucketVersioningConfiguration;
.end method

.method public abstract getBucketWebsite(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/WebsiteConfiguration;
.end method

.method public abstract getBucketWebsite(Ljava/lang/String;)Lcom/obs/services/model/WebsiteConfiguration;
.end method

.method public abstract getCrrProgress(Lcom/obs/services/model/crr/GetCrrProgressRequest;)Lcom/obs/services/model/crr/GetCrrProgressResult;
.end method

.method public abstract getInventoryConfiguration(Lcom/obs/services/model/inventory/GetInventoryConfigurationRequest;)Lcom/obs/services/model/inventory/GetInventoryConfigurationResult;
.end method

.method public abstract getObject(Lcom/obs/services/model/GetObjectRequest;)Lcom/obs/services/model/ObsObject;
.end method

.method public abstract getObject(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/ObsObject;
.end method

.method public abstract getObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/ObsObject;
.end method

.method public abstract getObjectAcl(Lcom/obs/services/model/GetObjectAclRequest;)Lcom/obs/services/model/AccessControlList;
.end method

.method public abstract getObjectAcl(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/AccessControlList;
.end method

.method public abstract getObjectAcl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/AccessControlList;
.end method

.method public abstract getObjectMetadata(Lcom/obs/services/model/GetObjectMetadataRequest;)Lcom/obs/services/model/ObjectMetadata;
.end method

.method public abstract getObjectMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/ObjectMetadata;
.end method

.method public abstract getObjectMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/ObjectMetadata;
.end method

.method public abstract getObjectTagging(Lcom/obs/services/model/ObjectTaggingRequest;)Lcom/obs/services/model/ObjectTagResult;
.end method

.method public abstract headBucket(Lcom/obs/services/model/BaseBucketRequest;)Z
.end method

.method public abstract headBucket(Ljava/lang/String;)Z
.end method

.method public abstract initiateMultipartUpload(Lcom/obs/services/model/InitiateMultipartUploadRequest;)Lcom/obs/services/model/InitiateMultipartUploadResult;
.end method

.method public abstract listAliasBuckets()Lcom/obs/services/model/ListBucketAliasResult;
.end method

.method public abstract listBuckets(Lcom/obs/services/model/ListBucketsRequest;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/obs/services/model/ListBucketsRequest;",
            ")",
            "Ljava/util/List<",
            "Lcom/obs/services/model/ObsBucket;",
            ">;"
        }
    .end annotation
.end method

.method public abstract listBucketsV2(Lcom/obs/services/model/ListBucketsRequest;)Lcom/obs/services/model/ListBucketsResult;
.end method

.method public abstract listInventoryConfiguration(Lcom/obs/services/model/inventory/ListInventoryConfigurationRequest;)Lcom/obs/services/model/inventory/ListInventoryConfigurationResult;
.end method

.method public abstract listMultipartUploads(Lcom/obs/services/model/ListMultipartUploadsRequest;)Lcom/obs/services/model/MultipartUploadListing;
.end method

.method public abstract listObjects(Lcom/obs/services/model/ListObjectsRequest;)Lcom/obs/services/model/ObjectListing;
.end method

.method public abstract listObjects(Ljava/lang/String;)Lcom/obs/services/model/ObjectListing;
.end method

.method public abstract listParts(Lcom/obs/services/model/ListPartsRequest;)Lcom/obs/services/model/ListPartsResult;
.end method

.method public abstract listVersions(Lcom/obs/services/model/ListVersionsRequest;)Lcom/obs/services/model/ListVersionsResult;
.end method

.method public abstract listVersions(Ljava/lang/String;)Lcom/obs/services/model/ListVersionsResult;
.end method

.method public abstract listVersions(Ljava/lang/String;J)Lcom/obs/services/model/ListVersionsResult;
.end method

.method public abstract listVersions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/obs/services/model/ListVersionsResult;
.end method

.method public abstract modifyObject(Lcom/obs/services/model/ModifyObjectRequest;)Lcom/obs/services/model/ModifyObjectResult;
.end method

.method public abstract modifyObject(Ljava/lang/String;Ljava/lang/String;JLjava/io/File;)Lcom/obs/services/model/ModifyObjectResult;
.end method

.method public abstract modifyObject(Ljava/lang/String;Ljava/lang/String;JLjava/io/InputStream;)Lcom/obs/services/model/ModifyObjectResult;
.end method

.method public abstract putObject(Lcom/obs/services/model/PutObjectRequest;)Lcom/obs/services/model/PutObjectResult;
.end method

.method public abstract putObject(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/obs/services/model/PutObjectResult;
.end method

.method public abstract putObject(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/obs/services/model/ObjectMetadata;)Lcom/obs/services/model/PutObjectResult;
.end method

.method public abstract putObject(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lcom/obs/services/model/PutObjectResult;
.end method

.method public abstract putObject(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/obs/services/model/ObjectMetadata;)Lcom/obs/services/model/PutObjectResult;
.end method

.method public abstract putObjectInTwoBucket(Lcom/obs/services/model/PutObjectInTwoBucketRequest;)Lcom/obs/services/model/PutObjectInTwoBucketResult;
.end method

.method public abstract putObjects(Lcom/obs/services/model/PutObjectsRequest;)Lcom/obs/services/model/UploadProgressStatus;
.end method

.method public abstract queryReadAheadObjectsTask(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/ReadAheadQueryResult;
.end method

.method public abstract readAheadObjects(Lcom/obs/services/model/ReadAheadRequest;)Lcom/obs/services/model/ReadAheadResult;
.end method

.method public abstract refresh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract renameObject(Lcom/obs/services/model/RenameObjectRequest;)Lcom/obs/services/model/RenameObjectResult;
.end method

.method public abstract renameObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/RenameObjectResult;
.end method

.method public abstract restoreObject(Lcom/obs/services/model/RestoreObjectRequest;)Lcom/obs/services/model/RestoreObjectRequest$RestoreObjectStatus;
.end method

.method public abstract restoreObjectV2(Lcom/obs/services/model/RestoreObjectRequest;)Lcom/obs/services/model/RestoreObjectResult;
.end method

.method public abstract restoreObjects(Lcom/obs/services/model/RestoreObjectsRequest;)Lcom/obs/services/model/TaskProgressStatus;
.end method

.method public abstract selectObjectContent(Lcom/obs/services/model/select/SelectObjectRequest;)Lcom/obs/services/model/select/SelectObjectResult;
.end method

.method public abstract setBucketAcl(Lcom/obs/services/model/SetBucketAclRequest;)Lcom/obs/services/model/HeaderResponse;
.end method

.method public abstract setBucketAcl(Ljava/lang/String;Lcom/obs/services/model/AccessControlList;)Lcom/obs/services/model/HeaderResponse;
.end method

.method public abstract setBucketCors(Lcom/obs/services/model/SetBucketCorsRequest;)Lcom/obs/services/model/HeaderResponse;
.end method

.method public abstract setBucketCors(Ljava/lang/String;Lcom/obs/services/model/BucketCors;)Lcom/obs/services/model/HeaderResponse;
.end method

.method public abstract setBucketDirectColdAccess(Lcom/obs/services/model/SetBucketDirectColdAccessRequest;)Lcom/obs/services/model/HeaderResponse;
.end method

.method public abstract setBucketDirectColdAccess(Ljava/lang/String;Lcom/obs/services/model/BucketDirectColdAccess;)Lcom/obs/services/model/HeaderResponse;
.end method

.method public abstract setBucketEncryption(Lcom/obs/services/model/SetBucketEncryptionRequest;)Lcom/obs/services/model/HeaderResponse;
.end method

.method public abstract setBucketEncryption(Ljava/lang/String;Lcom/obs/services/model/BucketEncryption;)Lcom/obs/services/model/HeaderResponse;
.end method

.method public abstract setBucketLifecycle(Lcom/obs/services/model/SetBucketLifecycleRequest;)Lcom/obs/services/model/HeaderResponse;
.end method

.method public abstract setBucketLifecycle(Ljava/lang/String;Lcom/obs/services/model/LifecycleConfiguration;)Lcom/obs/services/model/HeaderResponse;
.end method

.method public abstract setBucketLogging(Lcom/obs/services/model/SetBucketLoggingRequest;)Lcom/obs/services/model/HeaderResponse;
.end method

.method public abstract setBucketLogging(Ljava/lang/String;Lcom/obs/services/model/BucketLoggingConfiguration;)Lcom/obs/services/model/HeaderResponse;
.end method

.method public abstract setBucketLoggingConfiguration(Ljava/lang/String;Lcom/obs/services/model/BucketLoggingConfiguration;Z)Lcom/obs/services/model/HeaderResponse;
.end method

.method public abstract setBucketNotification(Lcom/obs/services/model/SetBucketNotificationRequest;)Lcom/obs/services/model/HeaderResponse;
.end method

.method public abstract setBucketNotification(Ljava/lang/String;Lcom/obs/services/model/BucketNotificationConfiguration;)Lcom/obs/services/model/HeaderResponse;
.end method

.method public abstract setBucketPolicy(Lcom/obs/services/model/SetBucketPolicyRequest;)Lcom/obs/services/model/HeaderResponse;
.end method

.method public abstract setBucketPolicy(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
.end method

.method public abstract setBucketQuota(Lcom/obs/services/model/SetBucketQuotaRequest;)Lcom/obs/services/model/HeaderResponse;
.end method

.method public abstract setBucketQuota(Ljava/lang/String;Lcom/obs/services/model/BucketQuota;)Lcom/obs/services/model/HeaderResponse;
.end method

.method public abstract setBucketReplication(Lcom/obs/services/model/SetBucketReplicationRequest;)Lcom/obs/services/model/HeaderResponse;
.end method

.method public abstract setBucketReplication(Ljava/lang/String;Lcom/obs/services/model/ReplicationConfiguration;)Lcom/obs/services/model/HeaderResponse;
.end method

.method public abstract setBucketRequestPayment(Lcom/obs/services/model/SetBucketRequestPaymentRequest;)Lcom/obs/services/model/HeaderResponse;
.end method

.method public abstract setBucketRequestPayment(Ljava/lang/String;Lcom/obs/services/model/RequestPaymentEnum;)Lcom/obs/services/model/HeaderResponse;
.end method

.method public abstract setBucketStoragePolicy(Lcom/obs/services/model/SetBucketStoragePolicyRequest;)Lcom/obs/services/model/HeaderResponse;
.end method

.method public abstract setBucketStoragePolicy(Ljava/lang/String;Lcom/obs/services/model/BucketStoragePolicyConfiguration;)Lcom/obs/services/model/HeaderResponse;
.end method

.method public abstract setBucketTagging(Lcom/obs/services/model/SetBucketTaggingRequest;)Lcom/obs/services/model/HeaderResponse;
.end method

.method public abstract setBucketTagging(Ljava/lang/String;Lcom/obs/services/model/BucketTagInfo;)Lcom/obs/services/model/HeaderResponse;
.end method

.method public abstract setBucketVersioning(Lcom/obs/services/model/SetBucketVersioningRequest;)Lcom/obs/services/model/HeaderResponse;
.end method

.method public abstract setBucketVersioning(Ljava/lang/String;Lcom/obs/services/model/BucketVersioningConfiguration;)Lcom/obs/services/model/HeaderResponse;
.end method

.method public abstract setBucketWebsite(Lcom/obs/services/model/SetBucketWebsiteRequest;)Lcom/obs/services/model/HeaderResponse;
.end method

.method public abstract setBucketWebsite(Ljava/lang/String;Lcom/obs/services/model/WebsiteConfiguration;)Lcom/obs/services/model/HeaderResponse;
.end method

.method public abstract setInventoryConfiguration(Lcom/obs/services/model/inventory/SetInventoryConfigurationRequest;)Lcom/obs/services/model/HeaderResponse;
.end method

.method public abstract setObjectAcl(Lcom/obs/services/model/SetObjectAclRequest;)Lcom/obs/services/model/HeaderResponse;
.end method

.method public abstract setObjectAcl(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/model/AccessControlList;)Lcom/obs/services/model/HeaderResponse;
.end method

.method public abstract setObjectAcl(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/model/AccessControlList;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
.end method

.method public abstract setObjectMetadata(Lcom/obs/services/model/SetObjectMetadataRequest;)Lcom/obs/services/model/ObjectMetadata;
.end method

.method public abstract setObjectTagging(Lcom/obs/services/model/ObjectTaggingRequest;)Lcom/obs/services/model/HeaderResponse;
.end method

.method public abstract truncateObject(Lcom/obs/services/model/TruncateObjectRequest;)Lcom/obs/services/model/TruncateObjectResult;
.end method

.method public abstract truncateObject(Ljava/lang/String;Ljava/lang/String;J)Lcom/obs/services/model/TruncateObjectResult;
.end method

.method public abstract uploadFile(Lcom/obs/services/model/UploadFileRequest;)Lcom/obs/services/model/CompleteMultipartUploadResult;
.end method

.method public abstract uploadPart(Lcom/obs/services/model/UploadPartRequest;)Lcom/obs/services/model/UploadPartResult;
.end method

.method public abstract uploadPart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/io/File;)Lcom/obs/services/model/UploadPartResult;
.end method

.method public abstract uploadPart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/io/InputStream;)Lcom/obs/services/model/UploadPartResult;
.end method
