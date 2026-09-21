.class public Lcom/obs/services/model/Multipart;
.super Lcom/obs/services/model/HeaderResponse;
.source "SourceFile"


# instance fields
.field private etag:Ljava/lang/String;

.field private lastModified:Ljava/util/Date;

.field private partNumber:Ljava/lang/Integer;

.field private size:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Lcom/obs/services/model/HeaderResponse;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/util/Date;Ljava/lang/String;Ljava/lang/Long;)V
    .registers 5

    .line 49
    invoke-direct {p0}, Lcom/obs/services/model/HeaderResponse;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/obs/services/model/Multipart;->partNumber:Ljava/lang/Integer;

    .line 51
    invoke-static {p2}, Lcom/obs/services/internal/utils/ServiceUtils;->cloneDateIgnoreNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/model/Multipart;->lastModified:Ljava/util/Date;

    .line 52
    iput-object p3, p0, Lcom/obs/services/model/Multipart;->etag:Ljava/lang/String;

    .line 53
    iput-object p4, p0, Lcom/obs/services/model/Multipart;->size:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public getEtag()Ljava/lang/String;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/obs/services/model/Multipart;->etag:Ljava/lang/String;

    return-object p0
.end method

.method public getLastModified()Ljava/util/Date;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/obs/services/model/Multipart;->lastModified:Ljava/util/Date;

    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->cloneDateIgnoreNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public getPartNumber()Ljava/lang/Integer;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/obs/services/model/Multipart;->partNumber:Ljava/lang/Integer;

    return-object p0
.end method

.method public getSize()Ljava/lang/Long;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/obs/services/model/Multipart;->size:Ljava/lang/Long;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Multipart [partNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/Multipart;->partNumber:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lastModified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/Multipart;->lastModified:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", etag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/Multipart;->etag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/Multipart;->size:Ljava/lang/Long;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
