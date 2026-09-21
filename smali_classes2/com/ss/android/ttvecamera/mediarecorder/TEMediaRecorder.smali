.class public Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder$ErrorCallback;
    }
.end annotation


# static fields
.field private static final ORIENTATIONS:Landroid/util/SparseIntArray;

.field public static final PAUSE:I = 0x2

.field public static final RESUME:I = 0x3

.field private static final ROTATION_DEGREE_0:I = 0x0

.field private static final ROTATION_DEGREE_180:I = 0xb4

.field private static final ROTATION_DEGREE_270:I = 0x10e

.field private static final ROTATION_DEGREE_30:I = 0x1e

.field private static final ROTATION_DEGREE_360:I = 0x168

.field private static final ROTATION_DEGREE_90:I = 0x5a

.field public static final START:I = 0x0

.field public static final STOP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TEMediaRecorder"

.field public static final TER_INIT_IO_ERROR:I = -0x25c

.field public static final TER_RUNNING_TIME_ERROR:I = -0x25e

.field public static final TER_STATE_ERROR:I = -0x25d


# instance fields
.field private mBackgroundHandler:Landroid/os/Handler;

.field private mBackgroundThread:Landroid/os/HandlerThread;

.field private mBitRate:I

.field private mEnableStatus:Z

.field private mErrorCallback:Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder$ErrorCallback;

.field private mFolderPath:Ljava/lang/String;

.field private mFrameRate:I

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mOrientaton:I

.field private mPreviewSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

.field private mState:I

.field private mSupportSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/ttvecamera/TEFrameSizei;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoFile:Ljava/lang/String;

.field private mVideoSize:Landroid/util/Size;

.field private mVideoSurface:Landroid/view/Surface;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 40
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->ORIENTATIONS:Landroid/util/SparseIntArray;

    const/16 v1, 0x5a

    const/4 v2, 0x0

    .line 64
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v1, 0x1

    .line 65
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v1, 0x2

    const/16 v2, 0x10e

    .line 66
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v1, 0x3

    const/16 v2, 0xb4

    .line 67
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->mEnableStatus:Z

    const/4 v1, -0x1

    .line 36
    iput v1, p0, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->mState:I

    const/4 v1, 0x0

    .line 38
    iput-object v1, p0, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->mVideoSurface:Landroid/view/Surface;

    .line 53
    new-instance v1, Landroid/util/Size;

    const/16 v2, 0x500

    const/16 v3, 0x2d0

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    iput-object v1, p0, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->mVideoSize:Landroid/util/Size;

    const/16 v1, 0x1e

    .line 55
    iput v1, p0, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->mFrameRate:I

    const v1, 0x989680

    .line 57
    iput v1, p0, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->mBitRate:I

    .line 59
    iput v0, p0, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->mOrientaton:I

    .line 96
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 97
    invoke-direct {p0}, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->startBackgroundThread()V

    return-void
.end method

.method private adjustRecordSize()V
    .registers 2

    .line 337
    iget-object v0, p0, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->mSupportSizes:Ljava/util/List;

    if-eqz v0, :cond_c

    iget-object p0, p0, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->mPreviewSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    if-nez p0, :cond_9

    goto :goto_c

    .line 341
    :cond_9
    invoke-static {v0, p0}, Lcom/ss/android/ttvecamera/TECameraUtils;->calcPreviewSize(Ljava/util/List;Lcom/ss/android/ttvecamera/TEFrameSizei;)Lcom/ss/android/ttvecamera/TEFrameSizei;

    :cond_c
    :goto_c
    return-void
.end method

.method private clearInvalidFile()V
    .registers 8

    .line 191
    iget-object v0, p0, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->mVideoFile:Ljava/lang/String;

    if-eqz v0, :cond_67

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_67

    .line 192
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->mVideoFile:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TEMediaRecorder"

    invoke-static {v2, v1}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_48

    .line 195
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 196
    const-string v0, ""

    iput-object v0, p0, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->mVideoFile:Ljava/lang/String;

    .line 197
    const-string p0, "invalid video file deleted!"

    invoke-static {v2, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 201
    :cond_48
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 204
    :try_start_4d
    iget-object v1, p0, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->mVideoFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 v1, 0x9

    .line 205
    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_5b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4d .. :try_end_5b} :catch_5c

    goto :goto_64

    .line 209
    :catch_5c
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->deleteFile()V

    .line 210
    const-string p0, "cannot access the file"

    invoke-static {v2, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :goto_64
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    :cond_67
    return-void
.end method

.method private handleError(I)V
    .registers 2

    .line 311
    iget-object p0, p0, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->mErrorCallback:Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder$ErrorCallback;

    if-eqz p0, :cond_7

    .line 312
    invoke-interface {p0, p1}, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder$ErrorCallback;->onError(I)V

    :cond_7
    return-void
.end method

.method private startBackgroundThread()V
    .registers 3

    .line 346
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MediaRecorderBackground"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 347
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 348
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->mBackgroundHandler:Landroid/os/Handler;

    return-void
.end method

.method private stopBackgroundThread()V
    .registers 2

    .line 352
    iget-object v0, p0, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->mBackgroundThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_16

    .line 353
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 355
    :try_start_7
    iget-object v0, p0, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    const/4 v0, 0x0

    .line 356
    iput-object v0, p0, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 357
    iput-object v0, p0, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->mBackgroundHandler:Landroid/os/Handler;
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_11} :catch_12

    return-void

    :catch_12
    move-exception p0

    .line 359
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_16
    return-void
.end method


# virtual methods
.method public createRecordSurface()Landroid/view/Surface;
    .registers 2

    .line 296
    iget-object v0, p0, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->mVideoSurface:Landroid/view/Surface;

    if-nez v0, :cond_a

    .line 297
    invoke-static {}, Landroid/media/MediaCodec;->createPersistentInputSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->mVideoSurface:Landroid/view/Surface;

    .line 299
    :cond_a
    iget-object p0, p0, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->mVideoSurface:Landroid/view/Surface;

    return-object p0
.end method

.method public deleteFile()V
    .registers 5

    .line 217
    iget-object v0, p0, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->mVideoFile:Ljava/lang/String;

    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 218
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->mVideoFile:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TEMediaRecorder"

    invoke-static {v2, v1}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 221
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 222
    const-string v0, ""

    iput-object v0, p0, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->mVideoFile:Ljava/lang/String;

    .line 223
    const-string p0, "invalid video file deleted!"

    invoke-static {v2, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3d
    return-void
.end method

.method public getImageRotation(II)I
    .registers 5

    .line 317
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getImageRotation: mSensorOrientation = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TEMediaRecorder"

    invoke-static {v0, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x14a

    const/4 v1, 0x0

    if-gt p2, p0, :cond_40

    const/16 p0, 0x1e

    if-ge p2, p0, :cond_20

    goto :goto_40

    :cond_20
    const/16 p0, 0x3c

    if-le p2, p0, :cond_2b

    const/16 p0, 0x78

    if-ge p2, p0, :cond_2b

    const/16 v1, 0x5a

    goto :goto_40

    :cond_2b
    const/16 p0, 0x96

    if-le p2, p0, :cond_36

    const/16 p0, 0xd2

    if-ge p2, p0, :cond_36

    const/16 v1, 0xb4

    goto :goto_40

    :cond_36
    const/16 p0, 0xf0

    if-le p2, p0, :cond_40

    const/16 p0, 0x12c

    if-ge p2, p0, :cond_40

    const/16 v1, 0x10e

    :cond_40
    :goto_40
    add-int/2addr v1, p1

    .line 331
    rem-int/lit16 v1, v1, 0x168

    .line 332
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getImageRotation: imageRotation = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public pause()Z
    .registers 4

    .line 246
    const-string v0, "pauseRecord end"

    const-string v1, "TEMediaRecorder"

    :try_start_4
    iget-object v2, p0, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->pause()V

    .line 247
    const-string v2, "mMediaRecorder pause"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_e} :catch_15
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 254
    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :catchall_13
    move-exception p0

    goto :goto_24

    .line 250
    :catch_15
    :try_start_15
    const-string v2, "mMediaRecorder pause state error"

    invoke-static {v1, v2}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, -0x25d

    .line 251
    invoke-direct {p0, v2}, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->handleError(I)V
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_13

    .line 254
    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :goto_24
    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    throw p0
.end method

.method public prepare()V
    .registers 1

    return-void
.end method

.method public release()V
    .registers 5

    .line 278
    const-string v0, "[schedule] releaseMediaRecorder"

    const-string v1, "TEMediaRecorder"

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_42

    .line 280
    const-string v0, "Releasing media recorder."

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :try_start_10
    iget-object v0, p0, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V
    :try_end_15
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_15} :catch_16

    goto :goto_34

    :catch_16
    move-exception v0

    .line 284
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "media recorder maybe has been released! msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x25d

    .line 285
    invoke-direct {p0, v0}, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->handleError(I)V

    .line 287
    :goto_34
    invoke-direct {p0}, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->clearInvalidFile()V

    .line 288
    iget-object v0, p0, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    const/4 v0, 0x0

    .line 289
    iput-object v0, p0, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 290
    invoke-direct {p0}, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->stopBackgroundThread()V

    :cond_42
    return-void
.end method

.method public resume()Z
    .registers 4

    .line 260
    const-string v0, "resume end"

    const-string v1, "[schedule] resume recording"

    const-string v2, "TEMediaRecorder"

    invoke-static {v2, v1}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    :try_start_9
    iget-object v1, p0, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->resume()V
    :try_end_e
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_e} :catch_15
    .catchall {:try_start_9 .. :try_end_e} :catchall_13

    .line 269
    invoke-static {v2, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :catchall_13
    move-exception p0

    goto :goto_24

    .line 265
    :catch_15
    :try_start_15
    const-string v1, "mMediaRecorder resume state error"

    invoke-static {v2, v1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, -0x25d

    .line 266
    invoke-direct {p0, v1}, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->handleError(I)V
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_13

    .line 269
    invoke-static {v2, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :goto_24
    invoke-static {v2, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    throw p0
.end method

.method public setErrorCallback(Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder$ErrorCallback;)V
    .registers 2

    .line 369
    iput-object p1, p0, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->mErrorCallback:Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder$ErrorCallback;

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .registers 4

    .line 134
    const-string v0, "TEMediaRecorder"

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 135
    :cond_a
    const-string v1, "empty file name"

    invoke-static {v0, v1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :cond_f
    invoke-direct {p0}, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->clearInvalidFile()V

    .line 138
    iput-object p1, p0, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->mVideoFile:Ljava/lang/String;

    .line 139
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file path = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->mVideoFile:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setPreviewSize(Lcom/ss/android/ttvecamera/TEFrameSizei;)V
    .registers 2

    .line 307
    iput-object p1, p0, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->mPreviewSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    return-void
.end method

.method public setRecorderSetting(IIII)V
    .registers 6

    .line 127
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p1, p2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->mVideoSize:Landroid/util/Size;

    .line 128
    iput p3, p0, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->mFrameRate:I

    .line 129
    iput p4, p0, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->mBitRate:I

    return-void
.end method

.method public setSupportSizes(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/ttvecamera/TEFrameSizei;",
            ">;)V"
        }
    .end annotation

    .line 303
    iput-object p1, p0, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->mSupportSizes:Ljava/util/List;

    return-void
.end method

.method public start()V
    .registers 4

    .line 175
    const-string v0, "start end"

    const-string v1, "TEMediaRecorder"

    :try_start_4
    iget-object v2, p0, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->start()V

    .line 176
    const-string v2, "Recording starts!"

    invoke-static {v1, v2}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_e} :catch_25
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_e} :catch_14
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    .line 186
    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_12
    move-exception p0

    goto :goto_34

    .line 182
    :catch_14
    :try_start_14
    const-string v2, "start error: runtime"

    invoke-static {v1, v2}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->deleteFile()V

    const/16 v2, -0x25e

    .line 184
    invoke-direct {p0, v2}, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->handleError(I)V
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_12

    .line 186
    :goto_21
    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_33

    .line 178
    :catch_25
    :try_start_25
    const-string v2, "mMediaRecorder prepare not well!"

    invoke-static {v1, v2}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-direct {p0}, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->clearInvalidFile()V

    const/16 v2, -0x25d

    .line 180
    invoke-direct {p0, v2}, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->handleError(I)V
    :try_end_32
    .catchall {:try_start_25 .. :try_end_32} :catchall_12

    goto :goto_21

    :goto_33
    return-void

    .line 186
    :goto_34
    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    throw p0
.end method

.method public startRecord(I)V
    .registers 3

    .line 101
    iput p1, p0, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->mOrientaton:I

    .line 102
    iget p1, p0, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->mState:I

    if-eqz p1, :cond_13

    .line 103
    iget-object p1, p0, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v0, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder$1;

    invoke-direct {v0, p0}, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder$1;-><init>(Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    .line 110
    iput p1, p0, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->mState:I

    :cond_13
    return-void
.end method

.method public stop()V
    .registers 6

    .line 230
    const-string v0, "stopRecord end"

    const-string v1, "TEMediaRecorder"

    :try_start_4
    iget-object v2, p0, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->stop()V
    :try_end_9
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_9} :catch_34
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_9} :catch_f
    .catchall {:try_start_4 .. :try_end_9} :catchall_d

    .line 239
    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_d
    move-exception p0

    goto :goto_40

    :catch_f
    move-exception v2

    .line 235
    :try_start_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "going to clean up the invalid output file, exception message = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->deleteFile()V

    const/16 v2, -0x25e

    .line 237
    invoke-direct {p0, v2}, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->handleError(I)V
    :try_end_30
    .catchall {:try_start_10 .. :try_end_30} :catchall_d

    .line 239
    :goto_30
    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3f

    .line 232
    :catch_34
    :try_start_34
    const-string v2, "mMediaRecorder stop state error"

    invoke-static {v1, v2}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, -0x25d

    .line 233
    invoke-direct {p0, v2}, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->handleError(I)V
    :try_end_3e
    .catchall {:try_start_34 .. :try_end_3e} :catchall_d

    goto :goto_30

    :goto_3f
    return-void

    .line 239
    :goto_40
    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    throw p0
.end method

.method public stopRecord()V
    .registers 4

    .line 115
    iget v0, p0, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_11

    .line 116
    iget-object v0, p0, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v2, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder$2;

    invoke-direct {v2, p0}, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder$2;-><init>(Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 122
    iput v1, p0, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->mState:I

    :cond_11
    return-void
.end method
