.class public abstract Lcom/obs/services/AbstractObjectClient;
.super Lcom/obs/services/AbstractBucketAdvanceClient;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Lcom/obs/services/AbstractBucketAdvanceClient;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/obs/services/AbstractObjectClient;Lcom/obs/services/model/GetObjectMetadataRequest;)Z
    .registers 2

    .line 60
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsObjectBaseService;->doesObjectExistImpl(Lcom/obs/services/model/GetObjectMetadataRequest;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/obs/services/AbstractObjectClient;)Z
    .registers 1

    .line 60
    invoke-virtual {p0}, Lcom/obs/services/internal/RestStorageService;->isAuthTypeNegotiation()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/obs/services/AbstractObjectClient;)Lcom/obs/services/internal/security/ProviderCredentials;
    .registers 1

    .line 60
    invoke-virtual {p0}, Lcom/obs/services/internal/RestStorageService;->getProviderCredentials()Lcom/obs/services/internal/security/ProviderCredentials;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lcom/obs/services/AbstractObjectClient;Ljava/lang/String;)Lcom/obs/services/model/AuthTypeEnum;
    .registers 2

    .line 60
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->getApiVersion(Ljava/lang/String;)Lcom/obs/services/model/AuthTypeEnum;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/obs/services/AbstractObjectClient;)Lcom/obs/services/internal/security/ProviderCredentials;
    .registers 1

    .line 60
    invoke-virtual {p0}, Lcom/obs/services/internal/RestStorageService;->getProviderCredentials()Lcom/obs/services/internal/security/ProviderCredentials;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/obs/services/AbstractObjectClient;Lcom/obs/services/model/GetObjectRequest;)Lcom/obs/services/model/ObsObject;
    .registers 2

    .line 60
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsObjectBaseService;->getObjectImpl(Lcom/obs/services/model/GetObjectRequest;)Lcom/obs/services/model/ObsObject;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lcom/obs/services/AbstractObjectClient;Lcom/obs/services/model/select/SelectObjectRequest;)Lcom/obs/services/model/select/SelectObjectResult;
    .registers 2

    .line 60
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsObjectBaseService;->selectObjectContentImpl(Lcom/obs/services/model/select/SelectObjectRequest;)Lcom/obs/services/model/select/SelectObjectResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lcom/obs/services/AbstractObjectClient;Lcom/obs/services/model/DeleteObjectRequest;)Lcom/obs/services/model/DeleteObjectResult;
    .registers 2

    .line 60
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsObjectBaseService;->deleteObjectImpl(Lcom/obs/services/model/DeleteObjectRequest;)Lcom/obs/services/model/DeleteObjectResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1600(Lcom/obs/services/AbstractObjectClient;Lcom/obs/services/model/DeleteObjectsRequest;)Lcom/obs/services/model/DeleteObjectsResult;
    .registers 2

    .line 60
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsObjectBaseService;->deleteObjectsImpl(Lcom/obs/services/model/DeleteObjectsRequest;)Lcom/obs/services/model/DeleteObjectsResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(Lcom/obs/services/AbstractObjectClient;Lcom/obs/services/model/CopyObjectRequest;)Lcom/obs/services/model/CopyObjectResult;
    .registers 2

    .line 60
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsObjectBaseService;->copyObjectImpl(Lcom/obs/services/model/CopyObjectRequest;)Lcom/obs/services/model/CopyObjectResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(Lcom/obs/services/AbstractObjectClient;Lcom/obs/services/model/GetObjectAclRequest;)Lcom/obs/services/model/AccessControlList;
    .registers 2

    .line 60
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsObjectBaseService;->getObjectAclImpl(Lcom/obs/services/model/GetObjectAclRequest;)Lcom/obs/services/model/AccessControlList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1900(Lcom/obs/services/AbstractObjectClient;Lcom/obs/services/model/SetObjectAclRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 2

    .line 60
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsObjectBaseService;->setObjectAclImpl(Lcom/obs/services/model/SetObjectAclRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/obs/services/AbstractObjectClient;)Lcom/obs/services/internal/security/ProviderCredentials;
    .registers 1

    .line 60
    invoke-virtual {p0}, Lcom/obs/services/internal/RestStorageService;->getProviderCredentials()Lcom/obs/services/internal/security/ProviderCredentials;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2000(Lcom/obs/services/AbstractObjectClient;Lcom/obs/services/model/GetObjectMetadataRequest;)Lcom/obs/services/model/fs/ObsFSAttribute;
    .registers 2

    .line 60
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsObjectBaseService;->getObjectMetadataImpl(Lcom/obs/services/model/GetObjectMetadataRequest;)Lcom/obs/services/model/fs/ObsFSAttribute;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2100(Lcom/obs/services/AbstractObjectClient;Lcom/obs/services/model/SetObjectMetadataRequest;)Lcom/obs/services/model/ObjectMetadata;
    .registers 2

    .line 60
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsObjectBaseService;->setObjectMetadataImpl(Lcom/obs/services/model/SetObjectMetadataRequest;)Lcom/obs/services/model/ObjectMetadata;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2200(Lcom/obs/services/AbstractObjectClient;Lcom/obs/services/model/AppendObjectRequest;)Lcom/obs/services/model/AppendObjectResult;
    .registers 2

    .line 60
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsObjectService;->appendObjectImpl(Lcom/obs/services/model/AppendObjectRequest;)Lcom/obs/services/model/AppendObjectResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2300(Lcom/obs/services/AbstractObjectClient;Lcom/obs/services/model/RestoreObjectRequest;)Lcom/obs/services/model/RestoreObjectRequest$RestoreObjectStatus;
    .registers 2

    .line 60
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsObjectService;->restoreObjectImpl(Lcom/obs/services/model/RestoreObjectRequest;)Lcom/obs/services/model/RestoreObjectRequest$RestoreObjectStatus;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2400(Lcom/obs/services/AbstractObjectClient;Lcom/obs/services/model/ObjectTaggingRequest;)Lcom/obs/services/model/ObjectTagResult;
    .registers 2

    .line 60
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsObjectService;->getObjectTaggingImpl(Lcom/obs/services/model/ObjectTaggingRequest;)Lcom/obs/services/model/ObjectTagResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2500(Lcom/obs/services/AbstractObjectClient;Lcom/obs/services/model/ObjectTaggingRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 2

    .line 60
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsObjectService;->setObjectTaggingImpl(Lcom/obs/services/model/ObjectTaggingRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2600(Lcom/obs/services/AbstractObjectClient;Lcom/obs/services/model/ObjectTaggingRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 2

    .line 60
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsObjectService;->deleteObjectTaggingImpl(Lcom/obs/services/model/ObjectTaggingRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2700(Lcom/obs/services/AbstractObjectClient;Lcom/obs/services/model/RestoreObjectRequest;)Lcom/obs/services/model/RestoreObjectResult;
    .registers 2

    .line 60
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsObjectService;->restoreObjectV2Impl(Lcom/obs/services/model/RestoreObjectRequest;)Lcom/obs/services/model/RestoreObjectResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/obs/services/AbstractObjectClient;)Lcom/obs/services/internal/security/ProviderCredentials;
    .registers 1

    .line 60
    invoke-virtual {p0}, Lcom/obs/services/internal/RestStorageService;->getProviderCredentials()Lcom/obs/services/internal/security/ProviderCredentials;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/obs/services/AbstractObjectClient;Lcom/obs/services/model/GetObjectMetadataRequest;)Z
    .registers 2

    .line 60
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsObjectBaseService;->doesObjectExistImpl(Lcom/obs/services/model/GetObjectMetadataRequest;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/obs/services/AbstractObjectClient;Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/model/OptionsInfoRequest;)Lcom/obs/services/model/BucketMetadataInfoResult;
    .registers 4

    .line 60
    invoke-virtual {p0, p1, p2, p3}, Lcom/obs/services/internal/service/ObsBucketBaseService;->optionsImpl(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/model/OptionsInfoRequest;)Lcom/obs/services/model/BucketMetadataInfoResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/obs/services/AbstractObjectClient;Lcom/obs/services/model/ListObjectsRequest;)Lcom/obs/services/model/ObjectListing;
    .registers 2

    .line 60
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsBucketBaseService;->listObjectsImpl(Lcom/obs/services/model/ListObjectsRequest;)Lcom/obs/services/model/ObjectListing;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/obs/services/AbstractObjectClient;Lcom/obs/services/model/ListVersionsRequest;)Lcom/obs/services/model/ListVersionsResult;
    .registers 2

    .line 60
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsBucketBaseService;->listVersionsImpl(Lcom/obs/services/model/ListVersionsRequest;)Lcom/obs/services/model/ListVersionsResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/obs/services/AbstractObjectClient;Lcom/obs/services/model/PutObjectRequest;)Lcom/obs/services/model/fs/ObsFSFile;
    .registers 2

    .line 60
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsObjectBaseService;->putObjectImpl(Lcom/obs/services/model/PutObjectRequest;)Lcom/obs/services/model/fs/ObsFSFile;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/obs/services/AbstractObjectClient;Lcom/obs/services/model/PutObjectInTwoBucketRequest;)Lcom/obs/services/model/PutObjectInTwoBucketResult;
    .registers 2

    .line 60
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsObjectBaseService;->putObjectInTwoBucketImpl(Lcom/obs/services/model/PutObjectInTwoBucketRequest;)Lcom/obs/services/model/PutObjectInTwoBucketResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public appendObject(Lcom/obs/services/model/AppendObjectRequest;)Lcom/obs/services/model/AppendObjectResult;
    .registers 4

    .line 723
    const-string v0, "AppendObjectRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 724
    invoke-virtual {p1}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "objectKey is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractObjectClient$16;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractObjectClient$16;-><init>(Lcom/obs/services/AbstractObjectClient;Lcom/obs/services/model/AppendObjectRequest;)V

    const-string p1, "appendObject"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/AppendObjectResult;

    return-object p0
.end method

.method public copyObject(Lcom/obs/services/model/CopyObjectRequest;)Lcom/obs/services/model/CopyObjectResult;
    .registers 4

    .line 507
    const-string v0, "CopyObjectRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 508
    invoke-virtual {p1}, Lcom/obs/services/model/CopyObjectRequest;->getDestinationBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "destinationBucketName is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    invoke-virtual {p1}, Lcom/obs/services/model/CopyObjectRequest;->getSourceObjectKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sourceObjectKey is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    invoke-virtual {p1}, Lcom/obs/services/model/CopyObjectRequest;->getDestinationObjectKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "destinationObjectKey is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    invoke-virtual {p1}, Lcom/obs/services/model/CopyObjectRequest;->getSourceBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractObjectClient$11;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractObjectClient$11;-><init>(Lcom/obs/services/AbstractObjectClient;Lcom/obs/services/model/CopyObjectRequest;)V

    const-string p1, "copyObject"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/CopyObjectResult;

    return-object p0
.end method

.method public copyObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/CopyObjectResult;
    .registers 6

    .line 530
    new-instance v0, Lcom/obs/services/model/CopyObjectRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/obs/services/model/CopyObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractObjectClient;->copyObject(Lcom/obs/services/model/CopyObjectRequest;)Lcom/obs/services/model/CopyObjectResult;

    move-result-object p0

    return-object p0
.end method

.method public deleteObject(Lcom/obs/services/model/DeleteObjectRequest;)Lcom/obs/services/model/DeleteObjectResult;
    .registers 4

    .line 468
    const-string v0, "DeleteObjectRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 469
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractObjectClient$9;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractObjectClient$9;-><init>(Lcom/obs/services/AbstractObjectClient;Lcom/obs/services/model/DeleteObjectRequest;)V

    const-string p1, "deleteObject"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/DeleteObjectResult;

    return-object p0
.end method

.method public deleteObject(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/DeleteObjectResult;
    .registers 4

    .line 456
    new-instance v0, Lcom/obs/services/model/DeleteObjectRequest;

    invoke-direct {v0, p1, p2}, Lcom/obs/services/model/DeleteObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractObjectClient;->deleteObject(Lcom/obs/services/model/DeleteObjectRequest;)Lcom/obs/services/model/DeleteObjectResult;

    move-result-object p0

    return-object p0
.end method

.method public deleteObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/DeleteObjectResult;
    .registers 5

    .line 444
    new-instance v0, Lcom/obs/services/model/DeleteObjectRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/obs/services/model/DeleteObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractObjectClient;->deleteObject(Lcom/obs/services/model/DeleteObjectRequest;)Lcom/obs/services/model/DeleteObjectResult;

    move-result-object p0

    return-object p0
.end method

.method public deleteObjectTagging(Lcom/obs/services/model/ObjectTaggingRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 4

    .line 807
    const-string v0, "ObjectTaggingRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 808
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bucketName is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    invoke-virtual {p1}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "objectKey is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractObjectClient$20;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractObjectClient$20;-><init>(Lcom/obs/services/AbstractObjectClient;Lcom/obs/services/model/ObjectTaggingRequest;)V

    const-string p1, "deleteObjectTagging"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/HeaderResponse;

    return-object p0
.end method

.method public deleteObjects(Lcom/obs/services/model/DeleteObjectsRequest;)Lcom/obs/services/model/DeleteObjectsResult;
    .registers 4

    .line 488
    const-string v0, "DeleteObjectsRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 489
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractObjectClient$10;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractObjectClient$10;-><init>(Lcom/obs/services/AbstractObjectClient;Lcom/obs/services/model/DeleteObjectsRequest;)V

    const-string p1, "deleteObjects"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/DeleteObjectsResult;

    return-object p0
.end method

.method public doesObjectExist(Lcom/obs/services/model/GetObjectMetadataRequest;)Z
    .registers 4

    .line 69
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bucket is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p1}, Lcom/obs/services/model/GetObjectMetadataRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "objectKey is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractObjectClient$1;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractObjectClient$1;-><init>(Lcom/obs/services/AbstractObjectClient;Lcom/obs/services/model/GetObjectMetadataRequest;)V

    const-string p1, "doesObjectExist"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public doesObjectExist(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 63
    new-instance v0, Lcom/obs/services/model/GetObjectMetadataRequest;

    invoke-direct {v0, p1, p2}, Lcom/obs/services/model/GetObjectMetadataRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractObjectClient;->doesObjectExist(Lcom/obs/services/model/GetObjectMetadataRequest;)Z

    move-result p0

    return p0
.end method

.method public getObject(Lcom/obs/services/model/GetObjectRequest;)Lcom/obs/services/model/ObsObject;
    .registers 4

    .line 382
    const-string v0, "GetObjectRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 383
    invoke-virtual {p1}, Lcom/obs/services/model/GetObjectMetadataRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "objectKey is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractObjectClient$7;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractObjectClient$7;-><init>(Lcom/obs/services/AbstractObjectClient;Lcom/obs/services/model/GetObjectRequest;)V

    const-string p1, "getObject"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/ObsObject;

    return-object p0
.end method

.method public getObject(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/ObsObject;
    .registers 4

    const/4 v0, 0x0

    .line 413
    invoke-virtual {p0, p1, p2, v0}, Lcom/obs/services/AbstractObjectClient;->getObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/ObsObject;

    move-result-object p0

    return-object p0
.end method

.method public getObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/ObsObject;
    .registers 5

    .line 402
    new-instance v0, Lcom/obs/services/model/GetObjectRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/obs/services/model/GetObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractObjectClient;->getObject(Lcom/obs/services/model/GetObjectRequest;)Lcom/obs/services/model/ObsObject;

    move-result-object p0

    return-object p0
.end method

.method public getObjectAcl(Lcom/obs/services/model/GetObjectAclRequest;)Lcom/obs/services/model/AccessControlList;
    .registers 4

    .line 564
    const-string v0, "GetObjectAclRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 565
    invoke-virtual {p1}, Lcom/obs/services/model/GetObjectAclRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "objectKey is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractObjectClient$12;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractObjectClient$12;-><init>(Lcom/obs/services/AbstractObjectClient;Lcom/obs/services/model/GetObjectAclRequest;)V

    const-string p1, "getObjectAcl"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/AccessControlList;

    return-object p0
.end method

.method public getObjectAcl(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/AccessControlList;
    .registers 5

    .line 553
    new-instance v0, Lcom/obs/services/model/GetObjectAclRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/obs/services/model/GetObjectAclRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractObjectClient;->getObjectAcl(Lcom/obs/services/model/GetObjectAclRequest;)Lcom/obs/services/model/AccessControlList;

    move-result-object p0

    return-object p0
.end method

.method public getObjectAcl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/AccessControlList;
    .registers 5

    .line 542
    new-instance v0, Lcom/obs/services/model/GetObjectAclRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/obs/services/model/GetObjectAclRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractObjectClient;->getObjectAcl(Lcom/obs/services/model/GetObjectAclRequest;)Lcom/obs/services/model/AccessControlList;

    move-result-object p0

    return-object p0
.end method

.method public getObjectMetadata(Lcom/obs/services/model/GetObjectMetadataRequest;)Lcom/obs/services/model/ObjectMetadata;
    .registers 4

    .line 658
    const-string v0, "GetObjectMetadataRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 659
    invoke-virtual {p1}, Lcom/obs/services/model/GetObjectMetadataRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "objectKey is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractObjectClient$14;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractObjectClient$14;-><init>(Lcom/obs/services/AbstractObjectClient;Lcom/obs/services/model/GetObjectMetadataRequest;)V

    const-string p1, "getObjectMetadata"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/ObjectMetadata;

    return-object p0
.end method

.method public getObjectMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/ObjectMetadata;
    .registers 4

    const/4 v0, 0x0

    .line 712
    invoke-virtual {p0, p1, p2, v0}, Lcom/obs/services/AbstractObjectClient;->getObjectMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/ObjectMetadata;

    move-result-object p0

    return-object p0
.end method

.method public getObjectMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/ObjectMetadata;
    .registers 5

    .line 697
    new-instance v0, Lcom/obs/services/model/GetObjectMetadataRequest;

    invoke-direct {v0}, Lcom/obs/services/model/GetObjectMetadataRequest;-><init>()V

    .line 698
    invoke-virtual {v0, p1}, Lcom/obs/services/model/GenericRequest;->setBucketName(Ljava/lang/String;)V

    .line 699
    invoke-virtual {v0, p2}, Lcom/obs/services/model/GetObjectMetadataRequest;->setObjectKey(Ljava/lang/String;)V

    .line 700
    invoke-virtual {v0, p3}, Lcom/obs/services/model/GetObjectMetadataRequest;->setVersionId(Ljava/lang/String;)V

    .line 701
    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractObjectClient;->getObjectMetadata(Lcom/obs/services/model/GetObjectMetadataRequest;)Lcom/obs/services/model/ObjectMetadata;

    move-result-object p0

    return-object p0
.end method

.method public getObjectTagging(Lcom/obs/services/model/ObjectTaggingRequest;)Lcom/obs/services/model/ObjectTagResult;
    .registers 4

    .line 766
    const-string v0, "ObjectTaggingRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 767
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bucketName is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    invoke-virtual {p1}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "objectKey is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractObjectClient$18;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractObjectClient$18;-><init>(Lcom/obs/services/AbstractObjectClient;Lcom/obs/services/model/ObjectTaggingRequest;)V

    const-string p1, "getObjectTagging"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/ObjectTagResult;

    return-object p0
.end method

.method public listObjects(Lcom/obs/services/model/ListObjectsRequest;)Lcom/obs/services/model/ObjectListing;
    .registers 4

    .line 126
    const-string v0, "ListObjectsRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractObjectClient$3;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractObjectClient$3;-><init>(Lcom/obs/services/AbstractObjectClient;Lcom/obs/services/model/ListObjectsRequest;)V

    const-string p1, "listObjects"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/ObjectListing;

    return-object p0
.end method

.method public listObjects(Ljava/lang/String;)Lcom/obs/services/model/ObjectListing;
    .registers 3

    .line 144
    new-instance v0, Lcom/obs/services/model/ListObjectsRequest;

    invoke-direct {v0, p1}, Lcom/obs/services/model/ListObjectsRequest;-><init>(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractObjectClient;->listObjects(Lcom/obs/services/model/ListObjectsRequest;)Lcom/obs/services/model/ObjectListing;

    move-result-object p0

    return-object p0
.end method

.method public listVersions(Lcom/obs/services/model/ListVersionsRequest;)Lcom/obs/services/model/ListVersionsResult;
    .registers 4

    .line 195
    const-string v0, "ListVersionsRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractObjectClient$4;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractObjectClient$4;-><init>(Lcom/obs/services/AbstractObjectClient;Lcom/obs/services/model/ListVersionsRequest;)V

    const-string p1, "listVersions"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/ListVersionsResult;

    return-object p0
.end method

.method public listVersions(Ljava/lang/String;)Lcom/obs/services/model/ListVersionsResult;
    .registers 3

    .line 212
    new-instance v0, Lcom/obs/services/model/ListVersionsRequest;

    invoke-direct {v0}, Lcom/obs/services/model/ListVersionsRequest;-><init>()V

    .line 213
    invoke-virtual {v0, p1}, Lcom/obs/services/model/GenericRequest;->setBucketName(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractObjectClient;->listVersions(Lcom/obs/services/model/ListVersionsRequest;)Lcom/obs/services/model/ListVersionsResult;

    move-result-object p0

    return-object p0
.end method

.method public listVersions(Ljava/lang/String;J)Lcom/obs/services/model/ListVersionsResult;
    .registers 5

    .line 224
    new-instance v0, Lcom/obs/services/model/ListVersionsRequest;

    invoke-direct {v0}, Lcom/obs/services/model/ListVersionsRequest;-><init>()V

    .line 225
    invoke-virtual {v0, p1}, Lcom/obs/services/model/GenericRequest;->setBucketName(Ljava/lang/String;)V

    long-to-int p1, p2

    .line 226
    invoke-virtual {v0, p1}, Lcom/obs/services/model/ListVersionsRequest;->setMaxKeys(I)V

    .line 227
    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractObjectClient;->listVersions(Lcom/obs/services/model/ListVersionsRequest;)Lcom/obs/services/model/ListVersionsResult;

    move-result-object p0

    return-object p0
.end method

.method public listVersions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/obs/services/model/ListVersionsResult;
    .registers 17

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-wide v6, p6

    .line 240
    invoke-virtual/range {v0 .. v8}, Lcom/obs/services/AbstractObjectClient;->listVersions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/obs/services/model/ListVersionsResult;

    move-result-object p0

    return-object p0
.end method

.method public listVersions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/obs/services/model/ListVersionsResult;
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 177
    new-instance p8, Lcom/obs/services/model/ListVersionsRequest;

    invoke-direct {p8}, Lcom/obs/services/model/ListVersionsRequest;-><init>()V

    .line 178
    invoke-virtual {p8, p1}, Lcom/obs/services/model/GenericRequest;->setBucketName(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p8, p2}, Lcom/obs/services/model/ListVersionsRequest;->setPrefix(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p8, p4}, Lcom/obs/services/model/ListVersionsRequest;->setKeyMarker(Ljava/lang/String;)V

    long-to-int p1, p6

    .line 181
    invoke-virtual {p8, p1}, Lcom/obs/services/model/ListVersionsRequest;->setMaxKeys(I)V

    .line 182
    invoke-virtual {p8, p5}, Lcom/obs/services/model/ListVersionsRequest;->setVersionIdMarker(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p8, p3}, Lcom/obs/services/model/ListVersionsRequest;->setDelimiter(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0, p8}, Lcom/obs/services/AbstractObjectClient;->listVersions(Lcom/obs/services/model/ListVersionsRequest;)Lcom/obs/services/model/ListVersionsResult;

    move-result-object p0

    return-object p0
.end method

.method public optionsObject(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/model/OptionsInfoRequest;)Lcom/obs/services/model/OptionsInfoResult;
    .registers 5

    .line 108
    new-instance v0, Lcom/obs/services/AbstractObjectClient$2;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/obs/services/AbstractObjectClient$2;-><init>(Lcom/obs/services/AbstractObjectClient;Lcom/obs/services/model/OptionsInfoRequest;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "optionsObject"

    invoke-virtual {p0, p2, p1, v0}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/OptionsInfoResult;

    return-object p0
.end method

.method public putObject(Lcom/obs/services/model/PutObjectRequest;)Lcom/obs/services/model/PutObjectResult;
    .registers 4

    .line 281
    const-string v0, "PutObjectRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    invoke-virtual {p1}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "objectKey is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractObjectClient$5;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractObjectClient$5;-><init>(Lcom/obs/services/AbstractObjectClient;Lcom/obs/services/model/PutObjectRequest;)V

    const-string p1, "putObject"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/PutObjectResult;

    return-object p0
.end method

.method public putObject(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/obs/services/model/PutObjectResult;
    .registers 5

    const/4 v0, 0x0

    .line 304
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/obs/services/AbstractObjectClient;->putObject(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/obs/services/model/ObjectMetadata;)Lcom/obs/services/model/PutObjectResult;

    move-result-object p0

    return-object p0
.end method

.method public putObject(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/obs/services/model/ObjectMetadata;)Lcom/obs/services/model/PutObjectResult;
    .registers 6

    .line 316
    new-instance v0, Lcom/obs/services/model/PutObjectRequest;

    invoke-direct {v0}, Lcom/obs/services/model/PutObjectRequest;-><init>()V

    .line 317
    invoke-virtual {v0, p1}, Lcom/obs/services/model/GenericRequest;->setBucketName(Ljava/lang/String;)V

    .line 318
    invoke-virtual {v0, p3}, Lcom/obs/services/model/PutObjectRequest;->setFile(Ljava/io/File;)V

    .line 319
    invoke-virtual {v0, p2}, Lcom/obs/services/model/BaseObjectRequest;->setObjectKey(Ljava/lang/String;)V

    .line 320
    invoke-virtual {v0, p4}, Lcom/obs/services/model/PutObjectRequest;->setMetadata(Lcom/obs/services/model/ObjectMetadata;)V

    .line 321
    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractObjectClient;->putObject(Lcom/obs/services/model/PutObjectRequest;)Lcom/obs/services/model/PutObjectResult;

    move-result-object p0

    return-object p0
.end method

.method public putObject(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lcom/obs/services/model/PutObjectResult;
    .registers 5

    const/4 v0, 0x0

    .line 269
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/obs/services/AbstractObjectClient;->putObject(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/obs/services/model/ObjectMetadata;)Lcom/obs/services/model/PutObjectResult;

    move-result-object p0

    return-object p0
.end method

.method public putObject(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/obs/services/model/ObjectMetadata;)Lcom/obs/services/model/PutObjectResult;
    .registers 6

    .line 253
    new-instance v0, Lcom/obs/services/model/PutObjectRequest;

    invoke-direct {v0}, Lcom/obs/services/model/PutObjectRequest;-><init>()V

    .line 254
    invoke-virtual {v0, p1}, Lcom/obs/services/model/GenericRequest;->setBucketName(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v0, p3}, Lcom/obs/services/model/PutObjectRequest;->setInput(Ljava/io/InputStream;)V

    .line 256
    invoke-virtual {v0, p4}, Lcom/obs/services/model/PutObjectRequest;->setMetadata(Lcom/obs/services/model/ObjectMetadata;)V

    .line 257
    invoke-virtual {v0, p2}, Lcom/obs/services/model/BaseObjectRequest;->setObjectKey(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractObjectClient;->putObject(Lcom/obs/services/model/PutObjectRequest;)Lcom/obs/services/model/PutObjectResult;

    move-result-object p0

    return-object p0
.end method

.method public putObjectInTwoBucket(Lcom/obs/services/model/PutObjectInTwoBucketRequest;)Lcom/obs/services/model/PutObjectInTwoBucketResult;
    .registers 4

    .line 327
    const-string v0, "PutObjectInTwoBucketRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectInTwoBucketRequest;->getMainBucketRequest()Lcom/obs/services/model/PutObjectRequest;

    move-result-object v0

    const-string v1, "mainBucketRequest is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectInTwoBucketRequest;->getBackupBucketRequest()Lcom/obs/services/model/PutObjectRequest;

    move-result-object v0

    const-string v1, "backupBucketRequest is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 330
    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectInTwoBucketRequest;->getBackupBucketRequest()Lcom/obs/services/model/PutObjectRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "backupBucketName is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectInTwoBucketRequest;->getMainBucketRequest()Lcom/obs/services/model/PutObjectRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mainBucketName is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectInTwoBucketRequest;->getBackupBucketRequest()Lcom/obs/services/model/PutObjectRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "backupObjectKey is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectInTwoBucketRequest;->getMainBucketRequest()Lcom/obs/services/model/PutObjectRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mainObjectKey is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectInTwoBucketRequest;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 335
    invoke-static {v0}, Lcom/obs/services/internal/utils/ObjectUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_74

    .line 336
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 337
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 338
    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectInTwoBucketRequest;->getMainBucketRequest()Lcom/obs/services/model/PutObjectRequest;

    move-result-object v0

    .line 339
    invoke-virtual {v0, v1}, Lcom/obs/services/model/PutObjectRequest;->setFile(Ljava/io/File;)V

    .line 340
    invoke-virtual {p1, v0}, Lcom/obs/services/model/PutObjectInTwoBucketRequest;->setMainBucketRequest(Lcom/obs/services/model/PutObjectRequest;)V

    .line 341
    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectInTwoBucketRequest;->getBackupBucketRequest()Lcom/obs/services/model/PutObjectRequest;

    move-result-object v0

    .line 342
    invoke-virtual {v0, v1}, Lcom/obs/services/model/PutObjectRequest;->setFile(Ljava/io/File;)V

    .line 343
    invoke-virtual {p1, v0}, Lcom/obs/services/model/PutObjectInTwoBucketRequest;->setBackupBucketRequest(Lcom/obs/services/model/PutObjectRequest;)V

    .line 346
    :cond_74
    new-instance v0, Lcom/obs/services/AbstractObjectClient$6;

    invoke-direct {v0, p0, p1}, Lcom/obs/services/AbstractObjectClient$6;-><init>(Lcom/obs/services/AbstractObjectClient;Lcom/obs/services/model/PutObjectInTwoBucketRequest;)V

    const-string p1, "putObjectInTwoBucket"

    const-string v1, "All Buckets"

    invoke-virtual {p0, p1, v1, v0}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/PutObjectInTwoBucketResult;

    return-object p0
.end method

.method public restoreObject(Lcom/obs/services/model/RestoreObjectRequest;)Lcom/obs/services/model/RestoreObjectRequest$RestoreObjectStatus;
    .registers 4

    .line 746
    const-string v0, "RestoreObjectRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 747
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractObjectClient$17;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractObjectClient$17;-><init>(Lcom/obs/services/AbstractObjectClient;Lcom/obs/services/model/RestoreObjectRequest;)V

    const-string p1, "restoreObject"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/RestoreObjectRequest$RestoreObjectStatus;

    return-object p0
.end method

.method public restoreObjectV2(Lcom/obs/services/model/RestoreObjectRequest;)Lcom/obs/services/model/RestoreObjectResult;
    .registers 4

    .line 829
    const-string v0, "RestoreObjectRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 830
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractObjectClient$21;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractObjectClient$21;-><init>(Lcom/obs/services/AbstractObjectClient;Lcom/obs/services/model/RestoreObjectRequest;)V

    const-string p1, "restoreObjectV2"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/RestoreObjectResult;

    return-object p0
.end method

.method public selectObjectContent(Lcom/obs/services/model/select/SelectObjectRequest;)Lcom/obs/services/model/select/SelectObjectResult;
    .registers 4

    .line 419
    const-string v0, "SelectObjectRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 420
    invoke-virtual {p1}, Lcom/obs/services/model/select/SelectObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bucket-name is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    invoke-virtual {p1}, Lcom/obs/services/model/select/SelectObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "object-key is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    invoke-virtual {p1}, Lcom/obs/services/model/select/SelectObjectRequest;->getExpression()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sql-expression is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    invoke-virtual {p1}, Lcom/obs/services/model/select/SelectObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractObjectClient$8;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractObjectClient$8;-><init>(Lcom/obs/services/AbstractObjectClient;Lcom/obs/services/model/select/SelectObjectRequest;)V

    .line 424
    const-string p1, "selectObjectContent"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/select/SelectObjectResult;

    return-object p0
.end method

.method public setObjectAcl(Lcom/obs/services/model/SetObjectAclRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 4

    .line 611
    const-string v0, "SetObjectAclRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 612
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractObjectClient$13;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractObjectClient$13;-><init>(Lcom/obs/services/AbstractObjectClient;Lcom/obs/services/model/SetObjectAclRequest;)V

    const-string p1, "setObjectAcl"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/HeaderResponse;

    return-object p0
.end method

.method public setObjectAcl(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/model/AccessControlList;)Lcom/obs/services/model/HeaderResponse;
    .registers 5

    .line 646
    new-instance v0, Lcom/obs/services/model/SetObjectAclRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/obs/services/model/SetObjectAclRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/model/AccessControlList;)V

    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractObjectClient;->setObjectAcl(Lcom/obs/services/model/SetObjectAclRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method public setObjectAcl(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/model/AccessControlList;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 6

    .line 634
    new-instance v0, Lcom/obs/services/model/SetObjectAclRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/obs/services/model/SetObjectAclRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/model/AccessControlList;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractObjectClient;->setObjectAcl(Lcom/obs/services/model/SetObjectAclRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method public setObjectAcl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/model/AccessControlList;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 597
    new-instance v0, Lcom/obs/services/model/SetObjectAclRequest;

    invoke-direct {v0, p1, p2, p4, p5}, Lcom/obs/services/model/SetObjectAclRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/model/AccessControlList;Ljava/lang/String;)V

    .line 598
    invoke-virtual {v0, p3}, Lcom/obs/services/model/SetObjectAclRequest;->setCannedACL(Ljava/lang/String;)V

    .line 599
    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractObjectClient;->setObjectAcl(Lcom/obs/services/model/SetObjectAclRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method public setObjectMetadata(Lcom/obs/services/model/SetObjectMetadataRequest;)Lcom/obs/services/model/ObjectMetadata;
    .registers 4

    .line 679
    const-string v0, "SetObjectMetadataRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 680
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractObjectClient$15;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractObjectClient$15;-><init>(Lcom/obs/services/AbstractObjectClient;Lcom/obs/services/model/SetObjectMetadataRequest;)V

    const-string p1, "setObjectMetadata"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/ObjectMetadata;

    return-object p0
.end method

.method public setObjectTagging(Lcom/obs/services/model/ObjectTaggingRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 4

    .line 787
    const-string v0, "ObjectTaggingRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 788
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bucketName is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    invoke-virtual {p1}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "objectKey is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractObjectClient$19;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractObjectClient$19;-><init>(Lcom/obs/services/AbstractObjectClient;Lcom/obs/services/model/ObjectTaggingRequest;)V

    const-string p1, "setObjectTagging"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/HeaderResponse;

    return-object p0
.end method
