.class Lcom/obs/services/internal/UploadResumableClient$UploadPart;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/internal/UploadResumableClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UploadPart"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xa6df000be117741L


# instance fields
.field public isCompleted:Z

.field public offset:J

.field public partNumber:I

.field public size:J


# direct methods
.method constructor <init>()V
    .registers 1

    .line 653
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    .line 673
    :cond_4
    instance-of v0, p1, Lcom/obs/services/internal/UploadResumableClient$UploadPart;

    if-eqz v0, :cond_16

    .line 674
    move-object v0, p1

    check-cast v0, Lcom/obs/services/internal/UploadResumableClient$UploadPart;

    .line 675
    invoke-virtual {v0}, Lcom/obs/services/internal/UploadResumableClient$UploadPart;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    if-ne v0, p1, :cond_16

    const/4 p0, 0x1

    :cond_16
    return p0
.end method

.method public hashCode()I
    .registers 8

    .line 661
    iget-boolean v0, p0, Lcom/obs/services/internal/UploadResumableClient$UploadPart;->isCompleted:Z

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 662
    iget v2, p0, Lcom/obs/services/internal/UploadResumableClient$UploadPart;->partNumber:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 663
    iget-wide v2, p0, Lcom/obs/services/internal/UploadResumableClient$UploadPart;->offset:J

    const/16 v4, 0x20

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 664
    iget-wide v1, p0, Lcom/obs/services/internal/UploadResumableClient$UploadPart;->size:J

    ushr-long v3, v1, v4

    xor-long/2addr v1, v3

    long-to-int p0, v1

    add-int/2addr v0, p0

    return v0
.end method
