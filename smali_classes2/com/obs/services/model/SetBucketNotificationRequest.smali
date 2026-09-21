.class public Lcom/obs/services/model/SetBucketNotificationRequest;
.super Lcom/obs/services/model/BaseBucketRequest;
.source "SourceFile"


# instance fields
.field private bucketNotificationConfiguration:Lcom/obs/services/model/BucketNotificationConfiguration;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/obs/services/model/BucketNotificationConfiguration;)V
    .registers 4

    .line 31
    invoke-direct {p0}, Lcom/obs/services/model/BaseBucketRequest;-><init>()V

    .line 25
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->PUT:Lcom/obs/services/model/HttpMethodEnum;

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    .line 32
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/obs/services/model/SetBucketNotificationRequest;->bucketNotificationConfiguration:Lcom/obs/services/model/BucketNotificationConfiguration;

    return-void
.end method


# virtual methods
.method public getBucketNotificationConfiguration()Lcom/obs/services/model/BucketNotificationConfiguration;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/obs/services/model/SetBucketNotificationRequest;->bucketNotificationConfiguration:Lcom/obs/services/model/BucketNotificationConfiguration;

    return-object p0
.end method

.method public setBucketNotificationConfiguration(Lcom/obs/services/model/BucketNotificationConfiguration;)V
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/obs/services/model/SetBucketNotificationRequest;->bucketNotificationConfiguration:Lcom/obs/services/model/BucketNotificationConfiguration;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetBucketNotificationRequest [bucketNotificationConfiguration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/SetBucketNotificationRequest;->bucketNotificationConfiguration:Lcom/obs/services/model/BucketNotificationConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", getBucketName()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {p0}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isRequesterPays()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/obs/services/model/GenericRequest;->isRequesterPays()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
