.class Lcom/obs/services/internal/UploadResumableClient$Mission;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/internal/UploadResumableClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Mission"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/obs/services/internal/UploadResumableClient$PartResult;",
        ">;"
    }
.end annotation


# instance fields
.field private id:I

.field private obsClient:Lcom/obs/services/AbstractClient;

.field private partIndex:I

.field private progressManager:Lcom/obs/services/internal/ProgressManager;

.field private uploadCheckPoint:Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;

.field private uploadFileRequest:Lcom/obs/services/model/UploadFileRequest;


# direct methods
.method public constructor <init>(ILcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;ILcom/obs/services/model/UploadFileRequest;Lcom/obs/services/AbstractClient;)V
    .registers 6

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    iput p1, p0, Lcom/obs/services/internal/UploadResumableClient$Mission;->id:I

    .line 270
    iput-object p2, p0, Lcom/obs/services/internal/UploadResumableClient$Mission;->uploadCheckPoint:Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;

    .line 271
    iput p3, p0, Lcom/obs/services/internal/UploadResumableClient$Mission;->partIndex:I

    .line 272
    iput-object p4, p0, Lcom/obs/services/internal/UploadResumableClient$Mission;->uploadFileRequest:Lcom/obs/services/model/UploadFileRequest;

    .line 273
    iput-object p5, p0, Lcom/obs/services/internal/UploadResumableClient$Mission;->obsClient:Lcom/obs/services/AbstractClient;

    return-void
.end method


# virtual methods
.method public call()Lcom/obs/services/internal/UploadResumableClient$PartResult;
    .registers 15

    .line 278
    const-string v1, "upload"

    const-string v2, "Task %d:%s upload part %d failed: "

    .line 279
    iget-object v0, p0, Lcom/obs/services/internal/UploadResumableClient$Mission;->uploadCheckPoint:Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;

    iget-object v0, v0, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;->uploadParts:Ljava/util/ArrayList;

    iget v3, p0, Lcom/obs/services/internal/UploadResumableClient$Mission;->partIndex:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/obs/services/internal/UploadResumableClient$UploadPart;

    .line 280
    new-instance v3, Lcom/obs/services/internal/UploadResumableClient$PartResult;

    iget v4, p0, Lcom/obs/services/internal/UploadResumableClient$Mission;->partIndex:I

    const/4 v9, 0x1

    add-int/2addr v4, v9

    iget-wide v5, v0, Lcom/obs/services/internal/UploadResumableClient$UploadPart;->offset:J

    iget-wide v7, v0, Lcom/obs/services/internal/UploadResumableClient$UploadPart;->size:J

    invoke-direct/range {v3 .. v8}, Lcom/obs/services/internal/UploadResumableClient$PartResult;-><init>(IJJ)V

    .line 281
    iget-object v4, p0, Lcom/obs/services/internal/UploadResumableClient$Mission;->uploadCheckPoint:Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;

    iget-boolean v4, v4, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;->isAbort:Z

    if-nez v4, :cond_1bc

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 284
    :try_start_25
    new-instance v6, Lcom/obs/services/model/UploadPartRequest;

    invoke-direct {v6}, Lcom/obs/services/model/UploadPartRequest;-><init>()V

    .line 285
    iget-object v7, p0, Lcom/obs/services/internal/UploadResumableClient$Mission;->uploadFileRequest:Lcom/obs/services/model/UploadFileRequest;

    invoke-virtual {v7}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/obs/services/model/GenericRequest;->setBucketName(Ljava/lang/String;)V

    .line 286
    iget-object v7, p0, Lcom/obs/services/internal/UploadResumableClient$Mission;->uploadFileRequest:Lcom/obs/services/model/UploadFileRequest;

    invoke-virtual {v7}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/obs/services/model/BaseObjectRequest;->setObjectKey(Ljava/lang/String;)V

    .line 287
    iget-object v7, p0, Lcom/obs/services/internal/UploadResumableClient$Mission;->uploadCheckPoint:Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;

    iget-object v7, v7, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;->uploadID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/obs/services/model/AbstractMultipartRequest;->setUploadId(Ljava/lang/String;)V

    .line 288
    iget-wide v7, v0, Lcom/obs/services/internal/UploadResumableClient$UploadPart;->size:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/obs/services/model/UploadPartRequest;->setPartSize(Ljava/lang/Long;)V

    .line 289
    iget v7, v0, Lcom/obs/services/internal/UploadResumableClient$UploadPart;->partNumber:I

    invoke-virtual {v6, v7}, Lcom/obs/services/model/UploadPartRequest;->setPartNumber(I)V

    .line 290
    iget-object v7, p0, Lcom/obs/services/internal/UploadResumableClient$Mission;->uploadFileRequest:Lcom/obs/services/model/UploadFileRequest;

    invoke-virtual {v7}, Lcom/obs/services/model/GenericRequest;->isRequesterPays()Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/obs/services/model/GenericRequest;->setRequesterPays(Z)V

    .line 291
    iget-object v7, p0, Lcom/obs/services/internal/UploadResumableClient$Mission;->uploadFileRequest:Lcom/obs/services/model/UploadFileRequest;

    invoke-virtual {v7}, Lcom/obs/services/model/GenericRequest;->getUserHeaders()Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/obs/services/model/GenericRequest;->setUserHeaders(Ljava/util/HashMap;)V

    .line 293
    iget-object v7, p0, Lcom/obs/services/internal/UploadResumableClient$Mission;->progressManager:Lcom/obs/services/internal/ProgressManager;

    if-nez v7, :cond_85

    .line 294
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/obs/services/internal/UploadResumableClient$Mission;->uploadFileRequest:Lcom/obs/services/model/UploadFileRequest;

    invoke-virtual {v8}, Lcom/obs/services/model/UploadFileRequest;->getUploadFile()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/obs/services/model/UploadPartRequest;->setFile(Ljava/io/File;)V

    .line 295
    iget-wide v7, v0, Lcom/obs/services/internal/UploadResumableClient$UploadPart;->offset:J

    invoke-virtual {v6, v7, v8}, Lcom/obs/services/model/UploadPartRequest;->setOffset(J)V

    goto :goto_cd

    :catchall_7b
    move-exception v0

    move-object p0, v0

    goto/16 :goto_1b6

    :catch_7f
    move-exception v0

    goto/16 :goto_108

    :catch_82
    move-exception v0

    goto/16 :goto_14a

    .line 297
    :cond_85
    new-instance v7, Ljava/io/FileInputStream;

    iget-object v8, p0, Lcom/obs/services/internal/UploadResumableClient$Mission;->uploadFileRequest:Lcom/obs/services/model/UploadFileRequest;

    invoke-virtual {v8}, Lcom/obs/services/model/UploadFileRequest;->getUploadFile()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_90
    .catch Lcom/obs/services/exception/ObsException; {:try_start_25 .. :try_end_90} :catch_82
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_90} :catch_7f
    .catchall {:try_start_25 .. :try_end_90} :catchall_7b

    .line 298
    :try_start_90
    iget-wide v10, v0, Lcom/obs/services/internal/UploadResumableClient$UploadPart;->offset:J

    .line 299
    invoke-virtual {v7, v10, v11}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v12

    cmp-long v0, v10, v12

    if-gez v0, :cond_c2

    .line 301
    # getter for: Lcom/obs/services/internal/UploadResumableClient;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/UploadResumableClient;->access$000()Lcom/obs/log/ILogger;

    move-result-object v0

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v8, "The actual number of skipped bytes (%d) is less than expected (%d): "

    .line 303
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 304
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    filled-new-array {v12, v10}, [Ljava/lang/Object;

    move-result-object v10

    .line 301
    invoke-static {v5, v8, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/obs/log/ILogger;->error(Ljava/lang/CharSequence;)V

    goto :goto_c2

    :catchall_b6
    move-exception v0

    move-object p0, v0

    move-object v5, v7

    goto/16 :goto_1b6

    :catch_bb
    move-exception v0

    move-object v5, v7

    goto :goto_108

    :catch_be
    move-exception v0

    move-object v5, v7

    goto/16 :goto_14a

    .line 307
    :cond_c2
    :goto_c2
    new-instance v0, Lcom/obs/services/internal/io/ProgressInputStream;

    iget-object v5, p0, Lcom/obs/services/internal/UploadResumableClient$Mission;->progressManager:Lcom/obs/services/internal/ProgressManager;

    invoke-direct {v0, v7, v5, v4}, Lcom/obs/services/internal/io/ProgressInputStream;-><init>(Ljava/io/InputStream;Lcom/obs/services/internal/ProgressManager;Z)V

    invoke-virtual {v6, v0}, Lcom/obs/services/model/UploadPartRequest;->setInput(Ljava/io/InputStream;)V
    :try_end_cc
    .catch Lcom/obs/services/exception/ObsException; {:try_start_90 .. :try_end_cc} :catch_be
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_cc} :catch_bb
    .catchall {:try_start_90 .. :try_end_cc} :catchall_b6

    move-object v5, v7

    .line 310
    :goto_cd
    :try_start_cd
    iget-object v0, p0, Lcom/obs/services/internal/UploadResumableClient$Mission;->obsClient:Lcom/obs/services/AbstractClient;

    invoke-interface {v0, v6}, Lcom/obs/services/IObsClient;->uploadPart(Lcom/obs/services/model/UploadPartRequest;)Lcom/obs/services/model/UploadPartResult;

    move-result-object v0

    .line 312
    new-instance v6, Lcom/obs/services/model/PartEtag;

    invoke-virtual {v0}, Lcom/obs/services/model/UploadPartResult;->getEtag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/obs/services/model/UploadPartResult;->getPartNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v6, v7, v0}, Lcom/obs/services/model/PartEtag;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 313
    iget-object v0, p0, Lcom/obs/services/internal/UploadResumableClient$Mission;->uploadCheckPoint:Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;

    iget v7, p0, Lcom/obs/services/internal/UploadResumableClient$Mission;->partIndex:I

    invoke-virtual {v0, v7, v6, v9}, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;->update(ILcom/obs/services/model/PartEtag;Z)V

    .line 314
    invoke-virtual {v3, v4}, Lcom/obs/services/internal/UploadResumableClient$PartResult;->setFailed(Z)V

    .line 316
    iget-object v0, p0, Lcom/obs/services/internal/UploadResumableClient$Mission;->uploadFileRequest:Lcom/obs/services/model/UploadFileRequest;

    invoke-virtual {v0}, Lcom/obs/services/model/UploadFileRequest;->isEnableCheckpoint()Z

    move-result v0

    if-eqz v0, :cond_101

    .line 317
    iget-object v0, p0, Lcom/obs/services/internal/UploadResumableClient$Mission;->uploadCheckPoint:Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;

    iget-object v6, p0, Lcom/obs/services/internal/UploadResumableClient$Mission;->uploadFileRequest:Lcom/obs/services/model/UploadFileRequest;

    invoke-virtual {v6}, Lcom/obs/services/model/UploadFileRequest;->getCheckpointFile()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;->record(Ljava/lang/String;)V
    :try_end_101
    .catch Lcom/obs/services/exception/ObsException; {:try_start_cd .. :try_end_101} :catch_82
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_101} :catch_7f
    .catchall {:try_start_cd .. :try_end_101} :catchall_7b

    :cond_101
    if-eqz v5, :cond_1b5

    .line 347
    :goto_103
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    goto/16 :goto_1b5

    .line 337
    :goto_108
    :try_start_108
    invoke-virtual {v3, v9}, Lcom/obs/services/internal/UploadResumableClient$PartResult;->setFailed(Z)V

    .line 338
    invoke-virtual {v3, v0}, Lcom/obs/services/internal/UploadResumableClient$PartResult;->setException(Ljava/lang/Exception;)V

    .line 339
    # getter for: Lcom/obs/services/internal/UploadResumableClient;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/UploadResumableClient;->access$000()Lcom/obs/log/ILogger;

    move-result-object v4

    invoke-interface {v4}, Lcom/obs/log/ILogger;->isErrorEnabled()Z

    move-result v4

    if-eqz v4, :cond_147

    .line 340
    # getter for: Lcom/obs/services/internal/UploadResumableClient;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/UploadResumableClient;->access$000()Lcom/obs/log/ILogger;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget v7, p0, Lcom/obs/services/internal/UploadResumableClient$Mission;->id:I

    .line 342
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/obs/services/internal/UploadResumableClient$Mission;->id:I

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget p0, p0, Lcom/obs/services/internal/UploadResumableClient$Mission;->partIndex:I

    add-int/2addr p0, v9

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v7, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 340
    invoke-static {v6, v2, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v4, p0, v0}, Lcom/obs/log/ILogger;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_147
    if-eqz v5, :cond_1b5

    goto :goto_103

    .line 321
    :goto_14a
    invoke-virtual {v0}, Lcom/obs/services/exception/ObsException;->getResponseCode()I

    move-result v6

    const/16 v7, 0x12c

    if-lt v6, v7, :cond_166

    invoke-virtual {v0}, Lcom/obs/services/exception/ObsException;->getResponseCode()I

    move-result v6

    const/16 v7, 0x1f4

    if-ge v6, v7, :cond_166

    invoke-virtual {v0}, Lcom/obs/services/exception/ObsException;->getResponseCode()I

    move-result v6

    const/16 v7, 0x198

    if-eq v6, v7, :cond_166

    .line 322
    iget-object v6, p0, Lcom/obs/services/internal/UploadResumableClient$Mission;->uploadCheckPoint:Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;

    iput-boolean v9, v6, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;->isAbort:Z

    .line 324
    :cond_166
    invoke-virtual {v0}, Lcom/obs/services/exception/ObsException;->getResponseCode()I

    move-result v6

    const/16 v7, 0x193

    if-ne v6, v7, :cond_172

    .line 325
    iget-object v6, p0, Lcom/obs/services/internal/UploadResumableClient$Mission;->uploadCheckPoint:Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;

    iput-boolean v4, v6, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;->isDeleteUploadRecordFile:Z

    .line 328
    :cond_172
    invoke-virtual {v3, v9}, Lcom/obs/services/internal/UploadResumableClient$PartResult;->setFailed(Z)V

    .line 329
    invoke-virtual {v3, v0}, Lcom/obs/services/internal/UploadResumableClient$PartResult;->setException(Ljava/lang/Exception;)V

    .line 330
    # getter for: Lcom/obs/services/internal/UploadResumableClient;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/UploadResumableClient;->access$000()Lcom/obs/log/ILogger;

    move-result-object v4

    invoke-interface {v4}, Lcom/obs/log/ILogger;->isErrorEnabled()Z

    move-result v4

    if-eqz v4, :cond_1b1

    .line 331
    # getter for: Lcom/obs/services/internal/UploadResumableClient;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/UploadResumableClient;->access$000()Lcom/obs/log/ILogger;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget v7, p0, Lcom/obs/services/internal/UploadResumableClient$Mission;->id:I

    .line 333
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/obs/services/internal/UploadResumableClient$Mission;->id:I

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget p0, p0, Lcom/obs/services/internal/UploadResumableClient$Mission;->partIndex:I

    add-int/2addr p0, v9

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v7, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 331
    invoke-static {v6, v2, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v4, p0, v0}, Lcom/obs/log/ILogger;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_1b1
    .catchall {:try_start_108 .. :try_end_1b1} :catchall_7b

    :cond_1b1
    if-eqz v5, :cond_1b5

    goto/16 :goto_103

    :cond_1b5
    :goto_1b5
    return-object v3

    :goto_1b6
    if-eqz v5, :cond_1bb

    .line 347
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 349
    :cond_1bb
    throw p0

    .line 351
    :cond_1bc
    invoke-virtual {v3, v9}, Lcom/obs/services/internal/UploadResumableClient$PartResult;->setFailed(Z)V

    return-object v3
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 1

    .line 258
    invoke-virtual {p0}, Lcom/obs/services/internal/UploadResumableClient$Mission;->call()Lcom/obs/services/internal/UploadResumableClient$PartResult;

    move-result-object p0

    return-object p0
.end method

.method public setProgressManager(Lcom/obs/services/internal/ProgressManager;)V
    .registers 2

    .line 357
    iput-object p1, p0, Lcom/obs/services/internal/UploadResumableClient$Mission;->progressManager:Lcom/obs/services/internal/ProgressManager;

    return-void
.end method
