.class public Lcom/obs/services/model/SetBucketLoggingRequest;
.super Lcom/obs/services/model/BaseBucketRequest;
.source "SourceFile"


# instance fields
.field private loggingConfiguration:Lcom/obs/services/model/BucketLoggingConfiguration;

.field private updateTargetACLifRequired:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/obs/services/model/BucketLoggingConfiguration;)V
    .registers 4

    .line 31
    invoke-direct {p0}, Lcom/obs/services/model/BaseBucketRequest;-><init>()V

    .line 25
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->PUT:Lcom/obs/services/model/HttpMethodEnum;

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/obs/services/model/SetBucketLoggingRequest;->updateTargetACLifRequired:Z

    .line 32
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/obs/services/model/SetBucketLoggingRequest;->loggingConfiguration:Lcom/obs/services/model/BucketLoggingConfiguration;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/obs/services/model/BucketLoggingConfiguration;Z)V
    .registers 5

    .line 37
    invoke-direct {p0}, Lcom/obs/services/model/BaseBucketRequest;-><init>()V

    .line 25
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->PUT:Lcom/obs/services/model/HttpMethodEnum;

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    .line 38
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/obs/services/model/SetBucketLoggingRequest;->loggingConfiguration:Lcom/obs/services/model/BucketLoggingConfiguration;

    .line 40
    iput-boolean p3, p0, Lcom/obs/services/model/SetBucketLoggingRequest;->updateTargetACLifRequired:Z

    return-void
.end method


# virtual methods
.method public getLoggingConfiguration()Lcom/obs/services/model/BucketLoggingConfiguration;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/obs/services/model/SetBucketLoggingRequest;->loggingConfiguration:Lcom/obs/services/model/BucketLoggingConfiguration;

    return-object p0
.end method

.method public isUpdateTargetACLifRequired()Z
    .registers 1

    .line 52
    iget-boolean p0, p0, Lcom/obs/services/model/SetBucketLoggingRequest;->updateTargetACLifRequired:Z

    return p0
.end method

.method public setLoggingConfiguration(Lcom/obs/services/model/BucketLoggingConfiguration;)V
    .registers 2

    .line 48
    iput-object p1, p0, Lcom/obs/services/model/SetBucketLoggingRequest;->loggingConfiguration:Lcom/obs/services/model/BucketLoggingConfiguration;

    return-void
.end method

.method public setUpdateTargetACLifRequired(Z)V
    .registers 2

    .line 56
    iput-boolean p1, p0, Lcom/obs/services/model/SetBucketLoggingRequest;->updateTargetACLifRequired:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetBucketLoggingRequest [loggingConfiguration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/SetBucketLoggingRequest;->loggingConfiguration:Lcom/obs/services/model/BucketLoggingConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", updateTargetACLifRequired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/obs/services/model/SetBucketLoggingRequest;->updateTargetACLifRequired:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", getBucketName()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {p0}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isRequesterPays()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {p0}, Lcom/obs/services/model/GenericRequest;->isRequesterPays()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
