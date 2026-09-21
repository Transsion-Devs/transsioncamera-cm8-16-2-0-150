.class Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;
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
    name = "UploadCheckPoint"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4d39fdbab0ca3028L


# instance fields
.field public bucketName:Ljava/lang/String;

.field public volatile transient isAbort:Z

.field public volatile transient isDeleteUploadRecordFile:Z

.field public md5:I

.field public objectKey:Ljava/lang/String;

.field public partEtags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/obs/services/model/PartEtag;",
            ">;"
        }
    .end annotation
.end field

.field public uploadFile:Ljava/lang/String;

.field public uploadFileStatus:Lcom/obs/services/internal/UploadResumableClient$FileStatus;

.field public uploadID:Ljava/lang/String;

.field public uploadParts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/obs/services/internal/UploadResumableClient$UploadPart;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 603
    iput-boolean v0, p0, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;->isAbort:Z

    const/4 v0, 0x1

    .line 604
    iput-boolean v0, p0, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;->isDeleteUploadRecordFile:Z

    return-void
.end method

.method private assign(Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;)V
    .registers 3

    .line 585
    iget v0, p1, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;->md5:I

    iput v0, p0, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;->md5:I

    .line 586
    iget-object v0, p1, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;->bucketName:Ljava/lang/String;

    iput-object v0, p0, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;->bucketName:Ljava/lang/String;

    .line 587
    iget-object v0, p1, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;->uploadFile:Ljava/lang/String;

    iput-object v0, p0, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;->uploadFile:Ljava/lang/String;

    .line 588
    iget-object v0, p1, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;->uploadFileStatus:Lcom/obs/services/internal/UploadResumableClient$FileStatus;

    iput-object v0, p0, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;->uploadFileStatus:Lcom/obs/services/internal/UploadResumableClient$FileStatus;

    .line 589
    iget-object v0, p1, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;->objectKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;->objectKey:Ljava/lang/String;

    .line 590
    iget-object v0, p1, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;->uploadID:Ljava/lang/String;

    iput-object v0, p0, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;->uploadID:Ljava/lang/String;

    .line 591
    iget-object v0, p1, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;->uploadParts:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;->uploadParts:Ljava/util/ArrayList;

    .line 592
    iget-object p1, p1, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;->partEtags:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;->partEtags:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    .line 576
    :cond_4
    instance-of v0, p1, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;

    if-eqz v0, :cond_16

    .line 577
    move-object v0, p1

    check-cast v0, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;

    .line 578
    invoke-virtual {v0}, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    if-ne v0, p1, :cond_16

    const/4 p0, 0x1

    :cond_16
    return p0
.end method

.method public hashCode()I
    .registers 5

    .line 561
    iget-object v0, p0, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;->objectKey:Ljava/lang/String;

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

    .line 562
    iget-object v3, p0, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;->bucketName:Ljava/lang/String;

    if-nez v3, :cond_15

    move v3, v1

    goto :goto_19

    :cond_15
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_19
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 563
    iget-object v3, p0, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;->partEtags:Ljava/util/ArrayList;

    if-nez v3, :cond_21

    move v3, v1

    goto :goto_25

    :cond_21
    invoke-virtual {v3}, Ljava/util/ArrayList;->hashCode()I

    move-result v3

    :goto_25
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 564
    iget-object v3, p0, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;->uploadFile:Ljava/lang/String;

    if-nez v3, :cond_2d

    move v3, v1

    goto :goto_31

    :cond_2d
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_31
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 565
    iget-object v3, p0, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;->uploadFileStatus:Lcom/obs/services/internal/UploadResumableClient$FileStatus;

    if-nez v3, :cond_39

    move v3, v1

    goto :goto_3d

    :cond_39
    invoke-virtual {v3}, Lcom/obs/services/internal/UploadResumableClient$FileStatus;->hashCode()I

    move-result v3

    :goto_3d
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 566
    iget-object v3, p0, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;->uploadID:Ljava/lang/String;

    if-nez v3, :cond_45

    move v3, v1

    goto :goto_49

    :cond_45
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_49
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 567
    iget-object p0, p0, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;->uploadParts:Ljava/util/ArrayList;

    if-nez p0, :cond_50

    goto :goto_54

    :cond_50
    invoke-virtual {p0}, Ljava/util/ArrayList;->hashCode()I

    move-result v1

    :goto_54
    add-int/2addr v0, v1

    return v0
.end method

.method public isValid(Ljava/lang/String;)Z
    .registers 9

    .line 535
    iget v0, p0, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;->md5:I

    invoke-virtual {p0}, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_a

    return v2

    .line 539
    :cond_a
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 540
    iget-object v1, p0, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;->uploadFile:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_53

    iget-object p1, p0, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;->uploadFileStatus:Lcom/obs/services/internal/UploadResumableClient$FileStatus;

    iget-wide v3, p1, Lcom/obs/services/internal/UploadResumableClient$FileStatus;->size:J

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-nez p1, :cond_53

    iget-object p1, p0, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;->uploadFileStatus:Lcom/obs/services/internal/UploadResumableClient$FileStatus;

    iget-wide v3, p1, Lcom/obs/services/internal/UploadResumableClient$FileStatus;->lastModified:J

    .line 541
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-eqz p1, :cond_30

    goto :goto_53

    .line 545
    :cond_30
    iget-object p0, p0, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;->uploadFileStatus:Lcom/obs/services/internal/UploadResumableClient$FileStatus;

    iget-object p0, p0, Lcom/obs/services/internal/UploadResumableClient$FileStatus;->checkSum:Ljava/lang/String;

    if-eqz p0, :cond_51

    .line 547
    :try_start_36
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 548
    invoke-static {p1}, Lcom/obs/services/internal/utils/ServiceUtils;->computeMD5Hash(Ljava/io/InputStream;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/obs/services/internal/utils/ServiceUtils;->toBase64([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_47
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_36 .. :try_end_47} :catch_48

    return p0

    :catch_48
    move-exception p0

    .line 550
    new-instance p1, Lcom/obs/services/exception/ObsException;

    const-string v0, "computeMD5Hash failed."

    invoke-direct {p1, v0, p0}, Lcom/obs/services/exception/ObsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_51
    const/4 p0, 0x1

    return p0

    :cond_53
    :goto_53
    return v2
.end method

.method public load(Ljava/lang/String;)V
    .registers 5

    .line 448
    const-string v0, "close failed."

    const/4 v1, 0x0

    .line 451
    :try_start_3
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_48

    .line 452
    :try_start_8
    new-instance p1, Lcom/obs/services/internal/utils/SecureObjectInputStream;

    invoke-direct {p1, v2}, Lcom/obs/services/internal/utils/SecureObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_46

    .line 453
    :try_start_d
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;

    .line 454
    invoke-direct {p0, v1}, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;->assign(Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;)V
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_43

    .line 458
    :try_start_16
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_2c

    :catch_1a
    move-exception p0

    .line 460
    # getter for: Lcom/obs/services/internal/UploadResumableClient;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/UploadResumableClient;->access$000()Lcom/obs/log/ILogger;

    move-result-object p1

    invoke-interface {p1}, Lcom/obs/log/ILogger;->isWarnEnabled()Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 461
    # getter for: Lcom/obs/services/internal/UploadResumableClient;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/UploadResumableClient;->access$000()Lcom/obs/log/ILogger;

    move-result-object p1

    invoke-interface {p1, v0, p0}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 468
    :cond_2c
    :goto_2c
    :try_start_2c
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_30

    goto :goto_42

    :catch_30
    move-exception p0

    .line 470
    # getter for: Lcom/obs/services/internal/UploadResumableClient;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/UploadResumableClient;->access$000()Lcom/obs/log/ILogger;

    move-result-object p1

    invoke-interface {p1}, Lcom/obs/log/ILogger;->isWarnEnabled()Z

    move-result p1

    if-eqz p1, :cond_42

    .line 471
    # getter for: Lcom/obs/services/internal/UploadResumableClient;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/UploadResumableClient;->access$000()Lcom/obs/log/ILogger;

    move-result-object p1

    invoke-interface {p1, v0, p0}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_42
    :goto_42
    return-void

    :catchall_43
    move-exception p0

    move-object v1, p1

    goto :goto_4a

    :catchall_46
    move-exception p0

    goto :goto_4a

    :catchall_48
    move-exception p0

    move-object v2, v1

    :goto_4a
    if-eqz v1, :cond_62

    .line 458
    :try_start_4c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_50

    goto :goto_62

    :catch_50
    move-exception p1

    .line 460
    # getter for: Lcom/obs/services/internal/UploadResumableClient;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/UploadResumableClient;->access$000()Lcom/obs/log/ILogger;

    move-result-object v1

    invoke-interface {v1}, Lcom/obs/log/ILogger;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 461
    # getter for: Lcom/obs/services/internal/UploadResumableClient;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/UploadResumableClient;->access$000()Lcom/obs/log/ILogger;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_62
    :goto_62
    if-eqz v2, :cond_7a

    .line 468
    :try_start_64
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_68

    goto :goto_7a

    :catch_68
    move-exception p1

    .line 470
    # getter for: Lcom/obs/services/internal/UploadResumableClient;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/UploadResumableClient;->access$000()Lcom/obs/log/ILogger;

    move-result-object v1

    invoke-interface {v1}, Lcom/obs/log/ILogger;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 471
    # getter for: Lcom/obs/services/internal/UploadResumableClient;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/UploadResumableClient;->access$000()Lcom/obs/log/ILogger;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 475
    :cond_7a
    :goto_7a
    throw p0
.end method

.method public declared-synchronized record(Ljava/lang/String;)V
    .registers 7

    monitor-enter p0

    .line 485
    :try_start_1
    invoke-virtual {p0}, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;->md5:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_19

    const/4 v0, 0x0

    .line 489
    :try_start_8
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_51

    .line 490
    :try_start_d
    new-instance p1, Ljava/io/ObjectOutputStream;

    invoke-direct {p1, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_4c

    .line 491
    :try_start_12
    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_4a

    .line 495
    :try_start_15
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_1c
    .catchall {:try_start_15 .. :try_end_18} :catchall_19

    goto :goto_30

    :catchall_19
    move-exception p1

    goto/16 :goto_8a

    :catch_1c
    move-exception p1

    .line 497
    :try_start_1d
    # getter for: Lcom/obs/services/internal/UploadResumableClient;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/UploadResumableClient;->access$000()Lcom/obs/log/ILogger;

    move-result-object v0

    invoke-interface {v0}, Lcom/obs/log/ILogger;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 498
    # getter for: Lcom/obs/services/internal/UploadResumableClient;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/UploadResumableClient;->access$000()Lcom/obs/log/ILogger;

    move-result-object v0

    const-string v2, "close failed."

    invoke-interface {v0, v2, p1}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_30
    .catchall {:try_start_1d .. :try_end_30} :catchall_19

    .line 505
    :cond_30
    :goto_30
    :try_start_30
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_34
    .catchall {:try_start_30 .. :try_end_33} :catchall_19

    goto :goto_48

    :catch_34
    move-exception p1

    .line 507
    :try_start_35
    # getter for: Lcom/obs/services/internal/UploadResumableClient;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/UploadResumableClient;->access$000()Lcom/obs/log/ILogger;

    move-result-object v0

    invoke-interface {v0}, Lcom/obs/log/ILogger;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 508
    # getter for: Lcom/obs/services/internal/UploadResumableClient;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/UploadResumableClient;->access$000()Lcom/obs/log/ILogger;

    move-result-object v0

    const-string v1, "close failed."

    invoke-interface {v0, v1, p1}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_48
    .catchall {:try_start_35 .. :try_end_48} :catchall_19

    .line 513
    :cond_48
    :goto_48
    monitor-exit p0

    return-void

    :catchall_4a
    move-exception v0

    goto :goto_55

    :catchall_4c
    move-exception p1

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    goto :goto_55

    :catchall_51
    move-exception p1

    move-object v1, v0

    move-object v0, p1

    move-object p1, v1

    :goto_55
    if-eqz p1, :cond_6f

    .line 495
    :try_start_57
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_5b
    .catchall {:try_start_57 .. :try_end_5a} :catchall_19

    goto :goto_6f

    :catch_5b
    move-exception p1

    .line 497
    :try_start_5c
    # getter for: Lcom/obs/services/internal/UploadResumableClient;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/UploadResumableClient;->access$000()Lcom/obs/log/ILogger;

    move-result-object v2

    invoke-interface {v2}, Lcom/obs/log/ILogger;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 498
    # getter for: Lcom/obs/services/internal/UploadResumableClient;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/UploadResumableClient;->access$000()Lcom/obs/log/ILogger;

    move-result-object v2

    const-string v3, "close failed."

    invoke-interface {v2, v3, p1}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_6f
    .catchall {:try_start_5c .. :try_end_6f} :catchall_19

    :cond_6f
    :goto_6f
    if-eqz v1, :cond_89

    .line 505
    :try_start_71
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_75
    .catchall {:try_start_71 .. :try_end_74} :catchall_19

    goto :goto_89

    :catch_75
    move-exception p1

    .line 507
    :try_start_76
    # getter for: Lcom/obs/services/internal/UploadResumableClient;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/UploadResumableClient;->access$000()Lcom/obs/log/ILogger;

    move-result-object v1

    invoke-interface {v1}, Lcom/obs/log/ILogger;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_89

    .line 508
    # getter for: Lcom/obs/services/internal/UploadResumableClient;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/UploadResumableClient;->access$000()Lcom/obs/log/ILogger;

    move-result-object v1

    const-string v2, "close failed."

    invoke-interface {v1, v2, p1}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 512
    :cond_89
    :goto_89
    throw v0

    :goto_8a
    monitor-exit p0
    :try_end_8b
    .catchall {:try_start_76 .. :try_end_8b} :catchall_19

    throw p1
.end method

.method public declared-synchronized update(ILcom/obs/services/model/PartEtag;Z)V
    .registers 5

    monitor-enter p0

    .line 523
    :try_start_1
    iget-object v0, p0, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;->partEtags:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    iget-object p2, p0, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;->uploadParts:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/obs/services/internal/UploadResumableClient$UploadPart;

    iput-boolean p3, p1, Lcom/obs/services/internal/UploadResumableClient$UploadPart;->isCompleted:Z
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 525
    monitor-exit p0

    return-void

    :catchall_12
    move-exception p1

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw p1
.end method
