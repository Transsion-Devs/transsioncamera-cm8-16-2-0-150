.class public abstract Lcom/obs/services/AbstractBucketAdvanceClient;
.super Lcom/obs/services/AbstractBucketClient;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Lcom/obs/services/AbstractBucketClient;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/obs/services/AbstractBucketAdvanceClient;Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/LifecycleConfiguration;
    .registers 2

    .line 46
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsBucketAdvanceService;->getBucketLifecycleConfigurationImpl(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/LifecycleConfiguration;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/obs/services/AbstractBucketAdvanceClient;Lcom/obs/services/model/SetBucketLifecycleRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 2

    .line 46
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsBucketAdvanceService;->setBucketLifecycleConfigurationImpl(Lcom/obs/services/model/SetBucketLifecycleRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lcom/obs/services/AbstractBucketAdvanceClient;Lcom/obs/services/model/SetBucketTaggingRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 2

    .line 46
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsBucketAdvanceService;->setBucketTaggingImpl(Lcom/obs/services/model/SetBucketTaggingRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lcom/obs/services/AbstractBucketAdvanceClient;Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 2

    .line 46
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsBucketAdvanceService;->deleteBucketTaggingImpl(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/obs/services/AbstractBucketAdvanceClient;Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketEncryption;
    .registers 2

    .line 46
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsBucketAdvanceService;->getBucketEncryptionImpl(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketEncryption;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/obs/services/AbstractBucketAdvanceClient;Lcom/obs/services/model/SetBucketEncryptionRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 2

    .line 46
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsBucketAdvanceService;->setBucketEncryptionImpl(Lcom/obs/services/model/SetBucketEncryptionRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lcom/obs/services/AbstractBucketAdvanceClient;Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 2

    .line 46
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsBucketAdvanceService;->deleteBucketEncryptionImpl(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lcom/obs/services/AbstractBucketAdvanceClient;Lcom/obs/services/model/SetBucketReplicationRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 2

    .line 46
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsBucketAdvanceService;->setBucketReplicationConfigurationImpl(Lcom/obs/services/model/SetBucketReplicationRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1600(Lcom/obs/services/AbstractBucketAdvanceClient;Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/ReplicationConfiguration;
    .registers 2

    .line 46
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsBucketAdvanceService;->getBucketReplicationConfigurationImpl(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/ReplicationConfiguration;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(Lcom/obs/services/AbstractBucketAdvanceClient;Lcom/obs/services/model/crr/GetCrrProgressRequest;)Lcom/obs/services/model/crr/GetCrrProgressResult;
    .registers 2

    .line 46
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsBucketAdvanceService;->getCrrProgressImpl(Lcom/obs/services/model/crr/GetCrrProgressRequest;)Lcom/obs/services/model/crr/GetCrrProgressResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(Lcom/obs/services/AbstractBucketAdvanceClient;)Lcom/obs/services/internal/security/ProviderCredentials;
    .registers 1

    .line 46
    invoke-virtual {p0}, Lcom/obs/services/internal/RestStorageService;->getProviderCredentials()Lcom/obs/services/internal/security/ProviderCredentials;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1900(Lcom/obs/services/AbstractBucketAdvanceClient;Ljava/lang/String;)Lcom/obs/services/model/AuthTypeEnum;
    .registers 2

    .line 46
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->getApiVersion(Ljava/lang/String;)Lcom/obs/services/model/AuthTypeEnum;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/obs/services/AbstractBucketAdvanceClient;Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 2

    .line 46
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsBucketAdvanceService;->deleteBucketLifecycleConfigurationImpl(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2000(Lcom/obs/services/AbstractBucketAdvanceClient;)Lcom/obs/services/internal/security/ProviderCredentials;
    .registers 1

    .line 46
    invoke-virtual {p0}, Lcom/obs/services/internal/RestStorageService;->getProviderCredentials()Lcom/obs/services/internal/security/ProviderCredentials;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2100(Lcom/obs/services/AbstractBucketAdvanceClient;Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 2

    .line 46
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsBucketAdvanceService;->deleteBucketReplicationConfigurationImpl(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2200(Lcom/obs/services/AbstractBucketAdvanceClient;Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketNotificationConfiguration;
    .registers 2

    .line 46
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsBucketAdvanceService;->getBucketNotificationConfigurationImpl(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketNotificationConfiguration;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2300(Lcom/obs/services/AbstractBucketAdvanceClient;Lcom/obs/services/model/SetBucketNotificationRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 2

    .line 46
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsBucketAdvanceService;->setBucketNotificationImpl(Lcom/obs/services/model/SetBucketNotificationRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2400(Lcom/obs/services/AbstractBucketAdvanceClient;Lcom/obs/services/model/fs/SetBucketFSStatusRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 2

    .line 46
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsBucketBaseService;->setBucketFSStatusImpl(Lcom/obs/services/model/fs/SetBucketFSStatusRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2500(Lcom/obs/services/AbstractBucketAdvanceClient;Lcom/obs/services/model/BucketMetadataInfoRequest;)Lcom/obs/services/model/fs/GetBucketFSStatusResult;
    .registers 2

    .line 46
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsBucketBaseService;->getBucketMetadataImpl(Lcom/obs/services/model/BucketMetadataInfoRequest;)Lcom/obs/services/model/fs/GetBucketFSStatusResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2600(Lcom/obs/services/AbstractBucketAdvanceClient;Lcom/obs/services/model/SetBucketDirectColdAccessRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 2

    .line 46
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsBucketAdvanceService;->setBucketDirectColdAccessImpl(Lcom/obs/services/model/SetBucketDirectColdAccessRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2700(Lcom/obs/services/AbstractBucketAdvanceClient;Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketDirectColdAccess;
    .registers 2

    .line 46
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsBucketAdvanceService;->getBucketDirectColdAccessImpl(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketDirectColdAccess;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2800(Lcom/obs/services/AbstractBucketAdvanceClient;Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 2

    .line 46
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsBucketAdvanceService;->deleteBucketDirectColdAccessImpl(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/obs/services/AbstractBucketAdvanceClient;Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketPolicyResponse;
    .registers 2

    .line 46
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsBucketBaseService;->getBucketPolicyImpl(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketPolicyResponse;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/obs/services/AbstractBucketAdvanceClient;Lcom/obs/services/model/SetBucketPolicyRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 2

    .line 46
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsBucketBaseService;->setBucketPolicyImpl(Lcom/obs/services/model/SetBucketPolicyRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/obs/services/AbstractBucketAdvanceClient;Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 2

    .line 46
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsBucketBaseService;->deleteBucketPolicyImpl(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/obs/services/AbstractBucketAdvanceClient;Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/WebsiteConfiguration;
    .registers 2

    .line 46
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsBucketAdvanceService;->getBucketWebsiteConfigurationImpl(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/WebsiteConfiguration;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/obs/services/AbstractBucketAdvanceClient;Lcom/obs/services/model/SetBucketWebsiteRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 2

    .line 46
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsBucketAdvanceService;->setBucketWebsiteConfigurationImpl(Lcom/obs/services/model/SetBucketWebsiteRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/obs/services/AbstractBucketAdvanceClient;Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 2

    .line 46
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsBucketAdvanceService;->deleteBucketWebsiteConfigurationImpl(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/obs/services/AbstractBucketAdvanceClient;Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketTagInfo;
    .registers 2

    .line 46
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsBucketAdvanceService;->getBucketTaggingImpl(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketTagInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public deleteBucketDirectColdAccess(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 4

    .line 800
    const-string v0, "BaseBucketRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 801
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bucketName is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractBucketAdvanceClient$26;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractBucketAdvanceClient$26;-><init>(Lcom/obs/services/AbstractBucketAdvanceClient;Lcom/obs/services/model/BaseBucketRequest;)V

    const-string p1, "deleteBucketDirectColdAccess"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/HeaderResponse;

    return-object p0
.end method

.method public deleteBucketDirectColdAccess(Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 3

    .line 790
    new-instance v0, Lcom/obs/services/model/BaseBucketRequest;

    invoke-direct {v0, p1}, Lcom/obs/services/model/BaseBucketRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractBucketAdvanceClient;->deleteBucketDirectColdAccess(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method public deleteBucketEncryption(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 4

    .line 508
    const-string v0, "BaseBucketRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 509
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractBucketAdvanceClient$15;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractBucketAdvanceClient$15;-><init>(Lcom/obs/services/AbstractBucketAdvanceClient;Lcom/obs/services/model/BaseBucketRequest;)V

    const-string p1, "deleteBucketEncryption"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/HeaderResponse;

    return-object p0
.end method

.method public deleteBucketEncryption(Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 3

    .line 498
    new-instance v0, Lcom/obs/services/model/BaseBucketRequest;

    invoke-direct {v0, p1}, Lcom/obs/services/model/BaseBucketRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractBucketAdvanceClient;->deleteBucketEncryption(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method public deleteBucketLifecycle(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 4

    .line 126
    const-string v0, "BaseBucketRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bucketName is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractBucketAdvanceClient$3;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractBucketAdvanceClient$3;-><init>(Lcom/obs/services/AbstractBucketAdvanceClient;Lcom/obs/services/model/BaseBucketRequest;)V

    const-string p1, "deleteBucketLifecycleConfiguration"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/HeaderResponse;

    return-object p0
.end method

.method public deleteBucketLifecycle(Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 3

    .line 116
    new-instance v0, Lcom/obs/services/model/BaseBucketRequest;

    invoke-direct {v0, p1}, Lcom/obs/services/model/BaseBucketRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractBucketAdvanceClient;->deleteBucketLifecycle(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method public deleteBucketPolicy(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 4

    .line 235
    const-string v0, "BaseBucketRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bucketName is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractBucketAdvanceClient$6;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractBucketAdvanceClient$6;-><init>(Lcom/obs/services/AbstractBucketAdvanceClient;Lcom/obs/services/model/BaseBucketRequest;)V

    const-string p1, "deleteBucketPolicy"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/HeaderResponse;

    return-object p0
.end method

.method public deleteBucketPolicy(Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 3

    .line 225
    new-instance v0, Lcom/obs/services/model/BaseBucketRequest;

    invoke-direct {v0, p1}, Lcom/obs/services/model/BaseBucketRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractBucketAdvanceClient;->deleteBucketPolicy(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method public deleteBucketReplication(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 4

    .line 621
    const-string v0, "BaseBucketRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 622
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bucketName is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractBucketAdvanceClient$19;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractBucketAdvanceClient$19;-><init>(Lcom/obs/services/AbstractBucketAdvanceClient;Lcom/obs/services/model/BaseBucketRequest;)V

    const-string p1, "deleteBucketReplicationConfiguration"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/HeaderResponse;

    return-object p0
.end method

.method public deleteBucketReplication(Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 3

    .line 610
    new-instance v0, Lcom/obs/services/model/BaseBucketRequest;

    invoke-direct {v0, p1}, Lcom/obs/services/model/BaseBucketRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractBucketAdvanceClient;->deleteBucketReplication(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method public deleteBucketTagging(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 4

    .line 417
    const-string v0, "BaseBucketRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 418
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bucketName is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractBucketAdvanceClient$12;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractBucketAdvanceClient$12;-><init>(Lcom/obs/services/AbstractBucketAdvanceClient;Lcom/obs/services/model/BaseBucketRequest;)V

    const-string p1, "deleteBucketTagging"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/HeaderResponse;

    return-object p0
.end method

.method public deleteBucketTagging(Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 3

    .line 407
    new-instance v0, Lcom/obs/services/model/BaseBucketRequest;

    invoke-direct {v0, p1}, Lcom/obs/services/model/BaseBucketRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractBucketAdvanceClient;->deleteBucketTagging(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method public deleteBucketWebsite(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 4

    .line 327
    const-string v0, "BaseBucketRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bucketName is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractBucketAdvanceClient$9;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractBucketAdvanceClient$9;-><init>(Lcom/obs/services/AbstractBucketAdvanceClient;Lcom/obs/services/model/BaseBucketRequest;)V

    const-string p1, "deleteBucketWebsiteConfiguration"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/HeaderResponse;

    return-object p0
.end method

.method public deleteBucketWebsite(Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 3

    .line 317
    new-instance v0, Lcom/obs/services/model/BaseBucketRequest;

    invoke-direct {v0, p1}, Lcom/obs/services/model/BaseBucketRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractBucketAdvanceClient;->deleteBucketWebsite(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method public getBucketDirectColdAccess(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketDirectColdAccess;
    .registers 4

    .line 772
    const-string v0, "BaseBucketRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 773
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bucketName is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractBucketAdvanceClient$25;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractBucketAdvanceClient$25;-><init>(Lcom/obs/services/AbstractBucketAdvanceClient;Lcom/obs/services/model/BaseBucketRequest;)V

    const-string p1, "getBucketDirectColdAccess"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/BucketDirectColdAccess;

    return-object p0
.end method

.method public getBucketDirectColdAccess(Ljava/lang/String;)Lcom/obs/services/model/BucketDirectColdAccess;
    .registers 3

    .line 762
    new-instance v0, Lcom/obs/services/model/BaseBucketRequest;

    invoke-direct {v0, p1}, Lcom/obs/services/model/BaseBucketRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractBucketAdvanceClient;->getBucketDirectColdAccess(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketDirectColdAccess;

    move-result-object p0

    return-object p0
.end method

.method public getBucketEncryption(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketEncryption;
    .registers 4

    .line 447
    const-string v0, "BaseBucketRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 448
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractBucketAdvanceClient$13;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractBucketAdvanceClient$13;-><init>(Lcom/obs/services/AbstractBucketAdvanceClient;Lcom/obs/services/model/BaseBucketRequest;)V

    const-string p1, "getBucketEncryption"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/BucketEncryption;

    return-object p0
.end method

.method public getBucketEncryption(Ljava/lang/String;)Lcom/obs/services/model/BucketEncryption;
    .registers 3

    .line 437
    new-instance v0, Lcom/obs/services/model/BaseBucketRequest;

    invoke-direct {v0, p1}, Lcom/obs/services/model/BaseBucketRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractBucketAdvanceClient;->getBucketEncryption(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketEncryption;

    move-result-object p0

    return-object p0
.end method

.method public getBucketFSStatus(Lcom/obs/services/model/fs/GetBucketFSStatusRequest;)Lcom/obs/services/model/fs/GetBucketFSStatusResult;
    .registers 4

    .line 712
    const-string v0, "GetBucketFSStatusRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 713
    invoke-virtual {p1}, Lcom/obs/services/model/BucketMetadataInfoRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractBucketAdvanceClient$23;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractBucketAdvanceClient$23;-><init>(Lcom/obs/services/AbstractBucketAdvanceClient;Lcom/obs/services/model/fs/GetBucketFSStatusRequest;)V

    const-string p1, "getBucketFSStatus"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/fs/GetBucketFSStatusResult;

    return-object p0
.end method

.method public getBucketLifecycle(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/LifecycleConfiguration;
    .registers 4

    .line 64
    const-string v0, "BaseBucketRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bucketName is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractBucketAdvanceClient$1;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractBucketAdvanceClient$1;-><init>(Lcom/obs/services/AbstractBucketAdvanceClient;Lcom/obs/services/model/BaseBucketRequest;)V

    const-string p1, "getBucketLifecycleConfiguration"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/LifecycleConfiguration;

    return-object p0
.end method

.method public getBucketLifecycle(Ljava/lang/String;)Lcom/obs/services/model/LifecycleConfiguration;
    .registers 3

    .line 54
    new-instance v0, Lcom/obs/services/model/BaseBucketRequest;

    invoke-direct {v0, p1}, Lcom/obs/services/model/BaseBucketRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractBucketAdvanceClient;->getBucketLifecycle(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/LifecycleConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public getBucketNotification(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketNotificationConfiguration;
    .registers 4

    .line 651
    const-string v0, "BaseBucketRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 652
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractBucketAdvanceClient$20;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractBucketAdvanceClient$20;-><init>(Lcom/obs/services/AbstractBucketAdvanceClient;Lcom/obs/services/model/BaseBucketRequest;)V

    const-string p1, "getBucketNotification"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/BucketNotificationConfiguration;

    return-object p0
.end method

.method public getBucketNotification(Ljava/lang/String;)Lcom/obs/services/model/BucketNotificationConfiguration;
    .registers 3

    .line 641
    new-instance v0, Lcom/obs/services/model/BaseBucketRequest;

    invoke-direct {v0, p1}, Lcom/obs/services/model/BaseBucketRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractBucketAdvanceClient;->getBucketNotification(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketNotificationConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public getBucketPolicy(Lcom/obs/services/model/BaseBucketRequest;)Ljava/lang/String;
    .registers 2

    .line 155
    invoke-virtual {p0, p1}, Lcom/obs/services/AbstractBucketAdvanceClient;->getBucketPolicyV2(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketPolicyResponse;

    move-result-object p0

    invoke-virtual {p0}, Lcom/obs/services/model/BucketPolicyResponse;->getPolicy()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBucketPolicy(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 145
    new-instance v0, Lcom/obs/services/model/BaseBucketRequest;

    invoke-direct {v0, p1}, Lcom/obs/services/model/BaseBucketRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractBucketAdvanceClient;->getBucketPolicyV2(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketPolicyResponse;

    move-result-object p0

    invoke-virtual {p0}, Lcom/obs/services/model/BucketPolicyResponse;->getPolicy()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBucketPolicyV2(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketPolicyResponse;
    .registers 4

    .line 175
    const-string v0, "BaseBucketRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bucketName is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractBucketAdvanceClient$4;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractBucketAdvanceClient$4;-><init>(Lcom/obs/services/AbstractBucketAdvanceClient;Lcom/obs/services/model/BaseBucketRequest;)V

    const-string p1, "getBucketPolicy"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/BucketPolicyResponse;

    return-object p0
.end method

.method public getBucketPolicyV2(Ljava/lang/String;)Lcom/obs/services/model/BucketPolicyResponse;
    .registers 3

    .line 165
    new-instance v0, Lcom/obs/services/model/BaseBucketRequest;

    invoke-direct {v0, p1}, Lcom/obs/services/model/BaseBucketRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractBucketAdvanceClient;->getBucketPolicyV2(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketPolicyResponse;

    move-result-object p0

    return-object p0
.end method

.method public getBucketReplication(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/ReplicationConfiguration;
    .registers 4

    .line 568
    const-string v0, "BaseBucketRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 569
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bucketName is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractBucketAdvanceClient$17;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractBucketAdvanceClient$17;-><init>(Lcom/obs/services/AbstractBucketAdvanceClient;Lcom/obs/services/model/BaseBucketRequest;)V

    const-string p1, "getBucketReplicationConfiguration"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/ReplicationConfiguration;

    return-object p0
.end method

.method public getBucketReplication(Ljava/lang/String;)Lcom/obs/services/model/ReplicationConfiguration;
    .registers 3

    .line 558
    new-instance v0, Lcom/obs/services/model/BaseBucketRequest;

    invoke-direct {v0, p1}, Lcom/obs/services/model/BaseBucketRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractBucketAdvanceClient;->getBucketReplication(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/ReplicationConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public getBucketTagging(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketTagInfo;
    .registers 4

    .line 356
    const-string v0, "BaseBucketRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 357
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bucketName is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractBucketAdvanceClient$10;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractBucketAdvanceClient$10;-><init>(Lcom/obs/services/AbstractBucketAdvanceClient;Lcom/obs/services/model/BaseBucketRequest;)V

    const-string p1, "getBucketTagging"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/BucketTagInfo;

    return-object p0
.end method

.method public getBucketTagging(Ljava/lang/String;)Lcom/obs/services/model/BucketTagInfo;
    .registers 3

    .line 346
    new-instance v0, Lcom/obs/services/model/BaseBucketRequest;

    invoke-direct {v0, p1}, Lcom/obs/services/model/BaseBucketRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractBucketAdvanceClient;->getBucketTagging(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketTagInfo;

    move-result-object p0

    return-object p0
.end method

.method public getBucketWebsite(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/WebsiteConfiguration;
    .registers 4

    .line 263
    const-string v0, "BaseBucketRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bucketName is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractBucketAdvanceClient$7;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractBucketAdvanceClient$7;-><init>(Lcom/obs/services/AbstractBucketAdvanceClient;Lcom/obs/services/model/BaseBucketRequest;)V

    const-string p1, "getBucketWebsiteConfiguration"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/WebsiteConfiguration;

    return-object p0
.end method

.method public getBucketWebsite(Ljava/lang/String;)Lcom/obs/services/model/WebsiteConfiguration;
    .registers 3

    .line 253
    new-instance v0, Lcom/obs/services/model/BaseBucketRequest;

    invoke-direct {v0, p1}, Lcom/obs/services/model/BaseBucketRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractBucketAdvanceClient;->getBucketWebsite(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/WebsiteConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public getCrrProgress(Lcom/obs/services/model/crr/GetCrrProgressRequest;)Lcom/obs/services/model/crr/GetCrrProgressResult;
    .registers 4

    .line 582
    const-string v0, "GetCrrProgressRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 583
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bucketName is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    invoke-virtual {p1}, Lcom/obs/services/model/crr/GetCrrProgressRequest;->getRuleId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ruleId is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractBucketAdvanceClient$18;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractBucketAdvanceClient$18;-><init>(Lcom/obs/services/AbstractBucketAdvanceClient;Lcom/obs/services/model/crr/GetCrrProgressRequest;)V

    const-string p1, "getCrrProgress"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/crr/GetCrrProgressResult;

    return-object p0
.end method

.method public setBucketDirectColdAccess(Lcom/obs/services/model/SetBucketDirectColdAccessRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 4

    .line 742
    const-string v0, "SetBucketDirectColdAccessRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 743
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bucketName is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    invoke-virtual {p1}, Lcom/obs/services/model/SetBucketDirectColdAccessRequest;->getAccess()Lcom/obs/services/model/BucketDirectColdAccess;

    move-result-object v0

    const-string v1, "bucketDirectColdAccess is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 746
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractBucketAdvanceClient$24;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractBucketAdvanceClient$24;-><init>(Lcom/obs/services/AbstractBucketAdvanceClient;Lcom/obs/services/model/SetBucketDirectColdAccessRequest;)V

    const-string p1, "setBucketDirectColdAccess"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/HeaderResponse;

    return-object p0
.end method

.method public setBucketDirectColdAccess(Ljava/lang/String;Lcom/obs/services/model/BucketDirectColdAccess;)Lcom/obs/services/model/HeaderResponse;
    .registers 4

    .line 731
    new-instance v0, Lcom/obs/services/model/SetBucketDirectColdAccessRequest;

    invoke-direct {v0, p1, p2}, Lcom/obs/services/model/SetBucketDirectColdAccessRequest;-><init>(Ljava/lang/String;Lcom/obs/services/model/BucketDirectColdAccess;)V

    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractBucketAdvanceClient;->setBucketDirectColdAccess(Lcom/obs/services/model/SetBucketDirectColdAccessRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method public setBucketEncryption(Lcom/obs/services/model/SetBucketEncryptionRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 4

    .line 478
    const-string v0, "SetBucketEncryptionRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 479
    invoke-virtual {p1}, Lcom/obs/services/model/SetBucketEncryptionRequest;->getBucketEncryption()Lcom/obs/services/model/BucketEncryption;

    move-result-object v0

    const-string v1, "SetBucketEncryptionRequest.bucketEncryption is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 481
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractBucketAdvanceClient$14;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractBucketAdvanceClient$14;-><init>(Lcom/obs/services/AbstractBucketAdvanceClient;Lcom/obs/services/model/SetBucketEncryptionRequest;)V

    const-string p1, "setBucketEncryption"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/HeaderResponse;

    return-object p0
.end method

.method public setBucketEncryption(Ljava/lang/String;Lcom/obs/services/model/BucketEncryption;)Lcom/obs/services/model/HeaderResponse;
    .registers 4

    .line 467
    new-instance v0, Lcom/obs/services/model/SetBucketEncryptionRequest;

    invoke-direct {v0, p1, p2}, Lcom/obs/services/model/SetBucketEncryptionRequest;-><init>(Ljava/lang/String;Lcom/obs/services/model/BucketEncryption;)V

    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractBucketAdvanceClient;->setBucketEncryption(Lcom/obs/services/model/SetBucketEncryptionRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method public setBucketFSStatus(Lcom/obs/services/model/fs/SetBucketFSStatusRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 4

    .line 699
    const-string v0, "SetBucketFileInterfaceRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 700
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractBucketAdvanceClient$22;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractBucketAdvanceClient$22;-><init>(Lcom/obs/services/AbstractBucketAdvanceClient;Lcom/obs/services/model/fs/SetBucketFSStatusRequest;)V

    const-string p1, "setBucketFSStatus"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/HeaderResponse;

    return-object p0
.end method

.method public setBucketLifecycle(Lcom/obs/services/model/SetBucketLifecycleRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 4

    .line 96
    const-string v0, "SetBucketLifecycleRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p1}, Lcom/obs/services/model/SetBucketLifecycleRequest;->getLifecycleConfig()Lcom/obs/services/model/LifecycleConfiguration;

    move-result-object v0

    const-string v1, "LifecycleConfiguration is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bucketName is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractBucketAdvanceClient$2;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractBucketAdvanceClient$2;-><init>(Lcom/obs/services/AbstractBucketAdvanceClient;Lcom/obs/services/model/SetBucketLifecycleRequest;)V

    const-string p1, "setBucketLifecycleConfiguration"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/HeaderResponse;

    return-object p0
.end method

.method public setBucketLifecycle(Ljava/lang/String;Lcom/obs/services/model/LifecycleConfiguration;)Lcom/obs/services/model/HeaderResponse;
    .registers 4

    .line 85
    new-instance v0, Lcom/obs/services/model/SetBucketLifecycleRequest;

    invoke-direct {v0, p1, p2}, Lcom/obs/services/model/SetBucketLifecycleRequest;-><init>(Ljava/lang/String;Lcom/obs/services/model/LifecycleConfiguration;)V

    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractBucketAdvanceClient;->setBucketLifecycle(Lcom/obs/services/model/SetBucketLifecycleRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method public setBucketNotification(Lcom/obs/services/model/SetBucketNotificationRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 4

    .line 683
    const-string v0, "SetBucketNotificationRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 684
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractBucketAdvanceClient$21;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractBucketAdvanceClient$21;-><init>(Lcom/obs/services/AbstractBucketAdvanceClient;Lcom/obs/services/model/SetBucketNotificationRequest;)V

    const-string p1, "setBucketNotification"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/HeaderResponse;

    return-object p0
.end method

.method public setBucketNotification(Ljava/lang/String;Lcom/obs/services/model/BucketNotificationConfiguration;)Lcom/obs/services/model/HeaderResponse;
    .registers 4

    .line 671
    new-instance v0, Lcom/obs/services/model/SetBucketNotificationRequest;

    invoke-direct {v0, p1, p2}, Lcom/obs/services/model/SetBucketNotificationRequest;-><init>(Ljava/lang/String;Lcom/obs/services/model/BucketNotificationConfiguration;)V

    .line 672
    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractBucketAdvanceClient;->setBucketNotification(Lcom/obs/services/model/SetBucketNotificationRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method public setBucketPolicy(Lcom/obs/services/model/SetBucketPolicyRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 4

    .line 206
    const-string v0, "SetBucketPolicyRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    invoke-virtual {p1}, Lcom/obs/services/model/SetBucketPolicyRequest;->getPolicy()Ljava/lang/String;

    move-result-object v0

    const-string v1, "policy is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractBucketAdvanceClient$5;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractBucketAdvanceClient$5;-><init>(Lcom/obs/services/AbstractBucketAdvanceClient;Lcom/obs/services/model/SetBucketPolicyRequest;)V

    const-string p1, "setBucketPolicy"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/HeaderResponse;

    return-object p0
.end method

.method public setBucketPolicy(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 4

    .line 195
    new-instance v0, Lcom/obs/services/model/SetBucketPolicyRequest;

    invoke-direct {v0, p1, p2}, Lcom/obs/services/model/SetBucketPolicyRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractBucketAdvanceClient;->setBucketPolicy(Lcom/obs/services/model/SetBucketPolicyRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method public setBucketReplication(Lcom/obs/services/model/SetBucketReplicationRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 4

    .line 538
    const-string v0, "SetBucketReplicationRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 539
    invoke-virtual {p1}, Lcom/obs/services/model/SetBucketReplicationRequest;->getReplicationConfiguration()Lcom/obs/services/model/ReplicationConfiguration;

    move-result-object v0

    const-string v1, "ReplicationConfiguration is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 540
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bucketName is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractBucketAdvanceClient$16;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractBucketAdvanceClient$16;-><init>(Lcom/obs/services/AbstractBucketAdvanceClient;Lcom/obs/services/model/SetBucketReplicationRequest;)V

    const-string p1, "setBucketReplication"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/HeaderResponse;

    return-object p0
.end method

.method public setBucketReplication(Ljava/lang/String;Lcom/obs/services/model/ReplicationConfiguration;)Lcom/obs/services/model/HeaderResponse;
    .registers 4

    .line 527
    new-instance v0, Lcom/obs/services/model/SetBucketReplicationRequest;

    invoke-direct {v0, p1, p2}, Lcom/obs/services/model/SetBucketReplicationRequest;-><init>(Ljava/lang/String;Lcom/obs/services/model/ReplicationConfiguration;)V

    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractBucketAdvanceClient;->setBucketReplication(Lcom/obs/services/model/SetBucketReplicationRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method public setBucketTagging(Lcom/obs/services/model/SetBucketTaggingRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 4

    .line 388
    const-string v0, "SetBucketTaggingRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 389
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bucketName is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractBucketAdvanceClient$11;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractBucketAdvanceClient$11;-><init>(Lcom/obs/services/AbstractBucketAdvanceClient;Lcom/obs/services/model/SetBucketTaggingRequest;)V

    const-string p1, "setBucketTagging"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/HeaderResponse;

    return-object p0
.end method

.method public setBucketTagging(Ljava/lang/String;Lcom/obs/services/model/BucketTagInfo;)Lcom/obs/services/model/HeaderResponse;
    .registers 4

    .line 377
    new-instance v0, Lcom/obs/services/model/SetBucketTaggingRequest;

    invoke-direct {v0, p1, p2}, Lcom/obs/services/model/SetBucketTaggingRequest;-><init>(Ljava/lang/String;Lcom/obs/services/model/BucketTagInfo;)V

    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractBucketAdvanceClient;->setBucketTagging(Lcom/obs/services/model/SetBucketTaggingRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method public setBucketWebsite(Lcom/obs/services/model/SetBucketWebsiteRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 4

    .line 295
    const-string v0, "SetBucketWebsiteRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    invoke-virtual {p1}, Lcom/obs/services/model/SetBucketWebsiteRequest;->getWebsiteConfig()Lcom/obs/services/model/WebsiteConfiguration;

    move-result-object v0

    const-string v1, "WebsiteConfiguration is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bucketName is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractBucketAdvanceClient$8;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractBucketAdvanceClient$8;-><init>(Lcom/obs/services/AbstractBucketAdvanceClient;Lcom/obs/services/model/SetBucketWebsiteRequest;)V

    const-string p1, "setBucketWebsiteConfiguration"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/HeaderResponse;

    return-object p0
.end method

.method public setBucketWebsite(Ljava/lang/String;Lcom/obs/services/model/WebsiteConfiguration;)Lcom/obs/services/model/HeaderResponse;
    .registers 4

    .line 284
    new-instance v0, Lcom/obs/services/model/SetBucketWebsiteRequest;

    invoke-direct {v0, p1, p2}, Lcom/obs/services/model/SetBucketWebsiteRequest;-><init>(Ljava/lang/String;Lcom/obs/services/model/WebsiteConfiguration;)V

    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractBucketAdvanceClient;->setBucketWebsite(Lcom/obs/services/model/SetBucketWebsiteRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method
