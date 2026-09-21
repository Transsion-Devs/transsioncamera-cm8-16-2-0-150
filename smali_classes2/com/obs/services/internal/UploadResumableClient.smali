.class public Lcom/obs/services/internal/UploadResumableClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/obs/services/internal/UploadResumableClient$PartResult;,
        Lcom/obs/services/internal/UploadResumableClient$UploadPart;,
        Lcom/obs/services/internal/UploadResumableClient$FileStatus;,
        Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;,
        Lcom/obs/services/internal/UploadResumableClient$Mission;
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

    sput-object v0, Lcom/obs/services/internal/UploadResumableClient;->log:Lcom/obs/log/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/obs/services/AbstractClient;)V
    .registers 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/obs/services/internal/UploadResumableClient;->obsClient:Lcom/obs/services/AbstractClient;

    return-void
.end method

.method static synthetic access$000()Lcom/obs/log/ILogger;
    .registers 1

    .line 54
    sget-object v0, Lcom/obs/services/internal/UploadResumableClient;->log:Lcom/obs/log/ILogger;

    return-object v0
.end method

.method private prepare(Lcom/obs/services/model/UploadFileRequest;Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;)V
    .registers 7

    .line 363
    invoke-virtual {p1}, Lcom/obs/services/model/UploadFileRequest;->getUploadFile()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;->uploadFile:Ljava/lang/String;

    .line 364
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;->bucketName:Ljava/lang/String;

    .line 365
    invoke-virtual {p1}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;->objectKey:Ljava/lang/String;

    .line 366
    iget-object v0, p2, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;->uploadFile:Ljava/lang/String;

    .line 367
    invoke-virtual {p1}, Lcom/obs/services/model/UploadFileRequest;->isEnableCheckSum()Z

    move-result v1

    .line 366
    invoke-static {v0, v1}, Lcom/obs/services/internal/UploadResumableClient$FileStatus;->getFileStatus(Ljava/lang/String;Z)Lcom/obs/services/internal/UploadResumableClient$FileStatus;

    move-result-object v0

    iput-object v0, p2, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;->uploadFileStatus:Lcom/obs/services/internal/UploadResumableClient$FileStatus;

    .line 368
    iget-wide v0, v0, Lcom/obs/services/internal/UploadResumableClient$FileStatus;->size:J

    .line 369
    invoke-virtual {p1}, Lcom/obs/services/model/UploadFileRequest;->getPartSize()J

    move-result-wide v2

    .line 368
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/obs/services/internal/UploadResumableClient;->splitUploadFile(JJ)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p2, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;->uploadParts:Ljava/util/ArrayList;

    .line 370
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p2, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;->partEtags:Ljava/util/ArrayList;

    .line 372
    new-instance v0, Lcom/obs/services/model/InitiateMultipartUploadRequest;

    .line 373
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/obs/services/model/InitiateMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectBasicRequest;->getExtensionPermissionMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/obs/services/model/PutObjectBasicRequest;->setExtensionPermissionMap(Ljava/util/Map;)V

    .line 376
    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectBasicRequest;->getAcl()Lcom/obs/services/model/AccessControlList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/obs/services/model/PutObjectBasicRequest;->setAcl(Lcom/obs/services/model/AccessControlList;)V

    .line 377
    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectBasicRequest;->getSuccessRedirectLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/obs/services/model/PutObjectBasicRequest;->setSuccessRedirectLocation(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectBasicRequest;->getSseCHeader()Lcom/obs/services/model/SseCHeader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/obs/services/model/PutObjectBasicRequest;->setSseCHeader(Lcom/obs/services/model/SseCHeader;)V

    .line 379
    invoke-virtual {p1}, Lcom/obs/services/model/PutObjectBasicRequest;->getSseKmsHeader()Lcom/obs/services/model/SseKmsHeader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/obs/services/model/PutObjectBasicRequest;->setSseKmsHeader(Lcom/obs/services/model/SseKmsHeader;)V

    .line 380
    invoke-virtual {p1}, Lcom/obs/services/model/UploadFileRequest;->getObjectMetadata()Lcom/obs/services/model/ObjectMetadata;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/obs/services/model/InitiateMultipartUploadRequest;->setMetadata(Lcom/obs/services/model/ObjectMetadata;)V

    .line 381
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->isRequesterPays()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/obs/services/model/GenericRequest;->setRequesterPays(Z)V

    .line 382
    invoke-virtual {p1}, Lcom/obs/services/model/UploadFileRequest;->getEncodingType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/obs/services/model/InitiateMultipartUploadRequest;->setEncodingType(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p1}, Lcom/obs/services/model/BaseObjectRequest;->isEncodeHeaders()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/obs/services/model/BaseObjectRequest;->setIsEncodeHeaders(Z)V

    .line 384
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getUserHeaders()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/obs/services/model/GenericRequest;->setUserHeaders(Ljava/util/HashMap;)V

    .line 386
    iget-object v1, p0, Lcom/obs/services/internal/UploadResumableClient;->obsClient:Lcom/obs/services/AbstractClient;

    .line 387
    invoke-interface {v1, v0}, Lcom/obs/services/IObsClient;->initiateMultipartUpload(Lcom/obs/services/model/InitiateMultipartUploadRequest;)Lcom/obs/services/model/InitiateMultipartUploadResult;

    move-result-object v0

    .line 388
    invoke-virtual {v0}, Lcom/obs/services/model/InitiateMultipartUploadResult;->getUploadId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;->uploadID:Ljava/lang/String;

    .line 389
    invoke-virtual {p1}, Lcom/obs/services/model/UploadFileRequest;->isEnableCheckpoint()Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 391
    :try_start_96
    invoke-virtual {p1}, Lcom/obs/services/model/UploadFileRequest;->getCheckpointFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;->record(Ljava/lang/String;)V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_9d} :catch_9e

    return-void

    :catch_9e
    move-exception v0

    .line 393
    iget-object p2, p2, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;->uploadID:Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Lcom/obs/services/internal/UploadResumableClient;->abortMultipartUploadSilent(Ljava/lang/String;Lcom/obs/services/model/UploadFileRequest;)V

    .line 394
    throw v0

    :cond_a5
    return-void
.end method

.method private prepareWithCheckpoint(Lcom/obs/services/model/UploadFileRequest;Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;)V
    .registers 7

    const/4 v0, 0x1

    .line 168
    :try_start_1
    invoke-virtual {p1}, Lcom/obs/services/model/UploadFileRequest;->getCheckpointFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;->load(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_a

    const/4 v1, 0x0

    goto :goto_b

    :catch_a
    move v1, v0

    :goto_b
    if-nez v1, :cond_3d

    .line 174
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;->bucketName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 175
    invoke-virtual {p1}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;->objectKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 176
    invoke-virtual {p1}, Lcom/obs/services/model/UploadFileRequest;->getUploadFile()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;->uploadFile:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    goto :goto_3e

    .line 178
    :cond_32
    invoke-virtual {p1}, Lcom/obs/services/model/UploadFileRequest;->getUploadFile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;->isValid(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3d

    goto :goto_3e

    :cond_3d
    move v0, v1

    :cond_3e
    :goto_3e
    if-eqz v0, :cond_59

    .line 184
    iget-object v0, p2, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;->bucketName:Ljava/lang/String;

    if-eqz v0, :cond_4f

    iget-object v0, p2, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;->objectKey:Ljava/lang/String;

    if-eqz v0, :cond_4f

    iget-object v0, p2, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;->uploadID:Ljava/lang/String;

    if-eqz v0, :cond_4f

    .line 186
    invoke-virtual {p0, v0, p1}, Lcom/obs/services/internal/UploadResumableClient;->abortMultipartUploadSilent(Ljava/lang/String;Lcom/obs/services/model/UploadFileRequest;)V

    .line 188
    :cond_4f
    invoke-virtual {p1}, Lcom/obs/services/model/UploadFileRequest;->getCheckpointFile()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/obs/services/internal/utils/ServiceUtils;->deleteFileIgnoreException(Ljava/lang/String;)V

    .line 189
    invoke-direct {p0, p1, p2}, Lcom/obs/services/internal/UploadResumableClient;->prepare(Lcom/obs/services/model/UploadFileRequest;Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;)V

    :cond_59
    return-void
.end method

.method private splitUploadFile(JJ)Ljava/util/ArrayList;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/ArrayList<",
            "Lcom/obs/services/internal/UploadResumableClient$UploadPart;",
            ">;"
        }
    .end annotation

    .line 400
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 402
    div-long v1, p1, p3

    const-wide/16 v3, 0x2710

    cmp-long v5, v1, v3

    const-wide/16 v6, 0x1

    const-wide/16 v8, 0x0

    if-ltz v5, :cond_20

    .line 404
    rem-long v1, p1, v3

    cmp-long v1, v1, v8

    if-nez v1, :cond_1a

    div-long v1, p1, v3

    goto :goto_1d

    :cond_1a
    div-long v1, p1, v3

    add-long/2addr v1, v6

    .line 405
    :goto_1d
    div-long v3, p1, v1

    goto :goto_23

    :cond_20
    move-wide v3, v1

    move-wide/from16 v1, p3

    .line 407
    :goto_23
    rem-long v10, p1, v1

    cmp-long v5, v10, v8

    if-lez v5, :cond_2a

    add-long/2addr v3, v6

    :cond_2a
    cmp-long v12, v3, v8

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-nez v12, :cond_41

    .line 411
    new-instance v1, Lcom/obs/services/internal/UploadResumableClient$UploadPart;

    invoke-direct {v1}, Lcom/obs/services/internal/UploadResumableClient$UploadPart;-><init>()V

    .line 412
    iput v14, v1, Lcom/obs/services/internal/UploadResumableClient$UploadPart;->partNumber:I

    .line 413
    iput-wide v8, v1, Lcom/obs/services/internal/UploadResumableClient$UploadPart;->offset:J

    .line 414
    iput-wide v8, v1, Lcom/obs/services/internal/UploadResumableClient$UploadPart;->size:J

    .line 415
    iput-boolean v13, v1, Lcom/obs/services/internal/UploadResumableClient$UploadPart;->isCompleted:Z

    .line 416
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_41
    :goto_41
    cmp-long v12, v8, v3

    if-gez v12, :cond_61

    .line 419
    new-instance v12, Lcom/obs/services/internal/UploadResumableClient$UploadPart;

    invoke-direct {v12}, Lcom/obs/services/internal/UploadResumableClient$UploadPart;-><init>()V

    move-wide v15, v6

    add-long v6, v8, v15

    move/from16 p0, v14

    long-to-int v14, v6

    .line 420
    iput v14, v12, Lcom/obs/services/internal/UploadResumableClient$UploadPart;->partNumber:I

    mul-long/2addr v8, v1

    .line 421
    iput-wide v8, v12, Lcom/obs/services/internal/UploadResumableClient$UploadPart;->offset:J

    .line 422
    iput-wide v1, v12, Lcom/obs/services/internal/UploadResumableClient$UploadPart;->size:J

    .line 423
    iput-boolean v13, v12, Lcom/obs/services/internal/UploadResumableClient$UploadPart;->isCompleted:Z

    .line 424
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v14, p0

    move-wide v8, v6

    move-wide v6, v15

    goto :goto_41

    :cond_61
    move/from16 p0, v14

    if-lez v5, :cond_73

    .line 427
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/obs/services/internal/UploadResumableClient$UploadPart;

    iput-wide v10, v1, Lcom/obs/services/internal/UploadResumableClient$UploadPart;->size:J

    :cond_73
    return-object v0
.end method

.method private uploadFileCheckPoint(Lcom/obs/services/model/UploadFileRequest;)Lcom/obs/services/model/CompleteMultipartUploadResult;
    .registers 8

    .line 108
    new-instance v0, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;

    invoke-direct {v0}, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;-><init>()V

    .line 109
    invoke-virtual {p1}, Lcom/obs/services/model/UploadFileRequest;->isEnableCheckpoint()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 110
    invoke-direct {p0, p1, v0}, Lcom/obs/services/internal/UploadResumableClient;->prepareWithCheckpoint(Lcom/obs/services/model/UploadFileRequest;Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;)V

    goto :goto_12

    .line 112
    :cond_f
    invoke-direct {p0, p1, v0}, Lcom/obs/services/internal/UploadResumableClient;->prepare(Lcom/obs/services/model/UploadFileRequest;Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;)V

    .line 116
    :goto_12
    invoke-direct {p0, p1, v0}, Lcom/obs/services/internal/UploadResumableClient;->uploadfile(Lcom/obs/services/model/UploadFileRequest;Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;)Ljava/util/List;

    move-result-object v1

    .line 119
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/obs/services/internal/UploadResumableClient$PartResult;

    .line 120
    invoke-virtual {v2}, Lcom/obs/services/internal/UploadResumableClient$PartResult;->isFailed()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-virtual {v2}, Lcom/obs/services/internal/UploadResumableClient$PartResult;->getException()Ljava/lang/Exception;

    move-result-object v3

    if-eqz v3, :cond_1a

    .line 122
    invoke-virtual {p1}, Lcom/obs/services/model/UploadFileRequest;->isEnableCheckpoint()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 124
    iget-boolean v1, v0, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;->isAbort:Z

    if-eqz v1, :cond_52

    .line 125
    iget-object v1, v0, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;->uploadID:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/obs/services/internal/UploadResumableClient;->abortMultipartUploadSilent(Ljava/lang/String;Lcom/obs/services/model/UploadFileRequest;)V

    .line 126
    iget-boolean p0, v0, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;->isDeleteUploadRecordFile:Z

    if-eqz p0, :cond_52

    .line 127
    invoke-virtual {p1}, Lcom/obs/services/model/UploadFileRequest;->getCheckpointFile()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->deleteFileIgnoreException(Ljava/lang/String;)V

    goto :goto_52

    .line 123
    :cond_4d
    iget-object v0, v0, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;->uploadID:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/obs/services/internal/UploadResumableClient;->abortMultipartUploadSilent(Ljava/lang/String;Lcom/obs/services/model/UploadFileRequest;)V

    .line 130
    :cond_52
    :goto_52
    invoke-virtual {v2}, Lcom/obs/services/internal/UploadResumableClient$PartResult;->getException()Ljava/lang/Exception;

    move-result-object p0

    throw p0

    .line 135
    :cond_57
    new-instance v1, Lcom/obs/services/model/CompleteMultipartUploadRequest;

    .line 136
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;->uploadID:Ljava/lang/String;

    iget-object v5, v0, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;->partEtags:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/obs/services/model/CompleteMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 138
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->isRequesterPays()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/obs/services/model/GenericRequest;->setRequesterPays(Z)V

    .line 139
    invoke-virtual {p1}, Lcom/obs/services/model/UploadFileRequest;->getEncodingType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/obs/services/model/CompleteMultipartUploadRequest;->setEncodingType(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p1}, Lcom/obs/services/model/BaseObjectRequest;->getIsIgnorePort()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/obs/services/model/BaseObjectRequest;->setIsIgnorePort(Z)V

    .line 141
    invoke-virtual {p1}, Lcom/obs/services/model/UploadFileRequest;->getCallback()Lcom/obs/services/model/Callback;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/obs/services/model/CompleteMultipartUploadRequest;->setCallback(Lcom/obs/services/model/Callback;)V

    .line 142
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getUserHeaders()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/obs/services/model/GenericRequest;->setUserHeaders(Ljava/util/HashMap;)V

    .line 145
    :try_start_8b
    iget-object v2, p0, Lcom/obs/services/internal/UploadResumableClient;->obsClient:Lcom/obs/services/AbstractClient;

    .line 146
    invoke-interface {v2, v1}, Lcom/obs/services/IObsClient;->completeMultipartUpload(Lcom/obs/services/model/CompleteMultipartUploadRequest;)Lcom/obs/services/model/CompleteMultipartUploadResult;

    move-result-object v1

    .line 147
    invoke-virtual {p1}, Lcom/obs/services/model/UploadFileRequest;->isEnableCheckpoint()Z

    move-result v2

    if-eqz v2, :cond_a1

    .line 148
    invoke-virtual {p1}, Lcom/obs/services/model/UploadFileRequest;->getCheckpointFile()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/obs/services/internal/utils/ServiceUtils;->deleteFileIgnoreException(Ljava/lang/String;)V
    :try_end_9e
    .catch Lcom/obs/services/exception/ObsException; {:try_start_8b .. :try_end_9e} :catch_9f

    return-object v1

    :catch_9f
    move-exception v1

    goto :goto_a2

    :cond_a1
    return-object v1

    .line 152
    :goto_a2
    invoke-virtual {p1}, Lcom/obs/services/model/UploadFileRequest;->isEnableCheckpoint()Z

    move-result v2

    if-eqz v2, :cond_cd

    .line 155
    invoke-virtual {v1}, Lcom/obs/services/exception/ObsException;->getResponseCode()I

    move-result v2

    const/16 v3, 0x12c

    if-lt v2, v3, :cond_d2

    invoke-virtual {v1}, Lcom/obs/services/exception/ObsException;->getResponseCode()I

    move-result v2

    const/16 v3, 0x1f4

    if-ge v2, v3, :cond_d2

    invoke-virtual {v1}, Lcom/obs/services/exception/ObsException;->getResponseCode()I

    move-result v2

    const/16 v3, 0x198

    if-eq v2, v3, :cond_d2

    .line 156
    iget-object v0, v0, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;->uploadID:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/obs/services/internal/UploadResumableClient;->abortMultipartUploadSilent(Ljava/lang/String;Lcom/obs/services/model/UploadFileRequest;)V

    .line 157
    invoke-virtual {p1}, Lcom/obs/services/model/UploadFileRequest;->getCheckpointFile()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->deleteFileIgnoreException(Ljava/lang/String;)V

    goto :goto_d2

    .line 153
    :cond_cd
    iget-object v0, v0, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;->uploadID:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/obs/services/internal/UploadResumableClient;->abortMultipartUpload(Ljava/lang/String;Lcom/obs/services/model/UploadFileRequest;)Lcom/obs/services/model/HeaderResponse;

    .line 160
    :cond_d2
    :goto_d2
    throw v1
.end method

.method private uploadfile(Lcom/obs/services/model/UploadFileRequest;Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;)Ljava/util/List;
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/obs/services/model/UploadFileRequest;",
            "Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;",
            ")",
            "Ljava/util/List<",
            "Lcom/obs/services/internal/UploadResumableClient$PartResult;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v4, p2

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 196
    invoke-virtual/range {p1 .. p1}, Lcom/obs/services/model/UploadFileRequest;->getTaskNum()I

    move-result v2

    invoke-static {v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    .line 197
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 200
    invoke-virtual/range {p1 .. p1}, Lcom/obs/services/model/UploadFileRequest;->getProgressListener()Lcom/obs/services/model/ProgressListener;

    move-result-object v2

    const/4 v10, 0x0

    if-nez v2, :cond_5c

    move v3, v10

    .line 201
    :goto_1e
    iget-object v2, v4, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;->uploadParts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_59

    .line 202
    iget-object v2, v4, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;->uploadParts:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/obs/services/internal/UploadResumableClient$UploadPart;

    .line 203
    iget-boolean v5, v2, Lcom/obs/services/internal/UploadResumableClient$UploadPart;->isCompleted:Z

    if-eqz v5, :cond_45

    .line 204
    new-instance v11, Lcom/obs/services/internal/UploadResumableClient$PartResult;

    iget v12, v2, Lcom/obs/services/internal/UploadResumableClient$UploadPart;->partNumber:I

    iget-wide v13, v2, Lcom/obs/services/internal/UploadResumableClient$UploadPart;->offset:J

    iget-wide v5, v2, Lcom/obs/services/internal/UploadResumableClient$UploadPart;->size:J

    move-wide v15, v5

    invoke-direct/range {v11 .. v16}, Lcom/obs/services/internal/UploadResumableClient$PartResult;-><init>(IJJ)V

    .line 205
    invoke-virtual {v11, v10}, Lcom/obs/services/internal/UploadResumableClient$PartResult;->setFailed(Z)V

    .line 206
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_56

    .line 208
    :cond_45
    new-instance v2, Lcom/obs/services/internal/UploadResumableClient$Mission;

    iget-object v7, v1, Lcom/obs/services/internal/UploadResumableClient;->obsClient:Lcom/obs/services/AbstractClient;

    move v5, v3

    move-object/from16 v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/obs/services/internal/UploadResumableClient$Mission;-><init>(ILcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;ILcom/obs/services/model/UploadFileRequest;Lcom/obs/services/AbstractClient;)V

    .line 209
    invoke-interface {v8, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    .line 208
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_56
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    :cond_59
    const/4 v2, 0x0

    goto/16 :goto_e5

    .line 214
    :cond_5c
    new-instance v11, Ljava/util/LinkedList;

    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    const-wide/16 v12, 0x0

    move v3, v10

    move-wide/from16 v17, v12

    .line 215
    :goto_66
    iget-object v2, v4, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;->uploadParts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_a8

    .line 216
    iget-object v2, v4, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;->uploadParts:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/obs/services/internal/UploadResumableClient$UploadPart;

    .line 217
    iget-boolean v5, v2, Lcom/obs/services/internal/UploadResumableClient$UploadPart;->isCompleted:Z

    if-eqz v5, :cond_98

    .line 218
    new-instance v19, Lcom/obs/services/internal/UploadResumableClient$PartResult;

    iget v5, v2, Lcom/obs/services/internal/UploadResumableClient$UploadPart;->partNumber:I

    iget-wide v6, v2, Lcom/obs/services/internal/UploadResumableClient$UploadPart;->offset:J

    iget-wide v14, v2, Lcom/obs/services/internal/UploadResumableClient$UploadPart;->size:J

    move/from16 v20, v5

    move-wide/from16 v21, v6

    move-wide/from16 v23, v14

    invoke-direct/range {v19 .. v24}, Lcom/obs/services/internal/UploadResumableClient$PartResult;-><init>(IJJ)V

    move-object/from16 v5, v19

    .line 219
    invoke-virtual {v5, v10}, Lcom/obs/services/internal/UploadResumableClient$PartResult;->setFailed(Z)V

    .line 220
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    iget-wide v5, v2, Lcom/obs/services/internal/UploadResumableClient$UploadPart;->size:J

    add-long v17, v17, v5

    goto :goto_a5

    .line 223
    :cond_98
    new-instance v2, Lcom/obs/services/internal/UploadResumableClient$Mission;

    iget-object v7, v1, Lcom/obs/services/internal/UploadResumableClient;->obsClient:Lcom/obs/services/AbstractClient;

    move v5, v3

    move-object/from16 v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/obs/services/internal/UploadResumableClient$Mission;-><init>(ILcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;ILcom/obs/services/model/UploadFileRequest;Lcom/obs/services/AbstractClient;)V

    .line 224
    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_a5
    add-int/lit8 v3, v3, 0x1

    goto :goto_66

    .line 227
    :cond_a8
    new-instance v14, Lcom/obs/services/internal/ConcurrentProgressManager;

    iget-object v2, v4, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;->uploadFileStatus:Lcom/obs/services/internal/UploadResumableClient$FileStatus;

    iget-wide v2, v2, Lcom/obs/services/internal/UploadResumableClient$FileStatus;->size:J

    .line 228
    invoke-virtual/range {p1 .. p1}, Lcom/obs/services/model/UploadFileRequest;->getProgressListener()Lcom/obs/services/model/ProgressListener;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Lcom/obs/services/model/UploadFileRequest;->getProgressInterval()J

    move-result-wide v5

    cmp-long v5, v5, v12

    if-lez v5, :cond_c2

    .line 229
    invoke-virtual/range {p1 .. p1}, Lcom/obs/services/model/UploadFileRequest;->getProgressInterval()J

    move-result-wide v5

    :goto_be
    move-wide v15, v2

    move-wide/from16 v20, v5

    goto :goto_c6

    :cond_c2
    const-wide/32 v5, 0x19000

    goto :goto_be

    :goto_c6
    invoke-direct/range {v14 .. v21}, Lcom/obs/services/internal/ConcurrentProgressManager;-><init>(JJLcom/obs/services/model/ProgressListener;J)V

    .line 230
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_cd
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/obs/services/internal/UploadResumableClient$Mission;

    .line 231
    invoke-virtual {v3, v14}, Lcom/obs/services/internal/UploadResumableClient$Mission;->setProgressManager(Lcom/obs/services/internal/ProgressManager;)V

    .line 232
    invoke-interface {v8, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_cd

    :cond_e4
    move-object v2, v14

    .line 236
    :goto_e5
    invoke-interface {v8}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const-wide v5, 0x7fffffffffffffffL

    .line 237
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v8, v5, v6, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 239
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_f6
    if-ge v10, v3, :cond_119

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v10, v10, 0x1

    check-cast v5, Ljava/util/concurrent/Future;

    .line 241
    :try_start_100
    invoke-interface {v5}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/obs/services/internal/UploadResumableClient$PartResult;

    .line 242
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_109
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_100 .. :try_end_109} :catch_10a

    goto :goto_f6

    :catch_10a
    move-exception v0

    .line 244
    invoke-virtual/range {p1 .. p1}, Lcom/obs/services/model/UploadFileRequest;->isEnableCheckpoint()Z

    move-result v2

    if-nez v2, :cond_118

    .line 245
    iget-object v2, v4, Lcom/obs/services/internal/UploadResumableClient$UploadCheckPoint;->uploadID:Ljava/lang/String;

    move-object/from16 v6, p1

    invoke-virtual {v1, v2, v6}, Lcom/obs/services/internal/UploadResumableClient;->abortMultipartUploadSilent(Ljava/lang/String;Lcom/obs/services/model/UploadFileRequest;)V

    .line 247
    :cond_118
    throw v0

    :cond_119
    if-eqz v2, :cond_11e

    .line 252
    invoke-virtual {v2}, Lcom/obs/services/internal/ProgressManager;->progressEnd()V

    :cond_11e
    return-object v0
.end method


# virtual methods
.method protected abortMultipartUpload(Ljava/lang/String;Lcom/obs/services/model/UploadFileRequest;)Lcom/obs/services/model/HeaderResponse;
    .registers 6

    .line 100
    new-instance v0, Lcom/obs/services/model/AbortMultipartUploadRequest;

    invoke-virtual {p2}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-virtual {p2}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/obs/services/model/AbortMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Lcom/obs/services/model/GenericRequest;->isRequesterPays()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/obs/services/model/GenericRequest;->setRequesterPays(Z)V

    .line 103
    invoke-virtual {p2}, Lcom/obs/services/model/GenericRequest;->getUserHeaders()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/obs/services/model/GenericRequest;->setUserHeaders(Ljava/util/HashMap;)V

    .line 104
    iget-object p0, p0, Lcom/obs/services/internal/UploadResumableClient;->obsClient:Lcom/obs/services/AbstractClient;

    invoke-interface {p0, v0}, Lcom/obs/services/IObsClient;->abortMultipartUpload(Lcom/obs/services/model/AbortMultipartUploadRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p0

    return-object p0
.end method

.method protected abortMultipartUploadSilent(Ljava/lang/String;Lcom/obs/services/model/UploadFileRequest;)V
    .registers 3

    .line 91
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/obs/services/internal/UploadResumableClient;->abortMultipartUpload(Ljava/lang/String;Lcom/obs/services/model/UploadFileRequest;)Lcom/obs/services/model/HeaderResponse;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p0

    .line 93
    sget-object p1, Lcom/obs/services/internal/UploadResumableClient;->log:Lcom/obs/log/ILogger;

    invoke-interface {p1}, Lcom/obs/log/ILogger;->isWarnEnabled()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 94
    sget-object p1, Lcom/obs/services/internal/UploadResumableClient;->log:Lcom/obs/log/ILogger;

    const-string p2, "Abort multipart upload failed"

    invoke-interface {p1, p2, p0}, Lcom/obs/log/ILogger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_14
    return-void
.end method

.method public uploadFileResume(Lcom/obs/services/model/UploadFileRequest;)Lcom/obs/services/model/CompleteMultipartUploadResult;
    .registers 4

    .line 64
    const-string v0, "UploadFileRequest is null"

    invoke-static {p1, v0}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bucketName is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1}, Lcom/obs/services/model/BaseObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "objectKey is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull2(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p1}, Lcom/obs/services/model/UploadFileRequest;->getUploadFile()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uploadfile is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p1}, Lcom/obs/services/model/UploadFileRequest;->isEnableCheckpoint()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 69
    invoke-virtual {p1}, Lcom/obs/services/model/UploadFileRequest;->getCheckpointFile()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_48

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/obs/services/model/UploadFileRequest;->getUploadFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".uploadFile_record"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/obs/services/model/UploadFileRequest;->setCheckpointFile(Ljava/lang/String;)V

    .line 73
    :cond_48
    invoke-virtual {p1}, Lcom/obs/services/model/UploadFileRequest;->getCallback()Lcom/obs/services/model/Callback;

    move-result-object v0

    if-eqz v0, :cond_68

    .line 74
    invoke-virtual {p1}, Lcom/obs/services/model/UploadFileRequest;->getCallback()Lcom/obs/services/model/Callback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/obs/services/model/Callback;->getCallbackUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "callbackUrl is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p1}, Lcom/obs/services/model/UploadFileRequest;->getCallback()Lcom/obs/services/model/Callback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/obs/services/model/Callback;->getCallbackBody()Ljava/lang/String;

    move-result-object v0

    const-string v1, "callbackBody is null"

    invoke-static {v0, v1}, Lcom/obs/services/internal/utils/ServiceUtils;->assertParameterNotNull(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_68
    :try_start_68
    invoke-direct {p0, p1}, Lcom/obs/services/internal/UploadResumableClient;->uploadFileCheckPoint(Lcom/obs/services/model/UploadFileRequest;)Lcom/obs/services/model/CompleteMultipartUploadResult;

    move-result-object p0
    :try_end_6c
    .catch Lcom/obs/services/internal/ServiceException; {:try_start_68 .. :try_end_6c} :catch_73
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6c} :catch_6d

    return-object p0

    :catch_6d
    move-exception p0

    .line 85
    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->changeFromException(Ljava/lang/Exception;)Lcom/obs/services/exception/ObsException;

    move-result-object p0

    throw p0

    :catch_73
    move-exception p0

    .line 83
    invoke-static {p0}, Lcom/obs/services/internal/utils/ServiceUtils;->changeFromServiceException(Lcom/obs/services/internal/ServiceException;)Lcom/obs/services/exception/ObsException;

    move-result-object p0

    throw p0
.end method
