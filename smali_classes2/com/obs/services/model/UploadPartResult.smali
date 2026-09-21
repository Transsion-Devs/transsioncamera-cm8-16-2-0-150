.class public Lcom/obs/services/model/UploadPartResult;
.super Lcom/obs/services/model/HeaderResponse;
.source "SourceFile"


# instance fields
.field private etag:Ljava/lang/String;

.field private partNumber:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Lcom/obs/services/model/HeaderResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getEtag()Ljava/lang/String;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/obs/services/model/UploadPartResult;->etag:Ljava/lang/String;

    return-object p0
.end method

.method public getPartNumber()I
    .registers 1

    .line 31
    iget p0, p0, Lcom/obs/services/model/UploadPartResult;->partNumber:I

    return p0
.end method

.method public setEtag(Ljava/lang/String;)V
    .registers 2

    .line 48
    iput-object p1, p0, Lcom/obs/services/model/UploadPartResult;->etag:Ljava/lang/String;

    return-void
.end method

.method public setPartNumber(I)V
    .registers 2

    .line 35
    iput p1, p0, Lcom/obs/services/model/UploadPartResult;->partNumber:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UploadPartResult [partNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/obs/services/model/UploadPartResult;->partNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", etag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/UploadPartResult;->etag:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
