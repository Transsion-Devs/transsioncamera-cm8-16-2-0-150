.class public Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;
.super Lcom/transsion/camera/app/common/livephoto/AbstractLiveMediaRecorder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder$CaptureShotRequest;
    }
.end annotation


# static fields
.field private static final AUDIO_BIT_RATE:I = 0xfa00

.field private static final AUDIO_CHANNELS:I = 0x1

.field private static final AUDIO_FORMAT:I = 0x2

.field private static final AUDIO_MIME_TYPE:Ljava/lang/String; = "audio/mp4a-latm"

.field private static final AUDIO_SAMPLE_RATE:I = 0xac44

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final VIDEO_BIT_RATE:I = 0xe4e1c0

.field private static final VIDEO_BIT_RATE_REQUEST_SYNC:I = 0x1312d00

.field private static final VIDEO_FRAME_RATE:I = 0x1e

.field private static final VIDEO_I_FRAME_INTERVAL_DEFAULT:F = 0.1f

.field private static final VIDEO_I_FRAME_INTERVAL_REQUEST_SYNC:F = 1.0f

.field private static final VIDEO_MIME_TYPE:Ljava/lang/String; = "video/avc"


# instance fields
.field private mBstAIFrameSlFilter:Lcom/bst/aiframesl/BstAIFrameSlFilter;

.field private final mBstAIFrameSlFilterGuard:Ljava/lang/Object;

.field private final mBstAIFrameSlFilterReleased:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mCaptureShotRequestScheduler:Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundTaskScheduler;

.field private final mIPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

.field private final mLiveAudioEncoder:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveAudioEncoder;

.field private final mLiveVideoEncoder:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveVideoEncoder;

.field private mRecorderHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$B7hQ64KPZ1VIhWEziFMZVF9wmU8(Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;->lambda$new$2(Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dE51eATOes8MwAjL1WDpOez-K70(Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveVideoEncoder;Landroid/opengl/EGLContext;)V
    .registers 2

    .line 278
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveVideoEncoder;->setEglContext(Landroid/opengl/EGLContext;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jIkE7rmIate-2stWWe7JqkoAYAE(Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveVideoEncoder;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;->lambda$new$1(Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveVideoEncoder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 44
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "LiveMediaRecorder"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/IAppUI;Landroid/util/Size;Ljava/util/Queue;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/camera/app/common/IAppUI;",
            "Landroid/util/Size;",
            "Ljava/util/Queue<",
            "Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;",
            ">;)V"
        }
    .end annotation

    .line 257
    invoke-direct {p0}, Lcom/transsion/camera/app/common/livephoto/AbstractLiveMediaRecorder;-><init>()V

    .line 63
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;->mBstAIFrameSlFilterReleased:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;->mBstAIFrameSlFilterGuard:Ljava/lang/Object;

    .line 258
    sget-object v0, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LiveMediaRecorder: size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 259
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;->mIPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    .line 261
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;->initRecorderHandler()V

    .line 263
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mLivePhotoVideoDuration:I

    int-to-long v2, p1

    const-wide/16 v0, 0x2

    .line 264
    div-long v4, v2, v0

    .line 265
    new-instance v0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveVideoEncoder;

    invoke-static {p2}, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;->createVideoFormat(Landroid/util/Size;)Landroid/media/MediaFormat;

    move-result-object v1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveVideoEncoder;-><init>(Landroid/media/MediaFormat;JJLjava/util/Queue;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;->mLiveVideoEncoder:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveVideoEncoder;

    .line 267
    new-instance p1, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;)V

    .line 284
    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->setMediaEncoderListener(Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaEncoderListener;)V

    .line 286
    new-instance v0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveAudioEncoder;

    const p2, 0xac44

    const/4 p3, 0x1

    invoke-static {p2, p3}, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;->createAudioFormat(II)Landroid/media/MediaFormat;

    move-result-object v1

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveAudioEncoder;-><init>(Landroid/media/MediaFormat;JJLjava/util/Queue;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;->mLiveAudioEncoder:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveAudioEncoder;

    .line 288
    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->setMediaEncoderListener(Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaEncoderListener;)V

    .line 290
    new-instance p1, Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundTaskScheduler;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundTaskScheduler;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;->mCaptureShotRequestScheduler:Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundTaskScheduler;

    return-void
.end method

.method public static createAudioFormat(II)Landroid/media/MediaFormat;
    .registers 5

    .line 300
    const-string v0, "audio/mp4a-latm"

    invoke-static {v0, p0, p1}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p0

    .line 301
    const-string v0, "aac-profile"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 302
    const-string v0, "bitrate"

    const v2, 0xfa00

    invoke-virtual {p0, v0, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 303
    const-string v0, "channel-count"

    invoke-virtual {p0, v0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 304
    const-string p1, "pcm-encoding"

    invoke-virtual {p0, p1, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-object p0
.end method

.method public static createVideoFormat(Landroid/util/Size;)Landroid/media/MediaFormat;
    .registers 4

    .line 309
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    const-string/jumbo v1, "video/avc"

    invoke-static {v1, v0, p0}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p0

    .line 310
    const-string v0, "color-format"

    const v1, 0x7f000789

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 311
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsLivePhotoRequestSyncFrame:Z

    if-eqz v0, :cond_23

    const v1, 0x1312d00

    goto :goto_26

    :cond_23
    const v1, 0xe4e1c0

    .line 312
    :goto_26
    const-string v2, "bitrate"

    invoke-virtual {p0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 314
    const-string v1, "frame-rate"

    const/16 v2, 0x1e

    invoke-virtual {p0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    if-eqz v0, :cond_37

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_3a

    :cond_37
    const v0, 0x3dcccccd    # 0.1f

    .line 315
    :goto_3a
    const-string v1, "i-frame-interval"

    invoke-virtual {p0, v1, v0}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    .line 317
    const-string v0, "color-standard"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 318
    const-string v0, "color-range"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 319
    const-string v0, "color-transfer"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-object p0
.end method

.method private initRecorderHandler()V
    .registers 3

    .line 294
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LiveMediaRecorder"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 295
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 296
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;->mRecorderHandler:Landroid/os/Handler;

    return-void
.end method

.method private synthetic lambda$new$1(Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveVideoEncoder;)V
    .registers 4

    .line 275
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v0

    .line 276
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;->mRecorderHandler:Landroid/os/Handler;

    if-eqz p0, :cond_10

    .line 277
    new-instance v1, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, v0}, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveVideoEncoder;Landroid/opengl/EGLContext;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_10
    return-void
.end method

.method private synthetic lambda$new$2(Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;)V
    .registers 5

    .line 268
    sget-object v0, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrepared: encoder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 269
    instance-of v0, p1, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveVideoEncoder;

    if-eqz v0, :cond_29

    .line 270
    check-cast p1, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveVideoEncoder;

    .line 271
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;->mIPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-nez v0, :cond_21

    goto :goto_29

    .line 274
    :cond_21
    new-instance v1, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveVideoEncoder;)V

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/preview/IGLThreadRunnable;->executeInGLThread(Ljava/lang/Runnable;)V

    :cond_29
    :goto_29
    return-void
.end method


# virtual methods
.method public capture(IJLcom/transsion/camera/app/common/livephoto/ILiveVideoSaveCallback;Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;)V
    .registers 20

    .line 369
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;->mLiveAudioEncoder:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveAudioEncoder;

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;->mLiveVideoEncoder:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveVideoEncoder;

    if-nez v0, :cond_9

    goto :goto_61

    .line 373
    :cond_9
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getInstance()Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;

    move-result-object v0

    const/4 v1, 0x1

    move-object/from16 v6, p5

    .line 374
    invoke-virtual {v6, v1}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->convertToLivePhotoInfo(Z)Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;

    move-result-object v1

    .line 373
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->onLivePhotoStateChanged(Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;)V

    .line 376
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;->mLiveVideoEncoder:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveVideoEncoder;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->getCurrentPresentationTimeUs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_29

    .line 378
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;->mLiveAudioEncoder:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveAudioEncoder;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->getCurrentPresentationTimeUs()J

    move-result-wide v0

    .line 380
    :cond_29
    sget-object v2, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "capture: using unified snapshot time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 382
    iget-object v13, p0, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;->mCaptureShotRequestScheduler:Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundTaskScheduler;

    new-instance v2, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder$CaptureShotRequest;

    iget-object v3, p0, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;->mLiveAudioEncoder:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveAudioEncoder;

    .line 383
    invoke-virtual {v3, v0, v1}, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->capture(J)Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;->mLiveVideoEncoder:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveVideoEncoder;

    .line 384
    invoke-virtual {v4, v0, v1}, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->capture(J)Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;

    move-result-object v4

    iget-object v8, p0, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;->mBstAIFrameSlFilter:Lcom/bst/aiframesl/BstAIFrameSlFilter;

    iget-object v11, p0, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;->mBstAIFrameSlFilterReleased:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v12, p0, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;->mBstAIFrameSlFilterGuard:Ljava/lang/Object;

    move v5, p1

    move-wide/from16 v9, p2

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v12}, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder$CaptureShotRequest;-><init>(Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;ILcom/transsion/camera/app/common/livephoto/PhotoTaskData;Lcom/transsion/camera/app/common/livephoto/ILiveVideoSaveCallback;Lcom/bst/aiframesl/BstAIFrameSlFilter;JLjava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Object;)V

    .line 382
    invoke-virtual {v13, v2}, Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundTaskScheduler;->execute(Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundTaskScheduler$CancellableTask;)V

    return-void

    .line 370
    :cond_61
    :goto_61
    sget-object p0, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "capture: mLiveAudioEncoder or mLiveVideoEncoder is null, return"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public frameAvailableSoon(I[FZ)V
    .registers 4

    .line 333
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;->mLiveVideoEncoder:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveVideoEncoder;

    if-eqz p0, :cond_7

    .line 334
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveVideoEncoder;->frameAvailableSoon(I[FZ)V

    :cond_7
    return-void
.end method

.method public isPrepared()Z
    .registers 3

    .line 325
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;->mLiveAudioEncoder:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveAudioEncoder;

    if-eqz v0, :cond_18

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;->mLiveVideoEncoder:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveVideoEncoder;

    if-eqz v1, :cond_18

    .line 327
    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;->mLiveVideoEncoder:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveVideoEncoder;

    .line 328
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->isPrepared()Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public release()V
    .registers 7

    .line 340
    sget-object v0, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "release"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 341
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;->mCaptureShotRequestScheduler:Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundTaskScheduler;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundTaskScheduler;->shutdown()V

    .line 342
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;->mLiveVideoEncoder:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveVideoEncoder;

    if-eqz v1, :cond_13

    .line 343
    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->release()V

    .line 345
    :cond_13
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;->mLiveAudioEncoder:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveAudioEncoder;

    if-eqz v1, :cond_1a

    .line 346
    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->release()V

    .line 348
    :cond_1a
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;->mRecorderHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    if-eqz v1, :cond_2d

    .line 349
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 350
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;->mRecorderHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quitSafely()V

    .line 351
    iput-object v2, p0, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;->mRecorderHandler:Landroid/os/Handler;

    .line 353
    :cond_2d
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsLivePhotoAIFrameSelectionSupport:Z

    if-eqz v1, :cond_68

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;->mBstAIFrameSlFilter:Lcom/bst/aiframesl/BstAIFrameSlFilter;

    if-eqz v1, :cond_68

    .line 354
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;->mBstAIFrameSlFilterGuard:Ljava/lang/Object;

    monitor-enter v1

    .line 355
    :try_start_3c
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;->mBstAIFrameSlFilterReleased:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 356
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;->mBstAIFrameSlFilter:Lcom/bst/aiframesl/BstAIFrameSlFilter;

    invoke-virtual {v3}, Lcom/bst/aiframesl/BstAIFrameSlFilter;->bstAiframeSelectUnInit()Z

    move-result v3

    .line 357
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "release: isUnInitSuccess: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;->mBstAIFrameSlFilter:Lcom/bst/aiframesl/BstAIFrameSlFilter;

    invoke-virtual {v0}, Lcom/bst/aiframesl/BstAIFrameSlFilter;->release()V

    .line 359
    iput-object v2, p0, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;->mBstAIFrameSlFilter:Lcom/bst/aiframesl/BstAIFrameSlFilter;

    .line 360
    monitor-exit v1

    return-void

    :catchall_65
    move-exception p0

    monitor-exit v1
    :try_end_67
    .catchall {:try_start_3c .. :try_end_67} :catchall_65

    throw p0

    :cond_68
    return-void
.end method

.method public start()V
    .registers 5

    .line 391
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;->mLiveVideoEncoder:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveVideoEncoder;

    if-eqz v0, :cond_7

    .line 392
    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->start()V

    .line 394
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;->mLiveAudioEncoder:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveAudioEncoder;

    if-eqz v0, :cond_e

    .line 395
    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->start()V

    .line 397
    :cond_e
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsLivePhotoAIFrameSelectionSupport:Z

    if-eqz v0, :cond_53

    .line 398
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;->mBstAIFrameSlFilterGuard:Ljava/lang/Object;

    monitor-enter v0

    .line 399
    :try_start_19
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;->mBstAIFrameSlFilterReleased:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 400
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;->mBstAIFrameSlFilter:Lcom/bst/aiframesl/BstAIFrameSlFilter;

    if-nez v1, :cond_2f

    .line 401
    new-instance v1, Lcom/bst/aiframesl/BstAIFrameSlFilter;

    const-string v2, "bst_aiframesl"

    invoke-direct {v1, v2}, Lcom/bst/aiframesl/BstAIFrameSlFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;->mBstAIFrameSlFilter:Lcom/bst/aiframesl/BstAIFrameSlFilter;

    goto :goto_2f

    :catchall_2d
    move-exception p0

    goto :goto_51

    .line 403
    :cond_2f
    :goto_2f
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;->mBstAIFrameSlFilter:Lcom/bst/aiframesl/BstAIFrameSlFilter;

    invoke-static {}, Lcom/transsion/camera/app_info/AppInfo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bst/aiframesl/BstAIFrameSlFilter;->bstAiframeSelectInit(Landroid/content/Context;)Z

    move-result p0

    .line 404
    sget-object v1, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start: isInitSuccess: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 405
    monitor-exit v0

    return-void

    :goto_51
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_19 .. :try_end_52} :catchall_2d

    throw p0

    :cond_53
    return-void
.end method

.method public stop()V
    .registers 3

    .line 410
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;->mCaptureShotRequestScheduler:Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundTaskScheduler;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundTaskScheduler;->abortRemainingTasks()V

    .line 411
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;->mLiveAudioEncoder:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveAudioEncoder;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 412
    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->setMediaEncoderListener(Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaEncoderListener;)V

    .line 414
    :cond_d
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;->mLiveVideoEncoder:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveVideoEncoder;

    if-eqz v0, :cond_14

    .line 415
    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->setMediaEncoderListener(Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaEncoderListener;)V

    .line 417
    :cond_14
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;->mLiveVideoEncoder:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveVideoEncoder;

    if-eqz v0, :cond_1b

    .line 418
    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->stop()V

    .line 420
    :cond_1b
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;->mLiveAudioEncoder:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveAudioEncoder;

    if-eqz p0, :cond_22

    .line 421
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->stop()V

    :cond_22
    return-void
.end method
