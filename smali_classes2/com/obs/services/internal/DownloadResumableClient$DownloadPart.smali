.class Lcom/obs/services/internal/DownloadResumableClient$DownloadPart;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/internal/DownloadResumableClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DownloadPart"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xd59aaf18ae1ce8dL


# instance fields
.field public end:J

.field public isCompleted:Z

.field public offset:J

.field public partNumber:I


# direct methods
.method constructor <init>()V
    .registers 1

    .line 789
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 814
    :cond_4
    instance-of v1, p1, Lcom/obs/services/internal/DownloadResumableClient$DownloadPart;

    if-eqz v1, :cond_16

    .line 815
    check-cast p1, Lcom/obs/services/internal/DownloadResumableClient$DownloadPart;

    .line 816
    invoke-virtual {p1}, Lcom/obs/services/internal/DownloadResumableClient$DownloadPart;->hashCode()I

    move-result p1

    invoke-virtual {p0}, Lcom/obs/services/internal/DownloadResumableClient$DownloadPart;->hashCode()I

    move-result p0

    if-ne p1, p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    return v0
.end method

.method public hashCode()I
    .registers 8

    .line 802
    iget v0, p0, Lcom/obs/services/internal/DownloadResumableClient$DownloadPart;->partNumber:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 803
    iget-boolean v2, p0, Lcom/obs/services/internal/DownloadResumableClient$DownloadPart;->isCompleted:Z

    if-eqz v2, :cond_c

    const/4 v2, 0x0

    goto :goto_e

    :cond_c
    const/16 v2, 0x8

    :goto_e
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 804
    iget-wide v2, p0, Lcom/obs/services/internal/DownloadResumableClient$DownloadPart;->end:J

    const/16 v4, 0x20

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 805
    iget-wide v1, p0, Lcom/obs/services/internal/DownloadResumableClient$DownloadPart;->offset:J

    ushr-long v3, v1, v4

    xor-long/2addr v1, v3

    long-to-int p0, v1

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 824
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadPart [partNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/obs/services/internal/DownloadResumableClient$DownloadPart;->partNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/obs/services/internal/DownloadResumableClient$DownloadPart;->offset:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/obs/services/internal/DownloadResumableClient$DownloadPart;->end:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", isCompleted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/obs/services/internal/DownloadResumableClient$DownloadPart;->isCompleted:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
