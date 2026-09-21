.class public Lcom/obs/services/model/DeleteObjectsResult$DeleteObjectResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/model/DeleteObjectsResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeleteObjectResult"
.end annotation


# instance fields
.field private deleteMarker:Z

.field private deleteMarkerVersion:Ljava/lang/String;

.field private objectKey:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 5

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/obs/services/model/DeleteObjectsResult$DeleteObjectResult;->objectKey:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lcom/obs/services/model/DeleteObjectsResult$DeleteObjectResult;->version:Ljava/lang/String;

    .line 77
    iput-boolean p3, p0, Lcom/obs/services/model/DeleteObjectsResult$DeleteObjectResult;->deleteMarker:Z

    .line 78
    iput-object p4, p0, Lcom/obs/services/model/DeleteObjectsResult$DeleteObjectResult;->deleteMarkerVersion:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDeleteMarkerVersion()Ljava/lang/String;
    .registers 1

    .line 114
    iget-object p0, p0, Lcom/obs/services/model/DeleteObjectsResult$DeleteObjectResult;->deleteMarkerVersion:Ljava/lang/String;

    return-object p0
.end method

.method public getObjectKey()Ljava/lang/String;
    .registers 1

    .line 87
    iget-object p0, p0, Lcom/obs/services/model/DeleteObjectsResult$DeleteObjectResult;->objectKey:Ljava/lang/String;

    return-object p0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 1

    .line 96
    iget-object p0, p0, Lcom/obs/services/model/DeleteObjectsResult$DeleteObjectResult;->version:Ljava/lang/String;

    return-object p0
.end method

.method public isDeleteMarker()Z
    .registers 1

    .line 105
    iget-boolean p0, p0, Lcom/obs/services/model/DeleteObjectsResult$DeleteObjectResult;->deleteMarker:Z

    return p0
.end method

.method public setObjectKey(Ljava/lang/String;)V
    .registers 2

    .line 118
    iput-object p1, p0, Lcom/obs/services/model/DeleteObjectsResult$DeleteObjectResult;->objectKey:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeleteObjectResult [objectKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/DeleteObjectsResult$DeleteObjectResult;->objectKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/DeleteObjectsResult$DeleteObjectResult;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", deleteMarker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/obs/services/model/DeleteObjectsResult$DeleteObjectResult;->deleteMarker:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", deleteMarkerVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/DeleteObjectsResult$DeleteObjectResult;->deleteMarkerVersion:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
