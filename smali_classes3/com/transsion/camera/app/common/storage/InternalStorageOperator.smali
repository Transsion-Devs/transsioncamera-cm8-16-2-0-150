.class public Lcom/transsion/camera/app/common/storage/InternalStorageOperator;
.super Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/storage/InternalStorageOperator$PhotoSaveRequest;,
        Lcom/transsion/camera/app/common/storage/InternalStorageOperator$PhotoSaveFuseRequest;,
        Lcom/transsion/camera/app/common/storage/InternalStorageOperator$VideoSaveRequest;,
        Lcom/transsion/camera/app/common/storage/InternalStorageOperator$BaseSaveRequest;
    }
.end annotation


# static fields
.field private static final DEFAULT_THRESHOLD_MAX_BYTES:J


# instance fields
.field private isExistCameraDirectory:Z

.field private mTempVideoFilePath:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$BY2PqjBwZFUSatw69dWOTx78sJg(Ljava/io/File;)V
    .registers 1

    .line 96
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    return-void
.end method

.method public static synthetic $r8$lambda$W-zui8E4-_vUhxOwTVcQKZou3Qc(Lcom/transsion/camera/app/common/storage/InternalStorageOperator;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator;->lambda$makeCameraDirectory$1()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x1f4

    .line 56
    invoke-static {v0, v1}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator;->toMebibytes(J)J

    move-result-wide v0

    sput-wide v0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator;->DEFAULT_THRESHOLD_MAX_BYTES:J

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator;->isExistCameraDirectory:Z

    return-void
.end method

.method private static getMemoryLowThreshold(Landroid/content/Context;)J
    .registers 3

    .line 536
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator;->getStorageLowBytes(Ljava/io/File;Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getStorageLowBytes(Ljava/io/File;Landroid/content/Context;)J
    .registers 6

    .line 544
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sys_storage_threshold_percentage"

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    .line 546
    invoke-virtual {p0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v2

    mul-long/2addr v2, v0

    const-wide/16 v0, 0x64

    div-long/2addr v2, v0

    .line 548
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "sys_storage_threshold_max_bytes"

    sget-wide v0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator;->DEFAULT_THRESHOLD_MAX_BYTES:J

    invoke-static {p0, p1, v0, v1}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide p0

    .line 551
    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method private static isMemoryLow(Landroid/content/Context;)Z
    .registers 5

    .line 532
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v0

    invoke-static {p0}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator;->getMemoryLowThreshold(Landroid/content/Context;)J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-gez p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$makeCameraDirectory$1()V
    .registers 3

    .line 131
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator;->getCameraDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_12

    .line 133
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_12
    const/4 v0, 0x1

    .line 135
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator;->isExistCameraDirectory:Z

    return-void
.end method

.method private static toMebibytes(J)J
    .registers 4

    const-wide/32 v0, 0x100000

    mul-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method protected buildPhotoSaveRequest(Landroid/content/ContentValues;[BLcom/transsion/camera/app/common/livephoto/PhotoTaskData;Landroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)Lcom/transsion/camera/app/common/storage/SaveRequest;
    .registers 14

    .line 63
    new-instance v0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$PhotoSaveRequest;

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$PhotoSaveRequest;-><init>(Lcom/transsion/camera/app/common/storage/InternalStorageOperator;Landroid/content/ContentValues;[BLcom/transsion/camera/app/common/livephoto/PhotoTaskData;Landroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;Landroid/net/Uri;)V

    return-object v0
.end method

.method protected buildPhotoSaveRequest(Landroid/content/ContentValues;[BLcom/transsion/camera/app/common/livephoto/PhotoTaskData;Landroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;Landroid/net/Uri;)Lcom/transsion/camera/app/common/storage/SaveRequest;
    .registers 15

    .line 74
    new-instance v0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$PhotoSaveRequest;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$PhotoSaveRequest;-><init>(Lcom/transsion/camera/app/common/storage/InternalStorageOperator;Landroid/content/ContentValues;[BLcom/transsion/camera/app/common/livephoto/PhotoTaskData;Landroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;Landroid/net/Uri;)V

    return-object v0
.end method

.method protected buildPhotoSaveRequestForFuse(Landroid/content/ContentValues;[BLandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)Lcom/transsion/camera/app/common/storage/SaveRequest;
    .registers 12

    .line 69
    new-instance v0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$PhotoSaveFuseRequest;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$PhotoSaveFuseRequest;-><init>(Lcom/transsion/camera/app/common/storage/InternalStorageOperator;Landroid/content/ContentValues;[BLandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;Landroid/net/Uri;)V

    return-object v0
.end method

.method protected buildVideoSaveRequest(Landroid/content/ContentValues;Landroid/net/Uri;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)Lcom/transsion/camera/app/common/storage/SaveRequest;
    .registers 10

    .line 86
    new-instance v0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$VideoSaveRequest;

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$VideoSaveRequest;-><init>(Lcom/transsion/camera/app/common/storage/InternalStorageOperator;Landroid/content/ContentValues;Ljava/lang/String;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;Landroid/net/Uri;)V

    return-object v0
.end method

.method protected buildVideoSaveRequest(Landroid/content/ContentValues;Ljava/lang/String;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)Lcom/transsion/camera/app/common/storage/SaveRequest;
    .registers 10

    .line 80
    new-instance v0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$VideoSaveRequest;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$VideoSaveRequest;-><init>(Lcom/transsion/camera/app/common/storage/InternalStorageOperator;Landroid/content/ContentValues;Ljava/lang/String;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;Landroid/net/Uri;)V

    return-object v0
.end method

.method public createTempVideoFile(Lcom/transsion/camera/app/common/recorder/data/VideoFileSpec;I[Landroidx/documentfile/provider/DocumentFile;)Z
    .registers 5

    .line 154
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "_"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 155
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator;->getCameraDirectory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".videorecorder"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".tmp"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator;->mTempVideoFilePath:Ljava/lang/String;

    .line 156
    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/recorder/data/VideoFileSpec;->setFileTempPath(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method protected createTempVideoFileImpl(Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;)Z
    .registers 4

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator;->getCameraDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".videorecorder"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator;->mTempVideoFilePath:Ljava/lang/String;

    .line 163
    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->setFileTempPath(Ljava/lang/String;)Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;

    const/4 p0, 0x1

    return p0
.end method

.method protected createTempVideoFileImpl(Lcom/transsion/camera/app/common/recorder/data/VideoFileSpec;)Z
    .registers 4

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator;->getCameraDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".videorecorder"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator;->mTempVideoFilePath:Ljava/lang/String;

    .line 149
    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/recorder/data/VideoFileSpec;->setFileTempPath(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public deleteTempVideoFile()V
    .registers 3

    .line 218
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator;->mTempVideoFilePath:Ljava/lang/String;

    const/4 v1, 0x0

    .line 219
    iput-object v1, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator;->mTempVideoFilePath:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 221
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_f
    return-void
.end method

.method public deleteTempVideoFile(Ljava/lang/String;)Z
    .registers 5

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator;->getCameraDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 208
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4a

    .line 210
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file is not exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 213
    :cond_4a
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result p0

    return p0
.end method

.method protected getAvailableSpaceInDirectory()J
    .registers 9

    .line 91
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator;->getCameraDirectory()Ljava/lang/String;

    move-result-object v0

    .line 92
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 93
    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isExistCameraDirectory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator;->isExistCameraDirectory:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 94
    iget-boolean v2, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator;->isExistCameraDirectory:Z

    const-wide/16 v3, -0x4

    if-nez v2, :cond_40

    .line 96
    :try_start_27
    new-instance v2, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$$ExternalSyntheticLambda1;-><init>(Ljava/io/File;)V

    invoke-static {v2}, Ljava/util/concurrent/CompletableFuture;->runAsync(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v2, v6, v7, v5}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_37
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_27 .. :try_end_37} :catch_38
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_37} :catch_38
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_27 .. :try_end_37} :catch_38

    goto :goto_40

    .line 98
    :catch_38
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "Create dir timeout in getAvailableSpaceInDirectory method."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-wide v3

    .line 102
    :cond_40
    :goto_40
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_88

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_4d

    goto :goto_88

    .line 106
    :cond_4d
    :try_start_4d
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v0

    mul-long/2addr v2, v0

    const-wide/32 v0, 0x7800000

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x0

    cmp-long v4, v2, v0

    if-gez v4, :cond_66

    move-wide v2, v0

    .line 109
    :cond_66
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "storage getAvailableSpaceInDirectory : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_7c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4d .. :try_end_7c} :catch_7d

    return-wide v2

    :catch_7d
    move-exception v0

    .line 112
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Fail to access internal storage"

    invoke-static {p0, v1, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-wide/16 v0, -0x3

    return-wide v0

    :cond_88
    :goto_88
    return-wide v3
.end method

.method public getBucketId()Ljava/lang/String;
    .registers 2

    .line 125
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator;->getCameraDirectory()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCameraDirectory()Ljava/lang/String;
    .registers 2

    .line 120
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/transsion/camera/utils/CameraUtil;->getExternalStoragePublicDirectory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Camera"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLeftSpace(Landroid/content/Context;)J
    .registers 3

    .line 524
    invoke-static {p1}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator;->isMemoryLow(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 525
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "isMemoryLow"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-wide/16 p0, 0x0

    return-wide p0

    .line 528
    :cond_10
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->getLeftSpace(Landroid/content/Context;)J

    move-result-wide p0

    return-wide p0
.end method

.method public getVideoTempFd(Ljava/lang/String;)Ljava/io/FileDescriptor;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public getVideoTempFileSize()J
    .registers 3

    .line 196
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator;->mTempVideoFilePath:Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 197
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator;->mTempVideoFilePath:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_16

    .line 199
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0

    :cond_16
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public insertProcessMedia(Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 5

    const/4 v0, 0x0

    .line 563
    :try_start_1
    const-string v1, "[MediaProvider]insertProcessMedia"

    invoke-static {v1}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 564
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 565
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[insertProcessMedia], uri:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_24} :catch_28
    .catchall {:try_start_1 .. :try_end_24} :catchall_30

    .line 569
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-object v0

    :catch_28
    move-exception p0

    .line 567
    :try_start_29
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_30

    .line 569
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-object v0

    :catchall_30
    move-exception p0

    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    .line 570
    throw p0
.end method

.method public makeCameraDirectory()Z
    .registers 4

    .line 130
    new-instance v0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/common/storage/InternalStorageOperator;)V

    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->runAsync(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    .line 138
    :try_start_9
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v1, v2, v0}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_10} :catch_12

    const/4 p0, 0x1

    return p0

    :catch_12
    move-exception p0

    .line 140
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public renameTempVideoFile(Landroidx/documentfile/provider/DocumentFile;Ljava/lang/String;)Z
    .registers 3

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public renameTempVideoFile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator;->getCameraDirectory()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 170
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_31

    const/4 p0, 0x0

    return p0

    .line 174
    :cond_31
    new-instance p1, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    return p0
.end method
