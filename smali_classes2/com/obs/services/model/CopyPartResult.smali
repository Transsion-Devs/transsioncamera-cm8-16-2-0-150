.class public Lcom/obs/services/model/CopyPartResult;
.super Lcom/obs/services/model/HeaderResponse;
.source "SourceFile"


# instance fields
.field private etag:Ljava/lang/String;

.field private lastModified:Ljava/util/Date;

.field private partNumber:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/Date;)V
    .registers 4

    .line 31
    invoke-direct {p0}, Lcom/obs/services/model/HeaderResponse;-><init>()V

    .line 32
    iput p1, p0, Lcom/obs/services/model/CopyPartResult;->partNumber:I

    .line 33
    iput-object p2, p0, Lcom/obs/services/model/CopyPartResult;->etag:Ljava/lang/String;

    .line 34
    invoke-static {p3}, Lcom/obs/services/internal/utils/ServiceUtils;->cloneDateIgnoreNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/model/CopyPartResult;->lastModified:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public getEtag()Ljava/lang/String;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/obs/services/model/CopyPartResult;->etag:Ljava/lang/String;

    return-object p0
.end method

.method public getLastModified()Ljava/util/Date;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/obs/services/model/CopyPartResult;->lastModified:Ljava/util/Date;

    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->cloneDateIgnoreNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public getPartNumber()I
    .registers 1

    .line 43
    iget p0, p0, Lcom/obs/services/model/CopyPartResult;->partNumber:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CopyPartResult [partNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/obs/services/model/CopyPartResult;->partNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", etag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/CopyPartResult;->etag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lastModified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/CopyPartResult;->lastModified:Ljava/util/Date;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
