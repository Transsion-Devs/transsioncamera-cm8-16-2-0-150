.class public abstract Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;


# instance fields
.field private final mClearLock:Ljava/lang/Object;

.field private mConcurrentMediaSaver:Lcom/transsion/camera/app/common/storage/MediaSaver;

.field protected mContentResolver:Landroid/content/ContentResolver;

.field protected mContext:Landroid/content/Context;

.field protected mIsInit:Z

.field private mSerialMediaSaver:Lcom/transsion/camera/app/common/storage/MediaSaver;

.field private mStorageAvailable:Z

.field protected mStorageVolume:Landroid/os/storage/StorageVolume;

.field protected final mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private volatile mTempCleared:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmClearLock(Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mClearLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmTempCleared(Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTempCleared:Z

    return-void
.end method

.method constructor <init>()V
    .registers 3

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mIsInit:Z

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mSerialMediaSaver:Lcom/transsion/camera/app/common/storage/MediaSaver;

    .line 75
    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mConcurrentMediaSaver:Lcom/transsion/camera/app/common/storage/MediaSaver;

    const/4 v0, 0x1

    .line 76
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mStorageAvailable:Z

    .line 77
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTempCleared:Z

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mClearLock:Ljava/lang/Object;

    .line 81
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method private clearCache(Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V
    .registers 5

    .line 317
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsLivePhotoMovementLocusSupport:Z

    if-eqz v0, :cond_3b

    if-eqz p2, :cond_1e

    .line 320
    :try_start_a
    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_1e

    :catch_e
    move-exception p1

    .line 322
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo p2, "wait for copy file interrupted"

    invoke-static {p0, p2, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 323
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 326
    :cond_1e
    :goto_1e
    const-string p0, "empty"

    invoke-static {p0, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3a

    .line 327
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_3a

    .line 328
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 329
    invoke-static {p0}, Lcom/transsion/camera/utils/FileUtil;->deleteFile(Ljava/io/File;)Z

    :cond_3a
    return-void

    .line 333
    :cond_3b
    invoke-static {p3}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->deleteFile(Ljava/lang/String;)V

    .line 334
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsLivePhotoAIFrameSelectionSupport:Z

    if-eqz p0, :cond_5c

    .line 335
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->getCamFilePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->deleteFile(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->getGyroFilePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->deleteFile(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->getBstMergeFilePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->deleteFile(Ljava/lang/String;)V

    return-void

    .line 339
    :cond_5c
    invoke-static {p3}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->deleteFile(Ljava/lang/String;)V

    return-void
.end method

.method private static deleteFile(Ljava/lang/String;)V
    .registers 2

    .line 376
    const-string v0, "empty"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 377
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/transsion/camera/utils/FileUtil;->deleteFile(Ljava/io/File;)Z

    :cond_10
    return-void
.end method

.method private getAvailableSpace(Ljava/lang/String;)J
    .registers 5

    .line 265
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAvailableSpace state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 266
    const-string v0, "removed"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4e

    const-string v0, "ejecting"

    .line 267
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_4e

    .line 269
    :cond_27
    const-string v0, "checking"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    const-wide/16 p0, -0x2

    return-wide p0

    .line 271
    :cond_32
    const-string v0, "mounted"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 272
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->getAvailableSpaceInDirectory()J

    move-result-wide p0

    return-wide p0

    .line 273
    :cond_3f
    const-string/jumbo p0, "unmounted"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4b

    const-wide/16 p0, -0x6

    return-wide p0

    :cond_4b
    const-wide/16 p0, -0x1

    return-wide p0

    :cond_4e
    :goto_4e
    const-wide/16 p0, -0x5

    return-wide p0
.end method

.method private renameLivePhotoVideoInfoFile(Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)Ljava/lang/String;
    .registers 12

    .line 382
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->getCamFilePath()Ljava/lang/String;

    move-result-object v3

    .line 383
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->getGyroFilePath()Ljava/lang/String;

    move-result-object v5

    .line 385
    sget-object p1, Landroid/os/Environment;->DIRECTORY_DOCUMENTS:Ljava/lang/String;

    invoke-static {p1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 387
    new-instance v0, Ljava/io/File;

    const-string v1, ".live_photo"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 388
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1e

    .line 389
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1e
    const/4 p1, 0x0

    if-eqz v3, :cond_23

    if-nez v5, :cond_27

    :cond_23
    move-object v1, p0

    move-object v7, p3

    goto/16 :goto_12b

    .line 401
    :cond_27
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 402
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_46

    .line 405
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "[renameLivePhotoVideoInfoFile], jpegPath is null"

    invoke-static {p0, p2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 406
    invoke-static {v1}, Lcom/transsion/camera/utils/FileUtil;->deleteFile(Ljava/io/File;)Z

    .line 407
    invoke-static {v2}, Lcom/transsion/camera/utils/FileUtil;->deleteFile(Ljava/io/File;)Z

    if-eqz p3, :cond_45

    .line 409
    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_45
    return-object p1

    :cond_46
    const/16 p1, 0x2e

    .line 414
    invoke-virtual {p2, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_58

    const/4 v4, 0x0

    .line 415
    invoke-virtual {p2, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    invoke-virtual {p2, v4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 418
    :cond_58
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x5f

    invoke-virtual {v1, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v6, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 419
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 421
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 422
    new-instance p1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 423
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 424
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 426
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[renameLivePhotoVideoInfoFile] jpegName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,sourceCamFilePath :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,sourceGyroFilePath :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,dstCamFileName :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,dstGyroFileName :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 430
    invoke-static {}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->getInstance()Lcom/transsion/camera/utils/threads/WorkThreadPools;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator$2;

    const-string v2, "copyLivePhotoVideoInfoFile"

    move-object v1, p0

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator$2;-><init>(Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p1, v0}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->execute(Lcom/transsion/camera/utils/threads/WorkTask;)V

    .line 449
    iget-object p0, v1, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[renameLivePhotoVideoInfoFile] dstFileName: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p2

    .line 394
    :goto_12b
    iget-object p0, v1, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[renameLivePhotoVideoInfoFile] sourceCamFilePath: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", sourceGyroFilePath: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v7, :cond_14e

    .line 396
    invoke-virtual {v7}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_14e
    return-object p1
.end method

.method private waitForTempClearedIfNeeded()V
    .registers 4

    .line 118
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "waitForTempClearedIfNeeded,mTempCleared"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTempCleared:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mClearLock:Ljava/lang/Object;

    monitor-enter v0

    .line 121
    :goto_1c
    :try_start_1c
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTempCleared:Z

    if-nez v1, :cond_2c

    .line 122
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mClearLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_25} :catch_28
    .catchall {:try_start_1c .. :try_end_25} :catchall_26

    goto :goto_1c

    :catchall_26
    move-exception p0

    goto :goto_2e

    :catch_28
    move-exception p0

    .line 125
    :try_start_29
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 127
    :cond_2c
    monitor-exit v0

    return-void

    :goto_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_29 .. :try_end_2f} :catchall_26

    throw p0
.end method


# virtual methods
.method public addPhotoSaveRequest(Landroid/content/ContentValues;[BLandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)V
    .registers 13

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v3, p4

    move-object v5, p5

    .line 162
    invoke-virtual/range {v0 .. v6}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->addPhotoSaveRequest(Landroid/content/ContentValues;[BLcom/transsion/camera/app/common/livephoto/PhotoTaskData;Landroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;Z)V

    return-void
.end method

.method public addPhotoSaveRequest(Landroid/content/ContentValues;[BLandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;Landroid/net/Uri;)V
    .registers 14

    if-nez p2, :cond_c

    if-nez p3, :cond_c

    .line 192
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[addPhotoSaveRequest] there is no data to save"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_c
    if-nez p1, :cond_16

    .line 196
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[addPhotoSaveRequest] there is no valid data need to save."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_16
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v3, p4

    move-object v5, p5

    move-object v6, p6

    .line 199
    invoke-virtual/range {v0 .. v6}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->buildPhotoSaveRequest(Landroid/content/ContentValues;[BLcom/transsion/camera/app/common/livephoto/PhotoTaskData;Landroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;Landroid/net/Uri;)Lcom/transsion/camera/app/common/storage/SaveRequest;

    move-result-object p0

    .line 200
    iget-object p1, v0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mConcurrentMediaSaver:Lcom/transsion/camera/app/common/storage/MediaSaver;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/storage/MediaSaver;->addRequest(Lcom/transsion/camera/app/common/storage/SaveRequest;)V

    return-void
.end method

.method public addPhotoSaveRequest(Landroid/content/ContentValues;[BLandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)V
    .registers 12

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 156
    invoke-virtual/range {v0 .. v6}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->addPhotoSaveRequest(Landroid/content/ContentValues;[BLcom/transsion/camera/app/common/livephoto/PhotoTaskData;Landroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;Z)V

    return-void
.end method

.method public addPhotoSaveRequest(Landroid/content/ContentValues;[BLcom/transsion/camera/app/common/livephoto/PhotoTaskData;Landroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;Z)V
    .registers 8

    if-nez p2, :cond_c

    if-nez p4, :cond_c

    .line 169
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[addPhotoSaveRequest] there is no data to save"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_c
    if-nez p1, :cond_16

    .line 173
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[addPhotoSaveRequest] there is no valid data need to save."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_16
    if-eqz p6, :cond_3e

    .line 178
    iget-object p3, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BurstMode_SceneType = "

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "SceneType"

    .line 179
    invoke-static {p2, v0}, Lcom/transsion/camera/utils/ExifUtils;->getExifStringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    .line 178
    invoke-static {p3, p6}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 180
    iget-object p3, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mSerialMediaSaver:Lcom/transsion/camera/app/common/storage/MediaSaver;

    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->buildPhotoSaveRequestForFuse(Landroid/content/ContentValues;[BLandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)Lcom/transsion/camera/app/common/storage/SaveRequest;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/transsion/camera/app/common/storage/MediaSaver;->addRequest(Lcom/transsion/camera/app/common/storage/SaveRequest;)V

    return-void

    .line 182
    :cond_3e
    iget-object p6, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mConcurrentMediaSaver:Lcom/transsion/camera/app/common/storage/MediaSaver;

    invoke-virtual/range {p0 .. p5}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->buildPhotoSaveRequest(Landroid/content/ContentValues;[BLcom/transsion/camera/app/common/livephoto/PhotoTaskData;Landroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)Lcom/transsion/camera/app/common/storage/SaveRequest;

    move-result-object p0

    invoke-virtual {p6, p0}, Lcom/transsion/camera/app/common/storage/MediaSaver;->addRequest(Lcom/transsion/camera/app/common/storage/SaveRequest;)V

    return-void
.end method

.method public addVideoSaveRequest(Landroid/content/ContentValues;Landroid/net/Uri;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)V
    .registers 4

    if-nez p1, :cond_a

    .line 217
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[addVideoSaveRequest] there is no valid data need to save."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 220
    :cond_a
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->buildVideoSaveRequest(Landroid/content/ContentValues;Landroid/net/Uri;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)Lcom/transsion/camera/app/common/storage/SaveRequest;

    move-result-object p1

    .line 221
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mConcurrentMediaSaver:Lcom/transsion/camera/app/common/storage/MediaSaver;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/storage/MediaSaver;->addRequest(Lcom/transsion/camera/app/common/storage/SaveRequest;)V

    return-void
.end method

.method public addVideoSaveRequest(Landroid/content/ContentValues;Ljava/lang/String;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)V
    .registers 4

    if-nez p1, :cond_a

    .line 207
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[addVideoSaveRequest] there is no valid data need to save."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 210
    :cond_a
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->buildVideoSaveRequest(Landroid/content/ContentValues;Ljava/lang/String;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)Lcom/transsion/camera/app/common/storage/SaveRequest;

    move-result-object p1

    .line 211
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mConcurrentMediaSaver:Lcom/transsion/camera/app/common/storage/MediaSaver;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/storage/MediaSaver;->addRequest(Lcom/transsion/camera/app/common/storage/SaveRequest;)V

    return-void
.end method

.method protected abstract buildPhotoSaveRequest(Landroid/content/ContentValues;[BLcom/transsion/camera/app/common/livephoto/PhotoTaskData;Landroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)Lcom/transsion/camera/app/common/storage/SaveRequest;
.end method

.method protected abstract buildPhotoSaveRequest(Landroid/content/ContentValues;[BLcom/transsion/camera/app/common/livephoto/PhotoTaskData;Landroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;Landroid/net/Uri;)Lcom/transsion/camera/app/common/storage/SaveRequest;
.end method

.method protected abstract buildPhotoSaveRequestForFuse(Landroid/content/ContentValues;[BLandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)Lcom/transsion/camera/app/common/storage/SaveRequest;
.end method

.method protected abstract buildVideoSaveRequest(Landroid/content/ContentValues;Landroid/net/Uri;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)Lcom/transsion/camera/app/common/storage/SaveRequest;
.end method

.method protected abstract buildVideoSaveRequest(Landroid/content/ContentValues;Ljava/lang/String;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)Lcom/transsion/camera/app/common/storage/SaveRequest;
.end method

.method public clearTempFiles()V
    .registers 4

    const/4 v0, 0x0

    .line 102
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTempCleared:Z

    .line 103
    invoke-static {}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->getInstance()Lcom/transsion/camera/utils/threads/WorkThreadPools;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator$1;

    const-string v2, "clearTempFiles"

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator$1;-><init>(Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->execute(Lcom/transsion/camera/utils/threads/WorkTask;)V

    return-void
.end method

.method public final createTempVideoFile(Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;)Z
    .registers 2

    .line 139
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->waitForTempClearedIfNeeded()V

    .line 140
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->createTempVideoFileImpl(Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;)Z

    move-result p0

    return p0
.end method

.method public final createTempVideoFile(Lcom/transsion/camera/app/common/recorder/data/VideoFileSpec;)Z
    .registers 2

    .line 145
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->waitForTempClearedIfNeeded()V

    .line 146
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->createTempVideoFileImpl(Lcom/transsion/camera/app/common/recorder/data/VideoFileSpec;)Z

    move-result p0

    return p0
.end method

.method protected abstract createTempVideoFileImpl(Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;)Z
.end method

.method protected abstract createTempVideoFileImpl(Lcom/transsion/camera/app/common/recorder/data/VideoFileSpec;)Z
.end method

.method protected abstract getAvailableSpaceInDirectory()J
.end method

.method public getLeftSpace(Landroid/content/Context;)J
    .registers 7

    .line 241
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mStorageVolume:Landroid/os/storage/StorageVolume;

    const-wide/16 v0, -0x1

    if-nez p1, :cond_e

    .line 242
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mStorageVolume is null, please check."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-wide v0

    .line 245
    :cond_e
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->getAvailableSpace(Ljava/lang/String;)J

    move-result-wide v2

    .line 246
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mStorageAvailable:Z

    if-eqz p0, :cond_40

    const-wide/32 p0, 0x3200000

    cmp-long v4, v2, p0

    if-lez v4, :cond_23

    sub-long/2addr v2, p0

    return-wide v2

    :cond_23
    const-wide/16 p0, -0x5

    cmp-long p0, v2, p0

    if-eqz p0, :cond_40

    const-wide/16 p0, -0x4

    cmp-long p0, v2, p0

    if-nez p0, :cond_30

    goto :goto_40

    :cond_30
    const-wide/16 p0, -0x2

    cmp-long v0, v2, p0

    if-eqz v0, :cond_3f

    const-wide/16 v0, -0x6

    cmp-long v0, v2, v0

    if-nez v0, :cond_3d

    goto :goto_3f

    :cond_3d
    const-wide/16 p0, 0x0

    :cond_3f
    :goto_3f
    return-wide p0

    :cond_40
    :goto_40
    return-wide v0
.end method

.method public init(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mIsInit:Z

    .line 86
    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mContext:Landroid/content/Context;

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mContentResolver:Landroid/content/ContentResolver;

    .line 88
    new-instance p1, Lcom/transsion/camera/app/common/storage/MediaSaver;

    invoke-direct {p1, v0}, Lcom/transsion/camera/app/common/storage/MediaSaver;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mSerialMediaSaver:Lcom/transsion/camera/app/common/storage/MediaSaver;

    .line 89
    new-instance p1, Lcom/transsion/camera/app/common/storage/MediaSaver;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Lcom/transsion/camera/app/common/storage/MediaSaver;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mConcurrentMediaSaver:Lcom/transsion/camera/app/common/storage/MediaSaver;

    return-void
.end method

.method protected processLivePhotoData(Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;Ljava/lang/String;)[B
    .registers 9

    .line 292
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->getLiveVideoPath()Ljava/lang/String;

    move-result-object v0

    .line 293
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->getCoverFrameTimestamp()J

    move-result-wide v1

    .line 294
    iget-object v3, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processLivePhotoData,  liveVideoPath: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", coverFrameTimestamp: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " ,jpegName :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 296
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->getJpegImageData()[B

    move-result-object v3

    .line 299
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v4

    iget-boolean v4, v4, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsLivePhotoMovementLocusSupport:Z

    if-eqz v4, :cond_45

    .line 300
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 301
    invoke-direct {p0, p1, p2, v4}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->renameLivePhotoVideoInfoFile(Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)Ljava/lang/String;

    move-result-object p2

    goto :goto_47

    :cond_45
    const/4 v4, 0x0

    move-object p2, v4

    .line 303
    :goto_47
    invoke-static {v3, v0, v1, v2, p2}, Lcom/transsion/camera/app/common/livephoto/LivePhotoMuxer;->muxLivePhoto([BLjava/lang/String;JLjava/lang/String;)[B

    move-result-object p2

    .line 305
    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->refillJpegData([B)V

    .line 307
    :try_start_4e
    invoke-direct {p0, p1, v4, v0}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->clearCache(Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_51} :catch_52

    return-object p2

    .line 309
    :catch_52
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "processLivePhotoData, clear cache fail"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p2
.end method

.method public removeProcessMedia(Landroid/net/Uri;)V
    .registers 5

    .line 287
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[removeProcessMedia], uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 288
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public setStorageAvailable(Z)V
    .registers 2

    .line 283
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mStorageAvailable:Z

    return-void
.end method

.method public unInit()V
    .registers 2

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mIsInit:Z

    return-void
.end method

.method protected updateDatabase(Landroid/net/Uri;Landroid/content/ContentValues;)V
    .registers 10

    if-nez p1, :cond_a

    .line 455
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[updateProcessMedia]: uri is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_a
    const/4 v0, 0x1

    const/16 v1, 0x32

    :goto_d
    const/4 v2, 0x3

    if-gt v0, v2, :cond_8a

    .line 461
    :try_start_10
    const-string v3, "[MediaProvider]updateDatabase"

    invoke-static {v3}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 462
    iget-object v3, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, p2, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 463
    iget-object v3, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateProcessMedia]: uri:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", attempt:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_39} :catch_3d
    .catchall {:try_start_10 .. :try_end_39} :catchall_85

    .line 478
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-void

    :catch_3d
    move-exception v3

    .line 466
    :try_start_3e
    iget-object v4, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[updateProcessMedia]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " failed, uri:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_64
    .catchall {:try_start_3e .. :try_end_64} :catchall_85

    if-ge v0, v2, :cond_7f

    int-to-long v2, v1

    .line 469
    :try_start_67
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6a
    .catch Ljava/lang/InterruptedException; {:try_start_67 .. :try_end_6a} :catch_6d
    .catchall {:try_start_67 .. :try_end_6a} :catchall_85

    mul-int/lit8 v1, v1, 0x2

    goto :goto_7f

    .line 472
    :catch_6d
    :try_start_6d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 473
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[updateProcessMedia] interrupted"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_7b
    .catchall {:try_start_6d .. :try_end_7b} :catchall_85

    .line 478
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-void

    :cond_7f
    :goto_7f
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :catchall_85
    move-exception p0

    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    .line 479
    throw p0

    .line 481
    :cond_8a
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "update db exception: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public updateStorageVolume(Landroid/os/storage/StorageVolume;)V
    .registers 2

    .line 97
    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mStorageVolume:Landroid/os/storage/StorageVolume;

    return-void
.end method
