.class public Lcom/obs/services/model/ObjectTaggingRequest;
.super Lcom/obs/services/model/BaseObjectRequest;
.source "SourceFile"


# instance fields
.field private objectTagResult:Lcom/obs/services/model/ObjectTagResult;

.field protected versionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/model/ObjectTagResult;)V
    .registers 6

    .line 32
    invoke-direct {p0}, Lcom/obs/services/model/BaseObjectRequest;-><init>()V

    .line 26
    sget-object v0, Lcom/obs/services/model/HttpMethodEnum;->PUT:Lcom/obs/services/model/HttpMethodEnum;

    iput-object v0, p0, Lcom/obs/services/model/GenericRequest;->httpMethod:Lcom/obs/services/model/HttpMethodEnum;

    .line 33
    iput-object p1, p0, Lcom/obs/services/model/GenericRequest;->bucketName:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/obs/services/model/BaseObjectRequest;->objectKey:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/obs/services/model/ObjectTaggingRequest;->versionId:Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lcom/obs/services/model/ObjectTaggingRequest;->objectTagResult:Lcom/obs/services/model/ObjectTagResult;

    return-void
.end method


# virtual methods
.method public getObjectTagInfo()Lcom/obs/services/model/ObjectTagResult;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/obs/services/model/ObjectTaggingRequest;->objectTagResult:Lcom/obs/services/model/ObjectTagResult;

    return-object p0
.end method

.method public getObjectVersionId()Ljava/lang/String;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/obs/services/model/ObjectTaggingRequest;->versionId:Ljava/lang/String;

    return-object p0
.end method

.method public setObjectTagging(Lcom/obs/services/model/ObjectTagResult;)V
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/obs/services/model/ObjectTaggingRequest;->objectTagResult:Lcom/obs/services/model/ObjectTagResult;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ObjectTaggingRequest [ObjectTagResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/ObjectTaggingRequest;->objectTagResult:Lcom/obs/services/model/ObjectTagResult;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", getObjectKey()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", getObjectVersionId()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {p0}, Lcom/obs/services/model/ObjectTaggingRequest;->getObjectVersionId()Ljava/lang/String;

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
