.class public Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/livephoto/LivePhotoManager$LiveHandler;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private final mFrameInfoLogger:Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;

.field private mLiveHandler:Landroid/os/Handler;

.field private mLiveMediaRecorder:Lcom/transsion/camera/app/common/livephoto/AbstractLiveMediaRecorder;

.field private final mLiveMediaRecorderStateLock:Ljava/lang/Object;

.field private mLiveShotEnabled:Z

.field private mLiveVideoSaveCallback:Lcom/transsion/camera/app/common/livephoto/ILiveVideoSaveCallback;

.field private mPreviewHeight:I

.field private mPreviewWidth:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmLiveVideoSaveCallback(Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;)Lcom/transsion/camera/app/common/livephoto/ILiveVideoSaveCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;->mLiveVideoSaveCallback:Lcom/transsion/camera/app/common/livephoto/ILiveVideoSaveCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 20
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "LivePhotoManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V
    .registers 4

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;->mLiveMediaRecorderStateLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;->mLiveMediaRecorder:Lcom/transsion/camera/app/common/livephoto/AbstractLiveMediaRecorder;

    .line 39
    iput-object p1, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 40
    new-instance p1, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;

    invoke-direct {p1, p2}, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;-><init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V

    iput-object p1, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;->mFrameInfoLogger:Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;

    .line 41
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "live_photo"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 43
    new-instance p2, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager$LiveHandler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager$LiveHandler;-><init>(Landroid/os/Looper;Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;)V

    iput-object p2, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;->mLiveHandler:Landroid/os/Handler;

    return-void
.end method

.method private getSaveCallback()Lcom/transsion/camera/app/common/livephoto/ILiveVideoSaveCallback;
    .registers 2

    .line 84
    new-instance v0, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager$1;-><init>(Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;)V

    return-object v0
.end method

.method private isValidPreviewSize(II)Z
    .registers 5

    const/16 p0, 0x1e0

    .line 182
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    if-lez p1, :cond_2b

    if-gtz p2, :cond_c

    goto :goto_2b

    :cond_c
    if-lt p1, p0, :cond_13

    if-ge p2, p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x1

    return p0

    .line 180
    :cond_13
    :goto_13
    sget-object p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 182
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2, v0, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 180
    const-string p2, "preview size too small: %dx%d (min required: %dx%d)"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 175
    :cond_2b
    :goto_2b
    sget-object p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "invalid preview size: width or height is zero"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1
.end method


# virtual methods
.method public capture(Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;I)V
    .registers 11

    .line 113
    iget-object v1, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;->mLiveMediaRecorderStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 114
    :try_start_3
    iget-object v0, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;->mLiveMediaRecorder:Lcom/transsion/camera/app/common/livephoto/AbstractLiveMediaRecorder;

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/livephoto/AbstractLiveMediaRecorder;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_2d

    const/4 v0, 0x1

    .line 115
    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->setLiveShotTask(Z)V

    .line 116
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->getJpegTimestamp()J

    move-result-wide v2

    .line 117
    iget-object v0, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;->mFrameInfoLogger:Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;

    if-eqz v0, :cond_1d

    .line 118
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->getCurrentTimeStamp()J

    move-result-wide v2

    :cond_1d
    move-wide v4, v2

    goto :goto_22

    :catchall_1f
    move-exception v0

    move-object p0, v0

    goto :goto_2f

    .line 120
    :goto_22
    iget-object v2, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;->mLiveMediaRecorder:Lcom/transsion/camera/app/common/livephoto/AbstractLiveMediaRecorder;

    invoke-direct {p0}, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;->getSaveCallback()Lcom/transsion/camera/app/common/livephoto/ILiveVideoSaveCallback;

    move-result-object v6

    move-object v7, p1

    move v3, p2

    invoke-virtual/range {v2 .. v7}, Lcom/transsion/camera/app/common/livephoto/AbstractLiveMediaRecorder;->capture(IJLcom/transsion/camera/app/common/livephoto/ILiveVideoSaveCallback;Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;)V

    .line 122
    :cond_2d
    monitor-exit v1

    return-void

    :goto_2f
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_1f

    throw p0
.end method

.method public frameAvailableSoon(I[FZ)V
    .registers 5

    .line 204
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;->mLiveShotEnabled:Z

    if-nez v0, :cond_5

    goto :goto_c

    .line 207
    :cond_5
    iget-object p0, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;->mLiveMediaRecorder:Lcom/transsion/camera/app/common/livephoto/AbstractLiveMediaRecorder;

    if-eqz p0, :cond_c

    .line 208
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/livephoto/AbstractLiveMediaRecorder;->frameAvailableSoon(I[FZ)V

    :cond_c
    :goto_c
    return-void
.end method

.method public isLivePhotoMediaRecorderPrepared()Z
    .registers 1

    .line 126
    iget-object p0, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;->mLiveMediaRecorder:Lcom/transsion/camera/app/common/livephoto/AbstractLiveMediaRecorder;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 129
    :cond_6
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/livephoto/AbstractLiveMediaRecorder;->isPrepared()Z

    move-result p0

    return p0
.end method

.method public pause()V
    .registers 3

    .line 47
    iget-object v0, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;->mLiveHandler:Landroid/os/Handler;

    if-eqz v0, :cond_23

    const/4 v1, 0x1

    .line 48
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 49
    iget-object v0, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;->mLiveHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 50
    iget-object v0, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;->mLiveHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 51
    iget-object v0, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;->mLiveHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;->mLiveHandler:Landroid/os/Handler;

    :cond_23
    return-void
.end method

.method public setLiveVideoSaveCallback(Lcom/transsion/camera/app/common/livephoto/ILiveVideoSaveCallback;)V
    .registers 2

    .line 80
    iput-object p1, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;->mLiveVideoSaveCallback:Lcom/transsion/camera/app/common/livephoto/ILiveVideoSaveCallback;

    return-void
.end method

.method public start()V
    .registers 2

    .line 133
    iget-object p0, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;->mLiveHandler:Landroid/os/Handler;

    if-eqz p0, :cond_f

    const/4 v0, 0x0

    .line 135
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 136
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_f
    return-void
.end method

.method public startLiveShot()V
    .registers 7

    .line 149
    sget-object v0, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "startLiveShot"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;->mLiveMediaRecorderStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 152
    :try_start_a
    iget v1, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;->mPreviewWidth:I

    iget v2, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;->mPreviewHeight:I

    invoke-direct {p0, v1, v2}, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;->isValidPreviewSize(II)Z

    move-result v1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_12} :catch_3c
    .catchall {:try_start_a .. :try_end_12} :catchall_16

    if-nez v1, :cond_18

    .line 153
    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception p0

    goto :goto_76

    .line 155
    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;->mLiveMediaRecorder:Lcom/transsion/camera/app/common/livephoto/AbstractLiveMediaRecorder;

    if-nez v1, :cond_3e

    .line 156
    const-string v1, "com.transsion.camera.feature.setting.livephoto.LiveMediaRecorder"

    iget-object v2, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    new-instance v3, Landroid/util/Size;

    iget v4, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;->mPreviewHeight:I

    iget v5, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;->mPreviewWidth:I

    invoke-direct {v3, v4, v5}, Landroid/util/Size;-><init>(II)V

    iget-object v4, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;->mFrameInfoLogger:Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;

    .line 157
    invoke-virtual {v4}, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->getLivePhotoQueue()Ljava/util/Queue;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    .line 156
    invoke-static {v1, v2}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/livephoto/AbstractLiveMediaRecorder;

    iput-object v1, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;->mLiveMediaRecorder:Lcom/transsion/camera/app/common/livephoto/AbstractLiveMediaRecorder;

    goto :goto_3e

    :catch_3c
    move-exception p0

    goto :goto_5e

    .line 159
    :cond_3e
    :goto_3e
    iget-object v1, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;->mLiveMediaRecorder:Lcom/transsion/camera/app/common/livephoto/AbstractLiveMediaRecorder;

    if-eqz v1, :cond_45

    .line 160
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/livephoto/AbstractLiveMediaRecorder;->start()V

    :cond_45
    const/4 v1, 0x1

    .line 162
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;->mLiveShotEnabled:Z

    .line 163
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsLivePhotoMovementLocusSupport:Z

    if-nez v1, :cond_58

    .line 164
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsLivePhotoAIFrameSelectionSupport:Z

    if-eqz v1, :cond_74

    .line 165
    :cond_58
    iget-object p0, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;->mFrameInfoLogger:Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->start()V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_5d} :catch_3c
    .catchall {:try_start_18 .. :try_end_5d} :catchall_16

    goto :goto_74

    .line 168
    :goto_5e
    :try_start_5e
    sget-object v1, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startLiveShot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 170
    :cond_74
    :goto_74
    monitor-exit v0

    return-void

    :goto_76
    monitor-exit v0
    :try_end_77
    .catchall {:try_start_5e .. :try_end_77} :catchall_16

    throw p0
.end method

.method public stop()V
    .registers 2

    .line 141
    iget-object p0, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;->mLiveHandler:Landroid/os/Handler;

    if-eqz p0, :cond_f

    const/4 v0, 0x1

    .line 143
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 144
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_f
    return-void
.end method

.method public stopLiveShot()V
    .registers 3

    .line 191
    sget-object v0, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "stopLiveShot"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;->mLiveMediaRecorderStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 193
    :try_start_a
    iget-object v1, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;->mLiveMediaRecorder:Lcom/transsion/camera/app/common/livephoto/AbstractLiveMediaRecorder;

    if-eqz v1, :cond_1c

    .line 194
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/livephoto/AbstractLiveMediaRecorder;->stop()V

    .line 195
    iget-object v1, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;->mLiveMediaRecorder:Lcom/transsion/camera/app/common/livephoto/AbstractLiveMediaRecorder;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/livephoto/AbstractLiveMediaRecorder;->release()V

    const/4 v1, 0x0

    .line 196
    iput-object v1, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;->mLiveMediaRecorder:Lcom/transsion/camera/app/common/livephoto/AbstractLiveMediaRecorder;

    goto :goto_1c

    :catchall_1a
    move-exception p0

    goto :goto_26

    :cond_1c
    :goto_1c
    const/4 v1, 0x0

    .line 198
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;->mLiveShotEnabled:Z

    .line 199
    iget-object p0, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;->mFrameInfoLogger:Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/livephoto/LivePhotoFrameInfoLogger;->stop()V

    .line 200
    monitor-exit v0

    return-void

    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_a .. :try_end_27} :catchall_1a

    throw p0
.end method

.method public updatePreviewSize(II)V
    .registers 6

    .line 213
    sget-object v0, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePreviewSize, previewWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", previewHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 214
    iput p1, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;->mPreviewWidth:I

    .line 215
    iput p2, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;->mPreviewHeight:I

    return-void
.end method
