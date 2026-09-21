.class public Lcom/obs/services/model/DeleteObjectsResult$ErrorResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/model/DeleteObjectsResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorResult"
.end annotation


# instance fields
.field private errorCode:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private objectKey:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Lcom/obs/services/model/DeleteObjectsResult$ErrorResult;->objectKey:Ljava/lang/String;

    .line 155
    iput-object p2, p0, Lcom/obs/services/model/DeleteObjectsResult$ErrorResult;->version:Ljava/lang/String;

    .line 156
    iput-object p3, p0, Lcom/obs/services/model/DeleteObjectsResult$ErrorResult;->errorCode:Ljava/lang/String;

    .line 157
    iput-object p4, p0, Lcom/obs/services/model/DeleteObjectsResult$ErrorResult;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorCode()Ljava/lang/String;
    .registers 1

    .line 184
    iget-object p0, p0, Lcom/obs/services/model/DeleteObjectsResult$ErrorResult;->errorCode:Ljava/lang/String;

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 1

    .line 193
    iget-object p0, p0, Lcom/obs/services/model/DeleteObjectsResult$ErrorResult;->message:Ljava/lang/String;

    return-object p0
.end method

.method public getObjectKey()Ljava/lang/String;
    .registers 1

    .line 166
    iget-object p0, p0, Lcom/obs/services/model/DeleteObjectsResult$ErrorResult;->objectKey:Ljava/lang/String;

    return-object p0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 1

    .line 175
    iget-object p0, p0, Lcom/obs/services/model/DeleteObjectsResult$ErrorResult;->version:Ljava/lang/String;

    return-object p0
.end method

.method public setObjectKey(Ljava/lang/String;)V
    .registers 2

    .line 197
    iput-object p1, p0, Lcom/obs/services/model/DeleteObjectsResult$ErrorResult;->objectKey:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ErrorResult [objectKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/DeleteObjectsResult$ErrorResult;->objectKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/DeleteObjectsResult$ErrorResult;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/DeleteObjectsResult$ErrorResult;->errorCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/DeleteObjectsResult$ErrorResult;->message:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
