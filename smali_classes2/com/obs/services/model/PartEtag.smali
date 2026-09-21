.class public Lcom/obs/services/model/PartEtag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x28e2d9f59970c7d7L


# instance fields
.field private etag:Ljava/lang/String;

.field private partNumber:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/obs/services/model/PartEtag;->etag:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/obs/services/model/PartEtag;->partNumber:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 124
    :cond_4
    instance-of v1, p1, Lcom/obs/services/model/PartEtag;

    if-eqz v1, :cond_20

    .line 125
    check-cast p1, Lcom/obs/services/model/PartEtag;

    .line 126
    iget-object v1, p1, Lcom/obs/services/model/PartEtag;->etag:Ljava/lang/String;

    iget-object v2, p0, Lcom/obs/services/model/PartEtag;->etag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object p1, p1, Lcom/obs/services/model/PartEtag;->partNumber:Ljava/lang/Integer;

    iget-object p0, p0, Lcom/obs/services/model/PartEtag;->partNumber:Ljava/lang/Integer;

    invoke-virtual {p1, p0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    return v0
.end method

.method public getEtag()Ljava/lang/String;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/obs/services/model/PartEtag;->etag:Ljava/lang/String;

    return-object p0
.end method

.method public getPartNumber()Ljava/lang/Integer;
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/obs/services/model/PartEtag;->partNumber:Ljava/lang/Integer;

    return-object p0
.end method

.method public geteTag()Ljava/lang/String;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 72
    invoke-virtual {p0}, Lcom/obs/services/model/PartEtag;->getEtag()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .registers 3

    .line 114
    iget-object v0, p0, Lcom/obs/services/model/PartEtag;->etag:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_a
    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 115
    iget-object p0, p0, Lcom/obs/services/model/PartEtag;->partNumber:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public setEtag(Ljava/lang/String;)V
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/obs/services/model/PartEtag;->etag:Ljava/lang/String;

    return-void
.end method

.method public setPartNumber(Ljava/lang/Integer;)V
    .registers 2

    .line 102
    iput-object p1, p0, Lcom/obs/services/model/PartEtag;->partNumber:Ljava/lang/Integer;

    return-void
.end method

.method public seteTag(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 83
    invoke-virtual {p0, p1}, Lcom/obs/services/model/PartEtag;->setEtag(Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PartEtag [etag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/PartEtag;->etag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", partNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/PartEtag;->partNumber:Ljava/lang/Integer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
