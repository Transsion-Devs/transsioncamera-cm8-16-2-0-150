.class public Lcom/obs/services/model/DownloadFileResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private objectMetadata:Lcom/obs/services/model/ObjectMetadata;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getObjectMetadata()Lcom/obs/services/model/ObjectMetadata;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/obs/services/model/DownloadFileResult;->objectMetadata:Lcom/obs/services/model/ObjectMetadata;

    return-object p0
.end method

.method public setObjectMetadata(Lcom/obs/services/model/ObjectMetadata;)V
    .registers 2

    .line 37
    iput-object p1, p0, Lcom/obs/services/model/DownloadFileResult;->objectMetadata:Lcom/obs/services/model/ObjectMetadata;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadFileResult [objectMetadata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/DownloadFileResult;->objectMetadata:Lcom/obs/services/model/ObjectMetadata;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
