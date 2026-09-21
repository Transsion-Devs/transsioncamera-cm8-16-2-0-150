.class public Lcom/obs/services/model/DeleteObjectResult;
.super Lcom/obs/services/model/HeaderResponse;
.source "SourceFile"


# instance fields
.field private deleteMarker:Z

.field private objectKey:Ljava/lang/String;

.field private versionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .registers 3

    .line 27
    invoke-direct {p0}, Lcom/obs/services/model/HeaderResponse;-><init>()V

    .line 28
    iput-boolean p1, p0, Lcom/obs/services/model/DeleteObjectResult;->deleteMarker:Z

    .line 29
    iput-object p2, p0, Lcom/obs/services/model/DeleteObjectResult;->versionId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 32
    invoke-direct {p0}, Lcom/obs/services/model/HeaderResponse;-><init>()V

    .line 33
    iput-boolean p1, p0, Lcom/obs/services/model/DeleteObjectResult;->deleteMarker:Z

    .line 34
    iput-object p2, p0, Lcom/obs/services/model/DeleteObjectResult;->objectKey:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/obs/services/model/DeleteObjectResult;->versionId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getObjectKey()Ljava/lang/String;
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/obs/services/model/DeleteObjectResult;->objectKey:Ljava/lang/String;

    return-object p0
.end method

.method public getVersionId()Ljava/lang/String;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/obs/services/model/DeleteObjectResult;->versionId:Ljava/lang/String;

    return-object p0
.end method

.method public isDeleteMarker()Z
    .registers 1

    .line 45
    iget-boolean p0, p0, Lcom/obs/services/model/DeleteObjectResult;->deleteMarker:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeleteObjectResult [deleteMarker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/obs/services/model/DeleteObjectResult;->deleteMarker:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", objectKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/DeleteObjectResult;->objectKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", versionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/DeleteObjectResult;->versionId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
