.class Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;
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
    name = "DownloadCheckPoint"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1faeab1965d522ebL


# instance fields
.field public bucketName:Ljava/lang/String;

.field public downloadFile:Ljava/lang/String;

.field downloadParts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/obs/services/internal/DownloadResumableClient$DownloadPart;",
            ">;"
        }
    .end annotation
.end field

.field public volatile transient isAbort:Z

.field public md5:I

.field public objectKey:Ljava/lang/String;

.field public objectStatus:Lcom/obs/services/internal/DownloadResumableClient$ObjectStatus;

.field public tmpFileStatus:Lcom/obs/services/internal/DownloadResumableClient$TmpFileStatus;

.field public versionId:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 562
    iput-boolean v0, p0, Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;->isAbort:Z

    return-void
.end method

.method private assign(Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;)V
    .registers 3

    .line 631
    iget v0, p1, Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;->md5:I

    iput v0, p0, Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;->md5:I

    .line 632
    iget-object v0, p1, Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;->downloadFile:Ljava/lang/String;

    iput-object v0, p0, Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;->downloadFile:Ljava/lang/String;

    .line 633
    iget-object v0, p1, Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;->bucketName:Ljava/lang/String;

    iput-object v0, p0, Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;->bucketName:Ljava/lang/String;

    .line 634
    iget-object v0, p1, Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;->objectKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;->objectKey:Ljava/lang/String;

    .line 635
    iget-object v0, p1, Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;->versionId:Ljava/lang/String;

    iput-object v0, p0, Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;->versionId:Ljava/lang/String;

    .line 636
    iget-object v0, p1, Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;->objectStatus:Lcom/obs/services/internal/DownloadResumableClient$ObjectStatus;

    iput-object v0, p0, Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;->objectStatus:Lcom/obs/services/internal/DownloadResumableClient$ObjectStatus;

    .line 637
    iget-object v0, p1, Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;->tmpFileStatus:Lcom/obs/services/internal/DownloadResumableClient$TmpFileStatus;

    iput-object v0, p0, Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;->tmpFileStatus:Lcom/obs/services/internal/DownloadResumableClient$TmpFileStatus;

    .line 638
    iget-object p1, p1, Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;->downloadParts:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;->downloadParts:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 583
    :cond_4
    instance-of v1, p1, Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;

    if-eqz v1, :cond_16

    .line 584
    check-cast p1, Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;

    .line 585
    invoke-virtual {p1}, Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;->hashCode()I

    move-result p1

    invoke-virtual {p0}, Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;->hashCode()I

    move-result p0

    if-ne p1, p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    return v0
.end method

.method public hashCode()I
    .registers 5

    .line 568
    iget-object v0, p0, Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;->bucketName:Ljava/lang/String;

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

    .line 569
    iget-object v3, p0, Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;->downloadFile:Ljava/lang/String;

    if-nez v3, :cond_15

    move v3, v1

    goto :goto_19

    :cond_15
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_19
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 570
    iget-object v3, p0, Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;->versionId:Ljava/lang/String;

    if-nez v3, :cond_21

    move v3, v1

    goto :goto_25

    :cond_21
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_25
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 571
    iget-object v3, p0, Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;->objectKey:Ljava/lang/String;

    if-nez v3, :cond_2d

    move v3, v1

    goto :goto_31

    :cond_2d
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_31
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 572
    iget-object v3, p0, Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;->objectStatus:Lcom/obs/services/internal/DownloadResumableClient$ObjectStatus;

    if-nez v3, :cond_39

    move v3, v1

    goto :goto_3d

    :cond_39
    invoke-virtual {v3}, Lcom/obs/services/internal/DownloadResumableClient$ObjectStatus;->hashCode()I

    move-result v3

    :goto_3d
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 573
    iget-object v3, p0, Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;->tmpFileStatus:Lcom/obs/services/internal/DownloadResumableClient$TmpFileStatus;

    if-nez v3, :cond_45

    move v3, v1

    goto :goto_49

    :cond_45
    invoke-virtual {v3}, Lcom/obs/services/internal/DownloadResumableClient$TmpFileStatus;->hashCode()I

    move-result v3

    :goto_49
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 574
    iget-object p0, p0, Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;->downloadParts:Ljava/util/ArrayList;

    if-nez p0, :cond_50

    goto :goto_54

    :cond_50
    invoke-virtual {p0}, Ljava/util/ArrayList;->hashCode()I

    move-result v1

    :goto_54
    add-int/2addr v0, v1

    return v0
.end method

.method public isValid(Ljava/lang/String;Lcom/obs/services/model/ObjectMetadata;)Z
    .registers 8

    .line 650
    iget v0, p0, Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;->md5:I

    invoke-virtual {p0}, Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_a

    return v2

    .line 653
    :cond_a
    invoke-virtual {p2}, Lcom/obs/services/model/ObjectMetadata;->getContentLength()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v3, p0, Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;->objectStatus:Lcom/obs/services/internal/DownloadResumableClient$ObjectStatus;

    iget-wide v3, v3, Lcom/obs/services/internal/DownloadResumableClient$ObjectStatus;->size:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_4a

    .line 654
    invoke-virtual {p2}, Lcom/obs/services/model/ObjectMetadata;->getLastModified()Ljava/util/Date;

    move-result-object v0

    iget-object v1, p0, Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;->objectStatus:Lcom/obs/services/internal/DownloadResumableClient$ObjectStatus;

    iget-object v1, v1, Lcom/obs/services/internal/DownloadResumableClient$ObjectStatus;->lastModified:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 655
    invoke-virtual {p2}, Lcom/obs/services/model/ObjectMetadata;->getEtag()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;->objectStatus:Lcom/obs/services/internal/DownloadResumableClient$ObjectStatus;

    iget-object v0, v0, Lcom/obs/services/internal/DownloadResumableClient$ObjectStatus;->etag:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_37

    goto :goto_4a

    .line 659
    :cond_37
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 660
    iget-object p0, p0, Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;->tmpFileStatus:Lcom/obs/services/internal/DownloadResumableClient$TmpFileStatus;

    iget-wide p0, p0, Lcom/obs/services/internal/DownloadResumableClient$TmpFileStatus;->size:J

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v0

    cmp-long p0, p0, v0

    if-nez p0, :cond_4a

    const/4 p0, 0x1

    return p0

    :cond_4a
    :goto_4a
    return v2
.end method

.method public load(Ljava/lang/String;)V
    .registers 5

    .line 600
    const-string v0, "close failed."

    const/4 v1, 0x0

    .line 603
    :try_start_3
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_48

    .line 604
    :try_start_8
    new-instance p1, Lcom/obs/services/internal/utils/SecureObjectInputStream;

    invoke-direct {p1, v2}, Lcom/obs/services/internal/utils/SecureObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_46

    .line 605
    :try_start_d
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;

    .line 606
    invoke-direct {p0, v1}, Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;->assign(Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;)V
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_43

    .line 610
    :try_start_16
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_2c

    :catch_1a
    move-exception p0

    .line 612
    # getter for: Lcom/obs/services/internal/DownloadResumableClient;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/DownloadResumableClient;->access$000()Lcom/obs/log/ILogger;

    move-result-object p1

    invoke-interface {p1}, Lcom/obs/log/ILogger;->isWarnEnabled()Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 613
    # getter for: Lcom/obs/services/internal/DownloadResumableClient;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/DownloadResumableClient;->access$000()Lcom/obs/log/ILogger;

    move-result-object p1

    invoke-interface {p1, v0, p0}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 620
    :cond_2c
    :goto_2c
    :try_start_2c
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_30

    goto :goto_42

    :catch_30
    move-exception p0

    .line 622
    # getter for: Lcom/obs/services/internal/DownloadResumableClient;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/DownloadResumableClient;->access$000()Lcom/obs/log/ILogger;

    move-result-object p1

    invoke-interface {p1}, Lcom/obs/log/ILogger;->isWarnEnabled()Z

    move-result p1

    if-eqz p1, :cond_42

    .line 623
    # getter for: Lcom/obs/services/internal/DownloadResumableClient;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/DownloadResumableClient;->access$000()Lcom/obs/log/ILogger;

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

    .line 610
    :try_start_4c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_50

    goto :goto_62

    :catch_50
    move-exception p1

    .line 612
    # getter for: Lcom/obs/services/internal/DownloadResumableClient;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/DownloadResumableClient;->access$000()Lcom/obs/log/ILogger;

    move-result-object v1

    invoke-interface {v1}, Lcom/obs/log/ILogger;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 613
    # getter for: Lcom/obs/services/internal/DownloadResumableClient;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/DownloadResumableClient;->access$000()Lcom/obs/log/ILogger;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_62
    :goto_62
    if-eqz v2, :cond_7a

    .line 620
    :try_start_64
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_68

    goto :goto_7a

    :catch_68
    move-exception p1

    .line 622
    # getter for: Lcom/obs/services/internal/DownloadResumableClient;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/DownloadResumableClient;->access$000()Lcom/obs/log/ILogger;

    move-result-object v1

    invoke-interface {v1}, Lcom/obs/log/ILogger;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 623
    # getter for: Lcom/obs/services/internal/DownloadResumableClient;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/DownloadResumableClient;->access$000()Lcom/obs/log/ILogger;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 627
    :cond_7a
    :goto_7a
    throw p0
.end method

.method public declared-synchronized record(Ljava/lang/String;)V
    .registers 7

    monitor-enter p0

    .line 696
    :try_start_1
    invoke-virtual {p0}, Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;->md5:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_19

    const/4 v0, 0x0

    .line 698
    :try_start_8
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_3c

    .line 699
    :try_start_d
    new-instance p1, Ljava/io/ObjectOutputStream;

    invoke-direct {p1, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_37

    .line 700
    :try_start_12
    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_35

    .line 704
    :try_start_15
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_1b
    .catchall {:try_start_15 .. :try_end_18} :catchall_19

    goto :goto_25

    :catchall_19
    move-exception p1

    goto :goto_61

    :catch_1b
    move-exception p1

    .line 706
    :try_start_1c
    # getter for: Lcom/obs/services/internal/DownloadResumableClient;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/DownloadResumableClient;->access$000()Lcom/obs/log/ILogger;

    move-result-object v0

    const-string v2, "close outputstrem failed."

    invoke-interface {v0, v2, p1}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_19

    .line 711
    :goto_25
    :try_start_25
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_29
    .catchall {:try_start_25 .. :try_end_28} :catchall_19

    goto :goto_33

    :catch_29
    move-exception p1

    .line 713
    :try_start_2a
    # getter for: Lcom/obs/services/internal/DownloadResumableClient;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/DownloadResumableClient;->access$000()Lcom/obs/log/ILogger;

    move-result-object v0

    const-string v1, "close outputstrem failed."

    invoke-interface {v0, v1, p1}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_33
    .catchall {:try_start_2a .. :try_end_33} :catchall_19

    .line 717
    :goto_33
    monitor-exit p0

    return-void

    :catchall_35
    move-exception v0

    goto :goto_40

    :catchall_37
    move-exception p1

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    goto :goto_40

    :catchall_3c
    move-exception p1

    move-object v1, v0

    move-object v0, p1

    move-object p1, v1

    :goto_40
    if-eqz p1, :cond_50

    .line 704
    :try_start_42
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_45} :catch_46
    .catchall {:try_start_42 .. :try_end_45} :catchall_19

    goto :goto_50

    :catch_46
    move-exception p1

    .line 706
    :try_start_47
    # getter for: Lcom/obs/services/internal/DownloadResumableClient;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/DownloadResumableClient;->access$000()Lcom/obs/log/ILogger;

    move-result-object v2

    const-string v3, "close outputstrem failed."

    invoke-interface {v2, v3, p1}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_50
    .catchall {:try_start_47 .. :try_end_50} :catchall_19

    :cond_50
    :goto_50
    if-eqz v1, :cond_60

    .line 711
    :try_start_52
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_55} :catch_56
    .catchall {:try_start_52 .. :try_end_55} :catchall_19

    goto :goto_60

    :catch_56
    move-exception p1

    .line 713
    :try_start_57
    # getter for: Lcom/obs/services/internal/DownloadResumableClient;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/DownloadResumableClient;->access$000()Lcom/obs/log/ILogger;

    move-result-object v1

    const-string v2, "close outputstrem failed."

    invoke-interface {v1, v2, p1}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 716
    :cond_60
    :goto_60
    throw v0

    :goto_61
    monitor-exit p0
    :try_end_62
    .catchall {:try_start_57 .. :try_end_62} :catchall_19

    throw p1
.end method

.method public declared-synchronized update(IZLjava/lang/String;)V
    .registers 6

    monitor-enter p0

    .line 672
    :try_start_1
    iget-object v0, p0, Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;->downloadParts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/obs/services/internal/DownloadResumableClient$DownloadPart;

    iput-boolean p2, p1, Lcom/obs/services/internal/DownloadResumableClient$DownloadPart;->isCompleted:Z

    .line 673
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 674
    iget-object p2, p0, Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;->tmpFileStatus:Lcom/obs/services/internal/DownloadResumableClient$TmpFileStatus;

    new-instance p3, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-direct {p3, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object p3, p2, Lcom/obs/services/internal/DownloadResumableClient$TmpFileStatus;->lastModified:Ljava/util/Date;
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 675
    monitor-exit p0

    return-void

    :catchall_1f
    move-exception p1

    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw p1
.end method

.method public declared-synchronized updateTmpFile(Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    .line 684
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 685
    iget-object p1, p0, Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;->tmpFileStatus:Lcom/obs/services/internal/DownloadResumableClient$TmpFileStatus;

    new-instance v1, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v1, p1, Lcom/obs/services/internal/DownloadResumableClient$TmpFileStatus;->lastModified:Ljava/util/Date;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 686
    monitor-exit p0

    return-void

    :catchall_15
    move-exception p1

    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw p1
.end method
