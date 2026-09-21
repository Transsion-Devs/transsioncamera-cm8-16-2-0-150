.class public abstract Lcom/obs/services/AbstractBucketClient;
.super Lcom/obs/services/AbstractDeprecatedBucketClient;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 63
    invoke-direct {p0}, Lcom/obs/services/AbstractDeprecatedBucketClient;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/obs/services/AbstractBucketClient;)Z
    .registers 1

    .line 63
    invoke-virtual {p0}, Lcom/obs/services/internal/RestConnectionService;->isCname()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/CreateBucketRequest;)Lcom/obs/services/model/ObsBucket;
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsBucketBaseService;->createBucketImpl(Lcom/obs/services/model/CreateBucketRequest;)Lcom/obs/services/model/ObsBucket;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/CreateVirtualBucketRequest;)Lcom/obs/services/model/CreateVirtualBucketResult;
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsBucketAdvanceService;->createVirtualBucketImpl(Lcom/obs/services/model/CreateVirtualBucketRequest;)Lcom/obs/services/model/CreateVirtualBucketResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lcom/obs/services/AbstractBucketClient;)Lcom/obs/services/internal/security/ProviderCredentials;
    .registers 1

    .line 63
    invoke-virtual {p0}, Lcom/obs/services/internal/RestStorageService;->getProviderCredentials()Lcom/obs/services/internal/security/ProviderCredentials;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/obs/services/AbstractBucketClient;Ljava/lang/String;)Lcom/obs/services/model/AuthTypeEnum;
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->getApiVersion(Ljava/lang/String;)Lcom/obs/services/model/AuthTypeEnum;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/obs/services/AbstractBucketClient;)Lcom/obs/services/internal/security/ProviderCredentials;
    .registers 1

    .line 63
    invoke-virtual {p0}, Lcom/obs/services/internal/RestStorageService;->getProviderCredentials()Lcom/obs/services/internal/security/ProviderCredentials;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lcom/obs/services/AbstractBucketClient;)Z
    .registers 1

    .line 63
    invoke-virtual {p0}, Lcom/obs/services/internal/RestConnectionService;->isCname()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/ListBucketsRequest;)Lcom/obs/services/model/ListBucketsResult;
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsBucketBaseService;->listAllBucketsImpl(Lcom/obs/services/model/ListBucketsRequest;)Lcom/obs/services/model/ListBucketsResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1600(Lcom/obs/services/AbstractBucketClient;)Lcom/obs/services/internal/security/ProviderCredentials;
    .registers 1

    .line 63
    invoke-virtual {p0}, Lcom/obs/services/internal/RestStorageService;->getProviderCredentials()Lcom/obs/services/internal/security/ProviderCredentials;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(Lcom/obs/services/AbstractBucketClient;Ljava/lang/String;)Lcom/obs/services/model/AuthTypeEnum;
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->getApiVersion(Ljava/lang/String;)Lcom/obs/services/model/AuthTypeEnum;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(Lcom/obs/services/AbstractBucketClient;)Lcom/obs/services/internal/security/ProviderCredentials;
    .registers 1

    .line 63
    invoke-virtual {p0}, Lcom/obs/services/internal/RestStorageService;->getProviderCredentials()Lcom/obs/services/internal/security/ProviderCredentials;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1900(Lcom/obs/services/AbstractBucketClient;)Lcom/obs/services/model/ListBucketAliasResult;
    .registers 1

    .line 63
    invoke-virtual {p0}, Lcom/obs/services/internal/service/ObsBucketAdvanceService;->listAliasBucketsImpl()Lcom/obs/services/model/ListBucketAliasResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/obs/services/AbstractBucketClient;)Z
    .registers 1

    .line 63
    invoke-virtual {p0}, Lcom/obs/services/internal/RestStorageService;->isAuthTypeNegotiation()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2000(Lcom/obs/services/AbstractBucketClient;)Lcom/obs/services/internal/security/ProviderCredentials;
    .registers 1

    .line 63
    invoke-virtual {p0}, Lcom/obs/services/internal/RestStorageService;->getProviderCredentials()Lcom/obs/services/internal/security/ProviderCredentials;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2100(Lcom/obs/services/AbstractBucketClient;Ljava/lang/String;)Lcom/obs/services/model/AuthTypeEnum;
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->getApiVersion(Ljava/lang/String;)Lcom/obs/services/model/AuthTypeEnum;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2200(Lcom/obs/services/AbstractBucketClient;)Lcom/obs/services/internal/security/ProviderCredentials;
    .registers 1

    .line 63
    invoke-virtual {p0}, Lcom/obs/services/internal/RestStorageService;->getProviderCredentials()Lcom/obs/services/internal/security/ProviderCredentials;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2300(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/BaseBucketRequest;)Z
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsBucketBaseService;->headBucketImpl(Lcom/obs/services/model/BaseBucketRequest;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2400(Lcom/obs/services/AbstractBucketClient;)Lcom/obs/services/internal/security/ProviderCredentials;
    .registers 1

    .line 63
    invoke-virtual {p0}, Lcom/obs/services/internal/RestStorageService;->getProviderCredentials()Lcom/obs/services/internal/security/ProviderCredentials;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2500(Lcom/obs/services/AbstractBucketClient;Ljava/lang/String;)Lcom/obs/services/model/AuthTypeEnum;
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->getApiVersion(Ljava/lang/String;)Lcom/obs/services/model/AuthTypeEnum;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2600(Lcom/obs/services/AbstractBucketClient;)Lcom/obs/services/internal/security/ProviderCredentials;
    .registers 1

    .line 63
    invoke-virtual {p0}, Lcom/obs/services/internal/RestStorageService;->getProviderCredentials()Lcom/obs/services/internal/security/ProviderCredentials;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2700(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsBucketBaseService;->deleteBucketImpl(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2800(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/BucketMetadataInfoRequest;)Lcom/obs/services/model/fs/GetBucketFSStatusResult;
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsBucketBaseService;->getBucketMetadataImpl(Lcom/obs/services/model/BucketMetadataInfoRequest;)Lcom/obs/services/model/fs/GetBucketFSStatusResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2900(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/AccessControlList;
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsBucketAdvanceService;->getBucketAclImpl(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/AccessControlList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/obs/services/AbstractBucketClient;)Lcom/obs/services/internal/security/ProviderCredentials;
    .registers 1

    .line 63
    invoke-virtual {p0}, Lcom/obs/services/internal/RestStorageService;->getProviderCredentials()Lcom/obs/services/internal/security/ProviderCredentials;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3000(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/SetBucketAclRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsBucketAdvanceService;->setBucketAclImpl(Lcom/obs/services/model/SetBucketAclRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3100(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketLocationResponse;
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsBucketBaseService;->getBucketLocationImpl(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketLocationResponse;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3200(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketStorageInfo;
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsBucketBaseService;->getBucketStorageInfoImpl(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketStorageInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3300(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketQuota;
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsBucketAdvanceService;->getBucketQuotaImpl(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketQuota;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3400(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/SetBucketQuotaRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsBucketAdvanceService;->setBucketQuotaImpl(Lcom/obs/services/model/SetBucketQuotaRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3500(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketStoragePolicyConfiguration;
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsBucketBaseService;->getBucketStoragePolicyImpl(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketStoragePolicyConfiguration;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3600(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/SetBucketStoragePolicyRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsBucketBaseService;->setBucketStorageImpl(Lcom/obs/services/model/SetBucketStoragePolicyRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3700(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/SetBucketCorsRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsBucketAdvanceService;->setBucketCorsImpl(Lcom/obs/services/model/SetBucketCorsRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3800(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketCors;
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsBucketAdvanceService;->getBucketCorsImpl(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketCors;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3900(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsBucketAdvanceService;->deleteBucketCorsImpl(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/obs/services/AbstractBucketClient;)Lcom/obs/services/internal/security/ProviderCredentials;
    .registers 1

    .line 63
    invoke-virtual {p0}, Lcom/obs/services/internal/RestStorageService;->getProviderCredentials()Lcom/obs/services/internal/security/ProviderCredentials;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4000(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketLoggingConfiguration;
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsBucketAdvanceService;->getBucketLoggingConfigurationImpl(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketLoggingConfiguration;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4100(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/SetBucketLoggingRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsBucketAdvanceService;->setBucketLoggingConfigurationImpl(Lcom/obs/services/model/SetBucketLoggingRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4200(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/SetBucketVersioningRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsBucketAdvanceService;->setBucketVersioningImpl(Lcom/obs/services/model/SetBucketVersioningRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4300(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketVersioningConfiguration;
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsBucketBaseService;->getBucketVersioningImpl(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketVersioningConfiguration;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4400(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/SetBucketRequestPaymentRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsBucketAdvanceService;->setBucketRequestPaymentImpl(Lcom/obs/services/model/SetBucketRequestPaymentRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4500(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/RequestPaymentConfiguration;
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsBucketAdvanceService;->getBucketRequestPaymentImpl(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/RequestPaymentConfiguration;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4600(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/DeleteBucketCustomDomainRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsBucketAdvanceService;->deleteBucketCustomDomainImpl(Lcom/obs/services/model/DeleteBucketCustomDomainRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4700(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/GetBucketCustomDomainRequest;)Lcom/obs/services/model/BucketCustomDomainInfo;
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsBucketAdvanceService;->getBucketCustomDomainImpl(Lcom/obs/services/model/GetBucketCustomDomainRequest;)Lcom/obs/services/model/BucketCustomDomainInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4800(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/SetBucketCustomDomainRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsBucketAdvanceService;->setBucketCustomDomainImpl(Lcom/obs/services/model/SetBucketCustomDomainRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4900(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/inventory/SetInventoryConfigurationRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsBucketBaseService;->setInventoryConfigurationImpl(Lcom/obs/services/model/inventory/SetInventoryConfigurationRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/CreateBucketRequest;)Lcom/obs/services/model/ObsBucket;
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsBucketBaseService;->createBucketImpl(Lcom/obs/services/model/CreateBucketRequest;)Lcom/obs/services/model/ObsBucket;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5000(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/inventory/GetInventoryConfigurationRequest;)Lcom/obs/services/model/inventory/GetInventoryConfigurationResult;
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsBucketBaseService;->getInventoryConfigurationImpl(Lcom/obs/services/model/inventory/GetInventoryConfigurationRequest;)Lcom/obs/services/model/inventory/GetInventoryConfigurationResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5100(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/inventory/ListInventoryConfigurationRequest;)Lcom/obs/services/model/inventory/ListInventoryConfigurationResult;
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsBucketBaseService;->listInventoryConfigurationImpl(Lcom/obs/services/model/inventory/ListInventoryConfigurationRequest;)Lcom/obs/services/model/inventory/ListInventoryConfigurationResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5200(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/inventory/DeleteInventoryConfigurationRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/ObsBucketBaseService;->deleteInventoryConfigurationImpl(Lcom/obs/services/model/inventory/DeleteInventoryConfigurationRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/obs/services/AbstractBucketClient;)Lcom/obs/services/internal/security/ProviderCredentials;
    .registers 1

    .line 63
    invoke-virtual {p0}, Lcom/obs/services/internal/RestStorageService;->getProviderCredentials()Lcom/obs/services/internal/security/ProviderCredentials;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/obs/services/AbstractBucketClient;Ljava/lang/String;)Lcom/obs/services/model/AuthTypeEnum;
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Lcom/obs/services/internal/service/AbstractRequestConvertor;->getApiVersion(Ljava/lang/String;)Lcom/obs/services/model/AuthTypeEnum;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/obs/services/AbstractBucketClient;)Lcom/obs/services/internal/security/ProviderCredentials;
    .registers 1

    .line 63
    invoke-virtual {p0}, Lcom/obs/services/internal/RestStorageService;->getProviderCredentials()Lcom/obs/services/internal/security/ProviderCredentials;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/obs/services/AbstractBucketClient;)Z
    .registers 1

    .line 63
    invoke-virtual {p0}, Lcom/obs/services/internal/RestConnectionService;->isCname()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public createBucket(Lcom/obs/services/model/CreateBucketRequest;)Lcom/obs/services/model/ObsBucket;
    .registers 4

    .line 114
    const-string v0, "CreateBucketRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractBucketClient$1;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractBucketClient$1;-><init>(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/CreateBucketRequest;)V

    const-string p1, "createBucket"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/ObsBucket;

    return-object p0
.end method

.method public createBucket(Lcom/obs/services/model/ObsBucket;)Lcom/obs/services/model/ObsBucket;
    .registers 4

    .line 98
    new-instance v0, Lcom/obs/services/model/CreateBucketRequest;

    invoke-direct {v0}, Lcom/obs/services/model/CreateBucketRequest;-><init>()V

    .line 99
    invoke-virtual {p1}, Lcom/obs/services/model/ObsBucket;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/obs/services/model/GenericRequest;->setBucketName(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p1}, Lcom/obs/services/model/ObsBucket;->getAcl()Lcom/obs/services/model/AccessControlList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/obs/services/model/CreateBucketRequest;->setAcl(Lcom/obs/services/model/AccessControlList;)V

    .line 101
    invoke-virtual {p1}, Lcom/obs/services/model/ObsBucket;->getBucketStorageClass()Lcom/obs/services/model/StorageClassEnum;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/obs/services/model/CreateBucketRequest;->setBucketStorageClass(Lcom/obs/services/model/StorageClassEnum;)V

    .line 102
    invoke-virtual {p1}, Lcom/obs/services/model/ObsBucket;->getLocation()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/obs/services/model/CreateBucketRequest;->setLocation(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractBucketClient;->createBucket(Lcom/obs/services/model/CreateBucketRequest;)Lcom/obs/services/model/ObsBucket;

    move-result-object p0

    return-object p0
.end method

.method public createBucket(Ljava/lang/String;)Lcom/obs/services/model/ObsBucket;
    .registers 3

    .line 71
    new-instance v0, Lcom/obs/services/model/ObsBucket;

    invoke-direct {v0}, Lcom/obs/services/model/ObsBucket;-><init>()V

    .line 72
    invoke-virtual {v0, p1}, Lcom/obs/services/model/ObsBucket;->setBucketName(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractBucketClient;->createBucket(Lcom/obs/services/model/ObsBucket;)Lcom/obs/services/model/ObsBucket;

    move-result-object p0

    return-object p0
.end method

.method public createBucket(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/ObsBucket;
    .registers 4

    .line 84
    new-instance v0, Lcom/obs/services/model/ObsBucket;

    invoke-direct {v0}, Lcom/obs/services/model/ObsBucket;-><init>()V

    .line 85
    invoke-virtual {v0, p1}, Lcom/obs/services/model/ObsBucket;->setBucketName(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0, p2}, Lcom/obs/services/model/ObsBucket;->setLocation(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractBucketClient;->createBucket(Lcom/obs/services/model/ObsBucket;)Lcom/obs/services/model/ObsBucket;

    move-result-object p0

    return-object p0
.end method

.method public createVirtualBucket(Lcom/obs/services/model/CreateVirtualBucketRequest;)Lcom/obs/services/model/CreateVirtualBucketResult;
    .registers 4

    .line 152
    const-string v0, "CreateVirtualBucketRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p1}, Lcom/obs/services/model/CreateVirtualBucketRequest;->getBucketAlias()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bucket alias is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-virtual {p1}, Lcom/obs/services/model/CreateVirtualBucketRequest;->getBucketName1()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bucket name1 is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-virtual {p1}, Lcom/obs/services/model/CreateVirtualBucketRequest;->getBucketName2()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bucket name2 is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-virtual {p1}, Lcom/obs/services/model/CreateVirtualBucketRequest;->getAgencyId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "agency id is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {p1}, Lcom/obs/services/model/CreateVirtualBucketRequest;->getRegionId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "region id is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {p1}, Lcom/obs/services/model/CreateVirtualBucketRequest;->getToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, "token is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    new-instance v0, Lcom/obs/services/AbstractBucketClient$2;

    invoke-direct {v0, p0, p1}, Lcom/obs/services/AbstractBucketClient$2;-><init>(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/CreateVirtualBucketRequest;)V

    const-string p1, "createVirtualBucket"

    const-string v1, "All Buckets"

    invoke-virtual {p0, p1, v1, v0}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/CreateVirtualBucketResult;

    return-object p0
.end method

.method public deleteBucket(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 4

    .line 301
    const-string v0, "BaseBucketRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bucketName is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractBucketClient$6;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractBucketClient$6;-><init>(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/BaseBucketRequest;)V

    const-string p1, "deleteBucket"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/HeaderResponse;

    return-object p0
.end method

.method public deleteBucket(Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 3

    .line 291
    new-instance v0, Lcom/obs/services/model/BaseBucketRequest;

    invoke-direct {v0, p1}, Lcom/obs/services/model/BaseBucketRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractBucketClient;->deleteBucket(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method public deleteBucketCors(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 4

    .line 659
    const-string v0, "BaseBucketRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 660
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractBucketClient$18;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractBucketClient$18;-><init>(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/BaseBucketRequest;)V

    const-string p1, "deleteBucketCors"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/HeaderResponse;

    return-object p0
.end method

.method public deleteBucketCors(Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 3

    .line 649
    new-instance v0, Lcom/obs/services/model/BaseBucketRequest;

    invoke-direct {v0, p1}, Lcom/obs/services/model/BaseBucketRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractBucketClient;->deleteBucketCors(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method public deleteBucketCustomDomain(Lcom/obs/services/model/DeleteBucketCustomDomainRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 4

    .line 873
    const-string v0, "request is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 874
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bucketName is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    invoke-virtual {p1}, Lcom/obs/services/model/DeleteBucketCustomDomainRequest;->getDomainName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "domainName is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractBucketClient$25;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractBucketClient$25;-><init>(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/DeleteBucketCustomDomainRequest;)V

    const-string p1, "setBucketCustomDomain"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/HeaderResponse;

    return-object p0
.end method

.method public deleteBucketCustomDomain(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 4

    .line 868
    new-instance v0, Lcom/obs/services/model/DeleteBucketCustomDomainRequest;

    invoke-direct {v0, p1, p2}, Lcom/obs/services/model/DeleteBucketCustomDomainRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractBucketClient;->deleteBucketCustomDomain(Lcom/obs/services/model/DeleteBucketCustomDomainRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method public deleteInventoryConfiguration(Lcom/obs/services/model/inventory/DeleteInventoryConfigurationRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 4

    .line 973
    const-string v0, "request is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 974
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bucketName is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    invoke-virtual {p1}, Lcom/obs/services/model/inventory/DeleteInventoryConfigurationRequest;->getConfigurationId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "configurationId is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractBucketClient$31;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractBucketClient$31;-><init>(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/inventory/DeleteInventoryConfigurationRequest;)V

    const-string p1, "deleteInventoryConfiguration"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/HeaderResponse;

    return-object p0
.end method

.method public getBucketAcl(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/AccessControlList;
    .registers 4

    .line 349
    const-string v0, "BaseBucketRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 350
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bucketName is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractBucketClient$8;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractBucketClient$8;-><init>(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/BaseBucketRequest;)V

    const-string p1, "getBucketAcl"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/AccessControlList;

    return-object p0
.end method

.method public getBucketAcl(Ljava/lang/String;)Lcom/obs/services/model/AccessControlList;
    .registers 3

    .line 339
    new-instance v0, Lcom/obs/services/model/BaseBucketRequest;

    invoke-direct {v0, p1}, Lcom/obs/services/model/BaseBucketRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractBucketClient;->getBucketAcl(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/AccessControlList;

    move-result-object p0

    return-object p0
.end method

.method public getBucketCors(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketCors;
    .registers 4

    .line 631
    const-string v0, "BaseBucketRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 632
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractBucketClient$17;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractBucketClient$17;-><init>(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/BaseBucketRequest;)V

    const-string p1, "getBucketCors"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/BucketCors;

    return-object p0
.end method

.method public getBucketCors(Ljava/lang/String;)Lcom/obs/services/model/BucketCors;
    .registers 3

    .line 621
    new-instance v0, Lcom/obs/services/model/BaseBucketRequest;

    invoke-direct {v0, p1}, Lcom/obs/services/model/BaseBucketRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractBucketClient;->getBucketCors(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketCors;

    move-result-object p0

    return-object p0
.end method

.method public getBucketCustomDomain(Lcom/obs/services/model/GetBucketCustomDomainRequest;)Lcom/obs/services/model/BucketCustomDomainInfo;
    .registers 4

    .line 895
    const-string v0, "BaseBucketRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 896
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bucketName is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractBucketClient$26;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractBucketClient$26;-><init>(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/GetBucketCustomDomainRequest;)V

    const-string p1, "getBucketCustomDomain"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/BucketCustomDomainInfo;

    return-object p0
.end method

.method public getBucketCustomDomain(Ljava/lang/String;)Lcom/obs/services/model/BucketCustomDomainInfo;
    .registers 3

    .line 889
    new-instance v0, Lcom/obs/services/model/GetBucketCustomDomainRequest;

    invoke-direct {v0, p1}, Lcom/obs/services/model/GetBucketCustomDomainRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractBucketClient;->getBucketCustomDomain(Lcom/obs/services/model/GetBucketCustomDomainRequest;)Lcom/obs/services/model/BucketCustomDomainInfo;

    move-result-object p0

    return-object p0
.end method

.method public getBucketLocation(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketLocationResponse;
    .registers 4

    .line 412
    const-string v0, "BaseBucketRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 413
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractBucketClient$10;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractBucketClient$10;-><init>(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/BaseBucketRequest;)V

    const-string p1, "getBucketLocation"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/BucketLocationResponse;

    return-object p0
.end method

.method public getBucketLocation(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 402
    new-instance v0, Lcom/obs/services/model/BaseBucketRequest;

    invoke-direct {v0, p1}, Lcom/obs/services/model/BaseBucketRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractBucketClient;->getBucketLocation(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketLocationResponse;

    move-result-object p0

    invoke-virtual {p0}, Lcom/obs/services/model/BucketLocationResponse;->getLocation()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBucketLocationV2(Ljava/lang/String;)Lcom/obs/services/model/BucketLocationResponse;
    .registers 3

    .line 429
    new-instance v0, Lcom/obs/services/model/BaseBucketRequest;

    invoke-direct {v0, p1}, Lcom/obs/services/model/BaseBucketRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractBucketClient;->getBucketLocation(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketLocationResponse;

    move-result-object p0

    return-object p0
.end method

.method public getBucketLogging(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketLoggingConfiguration;
    .registers 4

    .line 687
    const-string v0, "BaseBucketRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 688
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractBucketClient$19;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractBucketClient$19;-><init>(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/BaseBucketRequest;)V

    const-string p1, "getBucketLoggingConfiguration"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/BucketLoggingConfiguration;

    return-object p0
.end method

.method public getBucketLogging(Ljava/lang/String;)Lcom/obs/services/model/BucketLoggingConfiguration;
    .registers 3

    .line 677
    new-instance v0, Lcom/obs/services/model/BaseBucketRequest;

    invoke-direct {v0, p1}, Lcom/obs/services/model/BaseBucketRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractBucketClient;->getBucketLogging(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketLoggingConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public getBucketMetadata(Lcom/obs/services/model/BucketMetadataInfoRequest;)Lcom/obs/services/model/BucketMetadataInfoResult;
    .registers 4

    .line 322
    const-string v0, "BucketMetadataInfoRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    invoke-virtual {p1}, Lcom/obs/services/model/BucketMetadataInfoRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractBucketClient$7;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractBucketClient$7;-><init>(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/BucketMetadataInfoRequest;)V

    const-string p1, "getBucketMetadata"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/BucketMetadataInfoResult;

    return-object p0
.end method

.method public getBucketQuota(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketQuota;
    .registers 4

    .line 478
    const-string v0, "BaseBucketRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 479
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractBucketClient$12;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractBucketClient$12;-><init>(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/BaseBucketRequest;)V

    const-string p1, "getBucketQuota"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/BucketQuota;

    return-object p0
.end method

.method public getBucketQuota(Ljava/lang/String;)Lcom/obs/services/model/BucketQuota;
    .registers 3

    .line 468
    new-instance v0, Lcom/obs/services/model/BaseBucketRequest;

    invoke-direct {v0, p1}, Lcom/obs/services/model/BaseBucketRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractBucketClient;->getBucketQuota(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketQuota;

    move-result-object p0

    return-object p0
.end method

.method public getBucketRequestPayment(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/RequestPaymentConfiguration;
    .registers 4

    .line 854
    const-string v0, "BaseBucketRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 855
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bucketName is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractBucketClient$24;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractBucketClient$24;-><init>(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/BaseBucketRequest;)V

    const-string p1, "getBucketRequestPayment"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/RequestPaymentConfiguration;

    return-object p0
.end method

.method public getBucketRequestPayment(Ljava/lang/String;)Lcom/obs/services/model/RequestPaymentConfiguration;
    .registers 3

    .line 843
    new-instance v0, Lcom/obs/services/model/BaseBucketRequest;

    invoke-direct {v0, p1}, Lcom/obs/services/model/BaseBucketRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractBucketClient;->getBucketRequestPayment(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/RequestPaymentConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public getBucketStorageInfo(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketStorageInfo;
    .registers 4

    .line 449
    const-string v0, "BaseBucketRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 450
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bucketName is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractBucketClient$11;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractBucketClient$11;-><init>(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/BaseBucketRequest;)V

    const-string p1, "getBucketStorageInfo"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/BucketStorageInfo;

    return-object p0
.end method

.method public getBucketStorageInfo(Ljava/lang/String;)Lcom/obs/services/model/BucketStorageInfo;
    .registers 3

    .line 439
    new-instance v0, Lcom/obs/services/model/BaseBucketRequest;

    invoke-direct {v0, p1}, Lcom/obs/services/model/BaseBucketRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractBucketClient;->getBucketStorageInfo(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketStorageInfo;

    move-result-object p0

    return-object p0
.end method

.method public getBucketStoragePolicy(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketStoragePolicyConfiguration;
    .registers 4

    .line 539
    const-string v0, "BaseBucketRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 540
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractBucketClient$14;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractBucketClient$14;-><init>(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/BaseBucketRequest;)V

    const-string p1, "getBucketStoragePolicy"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/BucketStoragePolicyConfiguration;

    return-object p0
.end method

.method public getBucketStoragePolicy(Ljava/lang/String;)Lcom/obs/services/model/BucketStoragePolicyConfiguration;
    .registers 3

    .line 528
    new-instance v0, Lcom/obs/services/model/BaseBucketRequest;

    invoke-direct {v0, p1}, Lcom/obs/services/model/BaseBucketRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractBucketClient;->getBucketStoragePolicy(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketStoragePolicyConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public getBucketVersioning(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketVersioningConfiguration;
    .registers 4

    .line 793
    const-string v0, "BaseBucketRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 794
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bucketName is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractBucketClient$22;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractBucketClient$22;-><init>(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/BaseBucketRequest;)V

    const-string p1, "getBucketVersioning"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/BucketVersioningConfiguration;

    return-object p0
.end method

.method public getBucketVersioning(Ljava/lang/String;)Lcom/obs/services/model/BucketVersioningConfiguration;
    .registers 3

    .line 783
    new-instance v0, Lcom/obs/services/model/BaseBucketRequest;

    invoke-direct {v0, p1}, Lcom/obs/services/model/BaseBucketRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractBucketClient;->getBucketVersioning(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketVersioningConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public getInventoryConfiguration(Lcom/obs/services/model/inventory/GetInventoryConfigurationRequest;)Lcom/obs/services/model/inventory/GetInventoryConfigurationResult;
    .registers 4

    .line 944
    const-string v0, "request is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 945
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bucketName is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    invoke-virtual {p1}, Lcom/obs/services/model/inventory/GetInventoryConfigurationRequest;->getConfigurationId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "configurationId is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractBucketClient$29;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractBucketClient$29;-><init>(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/inventory/GetInventoryConfigurationRequest;)V

    const-string p1, "getInventoryConfiguration"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/inventory/GetInventoryConfigurationResult;

    return-object p0
.end method

.method public headBucket(Lcom/obs/services/model/BaseBucketRequest;)Z
    .registers 4

    .line 257
    const-string v0, "BaseBucketRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bucketName is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractBucketClient$5;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractBucketClient$5;-><init>(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/BaseBucketRequest;)V

    const-string p1, "headBucket"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public headBucket(Ljava/lang/String;)Z
    .registers 3

    .line 247
    new-instance v0, Lcom/obs/services/model/BaseBucketRequest;

    invoke-direct {v0, p1}, Lcom/obs/services/model/BaseBucketRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractBucketClient;->headBucket(Lcom/obs/services/model/BaseBucketRequest;)Z

    move-result p0

    return p0
.end method

.method public listAliasBuckets()Lcom/obs/services/model/ListBucketAliasResult;
    .registers 4

    .line 222
    new-instance v0, Lcom/obs/services/AbstractBucketClient$4;

    invoke-direct {v0, p0}, Lcom/obs/services/AbstractBucketClient$4;-><init>(Lcom/obs/services/AbstractBucketClient;)V

    const-string v1, "ListBucketAliasResult"

    const-string v2, "All Buckets"

    invoke-virtual {p0, v1, v2, v0}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/ListBucketAliasResult;

    return-object p0
.end method

.method public listBuckets(Lcom/obs/services/model/ListBucketsRequest;)Ljava/util/List;
    .registers 2
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

    .line 188
    invoke-virtual {p0, p1}, Lcom/obs/services/AbstractBucketClient;->listBucketsV2(Lcom/obs/services/model/ListBucketsRequest;)Lcom/obs/services/model/ListBucketsResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/obs/services/model/ListBucketsResult;->getBuckets()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public listBucketsV2(Lcom/obs/services/model/ListBucketsRequest;)Lcom/obs/services/model/ListBucketsResult;
    .registers 4

    .line 199
    new-instance v0, Lcom/obs/services/AbstractBucketClient$3;

    invoke-direct {v0, p0, p1}, Lcom/obs/services/AbstractBucketClient$3;-><init>(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/ListBucketsRequest;)V

    const-string p1, "listBuckets"

    const-string v1, "All Buckets"

    invoke-virtual {p0, p1, v1, v0}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/ListBucketsResult;

    return-object p0
.end method

.method public listInventoryConfiguration(Lcom/obs/services/model/inventory/ListInventoryConfigurationRequest;)Lcom/obs/services/model/inventory/ListInventoryConfigurationResult;
    .registers 4

    .line 959
    const-string v0, "request is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 960
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bucketName is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractBucketClient$30;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractBucketClient$30;-><init>(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/inventory/ListInventoryConfigurationRequest;)V

    const-string p1, "listInventoryConfiguration"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/inventory/ListInventoryConfigurationResult;

    return-object p0
.end method

.method public setBucketAcl(Lcom/obs/services/model/SetBucketAclRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 4

    .line 381
    const-string v0, "SetBucketAclRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 382
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractBucketClient$9;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractBucketClient$9;-><init>(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/SetBucketAclRequest;)V

    const-string p1, "setBucketAcl"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/HeaderResponse;

    return-object p0
.end method

.method public setBucketAcl(Ljava/lang/String;Lcom/obs/services/model/AccessControlList;)Lcom/obs/services/model/HeaderResponse;
    .registers 4

    .line 370
    new-instance v0, Lcom/obs/services/model/SetBucketAclRequest;

    invoke-direct {v0, p1, p2}, Lcom/obs/services/model/SetBucketAclRequest;-><init>(Ljava/lang/String;Lcom/obs/services/model/AccessControlList;)V

    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractBucketClient;->setBucketAcl(Lcom/obs/services/model/SetBucketAclRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method public setBucketCors(Lcom/obs/services/model/SetBucketCorsRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 4

    .line 603
    const-string v0, "SetBucketCorsRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 604
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractBucketClient$16;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractBucketClient$16;-><init>(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/SetBucketCorsRequest;)V

    const-string p1, "setBucketCors"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/HeaderResponse;

    return-object p0
.end method

.method public setBucketCors(Ljava/lang/String;Lcom/obs/services/model/BucketCors;)Lcom/obs/services/model/HeaderResponse;
    .registers 4

    .line 592
    new-instance v0, Lcom/obs/services/model/SetBucketCorsRequest;

    invoke-direct {v0, p1, p2}, Lcom/obs/services/model/SetBucketCorsRequest;-><init>(Ljava/lang/String;Lcom/obs/services/model/BucketCors;)V

    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractBucketClient;->setBucketCors(Lcom/obs/services/model/SetBucketCorsRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method public setBucketCustomDomain(Lcom/obs/services/model/SetBucketCustomDomainRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 4

    .line 914
    const-string v0, "request is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 915
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bucketName is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    invoke-virtual {p1}, Lcom/obs/services/model/SetBucketCustomDomainRequest;->getDomainName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "domainName is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractBucketClient$27;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractBucketClient$27;-><init>(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/SetBucketCustomDomainRequest;)V

    const-string p1, "setBucketCustomDomain"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/HeaderResponse;

    return-object p0
.end method

.method public setBucketCustomDomain(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 4

    .line 909
    new-instance v0, Lcom/obs/services/model/SetBucketCustomDomainRequest;

    invoke-direct {v0, p1, p2}, Lcom/obs/services/model/SetBucketCustomDomainRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractBucketClient;->setBucketCustomDomain(Lcom/obs/services/model/SetBucketCustomDomainRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method public setBucketLogging(Lcom/obs/services/model/SetBucketLoggingRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 4

    .line 731
    const-string v0, "SetBucketLoggingRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 732
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractBucketClient$20;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractBucketClient$20;-><init>(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/SetBucketLoggingRequest;)V

    const-string p1, "setBucketLoggingConfiguration"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/HeaderResponse;

    return-object p0
.end method

.method public setBucketLogging(Ljava/lang/String;Lcom/obs/services/model/BucketLoggingConfiguration;)Lcom/obs/services/model/HeaderResponse;
    .registers 4

    .line 720
    new-instance v0, Lcom/obs/services/model/SetBucketLoggingRequest;

    invoke-direct {v0, p1, p2}, Lcom/obs/services/model/SetBucketLoggingRequest;-><init>(Ljava/lang/String;Lcom/obs/services/model/BucketLoggingConfiguration;)V

    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractBucketClient;->setBucketLogging(Lcom/obs/services/model/SetBucketLoggingRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method public setBucketLoggingConfiguration(Ljava/lang/String;Lcom/obs/services/model/BucketLoggingConfiguration;Z)Lcom/obs/services/model/HeaderResponse;
    .registers 5

    .line 707
    new-instance v0, Lcom/obs/services/model/SetBucketLoggingRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/obs/services/model/SetBucketLoggingRequest;-><init>(Ljava/lang/String;Lcom/obs/services/model/BucketLoggingConfiguration;Z)V

    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractBucketClient;->setBucketLogging(Lcom/obs/services/model/SetBucketLoggingRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method public setBucketQuota(Lcom/obs/services/model/SetBucketQuotaRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 5

    .line 508
    const-string v0, "SetBucketQuotaRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 509
    invoke-virtual {p1}, Lcom/obs/services/model/SetBucketQuotaRequest;->getBucketQuota()Lcom/obs/services/model/BucketQuota;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The bucket \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' does not include Quota information"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 509
    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 511
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractBucketClient$13;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractBucketClient$13;-><init>(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/SetBucketQuotaRequest;)V

    const-string p1, "setBucketQuota"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/HeaderResponse;

    return-object p0
.end method

.method public setBucketQuota(Ljava/lang/String;Lcom/obs/services/model/BucketQuota;)Lcom/obs/services/model/HeaderResponse;
    .registers 4

    .line 497
    new-instance v0, Lcom/obs/services/model/SetBucketQuotaRequest;

    invoke-direct {v0, p1, p2}, Lcom/obs/services/model/SetBucketQuotaRequest;-><init>(Ljava/lang/String;Lcom/obs/services/model/BucketQuota;)V

    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractBucketClient;->setBucketQuota(Lcom/obs/services/model/SetBucketQuotaRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method public setBucketRequestPayment(Lcom/obs/services/model/SetBucketRequestPaymentRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 4

    .line 824
    const-string v0, "SetBucketRequestPaymentRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 825
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractBucketClient$23;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractBucketClient$23;-><init>(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/SetBucketRequestPaymentRequest;)V

    const-string p1, "setBucketRequestPayment"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/HeaderResponse;

    return-object p0
.end method

.method public setBucketRequestPayment(Ljava/lang/String;Lcom/obs/services/model/RequestPaymentEnum;)Lcom/obs/services/model/HeaderResponse;
    .registers 4

    .line 812
    new-instance v0, Lcom/obs/services/model/SetBucketRequestPaymentRequest;

    invoke-direct {v0, p1, p2}, Lcom/obs/services/model/SetBucketRequestPaymentRequest;-><init>(Ljava/lang/String;Lcom/obs/services/model/RequestPaymentEnum;)V

    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractBucketClient;->setBucketRequestPayment(Lcom/obs/services/model/SetBucketRequestPaymentRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method public setBucketStoragePolicy(Lcom/obs/services/model/SetBucketStoragePolicyRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 5

    .line 570
    const-string v0, "SetBucketStoragePolicyRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 571
    invoke-virtual {p1}, Lcom/obs/services/model/SetBucketStoragePolicyRequest;->getBucketStorage()Lcom/obs/services/model/BucketStoragePolicyConfiguration;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The bucket \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' does not include storagePolicy information"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 571
    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 574
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractBucketClient$15;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractBucketClient$15;-><init>(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/SetBucketStoragePolicyRequest;)V

    const-string p1, "setBucketStoragePolicy"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/HeaderResponse;

    return-object p0
.end method

.method public setBucketStoragePolicy(Ljava/lang/String;Lcom/obs/services/model/BucketStoragePolicyConfiguration;)Lcom/obs/services/model/HeaderResponse;
    .registers 4

    .line 559
    new-instance v0, Lcom/obs/services/model/SetBucketStoragePolicyRequest;

    invoke-direct {v0, p1, p2}, Lcom/obs/services/model/SetBucketStoragePolicyRequest;-><init>(Ljava/lang/String;Lcom/obs/services/model/BucketStoragePolicyConfiguration;)V

    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractBucketClient;->setBucketStoragePolicy(Lcom/obs/services/model/SetBucketStoragePolicyRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method public setBucketVersioning(Lcom/obs/services/model/SetBucketVersioningRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 4

    .line 764
    const-string v0, "SetBucketVersioningRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 765
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bucketName is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractBucketClient$21;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractBucketClient$21;-><init>(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/SetBucketVersioningRequest;)V

    const-string p1, "setBucketVersioning"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/HeaderResponse;

    return-object p0
.end method

.method public setBucketVersioning(Ljava/lang/String;Lcom/obs/services/model/BucketVersioningConfiguration;)Lcom/obs/services/model/HeaderResponse;
    .registers 4

    .line 752
    new-instance v0, Lcom/obs/services/model/SetBucketVersioningRequest;

    .line 753
    invoke-virtual {p2}, Lcom/obs/services/model/BucketVersioningConfiguration;->getVersioningStatus()Lcom/obs/services/model/VersioningStatusEnum;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/obs/services/model/SetBucketVersioningRequest;-><init>(Ljava/lang/String;Lcom/obs/services/model/VersioningStatusEnum;)V

    .line 752
    invoke-virtual {p0, v0}, Lcom/obs/services/AbstractBucketClient;->setBucketVersioning(Lcom/obs/services/model/SetBucketVersioningRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method public setInventoryConfiguration(Lcom/obs/services/model/inventory/SetInventoryConfigurationRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 4

    .line 929
    const-string v0, "request is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 930
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bucketName is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    invoke-virtual {p1}, Lcom/obs/services/model/inventory/SetInventoryConfigurationRequest;->getInventoryConfiguration()Lcom/obs/services/model/inventory/InventoryConfiguration;

    move-result-object v0

    const-string v1, "inventoryConfiguration is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 933
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/obs/services/AbstractBucketClient$28;

    invoke-direct {v1, p0, p1}, Lcom/obs/services/AbstractBucketClient$28;-><init>(Lcom/obs/services/AbstractBucketClient;Lcom/obs/services/model/inventory/SetInventoryConfigurationRequest;)V

    const-string p1, "setInventoryConfiguration"

    invoke-virtual {p0, p1, v0, v1}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/HeaderResponse;

    return-object p0
.end method
