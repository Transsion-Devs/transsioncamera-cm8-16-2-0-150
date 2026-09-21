.class public Lcom/obs/services/internal/DownloadResumableClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/obs/services/internal/DownloadResumableClient$DownloadResult;,
        Lcom/obs/services/internal/DownloadResumableClient$PartResultDown;,
        Lcom/obs/services/internal/DownloadResumableClient$DownloadPart;,
        Lcom/obs/services/internal/DownloadResumableClient$TmpFileStatus;,
        Lcom/obs/services/internal/DownloadResumableClient$ObjectStatus;,
        Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;,
        Lcom/obs/services/internal/DownloadResumableClient$Task;
    }
.end annotation


# static fields
.field private static final log:Lcom/obs/log/ILogger;


# instance fields
.field private obsClient:Lcom/obs/services/AbstractClient;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 56
    const-string v0, "com.obs.services.ObsClient"

    invoke-static {v0}, Lcom/obs/log/LoggerBuilder;->getLogger(Ljava/lang/String;)Lcom/obs/log/ILogger;

    move-result-object v0

    sput-object v0, Lcom/obs/services/internal/DownloadResumableClient;->log:Lcom/obs/log/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/obs/services/AbstractClient;)V
    .registers 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/obs/services/internal/DownloadResumableClient;->obsClient:Lcom/obs/services/AbstractClient;

    return-void
.end method

.method static synthetic access$000()Lcom/obs/log/ILogger;
    .registers 1

    .line 54
    sget-object v0, Lcom/obs/services/internal/DownloadResumableClient;->log:Lcom/obs/log/ILogger;

    return-object v0
.end method

.method private checkDownloadResult(Lcom/obs/services/model/DownloadFileRequest;Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;Lcom/obs/services/internal/DownloadResumableClient$DownloadResult;)V
    .registers 5

    .line 163
    invoke-virtual {p3}, Lcom/obs/services/internal/DownloadResumableClient$DownloadResult;->getPartResults()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_45

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/obs/services/internal/DownloadResumableClient$PartResultDown;

    .line 164
    invoke-virtual {p3}, Lcom/obs/services/internal/DownloadResumableClient$PartResultDown;->isFailed()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p3}, Lcom/obs/services/internal/DownloadResumableClient$PartResultDown;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 165
    invoke-virtual {p1}, Lcom/obs/services/model/DownloadFileRequest;->isEnableCheckpoint()Z

    move-result p0

    if-eqz p0, :cond_39

    .line 167
    iget-boolean p0, p2, Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;->isAbort:Z

    if-eqz p0, :cond_40

    .line 168
    iget-object p0, p2, Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;->tmpFileStatus:Lcom/obs/services/internal/DownloadResumableClient$TmpFileStatus;

    iget-object p0, p0, Lcom/obs/services/internal/DownloadResumableClient$TmpFileStatus;->tmpFilePath:Ljava/lang/String;

    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->deleteFileIgnoreException(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p1}, Lcom/obs/services/model/DownloadFileRequest;->getCheckpointFile()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->deleteFileIgnoreException(Ljava/lang/String;)V

    goto :goto_40

    .line 166
    :cond_39
    iget-object p0, p2, Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;->tmpFileStatus:Lcom/obs/services/internal/DownloadResumableClient$TmpFileStatus;

    iget-object p0, p0, Lcom/obs/services/internal/DownloadResumableClient$TmpFileStatus;->tmpFilePath:Ljava/lang/String;

    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->deleteFileIgnoreException(Ljava/lang/String;)V

    .line 171
    :cond_40
    :goto_40
    invoke-virtual {p3}, Lcom/obs/services/internal/DownloadResumableClient$PartResultDown;->getException()Ljava/lang/Exception;

    move-result-object p0

    throw p0

    :cond_45
    return-void
.end method

.method private download(Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;Lcom/obs/services/model/DownloadFileRequest;)Lcom/obs/services/internal/DownloadResumableClient$DownloadResult;
    .registers 28

    move-object/from16 v3, p1

    .line 254
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 255
    new-instance v8, Lcom/obs/services/internal/DownloadResumableClient$DownloadResult;

    invoke-direct {v8}, Lcom/obs/services/internal/DownloadResumableClient$DownloadResult;-><init>()V

    .line 256
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 258
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    const/4 v13, 0x0

    move v1, v13

    const-wide/16 v17, 0x0

    .line 260
    :goto_1a
    iget-object v0, v3, Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;->downloadParts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_74

    .line 261
    iget-object v0, v3, Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;->downloadParts:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/obs/services/internal/DownloadResumableClient$DownloadPart;

    .line 262
    iget-boolean v2, v0, Lcom/obs/services/internal/DownloadResumableClient$DownloadPart;->isCompleted:Z

    if-nez v2, :cond_51

    .line 263
    new-instance v0, Lcom/obs/services/internal/DownloadResumableClient$Task;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "download-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v14, p0

    iget-object v6, v14, Lcom/obs/services/internal/DownloadResumableClient;->obsClient:Lcom/obs/services/AbstractClient;

    move v4, v1

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/obs/services/internal/DownloadResumableClient$Task;-><init>(ILjava/lang/String;Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;ILcom/obs/services/model/DownloadFileRequest;Lcom/obs/services/AbstractClient;)V

    .line 264
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v15, 0x0

    goto :goto_71

    :cond_51
    move-object/from16 v14, p0

    .line 266
    iget-wide v4, v0, Lcom/obs/services/internal/DownloadResumableClient$DownloadPart;->end:J

    const-wide/16 v15, 0x0

    iget-wide v11, v0, Lcom/obs/services/internal/DownloadResumableClient$DownloadPart;->offset:J

    sub-long v19, v4, v11

    const-wide/16 v21, 0x1

    add-long v19, v19, v21

    add-long v17, v17, v19

    .line 267
    new-instance v19, Lcom/obs/services/internal/DownloadResumableClient$PartResultDown;

    add-int/lit8 v20, v1, 0x1

    move-wide/from16 v23, v4

    move-wide/from16 v21, v11

    invoke-direct/range {v19 .. v24}, Lcom/obs/services/internal/DownloadResumableClient$PartResultDown;-><init>(IJJ)V

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_71
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_74
    const-wide/16 v15, 0x0

    .line 272
    invoke-virtual/range {p2 .. p2}, Lcom/obs/services/model/DownloadFileRequest;->getProgressListener()Lcom/obs/services/model/ProgressListener;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9f

    .line 273
    new-instance v14, Lcom/obs/services/internal/ConcurrentProgressManager;

    iget-object v0, v3, Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;->objectStatus:Lcom/obs/services/internal/DownloadResumableClient$ObjectStatus;

    iget-wide v2, v0, Lcom/obs/services/internal/DownloadResumableClient$ObjectStatus;->size:J

    .line 274
    invoke-virtual/range {p2 .. p2}, Lcom/obs/services/model/DownloadFileRequest;->getProgressListener()Lcom/obs/services/model/ProgressListener;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Lcom/obs/services/model/DownloadFileRequest;->getProgressInterval()J

    move-result-wide v4

    cmp-long v0, v4, v15

    if-lez v0, :cond_97

    .line 275
    invoke-virtual/range {p2 .. p2}, Lcom/obs/services/model/DownloadFileRequest;->getProgressInterval()J

    move-result-wide v4

    :goto_93
    move-wide v15, v2

    move-wide/from16 v20, v4

    goto :goto_9b

    :cond_97
    const-wide/32 v4, 0x19000

    goto :goto_93

    :goto_9b
    invoke-direct/range {v14 .. v21}, Lcom/obs/services/internal/ConcurrentProgressManager;-><init>(JJLcom/obs/services/model/ProgressListener;J)V

    goto :goto_a0

    :cond_9f
    move-object v14, v1

    .line 278
    :goto_a0
    invoke-virtual/range {p2 .. p2}, Lcom/obs/services/model/DownloadFileRequest;->getTaskNum()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    .line 279
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_ac
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/obs/services/internal/DownloadResumableClient$Task;

    .line 280
    invoke-virtual {v3, v14}, Lcom/obs/services/internal/DownloadResumableClient$Task;->setProgressManager(Lcom/obs/services/internal/ProgressManager;)V

    .line 281
    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ac

    .line 284
    :cond_c3
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 287
    :try_start_c6
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide v3, 0x7fffffffffffffffL

    invoke-interface {v2, v3, v4, v0}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_d0
    .catch Ljava/lang/InterruptedException; {:try_start_c6 .. :try_end_d0} :catch_f3
    .catchall {:try_start_c6 .. :try_end_d0} :catchall_f1

    .line 301
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_d4
    if-ge v13, v0, :cond_e8

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v13, v13, 0x1

    check-cast v1, Ljava/util/concurrent/Future;

    .line 302
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/obs/services/internal/DownloadResumableClient$PartResultDown;

    .line 303
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d4

    .line 306
    :cond_e8
    invoke-virtual {v8, v7}, Lcom/obs/services/internal/DownloadResumableClient$DownloadResult;->setPartResults(Ljava/util/List;)V

    if-eqz v14, :cond_f0

    .line 308
    invoke-virtual {v14}, Lcom/obs/services/internal/ProgressManager;->progressEnd()V

    :cond_f0
    return-object v8

    :catchall_f1
    move-exception v0

    goto :goto_100

    :catch_f3
    move-exception v0

    .line 289
    :try_start_f4
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    move-result-object v1

    .line 290
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 291
    throw v0
    :try_end_100
    .catchall {:try_start_f4 .. :try_end_100} :catchall_f1

    :goto_100
    if-eqz v1, :cond_12c

    .line 294
    sget-object v2, Lcom/obs/services/internal/DownloadResumableClient;->log:Lcom/obs/log/ILogger;

    invoke-interface {v2}, Lcom/obs/log/ILogger;->isWarnEnabled()Z

    move-result v3

    if-eqz v3, :cond_12c

    .line 295
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "there are still "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " tasks not started for request : "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/obs/log/ILogger;->warn(Ljava/lang/CharSequence;)V

    .line 299
    :cond_12c
    throw v0
.end method

.method private downloadCheckPoint(Lcom/obs/services/model/DownloadFileRequest;)Lcom/obs/services/model/DownloadFileResult;
    .registers 15

    .line 88
    invoke-direct {p0, p1}, Lcom/obs/services/internal/DownloadResumableClient;->getObjectMetadata(Lcom/obs/services/model/DownloadFileRequest;)Lcom/obs/services/model/ObjectMetadata;

    move-result-object v0

    .line 90
    new-instance v1, Lcom/obs/services/model/DownloadFileResult;

    invoke-direct {v1}, Lcom/obs/services/model/DownloadFileResult;-><init>()V

    .line 91
    invoke-virtual {v1, v0}, Lcom/obs/services/model/DownloadFileResult;->setObjectMetadata(Lcom/obs/services/model/ObjectMetadata;)V

    .line 93
    invoke-virtual {v0}, Lcom/obs/services/model/ObjectMetadata;->getContentLength()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_6f

    .line 94
    invoke-virtual {p1}, Lcom/obs/services/model/DownloadFileRequest;->getTempDownloadFile()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->deleteFileIgnoreException(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p1}, Lcom/obs/services/model/DownloadFileRequest;->getCheckpointFile()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->deleteFileIgnoreException(Ljava/lang/String;)V

    .line 97
    new-instance p0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/obs/services/model/DownloadFileRequest;->getDownloadFile()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_48

    .line 99
    sget-object v0, Lcom/obs/services/internal/DownloadResumableClient;->log:Lcom/obs/log/ILogger;

    invoke-interface {v0}, Lcom/obs/log/ILogger;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 100
    const-string v2, "create parent directory failed."

    invoke-interface {v0, v2}, Lcom/obs/log/ILogger;->warn(Ljava/lang/CharSequence;)V

    .line 103
    :cond_48
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v0, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 104
    invoke-virtual {p1}, Lcom/obs/services/model/DownloadFileRequest;->getProgressListener()Lcom/obs/services/model/ProgressListener;

    move-result-object p0

    if-eqz p0, :cond_108

    .line 105
    invoke-virtual {p1}, Lcom/obs/services/model/DownloadFileRequest;->getProgressListener()Lcom/obs/services/model/ProgressListener;

    move-result-object p0

    new-instance v2, Lcom/obs/services/internal/DefaultProgressStatus;

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    invoke-direct/range {v2 .. v12}, Lcom/obs/services/internal/DefaultProgressStatus;-><init>(JJJJJ)V

    invoke-interface {p0, v2}, Lcom/obs/services/model/ProgressListener;->progressChanged(Lcom/obs/services/model/ProgressStatus;)V

    return-object v1

    .line 110
    :cond_6f
    new-instance v2, Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;

    invoke-direct {v2}, Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;-><init>()V

    .line 111
    invoke-virtual {p1}, Lcom/obs/services/model/DownloadFileRequest;->isEnableCheckpoint()Z

    move-result v3

    if-eqz v3, :cond_e6

    const/4 v3, 0x1

    .line 114
    :try_start_7b
    invoke-virtual {p1}, Lcom/obs/services/model/DownloadFileRequest;->getCheckpointFile()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;->load(Ljava/lang/String;)V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_82} :catch_84

    const/4 v4, 0x0

    goto :goto_85

    :catch_84
    move v4, v3

    :goto_85
    if-nez v4, :cond_cf

    .line 119
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v2, Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;->bucketName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d0

    .line 120
    invoke-virtual {p1}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v2, Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;->objectKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d0

    .line 121
    invoke-virtual {p1}, Lcom/obs/services/model/DownloadFileRequest;->getDownloadFile()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v2, Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;->downloadFile:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ac

    goto :goto_d0

    .line 123
    :cond_ac
    invoke-virtual {p1}, Lcom/obs/services/model/DownloadFileRequest;->getTempDownloadFile()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v0}, Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;->isValid(Ljava/lang/String;Lcom/obs/services/model/ObjectMetadata;)Z

    move-result v5

    if-nez v5, :cond_b7

    goto :goto_d0

    .line 125
    :cond_b7
    invoke-virtual {p1}, Lcom/obs/services/model/DownloadFileRequest;->getVersionId()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_c2

    .line 126
    iget-object v5, v2, Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;->versionId:Ljava/lang/String;

    if-eqz v5, :cond_cf

    goto :goto_d0

    .line 129
    :cond_c2
    invoke-virtual {p1}, Lcom/obs/services/model/DownloadFileRequest;->getVersionId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v2, Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;->versionId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_cf

    goto :goto_d0

    :cond_cf
    move v3, v4

    :cond_d0
    :goto_d0
    if-eqz v3, :cond_e9

    .line 134
    iget-object v3, v2, Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;->tmpFileStatus:Lcom/obs/services/internal/DownloadResumableClient$TmpFileStatus;

    if-eqz v3, :cond_db

    .line 135
    iget-object v3, v3, Lcom/obs/services/internal/DownloadResumableClient$TmpFileStatus;->tmpFilePath:Ljava/lang/String;

    invoke-static {v3}, Lcom/obs/services/internal/utils/ServiceUtils;->deleteFileIgnoreException(Ljava/lang/String;)V

    .line 138
    :cond_db
    invoke-virtual {p1}, Lcom/obs/services/model/DownloadFileRequest;->getCheckpointFile()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/obs/services/internal/utils/ServiceUtils;->deleteFileIgnoreException(Ljava/lang/String;)V

    .line 140
    invoke-direct {p0, p1, v2, v0}, Lcom/obs/services/internal/DownloadResumableClient;->prepare(Lcom/obs/services/model/DownloadFileRequest;Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;Lcom/obs/services/model/ObjectMetadata;)V

    goto :goto_e9

    .line 143
    :cond_e6
    invoke-direct {p0, p1, v2, v0}, Lcom/obs/services/internal/DownloadResumableClient;->prepare(Lcom/obs/services/model/DownloadFileRequest;Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;Lcom/obs/services/model/ObjectMetadata;)V

    .line 147
    :cond_e9
    :goto_e9
    invoke-direct {p0, v2, p1}, Lcom/obs/services/internal/DownloadResumableClient;->download(Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;Lcom/obs/services/model/DownloadFileRequest;)Lcom/obs/services/internal/DownloadResumableClient$DownloadResult;

    move-result-object v0

    .line 148
    invoke-direct {p0, p1, v2, v0}, Lcom/obs/services/internal/DownloadResumableClient;->checkDownloadResult(Lcom/obs/services/model/DownloadFileRequest;Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;Lcom/obs/services/internal/DownloadResumableClient$DownloadResult;)V

    .line 151
    invoke-virtual {p1}, Lcom/obs/services/model/DownloadFileRequest;->getTempDownloadFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/obs/services/model/DownloadFileRequest;->getDownloadFile()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/obs/services/internal/DownloadResumableClient;->renameTo(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-virtual {p1}, Lcom/obs/services/model/DownloadFileRequest;->isEnableCheckpoint()Z

    move-result p0

    if-eqz p0, :cond_108

    .line 155
    invoke-virtual {p1}, Lcom/obs/services/model/DownloadFileRequest;->getCheckpointFile()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->deleteFileIgnoreException(Ljava/lang/String;)V

    :cond_108
    return-object v1
.end method

.method private getObjectMetadata(Lcom/obs/services/model/DownloadFileRequest;)Lcom/obs/services/model/ObjectMetadata;
    .registers 6

    .line 179
    :try_start_0
    new-instance v0, Lcom/obs/services/model/GetObjectMetadataRequest;

    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    .line 180
    invoke-virtual {p1}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/obs/services/model/DownloadFileRequest;->getVersionId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/obs/services/model/GetObjectMetadataRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->isRequesterPays()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/obs/services/model/GenericRequest;->setRequesterPays(Z)V

    .line 182
    invoke-virtual {p1}, Lcom/obs/services/model/BaseObjectRequest;->isEncodeHeaders()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/obs/services/model/BaseObjectRequest;->setIsEncodeHeaders(Z)V

    .line 183
    iget-object p0, p0, Lcom/obs/services/internal/DownloadResumableClient;->obsClient:Lcom/obs/services/AbstractClient;

    invoke-interface {p0, v0}, Lcom/obs/services/IObsClient;->getObjectMetadata(Lcom/obs/services/model/GetObjectMetadataRequest;)Lcom/obs/services/model/ObjectMetadata;

    move-result-object p0
    :try_end_25
    .catch Lcom/obs/services/exception/ObsException; {:try_start_0 .. :try_end_25} :catch_26

    return-object p0

    :catch_26
    move-exception p0

    .line 185
    invoke-virtual {p0}, Lcom/obs/services/exception/ObsException;->getResponseCode()I

    move-result v0

    const/16 v1, 0x12c

    if-lt v0, v1, :cond_4d

    invoke-virtual {p0}, Lcom/obs/services/exception/ObsException;->getResponseCode()I

    move-result v0

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_4d

    invoke-virtual {p0}, Lcom/obs/services/exception/ObsException;->getResponseCode()I

    move-result v0

    const/16 v1, 0x198

    if-eq v0, v1, :cond_4d

    .line 186
    invoke-virtual {p1}, Lcom/obs/services/model/DownloadFileRequest;->getTempDownloadFile()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/obs/services/internal/utils/ServiceUtils;->deleteFileIgnoreException(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p1}, Lcom/obs/services/model/DownloadFileRequest;->getCheckpointFile()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/obs/services/internal/utils/ServiceUtils;->deleteFileIgnoreException(Ljava/lang/String;)V

    .line 189
    :cond_4d
    throw p0
.end method

.method private prepare(Lcom/obs/services/model/DownloadFileRequest;Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;Lcom/obs/services/model/ObjectMetadata;)V
    .registers 9

    .line 478
    const-string v0, "close failed."

    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;->bucketName:Ljava/lang/String;

    .line 479
    invoke-virtual {p1}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;->objectKey:Ljava/lang/String;

    .line 480
    invoke-virtual {p1}, Lcom/obs/services/model/DownloadFileRequest;->getVersionId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;->versionId:Ljava/lang/String;

    .line 481
    invoke-virtual {p1}, Lcom/obs/services/model/DownloadFileRequest;->getDownloadFile()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;->downloadFile:Ljava/lang/String;

    .line 482
    new-instance v1, Lcom/obs/services/internal/DownloadResumableClient$ObjectStatus;

    invoke-direct {v1}, Lcom/obs/services/internal/DownloadResumableClient$ObjectStatus;-><init>()V

    .line 483
    invoke-virtual {p3}, Lcom/obs/services/model/ObjectMetadata;->getContentLength()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/obs/services/internal/DownloadResumableClient$ObjectStatus;->size:J

    .line 484
    invoke-virtual {p3}, Lcom/obs/services/model/ObjectMetadata;->getLastModified()Ljava/util/Date;

    move-result-object v2

    iput-object v2, v1, Lcom/obs/services/internal/DownloadResumableClient$ObjectStatus;->lastModified:Ljava/util/Date;

    .line 485
    invoke-virtual {p3}, Lcom/obs/services/model/ObjectMetadata;->getEtag()Ljava/lang/String;

    move-result-object p3

    iput-object p3, v1, Lcom/obs/services/internal/DownloadResumableClient$ObjectStatus;->etag:Ljava/lang/String;

    .line 486
    iput-object v1, p2, Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;->objectStatus:Lcom/obs/services/internal/DownloadResumableClient$ObjectStatus;

    .line 487
    iget-wide v1, v1, Lcom/obs/services/internal/DownloadResumableClient$ObjectStatus;->size:J

    .line 488
    invoke-virtual {p1}, Lcom/obs/services/model/DownloadFileRequest;->getPartSize()J

    move-result-wide v3

    .line 487
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/obs/services/internal/DownloadResumableClient;->splitObject(JJ)Ljava/util/ArrayList;

    move-result-object p0

    iput-object p0, p2, Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;->downloadParts:Ljava/util/ArrayList;

    .line 489
    new-instance p0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/obs/services/model/DownloadFileRequest;->getTempDownloadFile()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 490
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p3

    if-eqz p3, :cond_69

    .line 491
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/File;->mkdirs()Z

    move-result p3

    if-nez p3, :cond_69

    .line 492
    sget-object p3, Lcom/obs/services/internal/DownloadResumableClient;->log:Lcom/obs/log/ILogger;

    invoke-interface {p3}, Lcom/obs/log/ILogger;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_69

    .line 493
    const-string v1, "create parent directory for tempfile failed."

    invoke-interface {p3, v1}, Lcom/obs/log/ILogger;->warn(Ljava/lang/CharSequence;)V

    :cond_69
    const/4 p3, 0x0

    .line 499
    :try_start_6a
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_71
    .catchall {:try_start_6a .. :try_end_71} :catchall_b9

    .line 500
    :try_start_71
    iget-object p3, p2, Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;->objectStatus:Lcom/obs/services/internal/DownloadResumableClient$ObjectStatus;

    iget-wide v2, p3, Lcom/obs/services/internal/DownloadResumableClient$ObjectStatus;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_78
    .catchall {:try_start_71 .. :try_end_78} :catchall_b6

    .line 504
    :try_start_78
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_7c

    goto :goto_8a

    :catch_7c
    move-exception p3

    .line 506
    sget-object v1, Lcom/obs/services/internal/DownloadResumableClient;->log:Lcom/obs/log/ILogger;

    invoke-interface {v1}, Lcom/obs/log/ILogger;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 507
    sget-object v1, Lcom/obs/services/internal/DownloadResumableClient;->log:Lcom/obs/log/ILogger;

    invoke-interface {v1, v0, p3}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 512
    :cond_8a
    :goto_8a
    new-instance p3, Lcom/obs/services/internal/DownloadResumableClient$TmpFileStatus;

    iget-object v0, p2, Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;->objectStatus:Lcom/obs/services/internal/DownloadResumableClient$ObjectStatus;

    iget-wide v0, v0, Lcom/obs/services/internal/DownloadResumableClient$ObjectStatus;->size:J

    new-instance v2, Ljava/util/Date;

    .line 513
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1}, Lcom/obs/services/model/DownloadFileRequest;->getTempDownloadFile()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p3, v0, v1, v2, v3}, Lcom/obs/services/internal/DownloadResumableClient$TmpFileStatus;-><init>(JLjava/util/Date;Ljava/lang/String;)V

    iput-object p3, p2, Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;->tmpFileStatus:Lcom/obs/services/internal/DownloadResumableClient$TmpFileStatus;

    .line 515
    invoke-virtual {p1}, Lcom/obs/services/model/DownloadFileRequest;->isEnableCheckpoint()Z

    move-result p3

    if-eqz p3, :cond_b5

    .line 517
    :try_start_a8
    invoke-virtual {p1}, Lcom/obs/services/model/DownloadFileRequest;->getCheckpointFile()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;->record(Ljava/lang/String;)V
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_af} :catch_b0

    goto :goto_b5

    :catch_b0
    move-exception p1

    .line 519
    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->deleteFileIgnoreException(Ljava/io/File;)Z

    .line 520
    throw p1

    :cond_b5
    :goto_b5
    return-void

    :catchall_b6
    move-exception p0

    move-object p3, v1

    goto :goto_ba

    :catchall_b9
    move-exception p0

    :goto_ba
    if-eqz p3, :cond_ce

    .line 504
    :try_start_bc
    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_bf
    .catch Ljava/io/IOException; {:try_start_bc .. :try_end_bf} :catch_c0

    goto :goto_ce

    :catch_c0
    move-exception p1

    .line 506
    sget-object p2, Lcom/obs/services/internal/DownloadResumableClient;->log:Lcom/obs/log/ILogger;

    invoke-interface {p2}, Lcom/obs/log/ILogger;->isWarnEnabled()Z

    move-result p2

    if-eqz p2, :cond_ce

    .line 507
    sget-object p2, Lcom/obs/services/internal/DownloadResumableClient;->log:Lcom/obs/log/ILogger;

    invoke-interface {p2, v0, p1}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 511
    :cond_ce
    :goto_ce
    throw p0
.end method

.method private renameTo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 195
    const-string p0, "close failed."

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 196
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_104

    .line 200
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_3b

    .line 201
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p2

    if-eqz p2, :cond_1f

    goto :goto_3b

    .line 202
    :cond_1f
    new-instance p0, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "downloadFile \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' is exist"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 205
    :cond_3b
    :goto_3b
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p2

    if-nez p2, :cond_fc

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p2

    if-nez p2, :cond_fc

    .line 208
    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p2

    if-nez p2, :cond_fb

    const/4 p2, 0x0

    .line 213
    :try_start_4e
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_53
    .catchall {:try_start_4e .. :try_end_53} :catchall_d0

    .line 214
    :try_start_53
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_58
    .catchall {:try_start_53 .. :try_end_58} :catchall_cd

    const/16 p1, 0x2000

    .line 215
    :try_start_5a
    new-array p1, p1, [B

    .line 217
    :goto_5c
    invoke-virtual {v1, p1}, Ljava/io/InputStream;->read([B)I

    move-result p2

    if-lez p2, :cond_6a

    const/4 v3, 0x0

    .line 218
    invoke-virtual {v2, p1, v3, p2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_66
    .catchall {:try_start_5a .. :try_end_66} :catchall_67

    goto :goto_5c

    :catchall_67
    move-exception p1

    :goto_68
    move-object p2, v1

    goto :goto_d2

    .line 223
    :cond_6a
    :try_start_6a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_6e

    goto :goto_7c

    :catch_6e
    move-exception p1

    .line 225
    sget-object p2, Lcom/obs/services/internal/DownloadResumableClient;->log:Lcom/obs/log/ILogger;

    invoke-interface {p2}, Lcom/obs/log/ILogger;->isWarnEnabled()Z

    move-result p2

    if-eqz p2, :cond_7c

    .line 226
    sget-object p2, Lcom/obs/services/internal/DownloadResumableClient;->log:Lcom/obs/log/ILogger;

    invoke-interface {p2, p0, p1}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 233
    :cond_7c
    :goto_7c
    :try_start_7c
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_7f} :catch_80

    goto :goto_8e

    :catch_80
    move-exception p1

    .line 235
    sget-object p2, Lcom/obs/services/internal/DownloadResumableClient;->log:Lcom/obs/log/ILogger;

    invoke-interface {p2}, Lcom/obs/log/ILogger;->isWarnEnabled()Z

    move-result p2

    if-eqz p2, :cond_8e

    .line 236
    sget-object p2, Lcom/obs/services/internal/DownloadResumableClient;->log:Lcom/obs/log/ILogger;

    invoke-interface {p2, p0, p1}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 241
    :cond_8e
    :goto_8e
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_fb

    .line 242
    sget-object p0, Lcom/obs/services/internal/DownloadResumableClient;->log:Lcom/obs/log/ILogger;

    invoke-interface {p0}, Lcom/obs/log/ILogger;->isErrorEnabled()Z

    move-result p1

    const-string p2, "\' can not delete, please delete it to ensure the download finish."

    const-string v1, "the tmpfile \'"

    if-eqz p1, :cond_b5

    .line 243
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/obs/log/ILogger;->error(Ljava/lang/CharSequence;)V

    .line 246
    :cond_b5
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_cd
    move-exception p1

    move-object v2, p2

    goto :goto_68

    :catchall_d0
    move-exception p1

    move-object v2, p2

    :goto_d2
    if-eqz p2, :cond_e6

    .line 223
    :try_start_d4
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_d7
    .catch Ljava/io/IOException; {:try_start_d4 .. :try_end_d7} :catch_d8

    goto :goto_e6

    :catch_d8
    move-exception p2

    .line 225
    sget-object v0, Lcom/obs/services/internal/DownloadResumableClient;->log:Lcom/obs/log/ILogger;

    invoke-interface {v0}, Lcom/obs/log/ILogger;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_e6

    .line 226
    sget-object v0, Lcom/obs/services/internal/DownloadResumableClient;->log:Lcom/obs/log/ILogger;

    invoke-interface {v0, p0, p2}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_e6
    :goto_e6
    if-eqz v2, :cond_fa

    .line 233
    :try_start_e8
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_eb
    .catch Ljava/io/IOException; {:try_start_e8 .. :try_end_eb} :catch_ec

    goto :goto_fa

    :catch_ec
    move-exception p2

    .line 235
    sget-object v0, Lcom/obs/services/internal/DownloadResumableClient;->log:Lcom/obs/log/ILogger;

    invoke-interface {v0}, Lcom/obs/log/ILogger;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_fa

    .line 236
    sget-object v0, Lcom/obs/services/internal/DownloadResumableClient;->log:Lcom/obs/log/ILogger;

    invoke-interface {v0, p0, p2}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 240
    :cond_fa
    :goto_fa
    throw p1

    :cond_fb
    return-void

    .line 206
    :cond_fc
    new-instance p0, Ljava/io/IOException;

    const-string p1, "downloadPath is a directory"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 198
    :cond_104
    new-instance p0, Ljava/io/FileNotFoundException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "tmpFile \'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\' does not exist"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private splitObject(JJ)Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/ArrayList<",
            "Lcom/obs/services/internal/DownloadResumableClient$DownloadPart;",
            ">;"
        }
    .end annotation

    .line 526
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 528
    div-long v0, p1, p3

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x1

    if-ltz v0, :cond_1d

    .line 530
    rem-long p3, p1, v2

    cmp-long p3, p3, v4

    if-nez p3, :cond_1a

    div-long p3, p1, v2

    goto :goto_1d

    :cond_1a
    div-long p3, p1, v2

    add-long/2addr p3, v6

    :cond_1d
    :goto_1d
    const/4 v0, 0x0

    :goto_1e
    cmp-long v1, v4, p1

    if-gez v1, :cond_3f

    .line 535
    new-instance v1, Lcom/obs/services/internal/DownloadResumableClient$DownloadPart;

    invoke-direct {v1}, Lcom/obs/services/internal/DownloadResumableClient$DownloadPart;-><init>()V

    .line 536
    iput v0, v1, Lcom/obs/services/internal/DownloadResumableClient$DownloadPart;->partNumber:I

    .line 537
    iput-wide v4, v1, Lcom/obs/services/internal/DownloadResumableClient$DownloadPart;->offset:J

    add-long/2addr v4, p3

    cmp-long v2, v4, p1

    if-lez v2, :cond_35

    sub-long v2, p1, v6

    .line 539
    iput-wide v2, v1, Lcom/obs/services/internal/DownloadResumableClient$DownloadPart;->end:J

    goto :goto_39

    :cond_35
    sub-long v2, v4, v6

    .line 541
    iput-wide v2, v1, Lcom/obs/services/internal/DownloadResumableClient$DownloadPart;->end:J

    .line 543
    :goto_39
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_3f
    return-object p0
.end method


# virtual methods
.method public downloadFileResume(Lcom/obs/services/model/DownloadFileRequest;)Lcom/obs/services/model/DownloadFileResult;
    .registers 4

    .line 64
    const-string v0, "DownloadFileRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "the bucketName is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v0

    .line 67
    const-string v1, "the objectKey is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1}, Lcom/obs/services/model/DownloadFileRequest;->getDownloadFile()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_20

    .line 70
    invoke-virtual {p1, v0}, Lcom/obs/services/model/DownloadFileRequest;->setDownloadFile(Ljava/lang/String;)V

    .line 72
    :cond_20
    invoke-virtual {p1}, Lcom/obs/services/model/DownloadFileRequest;->isEnableCheckpoint()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 73
    invoke-virtual {p1}, Lcom/obs/services/model/DownloadFileRequest;->getCheckpointFile()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_36

    invoke-virtual {p1}, Lcom/obs/services/model/DownloadFileRequest;->getCheckpointFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 74
    :cond_36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/obs/services/model/DownloadFileRequest;->getDownloadFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".downloadFile_record"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/obs/services/model/DownloadFileRequest;->setCheckpointFile(Ljava/lang/String;)V

    .line 78
    :cond_4e
    :try_start_4e
    invoke-direct {p0, p1}, Lcom/obs/services/internal/DownloadResumableClient;->downloadCheckPoint(Lcom/obs/services/model/DownloadFileRequest;)Lcom/obs/services/model/DownloadFileResult;

    move-result-object p0
    :try_end_52
    .catch Lcom/obs/services/internal/ServiceException; {:try_start_4e .. :try_end_52} :catch_59
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_52} :catch_53

    return-object p0

    :catch_53
    move-exception p0

    .line 82
    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->changeFromException(Ljava/lang/Exception;)Lcom/obs/services/exception/ObsException;

    move-result-object p0

    throw p0

    :catch_59
    move-exception p0

    .line 80
    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->changeFromServiceException(Lcom/obs/services/internal/ServiceException;)Lcom/obs/services/exception/ObsException;

    move-result-object p0

    throw p0
.end method
