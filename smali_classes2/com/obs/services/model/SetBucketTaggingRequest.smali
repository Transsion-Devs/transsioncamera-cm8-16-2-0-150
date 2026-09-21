.class public Lcom/obs/services/model/SetBucketTaggingRequest;
.super Lcom/obs/services/model/BaseBucketRequest;
.source "SourceFile"


# instance fields
.field private bucketTagInfo:Lcom/obs/services/model/BucketTagInfo;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Lcom/obs/services/model/BaseBucketRequest;-><init>()V

    .line 26
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->PUT:Lcom/obs/services/model/HttpMethodEnum;

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/obs/services/model/BucketTagInfo;)V
    .registers 4

    .line 34
    invoke-direct {p0}, Lcom/obs/services/model/BaseBucketRequest;-><init>()V

    .line 26
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->PUT:Lcom/obs/services/model/HttpMethodEnum;

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    .line 35
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/obs/services/model/SetBucketTaggingRequest;->bucketTagInfo:Lcom/obs/services/model/BucketTagInfo;

    return-void
.end method


# virtual methods
.method public getBucketTagInfo()Lcom/obs/services/model/BucketTagInfo;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/obs/services/model/SetBucketTaggingRequest;->bucketTagInfo:Lcom/obs/services/model/BucketTagInfo;

    return-object p0
.end method

.method public setBucketTagInfo(Lcom/obs/services/model/BucketTagInfo;)V
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/obs/services/model/SetBucketTaggingRequest;->bucketTagInfo:Lcom/obs/services/model/BucketTagInfo;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetBucketTaggingRequest [bucketTagInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/SetBucketTaggingRequest;->bucketTagInfo:Lcom/obs/services/model/BucketTagInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", getBucketName()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isRequesterPays()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {p0}, Lcom/obs/services/model/GenericRequest;->isRequesterPays()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
