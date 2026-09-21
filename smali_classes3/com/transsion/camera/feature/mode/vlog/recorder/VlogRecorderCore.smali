.class public Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;
.super Lcom/transsion/camera/feature/mode/vlog/recorder/AbstractAsyncRecorderCore;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore$MediaRecorderListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field protected mAudioSource:I

.field protected mCameraListener:Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;

.field protected mCameraOperation:Lcom/transsion/camera/app/common/recorder/IVideoContract$ICameraRecorder;

.field protected mContext:Landroid/content/Context;

.field protected mInitPolicy:Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderPolicy;

.field protected mMediaRecorder:Landroid/media/MediaRecorder;

.field protected mMediaRecorderCallback:Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;

.field private final mMediaRecorderListener:Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore$MediaRecorderListener;

.field protected mProfile:Landroid/media/CamcorderProfile;

.field protected mRecorderProxyCallback:Lcom/transsion/camera/feature/mode/vlog/recorder/listener/IRecorderProxyCallback;

.field protected mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

.field private volatile mVideoState:Lcom/transsion/camera/app/common/recorder/data/VideoState;

.field protected mVideoStateCallback:Lcom/transsion/camera/app/common/recorder/IVideoContract$IVideoStateCallback;

.field protected mVideoSurface:Landroid/view/Surface;

.field protected mVlogRecordCallback:Lcom/transsion/camera/feature/mode/vlog/recorder/listener/IVlogRecordContract$IRecorderCallback;

.field protected mVlogRecordPolicy:Lcom/transsion/camera/feature/mode/vlog/recorder/listener/IVlogRecordContract$IVlogRecorderPolicy;

.field protected mbMuteRecorder:Z


# direct methods
.method static bridge synthetic -$$Nest$mstopMediaRecording(Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->stopMediaRecording(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 38
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 37
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/recorder/AbstractAsyncRecorderCore;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mAudioSource:I

    .line 50
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mbMuteRecorder:Z

    .line 52
    sget-object v0, Lcom/transsion/camera/app/common/recorder/data/VideoState;->STATE_UNKNOWN:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mVideoState:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    .line 67
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore$MediaRecorderListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore$MediaRecorderListener;-><init>(Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mMediaRecorderListener:Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore$MediaRecorderListener;

    return-void
.end method

.method private abortStartRecording(I)V
    .registers 3

    const/4 v0, 0x1

    .line 491
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->abortStartRecording(IZ)V

    return-void
.end method

.method private abortStartRecording(IZ)V
    .registers 5

    .line 495
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->releaseAudioFocus(Landroid/content/Context;)V

    .line 496
    sget-object v0, Lcom/transsion/camera/app/common/recorder/data/VideoState;->STATE_PREVIEWING:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->updateVideoState(Lcom/transsion/camera/app/common/recorder/data/VideoState;)V

    .line 497
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mMediaRecorderCallback:Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;

    invoke-interface {v0, p1, p2}, Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;->onMediaRecorderStopped(IZ)V

    .line 498
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mVlogRecordCallback:Lcom/transsion/camera/feature/mode/vlog/recorder/listener/IVlogRecordContract$IRecorderCallback;

    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/recorder/listener/IVlogRecordContract$IRecorderCallback;->onRecorderStopped(I)V

    return-void
.end method

.method private canStartMediaRecording()Z
    .registers 2

    .line 445
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_c

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mVideoState:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    sget-object v0, Lcom/transsion/camera/app/common/recorder/data/VideoState;->STATE_PRE_RECORDING:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    if-ne p0, v0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method private handleMediaRecorderException()V
    .registers 1

    .line 201
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->resetVideoState()V

    .line 202
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->resetMediaRecorder()V

    return-void
.end method

.method private handlePauseException(Ljava/lang/Exception;)V
    .registers 5

    .line 481
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handlePauseException] Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 482
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->handleMediaRecorderException()V

    return-void
.end method

.method private handleResumeException(Ljava/lang/Exception;)V
    .registers 5

    .line 486
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handleResumeException] Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 487
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->handleMediaRecorderException()V

    return-void
.end method

.method private handleStopException(Ljava/lang/Exception;)V
    .registers 5

    .line 519
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handleStopException] Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 520
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->releaseAudioFocus(Landroid/content/Context;)V

    .line 521
    sget-object p1, Lcom/transsion/camera/app/common/recorder/data/VideoState;->STATE_PREVIEWING:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->updateVideoState(Lcom/transsion/camera/app/common/recorder/data/VideoState;)V

    .line 522
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mMediaRecorderCallback:Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-interface {p1, v1, v0}, Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;->onMediaRecorderStopped(IZ)V

    .line 523
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mVlogRecordCallback:Lcom/transsion/camera/feature/mode/vlog/recorder/listener/IVlogRecordContract$IRecorderCallback;

    invoke-interface {p1, v1}, Lcom/transsion/camera/feature/mode/vlog/recorder/listener/IVlogRecordContract$IRecorderCallback;->onRecorderStopped(I)V

    .line 525
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz p0, :cond_35

    .line 526
    invoke-virtual {p0}, Landroid/media/MediaRecorder;->reset()V

    :cond_35
    return-void
.end method

.method private pauseMediaRecording()V
    .registers 2

    .line 462
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->pause()V

    .line 463
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mMediaRecorderCallback:Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;->onMediaRecorderPaused()V

    .line 464
    sget-object v0, Lcom/transsion/camera/app/common/recorder/data/VideoState;->STATE_PAUSED:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->updateVideoState(Lcom/transsion/camera/app/common/recorder/data/VideoState;)V
    :try_end_f
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception v0

    .line 466
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->handlePauseException(Ljava/lang/Exception;)V

    return-void
.end method

.method private resetVideoState()V
    .registers 4

    .line 277
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mVideoState:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    sget-object v1, Lcom/transsion/camera/app/common/recorder/data/VideoState;->STATE_UNKNOWN:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    if-eq v0, v1, :cond_27

    .line 278
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[resetVideoState] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mVideoState:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " --> STATE_PREVIEW"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 279
    sget-object v0, Lcom/transsion/camera/app/common/recorder/data/VideoState;->STATE_PREVIEW:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mVideoState:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    :cond_27
    return-void
.end method

.method private resumeMediaRecording()V
    .registers 2

    .line 472
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->resume()V

    .line 473
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mMediaRecorderCallback:Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;->onMediaRecorderResumed()V

    .line 474
    sget-object v0, Lcom/transsion/camera/app/common/recorder/data/VideoState;->STATE_RECORDING:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->updateVideoState(Lcom/transsion/camera/app/common/recorder/data/VideoState;)V
    :try_end_f
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception v0

    .line 476
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->handleResumeException(Ljava/lang/Exception;)V

    return-void
.end method

.method private sendMediaSurface(Z)V
    .registers 10

    .line 206
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMediaSurface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 207
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mMediaRecorderCallback:Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mVideoSurface:Landroid/view/Surface;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, p0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v5, p0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iget v6, p0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    move v7, p1

    invoke-interface/range {v2 .. v7}, Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;->onMediaRecorderPrepared(Landroid/view/Surface;IIIZ)V

    return-void
.end method

.method private startCameraRecording()V
    .registers 3

    .line 426
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mInitPolicy:Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderPolicy;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderPolicy;->checkPermitBeforeStart()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 427
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mMediaRecorderCallback:Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;->onMediaRecorderPreparing()V

    .line 428
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mVlogRecordCallback:Lcom/transsion/camera/feature/mode/vlog/recorder/listener/IVlogRecordContract$IRecorderCallback;

    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/vlog/recorder/listener/IVlogRecordContract$IRecorderCallback;->onRecorderPreparing()V

    .line 429
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->pauseAudioPlayBack(Landroid/content/Context;)Z

    .line 431
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->initializeRecorder()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mCameraOperation:Lcom/transsion/camera/app/common/recorder/IVideoContract$ICameraRecorder;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mCameraListener:Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/recorder/IVideoContract$ICameraRecorder;->startRecording(Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 432
    sget-object v0, Lcom/transsion/camera/app/common/recorder/data/VideoState;->STATE_PRE_RECORDING:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->updateVideoState(Lcom/transsion/camera/app/common/recorder/data/VideoState;)V

    return-void

    .line 434
    :cond_2f
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->releaseAudioFocus(Landroid/content/Context;)V

    .line 435
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mMediaRecorderCallback:Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;->onMediaRecorderPrepareAbort()V

    .line 436
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mVlogRecordCallback:Lcom/transsion/camera/feature/mode/vlog/recorder/listener/IVlogRecordContract$IRecorderCallback;

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/vlog/recorder/listener/IVlogRecordContract$IRecorderCallback;->onRecorderPrepareAbort()V

    return-void

    .line 439
    :cond_41
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mMediaRecorderCallback:Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;->onMediaRecorderPrepareAbort()V

    .line 440
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mVlogRecordCallback:Lcom/transsion/camera/feature/mode/vlog/recorder/listener/IVlogRecordContract$IRecorderCallback;

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/vlog/recorder/listener/IVlogRecordContract$IRecorderCallback;->onRecorderPrepareAbort()V

    return-void
.end method

.method private startMediaRecording()V
    .registers 3

    .line 450
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    .line 451
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mMediaRecorderCallback:Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;->onMediaRecorderStarted()V

    .line 452
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mVlogRecordCallback:Lcom/transsion/camera/feature/mode/vlog/recorder/listener/IVlogRecordContract$IRecorderCallback;

    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/vlog/recorder/listener/IVlogRecordContract$IRecorderCallback;->onRecorderStarted()V

    .line 453
    sget-object v0, Lcom/transsion/camera/app/common/recorder/data/VideoState;->STATE_RECORDING:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->updateVideoState(Lcom/transsion/camera/app/common/recorder/data/VideoState;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    return-void

    :catch_15
    move-exception v0

    .line 455
    sget-object v1, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 456
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->abortStartRecording(I)V

    return-void
.end method

.method private stopMediaRecording(I)V
    .registers 5

    .line 503
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mMediaRecorderCallback:Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;->onMediaRecorderStopping(IZ)V

    .line 504
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mVlogRecordCallback:Lcom/transsion/camera/feature/mode/vlog/recorder/listener/IVlogRecordContract$IRecorderCallback;

    invoke-interface {v0, p1}, Lcom/transsion/camera/feature/mode/vlog/recorder/listener/IVlogRecordContract$IRecorderCallback;->onRecorderStopping(I)V

    .line 505
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 506
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->releaseRecorder()V

    .line 507
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->releaseAudioFocus(Landroid/content/Context;)V

    .line 508
    sget-object v0, Lcom/transsion/camera/app/common/recorder/data/VideoState;->STATE_PREVIEWING:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->updateVideoState(Lcom/transsion/camera/app/common/recorder/data/VideoState;)V

    .line 509
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mMediaRecorderCallback:Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;

    invoke-interface {v0, p1, v1}, Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;->onMediaRecorderStopped(IZ)V

    .line 510
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mVlogRecordCallback:Lcom/transsion/camera/feature/mode/vlog/recorder/listener/IVlogRecordContract$IRecorderCallback;

    invoke-interface {v0, p1}, Lcom/transsion/camera/feature/mode/vlog/recorder/listener/IVlogRecordContract$IRecorderCallback;->onRecorderStopped(I)V
    :try_end_29
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_29} :catch_2a

    return-void

    :catch_2a
    move-exception p1

    .line 513
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->handleStopException(Ljava/lang/Exception;)V

    .line 514
    invoke-static {}, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->get()Lcom/transsion/camera/utils/dfx/inter/IExDetection;

    move-result-object p0

    const/4 p1, 0x2

    invoke-interface {p0, p1}, Lcom/transsion/camera/utils/dfx/inter/ICamError;->onCamError(I)V

    return-void
.end method


# virtual methods
.method protected handlePrepareException(Ljava/lang/Exception;)V
    .registers 5

    .line 195
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handlePrepareException] Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 196
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->sendMediaSurface(Z)V

    .line 197
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->handleMediaRecorderException()V

    return-void
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/mode/CommonVideoHelper;Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderPolicy;Lcom/transsion/camera/app/common/recorder/IVideoContract$ICameraRecorder;Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;Lcom/transsion/camera/app/common/recorder/IVideoContract$IVideoStateCallback;Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;Lcom/transsion/camera/feature/mode/vlog/recorder/listener/IRecorderProxyCallback;)V
    .registers 10

    .line 73
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mContext:Landroid/content/Context;

    .line 74
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    .line 75
    iput-object p4, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mInitPolicy:Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderPolicy;

    .line 76
    iput-object p6, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mMediaRecorderCallback:Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;

    .line 77
    iput-object p5, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mCameraOperation:Lcom/transsion/camera/app/common/recorder/IVideoContract$ICameraRecorder;

    .line 78
    iput-object p7, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mVideoStateCallback:Lcom/transsion/camera/app/common/recorder/IVideoContract$IVideoStateCallback;

    .line 79
    iput-object p8, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mCameraListener:Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;

    .line 80
    iput-object p9, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mRecorderProxyCallback:Lcom/transsion/camera/feature/mode/vlog/recorder/listener/IRecorderProxyCallback;

    .line 81
    const-string p2, "audio_source"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mAudioSource:I

    return-void
.end method

.method protected initializeRecorder()Z
    .registers 5

    .line 145
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initialRecorder start, mbMuteRecorder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mbMuteRecorder:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 147
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mbMuteRecorder:Z

    if-eqz v1, :cond_1f

    .line 148
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->releaseRecorder()V

    .line 151
    :cond_1f
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->resetMediaRecorder()V

    const/4 v1, 0x0

    .line 154
    :try_start_23
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 155
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mVlogRecordPolicy:Lcom/transsion/camera/feature/mode/vlog/recorder/listener/IVlogRecordContract$IVlogRecorderPolicy;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mProfile:Landroid/media/CamcorderProfile;

    invoke-interface {v2, v3}, Lcom/transsion/camera/feature/mode/vlog/recorder/listener/IVlogRecordContract$IVlogRecorderPolicy;->createMediaInfo(Landroid/media/CamcorderProfile;)Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;

    move-result-object v2

    if-nez v2, :cond_3b

    .line 158
    const-string v2, "initializeRecorder create media info failed"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    :catch_39
    move-exception v0

    goto :goto_67

    .line 162
    :cond_3b
    invoke-virtual {p0, v2}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->setOutputFile(Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;)V

    .line 163
    invoke-virtual {p0, v2}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->setProfile(Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;)V

    .line 164
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->getVideoOrientation()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 166
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mVideoSurface:Landroid/view/Surface;

    if-nez v2, :cond_54

    .line 167
    invoke-static {}, Landroid/media/MediaCodec;->createPersistentInputSurface()Landroid/view/Surface;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mVideoSurface:Landroid/view/Surface;

    .line 170
    :cond_54
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mVideoSurface:Landroid/view/Surface;

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setInputSurface(Landroid/view/Surface;)V

    .line 171
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->prepare()V

    .line 173
    const-string v2, "prepareRecorder end"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_65} :catch_39
    .catch Ljava/lang/IllegalStateException; {:try_start_23 .. :try_end_65} :catch_39
    .catch Ljava/lang/IllegalArgumentException; {:try_start_23 .. :try_end_65} :catch_39

    const/4 p0, 0x1

    return p0

    .line 178
    :goto_67
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->handlePrepareException(Ljava/lang/Exception;)V

    return v1
.end method

.method protected operationPrepared(Landroid/os/Message;)V
    .registers 4

    .line 292
    sget-object p1, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore$1;->$SwitchMap$com$transsion$camera$app$common$recorder$data$VideoState:[I

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mVideoState:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_43

    const/4 v0, 0x2

    if-eq p1, v0, :cond_43

    const/4 v0, 0x3

    if-eq p1, v0, :cond_38

    const/4 v1, 0x4

    if-eq p1, v1, :cond_34

    .line 305
    sget-object p1, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "operationPrepared called in  mVideoState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mVideoState:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " do nothing"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 302
    :cond_34
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->abortStartRecording(I)V

    return-void

    .line 298
    :cond_38
    sget-object p1, Lcom/transsion/camera/app/common/recorder/data/VideoState;->STATE_PREVIEW:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->updateVideoState(Lcom/transsion/camera/app/common/recorder/data/VideoState;)V

    .line 299
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mVideoStateCallback:Lcom/transsion/camera/app/common/recorder/IVideoContract$IVideoStateCallback;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/recorder/IVideoContract$IVideoStateCallback;->onVideoRestartPreviewed()V

    return-void

    .line 295
    :cond_43
    sget-object p1, Lcom/transsion/camera/app/common/recorder/data/VideoState;->STATE_PREVIEW:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->updateVideoState(Lcom/transsion/camera/app/common/recorder/data/VideoState;)V

    return-void
.end method

.method protected pauseResume(Landroid/os/Message;)V
    .registers 4

    .line 335
    sget-object p1, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pauseResume mVideoState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mVideoState:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 336
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore$1;->$SwitchMap$com$transsion$camera$app$common$recorder$data$VideoState:[I

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mVideoState:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_43

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3f

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pauseResume in unSupported mVideoState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mVideoState:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 341
    :cond_3f
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->resumeMediaRecording()V

    return-void

    .line 338
    :cond_43
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->pauseMediaRecording()V

    return-void
.end method

.method protected prepareVideoSurface(Landroid/os/Message;)V
    .registers 5

    .line 99
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "prepareVideoSurface start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 101
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/media/CamcorderProfile;

    if-nez p1, :cond_e

    return-void

    .line 107
    :cond_e
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mProfile:Landroid/media/CamcorderProfile;

    .line 108
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->resetMediaRecorder()V

    .line 111
    :try_start_13
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 112
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mInitPolicy:Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderPolicy;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mProfile:Landroid/media/CamcorderProfile;

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderPolicy;->createMediaInfo(Landroid/media/CamcorderProfile;Z)Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;

    move-result-object p1

    if-nez p1, :cond_2a

    .line 115
    const-string p0, "prepareVideoSurface create media info failed"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 119
    :cond_2a
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->setOutputFile(Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;)V

    const/4 v1, 0x0

    .line 120
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->setProfile(Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;)V

    .line 122
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->getVideoOrientation()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 124
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mVideoSurface:Landroid/view/Surface;

    if-eqz p1, :cond_41

    .line 125
    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    .line 128
    :cond_41
    invoke-static {}, Landroid/media/MediaCodec;->createPersistentInputSurface()Landroid/view/Surface;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mVideoSurface:Landroid/view/Surface;

    .line 129
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, p1}, Landroid/media/MediaRecorder;->setInputSurface(Landroid/view/Surface;)V

    .line 131
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p1}, Landroid/media/MediaRecorder;->prepare()V

    const/4 p1, 0x1

    .line 132
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->sendMediaSurface(Z)V

    .line 134
    const-string p0, "prepareVideoSurface end"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_5a} :catch_5b
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_5a} :catch_5b

    return-void

    :catch_5b
    move-exception p0

    .line 136
    sget-object p1, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepareVideoSurface exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected release(Landroid/os/Message;)V
    .registers 2

    .line 406
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->releaseRecorder()V

    return-void
.end method

.method protected releaseRecorder()V
    .registers 3

    .line 185
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_19

    .line 186
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 187
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 188
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 189
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 190
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mMediaRecorder:Landroid/media/MediaRecorder;

    :cond_19
    return-void
.end method

.method protected resetMediaRecorder()V
    .registers 3

    .line 212
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_c

    .line 213
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mMediaRecorder:Landroid/media/MediaRecorder;

    goto :goto_f

    .line 215
    :cond_c
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 218
    :goto_f
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mMediaRecorderListener:Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore$MediaRecorderListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 219
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mMediaRecorderListener:Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore$MediaRecorderListener;

    invoke-virtual {v0, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    return-void
.end method

.method protected setOutputFile(Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;)V
    .registers 6

    .line 223
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 224
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    goto :goto_1e

    .line 226
    :cond_10
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mMediaRecorder:Landroid/media/MediaRecorder;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->getFileTempPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/File;)V

    .line 229
    :goto_1e
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->getMaxDuration()I

    move-result v0

    if-lez v0, :cond_2d

    .line 230
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->getMaxDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 233
    :cond_2d
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->getMaxFileSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_40

    .line 234
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->getMaxFileSize()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    :cond_40
    return-void
.end method

.method protected setProfile(Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;)V
    .registers 6

    if-eqz p1, :cond_3d

    .line 239
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->isNeedAudio()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 240
    sget-object p1, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setProfile mAudioSource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mAudioSource:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 242
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mbMuteRecorder:Z

    if-nez p1, :cond_35

    .line 243
    iget p1, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mAudioSource:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2f

    .line 244
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    goto :goto_35

    .line 246
    :cond_2f
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 250
    :cond_35
    :goto_35
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {p1, p0}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    return-void

    .line 252
    :cond_3d
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    if-eqz p1, :cond_5b

    .line 254
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->getCaptureFPS()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_5b

    .line 255
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->getCaptureFPS()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    :cond_5b
    if-eqz p1, :cond_72

    .line 258
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->getBitRateCoefficient()I

    move-result v0

    if-lez v0, :cond_72

    .line 259
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->getBitRateCoefficient()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoBitRate:I

    mul-int/2addr v0, v1

    .line 260
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v0}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    goto :goto_7b

    .line 262
    :cond_72
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    :goto_7b
    if-eqz p1, :cond_8d

    .line 265
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->getVideoFrameRate()I

    move-result v0

    if-lez v0, :cond_8d

    .line 266
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->getVideoFrameRate()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    goto :goto_96

    .line 268
    :cond_8d
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 271
    :goto_96
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {p1, v1, v0}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 272
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mProfile:Landroid/media/CamcorderProfile;

    iget p0, p0, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {p1, p0}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    return-void
.end method

.method public setRecorderCallback(Lcom/transsion/camera/feature/mode/vlog/recorder/listener/IVlogRecordContract$IRecorderCallback;)V
    .registers 2

    .line 89
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mVlogRecordCallback:Lcom/transsion/camera/feature/mode/vlog/recorder/listener/IVlogRecordContract$IRecorderCallback;

    return-void
.end method

.method public setRecorderPolicy(Lcom/transsion/camera/feature/mode/vlog/recorder/listener/IVlogRecordContract$IVlogRecorderPolicy;)V
    .registers 2

    .line 85
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mVlogRecordPolicy:Lcom/transsion/camera/feature/mode/vlog/recorder/listener/IVlogRecordContract$IVlogRecorderPolicy;

    return-void
.end method

.method protected shouldConsumerStopCommand()Z
    .registers 2

    .line 416
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore$1;->$SwitchMap$com$transsion$camera$app$common$recorder$data$VideoState:[I

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mVideoState:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_12

    const/4 v0, 0x6

    if-eq p0, v0, :cond_12

    const/4 p0, 0x0

    return p0

    :cond_12
    const/4 p0, 0x1

    return p0
.end method

.method protected snapShot(Landroid/os/Message;)V
    .registers 2

    return-void
.end method

.method protected startMediaRecorder(Landroid/os/Message;)V
    .registers 5

    .line 367
    sget-object p1, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore$1;->$SwitchMap$com$transsion$camera$app$common$recorder$data$VideoState:[I

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mVideoState:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x4

    const/4 v1, 0x3

    if-eq p1, v0, :cond_2a

    .line 377
    sget-object p1, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startMediaRecorder in unSupported mVideoState:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mVideoState:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 378
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->abortStartRecording(I)V

    return-void

    .line 369
    :cond_2a
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->canStartMediaRecording()Z

    move-result p1

    if-eqz p1, :cond_34

    .line 370
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->startMediaRecording()V

    return-void

    .line 372
    :cond_34
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->abortStartRecording(I)V

    return-void
.end method

.method protected startStop(Landroid/os/Message;)V
    .registers 4

    .line 312
    sget-object p1, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startStop mVideoState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mVideoState:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 313
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore$1;->$SwitchMap$com$transsion$camera$app$common$recorder$data$VideoState:[I

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mVideoState:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_54

    const/4 v1, 0x5

    if-eq v0, v1, :cond_42

    const/4 v1, 0x6

    if-eq v0, v1, :cond_42

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startStop in unSupported mVideoState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mVideoState:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_42
    const/4 v0, 0x0

    .line 319
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->stopMediaRecording(I)V

    .line 323
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mRecorderProxyCallback:Lcom/transsion/camera/feature/mode/vlog/recorder/listener/IRecorderProxyCallback;

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/vlog/recorder/listener/IRecorderProxyCallback;->removeStartStopMessages()Z

    move-result p0

    if-eqz p0, :cond_53

    .line 324
    const-string p0, "remove StartStop messages"

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_53
    return-void

    .line 315
    :cond_54
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->startCameraRecording()V

    return-void
.end method

.method protected stop(Landroid/os/Message;)V
    .registers 5

    .line 351
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore$1;->$SwitchMap$com$transsion$camera$app$common$recorder$data$VideoState:[I

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mVideoState:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_31

    const/4 p1, 0x5

    if-eq v0, p1, :cond_2d

    const/4 p1, 0x6

    if-eq v0, p1, :cond_2d

    .line 360
    sget-object p1, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stop in unSupported mVideoState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mVideoState:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 354
    :cond_2d
    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->stopMediaRecording(I)V

    return-void

    .line 357
    :cond_31
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_37

    move v2, v0

    :cond_37
    const/4 p1, 0x3

    invoke-direct {p0, p1, v2}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->abortStartRecording(IZ)V

    return-void
.end method

.method protected storageUnmounted(Landroid/os/Message;)V
    .registers 4

    .line 385
    sget-object p1, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore$1;->$SwitchMap$com$transsion$camera$app$common$recorder$data$VideoState:[I

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mVideoState:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_31

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2c

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2c

    .line 394
    sget-object p1, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "storageUnmounted do nothing in mVideoState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mVideoState:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_2c
    const/4 p1, 0x0

    .line 388
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->stopMediaRecording(I)V

    return-void

    :cond_31
    const/4 p1, 0x3

    .line 391
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->abortStartRecording(I)V

    return-void
.end method

.method protected updateMuteRecorder(Landroid/os/Message;)V
    .registers 2

    return-void
.end method

.method protected updateVideoState(Lcom/transsion/camera/app/common/recorder/data/VideoState;)V
    .registers 5

    .line 284
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mVideoState:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    if-eq v0, p1, :cond_26

    .line 285
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateVideoState] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mVideoState:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 286
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->mVideoState:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    :cond_26
    return-void
.end method
