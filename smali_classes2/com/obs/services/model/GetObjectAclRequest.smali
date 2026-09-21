.class public Lcom/obs/services/model/GetObjectAclRequest;
.super Lcom/obs/services/model/BaseObjectRequest;
.source "SourceFile"


# instance fields
.field private versionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Lcom/obs/services/model/BaseObjectRequest;-><init>()V

    .line 25
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->GET:Lcom/obs/services/model/HttpMethodEnum;

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 44
    invoke-direct {p0}, Lcom/obs/services/model/BaseObjectRequest;-><init>()V

    .line 25
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->GET:Lcom/obs/services/model/HttpMethodEnum;

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    .line 45
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/obs/services/model/BaseObjectRequest;->objectKey:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/obs/services/model/GetObjectAclRequest;->versionId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getObjectKey()Ljava/lang/String;
    .registers 1

    .line 76
    iget-object p0, p0, Lcom/obs/services/model/BaseObjectRequest;->objectKey:Ljava/lang/String;

    return-object p0
.end method

.method public getVersionId()Ljava/lang/String;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/obs/services/model/GetObjectAclRequest;->versionId:Ljava/lang/String;

    return-object p0
.end method

.method public setObjectKey(Ljava/lang/String;)V
    .registers 2

    .line 87
    iput-object p1, p0, Lcom/obs/services/model/BaseObjectRequest;->objectKey:Ljava/lang/String;

    return-void
.end method

.method public setVersionId(Ljava/lang/String;)V
    .registers 2

    .line 66
    iput-object p1, p0, Lcom/obs/services/model/GetObjectAclRequest;->versionId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AbortMultipartUploadRequest [bucketName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", objectKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/BaseObjectRequest;->objectKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", versionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/GetObjectAclRequest;->versionId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
