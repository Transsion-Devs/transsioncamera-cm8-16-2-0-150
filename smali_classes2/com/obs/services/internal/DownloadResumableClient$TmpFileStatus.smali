.class Lcom/obs/services/internal/DownloadResumableClient$TmpFileStatus;
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
    name = "TmpFileStatus"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3e263a45245307d4L


# instance fields
.field public lastModified:Ljava/util/Date;

.field public size:J

.field public tmpFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/util/Date;Ljava/lang/String;)V
    .registers 5

    .line 759
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 760
    iput-wide p1, p0, Lcom/obs/services/internal/DownloadResumableClient$TmpFileStatus;->size:J

    .line 761
    iput-object p3, p0, Lcom/obs/services/internal/DownloadResumableClient$TmpFileStatus;->lastModified:Ljava/util/Date;

    .line 762
    iput-object p4, p0, Lcom/obs/services/internal/DownloadResumableClient$TmpFileStatus;->tmpFilePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 780
    :cond_4
    instance-of v1, p1, Lcom/obs/services/internal/DownloadResumableClient$TmpFileStatus;

    if-eqz v1, :cond_16

    .line 781
    check-cast p1, Lcom/obs/services/internal/DownloadResumableClient$TmpFileStatus;

    .line 782
    invoke-virtual {p1}, Lcom/obs/services/internal/DownloadResumableClient$TmpFileStatus;->hashCode()I

    move-result p1

    invoke-virtual {p0}, Lcom/obs/services/internal/DownloadResumableClient$TmpFileStatus;->hashCode()I

    move-result p0

    if-ne p1, p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    return v0
.end method

.method public hashCode()I
    .registers 6

    .line 769
    iget-object v0, p0, Lcom/obs/services/internal/DownloadResumableClient$TmpFileStatus;->lastModified:Ljava/util/Date;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/util/Date;->hashCode()I

    move-result v0

    :goto_b
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 770
    iget-object v3, p0, Lcom/obs/services/internal/DownloadResumableClient$TmpFileStatus;->tmpFilePath:Ljava/lang/String;

    if-nez v3, :cond_14

    goto :goto_18

    :cond_14
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_18
    add-int/2addr v0, v1

    mul-int/2addr v0, v2

    .line 771
    iget-wide v1, p0, Lcom/obs/services/internal/DownloadResumableClient$TmpFileStatus;->size:J

    const/16 p0, 0x20

    ushr-long v3, v1, p0

    xor-long/2addr v1, v3

    long-to-int p0, v1

    add-int/2addr v0, p0

    return v0
.end method
