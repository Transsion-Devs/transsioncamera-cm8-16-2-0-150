.class public Lcom/obs/services/model/GetObjectMetadataRequest;
.super Lcom/obs/services/model/BaseObjectRequest;
.source "SourceFile"


# instance fields
.field protected sseCHeader:Lcom/obs/services/model/SseCHeader;

.field protected versionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Lcom/obs/services/model/BaseObjectRequest;-><init>()V

    .line 23
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->HEAD:Lcom/obs/services/model/HttpMethodEnum;

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 41
    invoke-direct {p0}, Lcom/obs/services/model/BaseObjectRequest;-><init>()V

    .line 23
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->HEAD:Lcom/obs/services/model/HttpMethodEnum;

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    .line 42
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/obs/services/model/BaseObjectRequest;->objectKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 56
    invoke-direct {p0}, Lcom/obs/services/model/BaseObjectRequest;-><init>()V

    .line 23
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->HEAD:Lcom/obs/services/model/HttpMethodEnum;

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    .line 57
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/obs/services/model/BaseObjectRequest;->objectKey:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lcom/obs/services/model/GetObjectMetadataRequest;->versionId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getObjectKey()Ljava/lang/String;
    .registers 1

    .line 88
    iget-object p0, p0, Lcom/obs/services/model/BaseObjectRequest;->objectKey:Ljava/lang/String;

    return-object p0
.end method

.method public getSseCHeader()Lcom/obs/services/model/SseCHeader;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/obs/services/model/GetObjectMetadataRequest;->sseCHeader:Lcom/obs/services/model/SseCHeader;

    return-object p0
.end method

.method public getVersionId()Ljava/lang/String;
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/obs/services/model/GetObjectMetadataRequest;->versionId:Ljava/lang/String;

    return-object p0
.end method

.method public setObjectKey(Ljava/lang/String;)V
    .registers 2

    .line 99
    iput-object p1, p0, Lcom/obs/services/model/BaseObjectRequest;->objectKey:Ljava/lang/String;

    return-void
.end method

.method public setSseCHeader(Lcom/obs/services/model/SseCHeader;)V
    .registers 2

    .line 78
    iput-object p1, p0, Lcom/obs/services/model/GetObjectMetadataRequest;->sseCHeader:Lcom/obs/services/model/SseCHeader;

    return-void
.end method

.method public setVersionId(Ljava/lang/String;)V
    .registers 2

    .line 118
    iput-object p1, p0, Lcom/obs/services/model/GetObjectMetadataRequest;->versionId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetObjectMetadataRequest [bucketName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", objectKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/BaseObjectRequest;->objectKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", versionId=, isEncodeHeaders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/obs/services/model/BaseObjectRequest;->encodeHeaders:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/GetObjectMetadataRequest;->versionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sseCHeader="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/GetObjectMetadataRequest;->sseCHeader:Lcom/obs/services/model/SseCHeader;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
