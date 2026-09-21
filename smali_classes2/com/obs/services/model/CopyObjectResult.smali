.class public Lcom/obs/services/model/CopyObjectResult;
.super Lcom/obs/services/model/HeaderResponse;
.source "SourceFile"


# instance fields
.field private copySourceVersionId:Ljava/lang/String;

.field private etag:Ljava/lang/String;

.field private lastModified:Ljava/util/Date;

.field private storageClass:Lcom/obs/services/model/StorageClassEnum;

.field private versionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/model/StorageClassEnum;)V
    .registers 6

    .line 36
    invoke-direct {p0}, Lcom/obs/services/model/HeaderResponse;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/obs/services/model/CopyObjectResult;->etag:Ljava/lang/String;

    .line 38
    invoke-static {p2}, Lcom/obs/services/internal/utils/ServiceUtils;->cloneDateIgnoreNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/model/CopyObjectResult;->lastModified:Ljava/util/Date;

    .line 39
    iput-object p3, p0, Lcom/obs/services/model/CopyObjectResult;->versionId:Ljava/lang/String;

    .line 40
    iput-object p4, p0, Lcom/obs/services/model/CopyObjectResult;->copySourceVersionId:Ljava/lang/String;

    .line 41
    iput-object p5, p0, Lcom/obs/services/model/CopyObjectResult;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    return-void
.end method


# virtual methods
.method public getCopySourceVersionId()Ljava/lang/String;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/obs/services/model/CopyObjectResult;->copySourceVersionId:Ljava/lang/String;

    return-object p0
.end method

.method public getEtag()Ljava/lang/String;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/obs/services/model/CopyObjectResult;->etag:Ljava/lang/String;

    return-object p0
.end method

.method public getLastModified()Ljava/util/Date;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/obs/services/model/CopyObjectResult;->lastModified:Ljava/util/Date;

    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->cloneDateIgnoreNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public getObjectStorageClass()Lcom/obs/services/model/StorageClassEnum;
    .registers 1

    .line 86
    iget-object p0, p0, Lcom/obs/services/model/CopyObjectResult;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    return-object p0
.end method

.method public getVersionId()Ljava/lang/String;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/obs/services/model/CopyObjectResult;->versionId:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CopyObjectResult [etag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/CopyObjectResult;->etag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lastModified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/CopyObjectResult;->lastModified:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", versionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/CopyObjectResult;->versionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", copySourceVersionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/CopyObjectResult;->copySourceVersionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", storageClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/CopyObjectResult;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
