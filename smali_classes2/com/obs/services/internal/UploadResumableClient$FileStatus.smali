.class Lcom/obs/services/internal/UploadResumableClient$FileStatus;
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
    name = "FileStatus"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2b846fd2cdf56c89L


# instance fields
.field public checkSum:Ljava/lang/String;

.field public lastModified:J

.field public size:J


# direct methods
.method constructor <init>()V
    .registers 1

    .line 607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFileStatus(Ljava/lang/String;Z)Lcom/obs/services/internal/UploadResumableClient$FileStatus;
    .registers 6

    .line 634
    new-instance v0, Lcom/obs/services/internal/UploadResumableClient$FileStatus;

    invoke-direct {v0}, Lcom/obs/services/internal/UploadResumableClient$FileStatus;-><init>()V

    .line 635
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 636
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/obs/services/internal/UploadResumableClient$FileStatus;->size:J

    .line 637
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/obs/services/internal/UploadResumableClient$FileStatus;->lastModified:J

    if-eqz p1, :cond_31

    .line 640
    :try_start_18
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->computeMD5Hash(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->toBase64([B)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/obs/services/internal/UploadResumableClient$FileStatus;->checkSum:Ljava/lang/String;
    :try_end_27
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_18 .. :try_end_27} :catch_28

    return-object v0

    :catch_28
    move-exception p0

    .line 642
    new-instance p1, Lcom/obs/services/exception/ObsException;

    const-string v0, "computeMD5Hash failed."

    invoke-direct {p1, v0, p0}, Lcom/obs/services/exception/ObsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_31
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    .line 625
    :cond_4
    instance-of v0, p1, Lcom/obs/services/internal/UploadResumableClient$FileStatus;

    if-eqz v0, :cond_16

    .line 626
    move-object v0, p1

    check-cast v0, Lcom/obs/services/internal/UploadResumableClient$FileStatus;

    .line 627
    invoke-virtual {v0}, Lcom/obs/services/internal/UploadResumableClient$FileStatus;->hashCode()I

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

    .line 614
    iget-object v0, p0, Lcom/obs/services/internal/UploadResumableClient$FileStatus;->checkSum:Ljava/lang/String;

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

    .line 615
    iget-wide v2, p0, Lcom/obs/services/internal/UploadResumableClient$FileStatus;->lastModified:J

    const/16 v4, 0x20

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 616
    iget-wide v1, p0, Lcom/obs/services/internal/UploadResumableClient$FileStatus;->size:J

    ushr-long v3, v1, v4

    xor-long/2addr v1, v3

    long-to-int p0, v1

    add-int/2addr v0, p0

    return v0
.end method
