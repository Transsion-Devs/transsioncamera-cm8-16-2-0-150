.class Lcom/obs/services/internal/DownloadResumableClient$Task;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/internal/DownloadResumableClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Task"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/obs/services/internal/DownloadResumableClient$PartResultDown;",
        ">;"
    }
.end annotation


# instance fields
.field private downloadCheckPoint:Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;

.field private final downloadFileRequest:Lcom/obs/services/model/DownloadFileRequest;

.field private id:I

.field private name:Ljava/lang/String;

.field private obsClient:Lcom/obs/services/AbstractClient;

.field private partIndex:I

.field private progressManager:Lcom/obs/services/internal/ProgressManager;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;ILcom/obs/services/model/DownloadFileRequest;Lcom/obs/services/AbstractClient;)V
    .registers 7

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_16

    if-eqz p5, :cond_16

    if-eqz p6, :cond_16

    .line 333
    iput p1, p0, Lcom/obs/services/internal/DownloadResumableClient$Task;->id:I

    .line 334
    iput-object p2, p0, Lcom/obs/services/internal/DownloadResumableClient$Task;->name:Ljava/lang/String;

    .line 335
    iput-object p3, p0, Lcom/obs/services/internal/DownloadResumableClient$Task;->downloadCheckPoint:Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;

    .line 336
    iput p4, p0, Lcom/obs/services/internal/DownloadResumableClient$Task;->partIndex:I

    .line 337
    iput-object p5, p0, Lcom/obs/services/internal/DownloadResumableClient$Task;->downloadFileRequest:Lcom/obs/services/model/DownloadFileRequest;

    .line 338
    iput-object p6, p0, Lcom/obs/services/internal/DownloadResumableClient$Task;->obsClient:Lcom/obs/services/AbstractClient;

    return-void

    .line 329
    :cond_16
    # getter for: Lcom/obs/services/internal/DownloadResumableClient;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/DownloadResumableClient;->access$000()Lcom/obs/log/ILogger;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "some parameters is null. { "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " }"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/obs/log/ILogger;->warn(Ljava/lang/CharSequence;)V

    .line 331
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "some parameters is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private createNewGetObjectRequest(Lcom/obs/services/model/DownloadFileRequest;Lcom/obs/services/internal/DownloadResumableClient$DownloadPart;)Lcom/obs/services/model/GetObjectRequest;
    .registers 6

    .line 456
    new-instance p0, Lcom/obs/services/model/GetObjectRequest;

    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 457
    invoke-virtual {p1}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/obs/services/model/DownloadFileRequest;->getVersionId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/obs/services/model/GetObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->isRequesterPays()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/obs/services/model/GenericRequest;->setRequesterPays(Z)V

    .line 460
    invoke-virtual {p1}, Lcom/obs/services/model/DownloadFileRequest;->getIfMatchTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/obs/services/model/GetObjectRequest;->setIfMatchTag(Ljava/lang/String;)V

    .line 461
    invoke-virtual {p1}, Lcom/obs/services/model/DownloadFileRequest;->getIfNoneMatchTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/obs/services/model/GetObjectRequest;->setIfNoneMatchTag(Ljava/lang/String;)V

    .line 462
    invoke-virtual {p1}, Lcom/obs/services/model/DownloadFileRequest;->getIfModifiedSince()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/obs/services/model/GetObjectRequest;->setIfModifiedSince(Ljava/util/Date;)V

    .line 463
    invoke-virtual {p1}, Lcom/obs/services/model/DownloadFileRequest;->getIfUnmodifiedSince()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/obs/services/model/GetObjectRequest;->setIfUnmodifiedSince(Ljava/util/Date;)V

    .line 464
    iget-wide v0, p2, Lcom/obs/services/internal/DownloadResumableClient$DownloadPart;->offset:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/obs/services/model/GetObjectRequest;->setRangeStart(Ljava/lang/Long;)V

    .line 465
    iget-wide v0, p2, Lcom/obs/services/internal/DownloadResumableClient$DownloadPart;->end:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/obs/services/model/GetObjectRequest;->setRangeEnd(Ljava/lang/Long;)V

    .line 466
    invoke-virtual {p1}, Lcom/obs/services/model/DownloadFileRequest;->getCacheOption()Lcom/obs/services/model/CacheOptionEnum;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/obs/services/model/GetObjectRequest;->setCacheOption(Lcom/obs/services/model/CacheOptionEnum;)V

    .line 467
    invoke-virtual {p1}, Lcom/obs/services/model/DownloadFileRequest;->getTtl()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/obs/services/model/GetObjectRequest;->setTtl(J)V

    return-object p0
.end method

.method private finishOneTask(Lcom/obs/services/model/DownloadFileRequest;)V
    .registers 2

    .line 436
    invoke-virtual {p1}, Lcom/obs/services/model/DownloadFileRequest;->getProgressListener()Lcom/obs/services/model/ProgressListener;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 437
    invoke-virtual {p1}, Lcom/obs/services/model/DownloadFileRequest;->getProgressListener()Lcom/obs/services/model/ProgressListener;

    move-result-object p0

    instance-of p0, p0, Lcom/obs/services/model/MonitorableProgressListener;

    if-eqz p0, :cond_17

    .line 438
    invoke-virtual {p1}, Lcom/obs/services/model/DownloadFileRequest;->getProgressListener()Lcom/obs/services/model/ProgressListener;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/MonitorableProgressListener;

    invoke-virtual {p0}, Lcom/obs/services/model/MonitorableProgressListener;->finishOneTask()V

    :cond_17
    return-void
.end method

.method private signPartResultFailed(Lcom/obs/services/internal/DownloadResumableClient$PartResultDown;Ljava/lang/Exception;)V
    .registers 3

    const/4 p0, 0x1

    .line 450
    invoke-virtual {p1, p0}, Lcom/obs/services/internal/DownloadResumableClient$PartResultDown;->setFailed(Z)V

    .line 451
    invoke-virtual {p1, p2}, Lcom/obs/services/internal/DownloadResumableClient$PartResultDown;->setException(Ljava/lang/Exception;)V

    return-void
.end method

.method private startOneTask(Lcom/obs/services/model/DownloadFileRequest;)V
    .registers 2

    .line 443
    invoke-virtual {p1}, Lcom/obs/services/model/DownloadFileRequest;->getProgressListener()Lcom/obs/services/model/ProgressListener;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 444
    invoke-virtual {p1}, Lcom/obs/services/model/DownloadFileRequest;->getProgressListener()Lcom/obs/services/model/ProgressListener;

    move-result-object p0

    instance-of p0, p0, Lcom/obs/services/model/MonitorableProgressListener;

    if-eqz p0, :cond_17

    .line 445
    invoke-virtual {p1}, Lcom/obs/services/model/DownloadFileRequest;->getProgressListener()Lcom/obs/services/model/ProgressListener;

    move-result-object p0

    check-cast p0, Lcom/obs/services/model/MonitorableProgressListener;

    invoke-virtual {p0}, Lcom/obs/services/model/MonitorableProgressListener;->startOneTask()V

    :cond_17
    return-void
.end method


# virtual methods
.method public call()Lcom/obs/services/internal/DownloadResumableClient$PartResultDown;
    .registers 18

    move-object/from16 v1, p0

    .line 343
    const-string v2, "Task %d:%s download part %d failed: "

    const-string v3, "end task : "

    const-string v4, "progressContent close failed."

    const-string v5, "content close failed."

    const-string v6, "output close failed."

    iget-object v0, v1, Lcom/obs/services/internal/DownloadResumableClient$Task;->downloadCheckPoint:Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;

    iget-object v0, v0, Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;->downloadParts:Ljava/util/ArrayList;

    iget v7, v1, Lcom/obs/services/internal/DownloadResumableClient$Task;->partIndex:I

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/obs/services/internal/DownloadResumableClient$DownloadPart;

    .line 344
    new-instance v8, Lcom/obs/services/internal/DownloadResumableClient$PartResultDown;

    iget v0, v1, Lcom/obs/services/internal/DownloadResumableClient$Task;->partIndex:I

    const/4 v14, 0x1

    add-int/lit8 v9, v0, 0x1

    iget-wide v10, v7, Lcom/obs/services/internal/DownloadResumableClient$DownloadPart;->offset:J

    iget-wide v12, v7, Lcom/obs/services/internal/DownloadResumableClient$DownloadPart;->end:J

    invoke-direct/range {v8 .. v13}, Lcom/obs/services/internal/DownloadResumableClient$PartResultDown;-><init>(IJJ)V

    .line 346
    iget-object v0, v1, Lcom/obs/services/internal/DownloadResumableClient$Task;->downloadCheckPoint:Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;

    iget-boolean v0, v0, Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;->isAbort:Z

    if-eqz v0, :cond_31

    .line 347
    invoke-virtual {v8, v14}, Lcom/obs/services/internal/DownloadResumableClient$PartResultDown;->setFailed(Z)V

    return-object v8

    .line 356
    :cond_31
    :try_start_31
    # getter for: Lcom/obs/services/internal/DownloadResumableClient;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/DownloadResumableClient;->access$000()Lcom/obs/log/ILogger;

    move-result-object v0

    invoke-interface {v0}, Lcom/obs/log/ILogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 357
    # getter for: Lcom/obs/services/internal/DownloadResumableClient;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/DownloadResumableClient;->access$000()Lcom/obs/log/ILogger;

    move-result-object v0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "start task : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/obs/services/internal/DownloadResumableClient$DownloadPart;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Lcom/obs/log/ILogger;->debug(Ljava/lang/CharSequence;)V

    goto :goto_6e

    :catchall_58
    move-exception v0

    move-object v2, v0

    const/4 v9, 0x0

    :goto_5b
    const/4 v12, 0x0

    const/16 v16, 0x0

    goto/16 :goto_291

    :catch_60
    move-exception v0

    const/4 v9, 0x0

    :goto_62
    const/4 v12, 0x0

    const/16 v16, 0x0

    goto/16 :goto_179

    :catch_67
    move-exception v0

    const/4 v9, 0x0

    :goto_69
    const/4 v12, 0x0

    const/16 v16, 0x0

    goto/16 :goto_1f9

    .line 361
    :cond_6e
    :goto_6e
    iget-object v0, v1, Lcom/obs/services/internal/DownloadResumableClient$Task;->downloadFileRequest:Lcom/obs/services/model/DownloadFileRequest;

    invoke-direct {v1, v0}, Lcom/obs/services/internal/DownloadResumableClient$Task;->startOneTask(Lcom/obs/services/model/DownloadFileRequest;)V

    .line 363
    new-instance v10, Ljava/io/RandomAccessFile;

    iget-object v0, v1, Lcom/obs/services/internal/DownloadResumableClient$Task;->downloadFileRequest:Lcom/obs/services/model/DownloadFileRequest;

    invoke-virtual {v0}, Lcom/obs/services/model/DownloadFileRequest;->getTempDownloadFile()Ljava/lang/String;

    move-result-object v0

    const-string v11, "rw"

    invoke-direct {v10, v0, v11}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_80
    .catch Lcom/obs/services/exception/ObsException; {:try_start_31 .. :try_end_80} :catch_67
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_80} :catch_60
    .catchall {:try_start_31 .. :try_end_80} :catchall_58

    .line 364
    :try_start_80
    iget-wide v11, v7, Lcom/obs/services/internal/DownloadResumableClient$DownloadPart;->offset:J

    invoke-virtual {v10, v11, v12}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 366
    iget-object v0, v1, Lcom/obs/services/internal/DownloadResumableClient$Task;->downloadFileRequest:Lcom/obs/services/model/DownloadFileRequest;

    invoke-direct {v1, v0, v7}, Lcom/obs/services/internal/DownloadResumableClient$Task;->createNewGetObjectRequest(Lcom/obs/services/model/DownloadFileRequest;Lcom/obs/services/internal/DownloadResumableClient$DownloadPart;)Lcom/obs/services/model/GetObjectRequest;

    move-result-object v0

    .line 367
    iget-object v11, v1, Lcom/obs/services/internal/DownloadResumableClient$Task;->downloadFileRequest:Lcom/obs/services/model/DownloadFileRequest;

    invoke-virtual {v11}, Lcom/obs/services/model/BaseObjectRequest;->isEncodeHeaders()Z

    move-result v11

    invoke-virtual {v0, v11}, Lcom/obs/services/model/GetObjectRequest;->setIsEncodeHeaders(Z)V

    .line 369
    iget-object v11, v1, Lcom/obs/services/internal/DownloadResumableClient$Task;->obsClient:Lcom/obs/services/AbstractClient;

    invoke-interface {v11, v0}, Lcom/obs/services/IObsClient;->getObject(Lcom/obs/services/model/GetObjectRequest;)Lcom/obs/services/model/ObsObject;

    move-result-object v0

    .line 370
    invoke-virtual {v0}, Lcom/obs/services/model/ObsObject;->getObjectContent()Ljava/io/InputStream;

    move-result-object v11
    :try_end_9e
    .catch Lcom/obs/services/exception/ObsException; {:try_start_80 .. :try_end_9e} :catch_175
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_9e} :catch_171
    .catchall {:try_start_80 .. :try_end_9e} :catchall_16c

    const/16 v0, 0x1000

    .line 371
    :try_start_a0
    new-array v0, v0, [B

    .line 373
    iget-object v12, v1, Lcom/obs/services/internal/DownloadResumableClient$Task;->progressManager:Lcom/obs/services/internal/ProgressManager;

    const/4 v13, -0x1

    const/4 v15, 0x0

    if-eqz v12, :cond_e4

    .line 374
    new-instance v12, Lcom/obs/services/internal/io/ProgressInputStream;

    iget-object v9, v1, Lcom/obs/services/internal/DownloadResumableClient$Task;->progressManager:Lcom/obs/services/internal/ProgressManager;

    invoke-direct {v12, v11, v9, v15}, Lcom/obs/services/internal/io/ProgressInputStream;-><init>(Ljava/io/InputStream;Lcom/obs/services/internal/ProgressManager;Z)V
    :try_end_af
    .catch Lcom/obs/services/exception/ObsException; {:try_start_a0 .. :try_end_af} :catch_dd
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_af} :catch_d6
    .catchall {:try_start_a0 .. :try_end_af} :catchall_ce

    .line 375
    :goto_af
    :try_start_af
    invoke-virtual {v12, v0}, Ljava/io/InputStream;->read([B)I

    move-result v9

    if-eq v9, v13, :cond_cc

    .line 376
    invoke-virtual {v10, v0, v15, v9}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_b8
    .catch Lcom/obs/services/exception/ObsException; {:try_start_af .. :try_end_b8} :catch_c6
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_b8} :catch_c0
    .catchall {:try_start_af .. :try_end_b8} :catchall_b9

    goto :goto_af

    :catchall_b9
    move-exception v0

    move-object v2, v0

    :goto_bb
    move-object v9, v10

    move-object/from16 v16, v11

    goto/16 :goto_291

    :catch_c0
    move-exception v0

    :goto_c1
    move-object v9, v10

    move-object/from16 v16, v11

    goto/16 :goto_179

    :catch_c6
    move-exception v0

    :goto_c7
    move-object v9, v10

    move-object/from16 v16, v11

    goto/16 :goto_1f9

    :cond_cc
    move-object v9, v12

    goto :goto_ef

    :catchall_ce
    move-exception v0

    move-object v2, v0

    move-object v9, v10

    move-object/from16 v16, v11

    const/4 v12, 0x0

    goto/16 :goto_291

    :catch_d6
    move-exception v0

    move-object v9, v10

    move-object/from16 v16, v11

    const/4 v12, 0x0

    goto/16 :goto_179

    :catch_dd
    move-exception v0

    move-object v9, v10

    move-object/from16 v16, v11

    const/4 v12, 0x0

    goto/16 :goto_1f9

    .line 379
    :cond_e4
    :goto_e4
    :try_start_e4
    invoke-virtual {v11, v0}, Ljava/io/InputStream;->read([B)I

    move-result v9

    if-eq v9, v13, :cond_ee

    .line 380
    invoke-virtual {v10, v0, v15, v9}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_ed
    .catch Lcom/obs/services/exception/ObsException; {:try_start_e4 .. :try_end_ed} :catch_dd
    .catch Ljava/lang/Exception; {:try_start_e4 .. :try_end_ed} :catch_d6
    .catchall {:try_start_e4 .. :try_end_ed} :catchall_ce

    goto :goto_e4

    :cond_ee
    const/4 v9, 0x0

    .line 383
    :goto_ef
    :try_start_ef
    iget-object v0, v1, Lcom/obs/services/internal/DownloadResumableClient$Task;->downloadCheckPoint:Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;

    iget v12, v1, Lcom/obs/services/internal/DownloadResumableClient$Task;->partIndex:I

    iget-object v13, v1, Lcom/obs/services/internal/DownloadResumableClient$Task;->downloadFileRequest:Lcom/obs/services/model/DownloadFileRequest;

    invoke-virtual {v13}, Lcom/obs/services/model/DownloadFileRequest;->getTempDownloadFile()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v12, v14, v13}, Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;->update(IZLjava/lang/String;)V
    :try_end_fc
    .catch Lcom/obs/services/exception/ObsException; {:try_start_ef .. :try_end_fc} :catch_168
    .catch Ljava/lang/Exception; {:try_start_ef .. :try_end_fc} :catch_164
    .catchall {:try_start_ef .. :try_end_fc} :catchall_15f

    .line 399
    iget-object v0, v1, Lcom/obs/services/internal/DownloadResumableClient$Task;->downloadFileRequest:Lcom/obs/services/model/DownloadFileRequest;

    invoke-direct {v1, v0}, Lcom/obs/services/internal/DownloadResumableClient$Task;->finishOneTask(Lcom/obs/services/model/DownloadFileRequest;)V

    .line 403
    :try_start_101
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_104
    .catch Ljava/io/IOException; {:try_start_101 .. :try_end_104} :catch_105

    goto :goto_10d

    :catch_105
    move-exception v0

    .line 406
    # getter for: Lcom/obs/services/internal/DownloadResumableClient;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/DownloadResumableClient;->access$000()Lcom/obs/log/ILogger;

    move-result-object v2

    invoke-interface {v2, v6, v0}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_10d
    if-eqz v11, :cond_11b

    .line 411
    :try_start_10f
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_112
    .catch Ljava/io/IOException; {:try_start_10f .. :try_end_112} :catch_113

    goto :goto_11b

    :catch_113
    move-exception v0

    .line 414
    # getter for: Lcom/obs/services/internal/DownloadResumableClient;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/DownloadResumableClient;->access$000()Lcom/obs/log/ILogger;

    move-result-object v2

    invoke-interface {v2, v5, v0}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_11b
    :goto_11b
    if-eqz v9, :cond_129

    .line 419
    :try_start_11d
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_120
    .catch Ljava/io/IOException; {:try_start_11d .. :try_end_120} :catch_121

    goto :goto_129

    :catch_121
    move-exception v0

    .line 422
    # getter for: Lcom/obs/services/internal/DownloadResumableClient;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/DownloadResumableClient;->access$000()Lcom/obs/log/ILogger;

    move-result-object v2

    invoke-interface {v2, v4, v0}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 425
    :cond_129
    :goto_129
    # getter for: Lcom/obs/services/internal/DownloadResumableClient;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/DownloadResumableClient;->access$000()Lcom/obs/log/ILogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/obs/log/ILogger;->debug(Ljava/lang/CharSequence;)V

    .line 427
    iget-object v0, v1, Lcom/obs/services/internal/DownloadResumableClient$Task;->downloadFileRequest:Lcom/obs/services/model/DownloadFileRequest;

    invoke-virtual {v0}, Lcom/obs/services/model/DownloadFileRequest;->isEnableCheckpoint()Z

    move-result v0

    if-eqz v0, :cond_290

    .line 428
    :goto_147
    iget-object v0, v1, Lcom/obs/services/internal/DownloadResumableClient$Task;->downloadCheckPoint:Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;

    iget-object v2, v1, Lcom/obs/services/internal/DownloadResumableClient$Task;->downloadFileRequest:Lcom/obs/services/model/DownloadFileRequest;

    invoke-virtual {v2}, Lcom/obs/services/model/DownloadFileRequest;->getTempDownloadFile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;->updateTmpFile(Ljava/lang/String;)V

    .line 429
    iget-object v0, v1, Lcom/obs/services/internal/DownloadResumableClient$Task;->downloadCheckPoint:Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;

    iget-object v1, v1, Lcom/obs/services/internal/DownloadResumableClient$Task;->downloadFileRequest:Lcom/obs/services/model/DownloadFileRequest;

    invoke-virtual {v1}, Lcom/obs/services/model/DownloadFileRequest;->getCheckpointFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;->record(Ljava/lang/String;)V

    goto/16 :goto_290

    :catchall_15f
    move-exception v0

    move-object v2, v0

    move-object v12, v9

    goto/16 :goto_bb

    :catch_164
    move-exception v0

    move-object v12, v9

    goto/16 :goto_c1

    :catch_168
    move-exception v0

    move-object v12, v9

    goto/16 :goto_c7

    :catchall_16c
    move-exception v0

    move-object v2, v0

    move-object v9, v10

    goto/16 :goto_5b

    :catch_171
    move-exception v0

    move-object v9, v10

    goto/16 :goto_62

    :catch_175
    move-exception v0

    move-object v9, v10

    goto/16 :goto_69

    .line 393
    :goto_179
    :try_start_179
    invoke-direct {v1, v8, v0}, Lcom/obs/services/internal/DownloadResumableClient$Task;->signPartResultFailed(Lcom/obs/services/internal/DownloadResumableClient$PartResultDown;Ljava/lang/Exception;)V

    .line 394
    # getter for: Lcom/obs/services/internal/DownloadResumableClient;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/DownloadResumableClient;->access$000()Lcom/obs/log/ILogger;

    move-result-object v10

    invoke-interface {v10}, Lcom/obs/log/ILogger;->isErrorEnabled()Z

    move-result v10

    if-eqz v10, :cond_1aa

    .line 395
    # getter for: Lcom/obs/services/internal/DownloadResumableClient;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/DownloadResumableClient;->access$000()Lcom/obs/log/ILogger;

    move-result-object v10

    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget v13, v1, Lcom/obs/services/internal/DownloadResumableClient$Task;->id:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget-object v14, v1, Lcom/obs/services/internal/DownloadResumableClient$Task;->name:Ljava/lang/String;

    iget v15, v1, Lcom/obs/services/internal/DownloadResumableClient$Task;->partIndex:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    filled-new-array {v13, v14, v15}, [Ljava/lang/Object;

    move-result-object v13

    invoke-static {v11, v2, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10, v2, v0}, Lcom/obs/log/ILogger;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_1a5
    .catchall {:try_start_179 .. :try_end_1a5} :catchall_1a6

    goto :goto_1aa

    :catchall_1a6
    move-exception v0

    move-object v2, v0

    goto/16 :goto_291

    .line 399
    :cond_1aa
    :goto_1aa
    iget-object v0, v1, Lcom/obs/services/internal/DownloadResumableClient$Task;->downloadFileRequest:Lcom/obs/services/model/DownloadFileRequest;

    invoke-direct {v1, v0}, Lcom/obs/services/internal/DownloadResumableClient$Task;->finishOneTask(Lcom/obs/services/model/DownloadFileRequest;)V

    if-eqz v9, :cond_1bd

    .line 403
    :try_start_1b1
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1b4
    .catch Ljava/io/IOException; {:try_start_1b1 .. :try_end_1b4} :catch_1b5

    goto :goto_1bd

    :catch_1b5
    move-exception v0

    .line 406
    # getter for: Lcom/obs/services/internal/DownloadResumableClient;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/DownloadResumableClient;->access$000()Lcom/obs/log/ILogger;

    move-result-object v2

    invoke-interface {v2, v6, v0}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_1bd
    :goto_1bd
    if-eqz v16, :cond_1cb

    .line 411
    :try_start_1bf
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_1c2
    .catch Ljava/io/IOException; {:try_start_1bf .. :try_end_1c2} :catch_1c3

    goto :goto_1cb

    :catch_1c3
    move-exception v0

    .line 414
    # getter for: Lcom/obs/services/internal/DownloadResumableClient;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/DownloadResumableClient;->access$000()Lcom/obs/log/ILogger;

    move-result-object v2

    invoke-interface {v2, v5, v0}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_1cb
    :goto_1cb
    if-eqz v12, :cond_1d9

    .line 419
    :try_start_1cd
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_1d0
    .catch Ljava/io/IOException; {:try_start_1cd .. :try_end_1d0} :catch_1d1

    goto :goto_1d9

    :catch_1d1
    move-exception v0

    .line 422
    # getter for: Lcom/obs/services/internal/DownloadResumableClient;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/DownloadResumableClient;->access$000()Lcom/obs/log/ILogger;

    move-result-object v2

    invoke-interface {v2, v4, v0}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 425
    :cond_1d9
    :goto_1d9
    # getter for: Lcom/obs/services/internal/DownloadResumableClient;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/DownloadResumableClient;->access$000()Lcom/obs/log/ILogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/obs/log/ILogger;->debug(Ljava/lang/CharSequence;)V

    .line 427
    iget-object v0, v1, Lcom/obs/services/internal/DownloadResumableClient$Task;->downloadFileRequest:Lcom/obs/services/model/DownloadFileRequest;

    invoke-virtual {v0}, Lcom/obs/services/model/DownloadFileRequest;->isEnableCheckpoint()Z

    move-result v0

    if-eqz v0, :cond_290

    goto/16 :goto_147

    .line 385
    :goto_1f9
    :try_start_1f9
    invoke-virtual {v0}, Lcom/obs/services/exception/ObsException;->getResponseCode()I

    move-result v10

    const/16 v11, 0x12c

    if-lt v10, v11, :cond_215

    invoke-virtual {v0}, Lcom/obs/services/exception/ObsException;->getResponseCode()I

    move-result v10

    const/16 v11, 0x1f4

    if-ge v10, v11, :cond_215

    invoke-virtual {v0}, Lcom/obs/services/exception/ObsException;->getResponseCode()I

    move-result v10

    const/16 v11, 0x198

    if-eq v10, v11, :cond_215

    .line 386
    iget-object v10, v1, Lcom/obs/services/internal/DownloadResumableClient$Task;->downloadCheckPoint:Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;

    iput-boolean v14, v10, Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;->isAbort:Z

    .line 388
    :cond_215
    invoke-direct {v1, v8, v0}, Lcom/obs/services/internal/DownloadResumableClient$Task;->signPartResultFailed(Lcom/obs/services/internal/DownloadResumableClient$PartResultDown;Ljava/lang/Exception;)V

    .line 389
    # getter for: Lcom/obs/services/internal/DownloadResumableClient;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/DownloadResumableClient;->access$000()Lcom/obs/log/ILogger;

    move-result-object v10

    invoke-interface {v10}, Lcom/obs/log/ILogger;->isErrorEnabled()Z

    move-result v10

    if-eqz v10, :cond_241

    .line 390
    # getter for: Lcom/obs/services/internal/DownloadResumableClient;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/DownloadResumableClient;->access$000()Lcom/obs/log/ILogger;

    move-result-object v10

    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget v13, v1, Lcom/obs/services/internal/DownloadResumableClient$Task;->id:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget-object v14, v1, Lcom/obs/services/internal/DownloadResumableClient$Task;->name:Ljava/lang/String;

    iget v15, v1, Lcom/obs/services/internal/DownloadResumableClient$Task;->partIndex:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    filled-new-array {v13, v14, v15}, [Ljava/lang/Object;

    move-result-object v13

    invoke-static {v11, v2, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10, v2, v0}, Lcom/obs/log/ILogger;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_241
    .catchall {:try_start_1f9 .. :try_end_241} :catchall_1a6

    .line 399
    :cond_241
    iget-object v0, v1, Lcom/obs/services/internal/DownloadResumableClient$Task;->downloadFileRequest:Lcom/obs/services/model/DownloadFileRequest;

    invoke-direct {v1, v0}, Lcom/obs/services/internal/DownloadResumableClient$Task;->finishOneTask(Lcom/obs/services/model/DownloadFileRequest;)V

    if-eqz v9, :cond_254

    .line 403
    :try_start_248
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_24b
    .catch Ljava/io/IOException; {:try_start_248 .. :try_end_24b} :catch_24c

    goto :goto_254

    :catch_24c
    move-exception v0

    .line 406
    # getter for: Lcom/obs/services/internal/DownloadResumableClient;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/DownloadResumableClient;->access$000()Lcom/obs/log/ILogger;

    move-result-object v2

    invoke-interface {v2, v6, v0}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_254
    :goto_254
    if-eqz v16, :cond_262

    .line 411
    :try_start_256
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_259
    .catch Ljava/io/IOException; {:try_start_256 .. :try_end_259} :catch_25a

    goto :goto_262

    :catch_25a
    move-exception v0

    .line 414
    # getter for: Lcom/obs/services/internal/DownloadResumableClient;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/DownloadResumableClient;->access$000()Lcom/obs/log/ILogger;

    move-result-object v2

    invoke-interface {v2, v5, v0}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_262
    :goto_262
    if-eqz v12, :cond_270

    .line 419
    :try_start_264
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_267
    .catch Ljava/io/IOException; {:try_start_264 .. :try_end_267} :catch_268

    goto :goto_270

    :catch_268
    move-exception v0

    .line 422
    # getter for: Lcom/obs/services/internal/DownloadResumableClient;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/DownloadResumableClient;->access$000()Lcom/obs/log/ILogger;

    move-result-object v2

    invoke-interface {v2, v4, v0}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 425
    :cond_270
    :goto_270
    # getter for: Lcom/obs/services/internal/DownloadResumableClient;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/DownloadResumableClient;->access$000()Lcom/obs/log/ILogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/obs/log/ILogger;->debug(Ljava/lang/CharSequence;)V

    .line 427
    iget-object v0, v1, Lcom/obs/services/internal/DownloadResumableClient$Task;->downloadFileRequest:Lcom/obs/services/model/DownloadFileRequest;

    invoke-virtual {v0}, Lcom/obs/services/model/DownloadFileRequest;->isEnableCheckpoint()Z

    move-result v0

    if-eqz v0, :cond_290

    goto/16 :goto_147

    :cond_290
    :goto_290
    return-object v8

    .line 399
    :goto_291
    iget-object v0, v1, Lcom/obs/services/internal/DownloadResumableClient$Task;->downloadFileRequest:Lcom/obs/services/model/DownloadFileRequest;

    invoke-direct {v1, v0}, Lcom/obs/services/internal/DownloadResumableClient$Task;->finishOneTask(Lcom/obs/services/model/DownloadFileRequest;)V

    if-eqz v9, :cond_2a4

    .line 403
    :try_start_298
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_29b
    .catch Ljava/io/IOException; {:try_start_298 .. :try_end_29b} :catch_29c

    goto :goto_2a4

    :catch_29c
    move-exception v0

    .line 406
    # getter for: Lcom/obs/services/internal/DownloadResumableClient;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/DownloadResumableClient;->access$000()Lcom/obs/log/ILogger;

    move-result-object v8

    invoke-interface {v8, v6, v0}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_2a4
    :goto_2a4
    if-eqz v16, :cond_2b2

    .line 411
    :try_start_2a6
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_2a9
    .catch Ljava/io/IOException; {:try_start_2a6 .. :try_end_2a9} :catch_2aa

    goto :goto_2b2

    :catch_2aa
    move-exception v0

    .line 414
    # getter for: Lcom/obs/services/internal/DownloadResumableClient;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/DownloadResumableClient;->access$000()Lcom/obs/log/ILogger;

    move-result-object v6

    invoke-interface {v6, v5, v0}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_2b2
    :goto_2b2
    if-eqz v12, :cond_2c0

    .line 419
    :try_start_2b4
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_2b7
    .catch Ljava/io/IOException; {:try_start_2b4 .. :try_end_2b7} :catch_2b8

    goto :goto_2c0

    :catch_2b8
    move-exception v0

    .line 422
    # getter for: Lcom/obs/services/internal/DownloadResumableClient;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/DownloadResumableClient;->access$000()Lcom/obs/log/ILogger;

    move-result-object v5

    invoke-interface {v5, v4, v0}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 425
    :cond_2c0
    :goto_2c0
    # getter for: Lcom/obs/services/internal/DownloadResumableClient;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/DownloadResumableClient;->access$000()Lcom/obs/log/ILogger;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/obs/log/ILogger;->debug(Ljava/lang/CharSequence;)V

    .line 427
    iget-object v0, v1, Lcom/obs/services/internal/DownloadResumableClient$Task;->downloadFileRequest:Lcom/obs/services/model/DownloadFileRequest;

    invoke-virtual {v0}, Lcom/obs/services/model/DownloadFileRequest;->isEnableCheckpoint()Z

    move-result v0

    if-eqz v0, :cond_2f4

    .line 428
    iget-object v0, v1, Lcom/obs/services/internal/DownloadResumableClient$Task;->downloadCheckPoint:Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;

    iget-object v3, v1, Lcom/obs/services/internal/DownloadResumableClient$Task;->downloadFileRequest:Lcom/obs/services/model/DownloadFileRequest;

    invoke-virtual {v3}, Lcom/obs/services/model/DownloadFileRequest;->getTempDownloadFile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;->updateTmpFile(Ljava/lang/String;)V

    .line 429
    iget-object v0, v1, Lcom/obs/services/internal/DownloadResumableClient$Task;->downloadCheckPoint:Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;

    iget-object v1, v1, Lcom/obs/services/internal/DownloadResumableClient$Task;->downloadFileRequest:Lcom/obs/services/model/DownloadFileRequest;

    invoke-virtual {v1}, Lcom/obs/services/model/DownloadFileRequest;->getCheckpointFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/obs/services/internal/DownloadResumableClient$DownloadCheckPoint;->record(Ljava/lang/String;)V

    .line 431
    :cond_2f4
    throw v2
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 1

    .line 314
    invoke-virtual {p0}, Lcom/obs/services/internal/DownloadResumableClient$Task;->call()Lcom/obs/services/internal/DownloadResumableClient$PartResultDown;

    move-result-object p0

    return-object p0
.end method

.method public setProgressManager(Lcom/obs/services/internal/ProgressManager;)V
    .registers 2

    .line 472
    iput-object p1, p0, Lcom/obs/services/internal/DownloadResumableClient$Task;->progressManager:Lcom/obs/services/internal/ProgressManager;

    return-void
.end method
