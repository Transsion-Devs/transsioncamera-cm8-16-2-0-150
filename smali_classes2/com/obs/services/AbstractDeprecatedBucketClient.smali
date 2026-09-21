.class public abstract Lcom/obs/services/AbstractDeprecatedBucketClient;
.super Lcom/obs/services/AbstractClient;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Lcom/obs/services/AbstractClient;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/obs/services/AbstractDeprecatedBucketClient;Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/model/OptionsInfoRequest;)Lcom/obs/services/model/BucketMetadataInfoResult;
    .registers 4

    .line 45
    invoke-virtual {p0, p1, p2, p3}, Lcom/obs/services/internal/service/ObsBucketBaseService;->optionsImpl(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/model/OptionsInfoRequest;)Lcom/obs/services/model/BucketMetadataInfoResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public createBucket(Lcom/obs/services/model/S3Bucket;)Lcom/obs/services/model/ObsBucket;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 49
    const-string v0, "bucket is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    new-instance v0, Lcom/obs/services/model/ObsBucket;

    invoke-direct {v0}, Lcom/obs/services/model/ObsBucket;-><init>()V

    .line 51
    invoke-virtual {p1}, Lcom/obs/services/model/S3Bucket;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/obs/services/model/ObsBucket;->setBucketName(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1}, Lcom/obs/services/model/S3Bucket;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/obs/services/model/ObsBucket;->setLocation(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1}, Lcom/obs/services/model/S3Bucket;->getAcl()Lcom/obs/services/model/AccessControlList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/obs/services/model/ObsBucket;->setAcl(Lcom/obs/services/model/AccessControlList;)V

    .line 54
    invoke-virtual {p1}, Lcom/obs/services/model/S3Bucket;->getMetadata()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/obs/services/model/ObsBucket;->setMetadata(Ljava/util/Map;)V

    .line 55
    invoke-virtual {p1}, Lcom/obs/services/model/S3Bucket;->getBucketStorageClass()Lcom/obs/services/model/StorageClassEnum;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/obs/services/model/ObsBucket;->setBucketStorageClass(Lcom/obs/services/model/StorageClassEnum;)V

    .line 56
    invoke-interface {p0, v0}, Lcom/obs/services/IObsClient;->createBucket(Lcom/obs/services/model/ObsBucket;)Lcom/obs/services/model/ObsBucket;

    move-result-object p0

    return-object p0
.end method

.method public deleteBucketLifecycleConfiguration(Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 163
    new-instance v0, Lcom/obs/services/model/BaseBucketRequest;

    invoke-direct {v0, p1}, Lcom/obs/services/model/BaseBucketRequest;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/obs/services/IObsClient;->deleteBucketLifecycle(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method public deleteBucketReplicationConfiguration(Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 195
    new-instance v0, Lcom/obs/services/model/BaseBucketRequest;

    invoke-direct {v0, p1}, Lcom/obs/services/model/BaseBucketRequest;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/obs/services/IObsClient;->deleteBucketReplication(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method public deleteBucketWebsiteConfiguration(Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 179
    new-instance v0, Lcom/obs/services/model/BaseBucketRequest;

    invoke-direct {v0, p1}, Lcom/obs/services/model/BaseBucketRequest;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/obs/services/IObsClient;->deleteBucketWebsite(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method public getBucketLifecycleConfiguration(Ljava/lang/String;)Lcom/obs/services/model/LifecycleConfiguration;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 152
    new-instance v0, Lcom/obs/services/model/BaseBucketRequest;

    invoke-direct {v0, p1}, Lcom/obs/services/model/BaseBucketRequest;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/obs/services/IObsClient;->getBucketLifecycle(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/LifecycleConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public getBucketLoggingConfiguration(Ljava/lang/String;)Lcom/obs/services/model/BucketLoggingConfiguration;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 136
    new-instance v0, Lcom/obs/services/model/BaseBucketRequest;

    invoke-direct {v0, p1}, Lcom/obs/services/model/BaseBucketRequest;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/obs/services/IObsClient;->getBucketLogging(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/BucketLoggingConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public getBucketReplicationConfiguration(Ljava/lang/String;)Lcom/obs/services/model/ReplicationConfiguration;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 190
    new-instance v0, Lcom/obs/services/model/BaseBucketRequest;

    invoke-direct {v0, p1}, Lcom/obs/services/model/BaseBucketRequest;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/obs/services/IObsClient;->getBucketReplication(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/ReplicationConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public getBucketWebsiteConfiguration(Ljava/lang/String;)Lcom/obs/services/model/WebsiteConfiguration;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 168
    new-instance v0, Lcom/obs/services/model/BaseBucketRequest;

    invoke-direct {v0, p1}, Lcom/obs/services/model/BaseBucketRequest;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/obs/services/IObsClient;->getBucketWebsite(Lcom/obs/services/model/BaseBucketRequest;)Lcom/obs/services/model/WebsiteConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public listBuckets()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/obs/services/model/S3Bucket;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 61
    invoke-interface {p0, v0}, Lcom/obs/services/IObsClient;->listBuckets(Lcom/obs/services/model/ListBucketsRequest;)Ljava/util/List;

    move-result-object p0

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 63
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public optionsBucket(Ljava/lang/String;Lcom/obs/services/model/OptionsInfoRequest;)Lcom/obs/services/model/OptionsInfoResult;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 114
    new-instance v0, Lcom/obs/services/AbstractDeprecatedBucketClient$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/obs/services/AbstractDeprecatedBucketClient$1;-><init>(Lcom/obs/services/AbstractDeprecatedBucketClient;Lcom/obs/services/model/OptionsInfoRequest;Ljava/lang/String;)V

    const-string p2, "optionsBucket"

    invoke-virtual {p0, p2, p1, v0}, Lcom/obs/services/AbstractClient;->doActionWithResult(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/AbstractClient$ActionCallbackWithResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/OptionsInfoResult;

    return-object p0
.end method

.method public setBucketAcl(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/model/AccessControlList;)Lcom/obs/services/model/HeaderResponse;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 84
    new-instance v0, Lcom/obs/services/model/SetBucketAclRequest;

    invoke-direct {v0, p1, p3}, Lcom/obs/services/model/SetBucketAclRequest;-><init>(Ljava/lang/String;Lcom/obs/services/model/AccessControlList;)V

    .line 85
    invoke-virtual {v0, p2}, Lcom/obs/services/model/SetBucketAclRequest;->setCannedACL(Ljava/lang/String;)V

    .line 87
    invoke-interface {p0, v0}, Lcom/obs/services/IObsClient;->setBucketAcl(Lcom/obs/services/model/SetBucketAclRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method public setBucketCors(Ljava/lang/String;Lcom/obs/services/model/S3BucketCors;)Lcom/obs/services/model/HeaderResponse;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The bucket \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' does not include Cors information"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    new-instance v0, Lcom/obs/services/model/BucketCors;

    invoke-direct {v0}, Lcom/obs/services/model/BucketCors;-><init>()V

    .line 95
    invoke-virtual {p2}, Lcom/obs/services/model/S3BucketCors;->getRules()Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/obs/services/model/S3BucketCors;->setRules(Ljava/util/List;)V

    .line 96
    new-instance p2, Lcom/obs/services/model/SetBucketCorsRequest;

    invoke-direct {p2, p1, v0}, Lcom/obs/services/model/SetBucketCorsRequest;-><init>(Ljava/lang/String;Lcom/obs/services/model/BucketCors;)V

    invoke-interface {p0, p2}, Lcom/obs/services/IObsClient;->setBucketCors(Lcom/obs/services/model/SetBucketCorsRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method public setBucketLifecycleConfiguration(Ljava/lang/String;Lcom/obs/services/model/LifecycleConfiguration;)Lcom/obs/services/model/HeaderResponse;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 158
    new-instance v0, Lcom/obs/services/model/SetBucketLifecycleRequest;

    invoke-direct {v0, p1, p2}, Lcom/obs/services/model/SetBucketLifecycleRequest;-><init>(Ljava/lang/String;Lcom/obs/services/model/LifecycleConfiguration;)V

    invoke-interface {p0, v0}, Lcom/obs/services/IObsClient;->setBucketLifecycle(Lcom/obs/services/model/SetBucketLifecycleRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method public setBucketLoggingConfiguration(Ljava/lang/String;Lcom/obs/services/model/BucketLoggingConfiguration;)Lcom/obs/services/model/HeaderResponse;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 142
    new-instance v0, Lcom/obs/services/model/SetBucketLoggingRequest;

    invoke-direct {v0, p1, p2}, Lcom/obs/services/model/SetBucketLoggingRequest;-><init>(Ljava/lang/String;Lcom/obs/services/model/BucketLoggingConfiguration;)V

    invoke-interface {p0, v0}, Lcom/obs/services/IObsClient;->setBucketLogging(Lcom/obs/services/model/SetBucketLoggingRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method public setBucketReplicationConfiguration(Ljava/lang/String;Lcom/obs/services/model/ReplicationConfiguration;)Lcom/obs/services/model/HeaderResponse;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 185
    new-instance v0, Lcom/obs/services/model/SetBucketReplicationRequest;

    invoke-direct {v0, p1, p2}, Lcom/obs/services/model/SetBucketReplicationRequest;-><init>(Ljava/lang/String;Lcom/obs/services/model/ReplicationConfiguration;)V

    invoke-interface {p0, v0}, Lcom/obs/services/IObsClient;->setBucketReplication(Lcom/obs/services/model/SetBucketReplicationRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method public setBucketVersioning(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 147
    new-instance v0, Lcom/obs/services/model/BucketVersioningConfiguration;

    invoke-direct {v0, p2}, Lcom/obs/services/model/BucketVersioningConfiguration;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1, v0}, Lcom/obs/services/IObsClient;->setBucketVersioning(Ljava/lang/String;Lcom/obs/services/model/BucketVersioningConfiguration;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method public setBucketWebsiteConfiguration(Ljava/lang/String;Lcom/obs/services/model/WebsiteConfiguration;)Lcom/obs/services/model/HeaderResponse;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 174
    new-instance v0, Lcom/obs/services/model/SetBucketWebsiteRequest;

    invoke-direct {v0, p1, p2}, Lcom/obs/services/model/SetBucketWebsiteRequest;-><init>(Ljava/lang/String;Lcom/obs/services/model/WebsiteConfiguration;)V

    invoke-interface {p0, v0}, Lcom/obs/services/IObsClient;->setBucketWebsite(Lcom/obs/services/model/SetBucketWebsiteRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method
