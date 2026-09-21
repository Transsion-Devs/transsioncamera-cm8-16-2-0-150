.class Lcom/obs/services/internal/DownloadResumableClient$ObjectStatus;
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
    name = "ObjectStatus"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x56f9006eeb354956L


# instance fields
.field public etag:Ljava/lang/String;

.field public lastModified:Ljava/util/Date;

.field public size:J


# direct methods
.method constructor <init>()V
    .registers 1

    .line 720
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 743
    :cond_4
    instance-of v1, p1, Lcom/obs/services/internal/DownloadResumableClient$ObjectStatus;

    if-eqz v1, :cond_16

    .line 744
    check-cast p1, Lcom/obs/services/internal/DownloadResumableClient$ObjectStatus;

    .line 745
    invoke-virtual {p1}, Lcom/obs/services/internal/DownloadResumableClient$ObjectStatus;->hashCode()I

    move-result p1

    invoke-virtual {p0}, Lcom/obs/services/internal/DownloadResumableClient$ObjectStatus;->hashCode()I

    move-result p0

    if-ne p1, p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    return v0
.end method

.method public hashCode()I
    .registers 6

    .line 732
    iget-object v0, p0, Lcom/obs/services/internal/DownloadResumableClient$ObjectStatus;->etag:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 733
    iget-object v3, p0, Lcom/obs/services/internal/DownloadResumableClient$ObjectStatus;->lastModified:Ljava/util/Date;

    if-nez v3, :cond_14

    goto :goto_18

    :cond_14
    invoke-virtual {v3}, Ljava/util/Date;->hashCode()I

    move-result v1

    :goto_18
    add-int/2addr v0, v1

    mul-int/2addr v0, v2

    .line 734
    iget-wide v1, p0, Lcom/obs/services/internal/DownloadResumableClient$ObjectStatus;->size:J

    const/16 p0, 0x20

    ushr-long v3, v1, p0

    xor-long/2addr v1, v3

    long-to-int p0, v1

    add-int/2addr v0, p0

    return v0
.end method
