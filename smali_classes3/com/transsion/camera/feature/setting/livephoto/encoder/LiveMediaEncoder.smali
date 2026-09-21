.class public abstract Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;
.super Landroid/media/MediaCodec$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;,
        Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$EventHandler;,
        Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShotListHandler;,
        Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;,
        Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaEncoderListener;,
        Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$Sample;
    }
.end annotation


# static fields
.field protected static final KEY_MIME:Ljava/lang/String; = "mime"

.field private static final LOG_MEDIA_ENCODER:Z = false

.field private static final MSG_RELEASE_ENCODER:I = 0x2

.field private static final MSG_START_ENCODING:I = 0x0

.field private static final MSG_STOP_ENCODING:I = 0x1

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mBaseTimeUs:J

.field private final mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field protected final mBufferingDurationUs:J

.field private final mCaptureDurationUs:J

.field private final mCaptureShotListHandler:Landroid/os/Handler;

.field private final mCaptureShotListHandlerThread:Landroid/os/HandlerThread;

.field protected final mCaptureShots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;",
            ">;"
        }
    .end annotation
.end field

.field protected volatile mCurrentPresentationTimeUs:J

.field protected final mDesiredMediaFormat:Landroid/media/MediaFormat;

.field protected final mEncodingThread:Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundWorker;

.field private final mEventHandler:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$EventHandler;

.field private final mHandlerHelper:Lcom/transsion/camera/feature/setting/livephoto/util/HandlerHelper;

.field protected volatile mIsBuffering:Z

.field protected volatile mIsInitialized:Z

.field private mLastPhotoTaskData:Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;

.field private mLastRawPtsUs:J

.field private mLastSmoothedPtsUs:J

.field private final mLivePhotoQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;",
            ">;"
        }
    .end annotation
.end field

.field private final mLivePhotoSupportHDR:Z

.field protected mMediaCodec:Landroid/media/MediaCodec;

.field private mMediaEncoderListener:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaEncoderListener;

.field protected mMediaRingBuffer:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;

.field private volatile mOutputFormatChanged:Z

.field private final mPostCaptureDurationUs:J


# direct methods
.method static bridge synthetic -$$Nest$msendConfirmationMessage(Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;Landroid/os/Handler;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->sendConfirmationMessage(Landroid/os/Handler;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 33
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "LiveMediaEncoder"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/media/MediaFormat;JJLjava/util/Queue;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaFormat;",
            "JJ",
            "Ljava/util/Queue<",
            "Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;",
            ">;)V"
        }
    .end annotation

    .line 389
    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mIsInitialized:Z

    const-wide/16 v1, 0x0

    .line 71
    iput-wide v1, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mLastRawPtsUs:J

    .line 72
    iput-wide v1, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mLastSmoothedPtsUs:J

    if-eqz p1, :cond_c3

    cmp-long v3, p4, p2

    if-gtz v3, :cond_bb

    cmp-long v3, p2, v1

    if-lez v3, :cond_b3

    cmp-long v1, p4, v1

    if-lez v1, :cond_b3

    .line 397
    const-string v1, "mime"

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_ab

    .line 399
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->isCodecSupported(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a3

    .line 400
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/utils/CustomConfigUtil;->getLivePhotoAlgorithmType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_35

    const/4 v2, 0x1

    goto :goto_36

    :cond_35
    move v2, v0

    .line 401
    :goto_36
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mLivePhotoSupportHDR:Z

    .line 402
    iput-object p6, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mLivePhotoQueue:Ljava/util/Queue;

    .line 403
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mDesiredMediaFormat:Landroid/media/MediaFormat;

    .line 404
    iput-wide p2, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mCaptureDurationUs:J

    sub-long p4, p2, p4

    .line 405
    iput-wide p4, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mPostCaptureDurationUs:J

    const-wide/16 p4, 0x2

    mul-long/2addr p2, p4

    .line 407
    iput-wide p2, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mBufferingDurationUs:J

    .line 408
    new-instance p4, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;

    sget-object p5, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p5, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    invoke-direct {p4, p1, p2, p3}, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;-><init>(Landroid/media/MediaFormat;J)V

    iput-object p4, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mMediaRingBuffer:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;

    .line 409
    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 410
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mCaptureShots:Ljava/util/List;

    .line 411
    new-instance p1, Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundWorker;

    const-string/jumbo p2, "video"

    invoke-virtual {v1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_70

    const-string p2, "VideoEncodingThread"

    goto :goto_72

    :cond_70
    const-string p2, "AudioEncodingThread"

    :goto_72
    invoke-direct {p1, p2}, Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundWorker;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mEncodingThread:Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundWorker;

    .line 412
    new-instance p2, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$EventHandler;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundWorker;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$EventHandler;-><init>(Landroid/os/Looper;Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mEventHandler:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$EventHandler;

    .line 413
    new-instance p1, Lcom/transsion/camera/feature/setting/livephoto/util/HandlerHelper;

    invoke-direct {p1}, Lcom/transsion/camera/feature/setting/livephoto/util/HandlerHelper;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mHandlerHelper:Lcom/transsion/camera/feature/setting/livephoto/util/HandlerHelper;

    .line 414
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "snapshot_list"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 415
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mCaptureShotListHandlerThread:Landroid/os/HandlerThread;

    .line 416
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 417
    new-instance p2, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShotListHandler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShotListHandler;-><init>(Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mCaptureShotListHandler:Landroid/os/Handler;

    .line 418
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mIsBuffering:Z

    return-void

    .line 421
    :cond_a3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mimeType is not supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 423
    :cond_ab
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mimeType is not specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 425
    :cond_b3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "captureDurationUs and preCaptureDurationUs must be positive"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 394
    :cond_bb
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "preCaptureDurationUs greater than captureDurationUs"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 391
    :cond_c3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "media format is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private calculateSmoothedPts(J)J
    .registers 7

    .line 597
    iget-wide v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mLastRawPtsUs:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_d

    .line 598
    iput-wide p1, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mLastRawPtsUs:J

    .line 599
    iget-wide p0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mBaseTimeUs:J

    return-wide p0

    :cond_d
    sub-long v0, p1, v0

    const-wide/32 v2, 0xc350

    .line 603
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 604
    iget-wide v2, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mLastSmoothedPtsUs:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mLastSmoothedPtsUs:J

    .line 605
    iput-wide p1, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mLastRawPtsUs:J

    return-wide v2
.end method

.method private isCodecSupported(Ljava/lang/String;)Z
    .registers 10

    .line 429
    new-instance p0, Landroid/media/MediaCodecList;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 430
    invoke-virtual {p0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_d
    if-ge v3, v1, :cond_2e

    aget-object v4, p0, v3

    .line 431
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 432
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v6, v2

    :goto_1d
    if-ge v6, v5, :cond_2b

    aget-object v7, v4, v6

    .line 433
    invoke-virtual {v7, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_28

    return v0

    :cond_28
    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_2e
    return v2
.end method

.method private sendConfirmationMessage(Landroid/os/Handler;)V
    .registers 2

    if-eqz p1, :cond_10

    .line 282
    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p0

    .line 283
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 284
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_10
    return-void
.end method


# virtual methods
.method public capture(J)Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;
    .registers 13

    .line 634
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mIsBuffering:Z

    if-nez v0, :cond_d

    .line 635
    sget-object p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "capture: media codec has not been started yet"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_d
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_15

    .line 639
    iget-wide p1, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mCurrentPresentationTimeUs:J

    :cond_15
    move-wide v7, p1

    .line 641
    iget-wide p1, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mPostCaptureDurationUs:J

    add-long v5, v7, p1

    .line 642
    iget-wide p1, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mCaptureDurationUs:J

    sub-long p1, v5, p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 643
    sget-object p1, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "capture, snapshotTime: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", head: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", tail: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 644
    new-instance v2, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v9

    invoke-direct/range {v2 .. v9}, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;-><init>(JJJLandroid/media/MediaFormat;)V

    .line 645
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mCaptureShots:Ljava/util/List;

    monitor-enter p1

    .line 646
    :try_start_56
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mCaptureShots:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 647
    monitor-exit p1

    return-object v2

    :catchall_5d
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_60
    .catchall {:try_start_56 .. :try_end_60} :catchall_5d

    throw p0
.end method

.method public doRelease()V
    .registers 6

    .line 488
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 489
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 490
    iput-object v1, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    .line 492
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mEncodingThread:Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundWorker;

    if-eqz v0, :cond_29

    .line 494
    :try_start_e
    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundWorker;->quit()V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_11} :catch_12

    goto :goto_29

    :catch_12
    move-exception v0

    .line 496
    sget-object v2, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doRelease: failed to stop encoding thread: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 499
    :cond_29
    :goto_29
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mCaptureShotListHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_30

    .line 500
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 502
    :cond_30
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mMediaRingBuffer:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;

    if-eqz v0, :cond_37

    .line 503
    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->clear()V

    .line 505
    :cond_37
    iput-object v1, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mLastPhotoTaskData:Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;

    return-void
.end method

.method public doStart()V
    .registers 3

    .line 513
    sget-object v0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "doStart"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 514
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mOutputFormatChanged:Z

    .line 515
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_11

    .line 516
    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 518
    :cond_11
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mMediaEncoderListener:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaEncoderListener;

    if-eqz v0, :cond_18

    .line 519
    invoke-interface {v0, p0}, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaEncoderListener;->onPrepared(Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;)V

    :cond_18
    return-void
.end method

.method public doStop()V
    .registers 3

    .line 524
    sget-object v0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "doStop"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 525
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mOutputFormatChanged:Z

    .line 526
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_28

    .line 528
    :try_start_e
    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    .line 529
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 530
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p0}, Landroid/media/MediaCodec;->reset()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1b} :catch_1c

    return-void

    :catch_1c
    move-exception p0

    .line 532
    sget-object v0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "doStop: "

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_28
    return-void
.end method

.method public getCurrentPresentationTimeUs()J
    .registers 3

    .line 630
    iget-wide v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mCurrentPresentationTimeUs:J

    return-wide v0
.end method

.method public getNextPresentationTimeUs(J)J
    .registers 3

    return-wide p1
.end method

.method public isPrepared()Z
    .registers 4

    .line 543
    monitor-enter p0

    .line 544
    :try_start_1
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mOutputFormatChanged:Z

    .line 545
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_1b

    .line 546
    sget-object p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPrepared: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    :catchall_1b
    move-exception v0

    .line 545
    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .registers 4

    .line 552
    sget-object p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onError: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .registers 3

    return-void
.end method

.method public onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .registers 13

    .line 562
    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 563
    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->getOutputFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v2, "mime"

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    aget-object v7, v0, v6

    if-eqz v1, :cond_82

    .line 564
    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v0, :cond_82

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mIsBuffering:Z

    if-nez v0, :cond_22

    goto :goto_82

    .line 567
    :cond_22
    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 568
    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v2, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 569
    iget-wide v2, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {p0, v2, v3}, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->getNextPresentationTimeUs(J)J

    move-result-wide v2

    iput-wide v2, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 573
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mLivePhotoQueue:Ljava/util/Queue;

    const/4 v8, 0x0

    if-eqz v0, :cond_43

    .line 574
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;

    goto :goto_44

    :cond_43
    move-object v2, v8

    :goto_44
    if-nez v2, :cond_4e

    if-eqz v0, :cond_4e

    .line 575
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mLastPhotoTaskData:Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;

    if-eqz v0, :cond_4e

    move-object v5, v0

    goto :goto_53

    :cond_4e
    if-eqz v2, :cond_52

    .line 578
    iput-object v2, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mLastPhotoTaskData:Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;

    :cond_52
    move-object v5, v2

    .line 580
    :goto_53
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mMediaRingBuffer:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;

    iget v2, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-wide v3, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->add(Ljava/nio/ByteBuffer;IJLcom/transsion/camera/app/common/livephoto/PhotoTaskData;)V

    .line 581
    iget-wide v0, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mCurrentPresentationTimeUs:J

    .line 585
    invoke-virtual {p1, p2, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 586
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mCaptureShotListHandler:Landroid/os/Handler;

    invoke-virtual {p1, v8}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 587
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mCaptureShotListHandlerThread:Landroid/os/HandlerThread;

    if-eqz p1, :cond_82

    invoke-virtual {p1}, Ljava/lang/Thread;->isAlive()Z

    move-result p1

    if-nez p1, :cond_73

    goto :goto_82

    .line 590
    :cond_73
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mCaptureShotListHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 591
    iput v6, p1, Landroid/os/Message;->what:I

    .line 592
    iput-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 593
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mCaptureShotListHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_82
    :goto_82
    return-void
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .registers 5

    .line 611
    sget-object p1, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOutputFormatChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 612
    monitor-enter p0

    const/4 p1, 0x1

    .line 613
    :try_start_18
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mOutputFormatChanged:Z

    .line 614
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    iput-wide p1, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mBaseTimeUs:J

    const-wide/16 v0, 0x0

    .line 615
    iput-wide v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mLastRawPtsUs:J

    .line 616
    iput-wide p1, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mLastSmoothedPtsUs:J

    .line 617
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 618
    monitor-exit p0

    return-void

    :catchall_2e
    move-exception p1

    monitor-exit p0
    :try_end_30
    .catchall {:try_start_18 .. :try_end_30} :catchall_2e

    throw p1
.end method

.method public putCaptureShot(Ljava/lang/String;)V
    .registers 16

    .line 443
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 444
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mCaptureShots:Ljava/util/List;

    monitor-enter v1

    .line 445
    :try_start_8
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mCaptureShots:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 446
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_105

    .line 447
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_14
    if-ge v3, v1, :cond_104

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;

    .line 448
    iget-object v5, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mMediaRingBuffer:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;

    invoke-virtual {v5}, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->getFirstIndex()I

    move-result v5

    if-gez v5, :cond_42

    .line 450
    sget-object v4, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "putCaptureShot: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": unable to get the first index"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_14

    .line 452
    :cond_42
    iget-wide v6, v4, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;->position:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_4c

    const/4 v6, 0x1

    goto :goto_4d

    :cond_4c
    move v6, v2

    .line 454
    :cond_4d
    :goto_4d
    iget-object v7, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mMediaRingBuffer:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;

    iget-object v8, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v7, v5, v8}, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->getChunk(ILandroid/media/MediaCodec$BufferInfo;)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 455
    iget-object v8, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mMediaRingBuffer:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;

    invoke-virtual {v8, v5}, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->getPhotoTaskData(I)Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;

    move-result-object v8

    .line 456
    iget-object v9, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v10, v9, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    if-eqz v6, :cond_88

    .line 459
    :try_start_61
    iget-wide v12, v4, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;->head:J

    cmp-long v10, v10, v12

    if-ltz v10, :cond_cb

    .line 460
    invoke-virtual {v4, v7, v9, v8}, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;->put(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;)V

    .line 461
    sget-object v7, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "putCaptureShot: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "put old cache data"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_cb

    :catch_86
    move-exception v7

    goto :goto_ad

    .line 464
    :cond_88
    iget-wide v12, v4, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;->position:J

    cmp-long v10, v10, v12

    if-lez v10, :cond_cb

    .line 465
    invoke-virtual {v4, v7, v9, v8}, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;->put(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;)V

    .line 466
    sget-object v7, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "putCaptureShot: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "put incoming data"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_ac
    .catch Ljava/lang/InterruptedException; {:try_start_61 .. :try_end_ac} :catch_86

    goto :goto_cb

    .line 469
    :goto_ad
    sget-object v8, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "putCaptureShot: exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 471
    :cond_cb
    :goto_cb
    invoke-virtual {v4}, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;->eos()Z

    move-result v7

    if-eqz v7, :cond_fa

    .line 472
    iget-object v7, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mCaptureShots:Ljava/util/List;

    monitor-enter v7

    .line 473
    :try_start_d4
    sget-object v5, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "putCaptureShot: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "removed from queue"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 474
    iget-object v5, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mCaptureShots:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 475
    monitor-exit v7

    goto/16 :goto_14

    :catchall_f7
    move-exception p0

    monitor-exit v7
    :try_end_f9
    .catchall {:try_start_d4 .. :try_end_f9} :catchall_f7

    throw p0

    .line 478
    :cond_fa
    iget-object v7, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mMediaRingBuffer:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;

    invoke-virtual {v7, v5}, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->getNextIndex(I)I

    move-result v5

    if-gez v5, :cond_4d

    goto/16 :goto_14

    :cond_104
    return-void

    :catchall_105
    move-exception p0

    .line 446
    :try_start_106
    monitor-exit v1
    :try_end_107
    .catchall {:try_start_106 .. :try_end_107} :catchall_105

    throw p0
.end method

.method public release()V
    .registers 3

    .line 622
    sget-object v0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "release"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 623
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mEventHandler:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$EventHandler;

    if-eqz v0, :cond_f

    const/4 v1, 0x2

    .line 624
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 626
    :cond_f
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mHandlerHelper:Lcom/transsion/camera/feature/setting/livephoto/util/HandlerHelper;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/livephoto/util/HandlerHelper;->release()V

    return-void
.end method

.method public setMediaEncoderListener(Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaEncoderListener;)V
    .registers 2

    .line 509
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mMediaEncoderListener:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaEncoderListener;

    return-void
.end method

.method public start()V
    .registers 3

    .line 652
    sget-object v0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "start encoding"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 653
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mHandlerHelper:Lcom/transsion/camera/feature/setting/livephoto/util/HandlerHelper;

    if-eqz v0, :cond_17

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mEventHandler:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$EventHandler;

    if-eqz p0, :cond_17

    const/4 v1, 0x0

    .line 654
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/setting/livephoto/util/HandlerHelper;->sendMessageAndAwaitResponse(Landroid/os/Message;)V

    :cond_17
    return-void
.end method

.method public stop()V
    .registers 3

    .line 659
    sget-object v0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "stop encoding"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 660
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mHandlerHelper:Lcom/transsion/camera/feature/setting/livephoto/util/HandlerHelper;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mEventHandler:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$EventHandler;

    if-eqz v0, :cond_24

    .line 661
    monitor-enter p0

    .line 662
    :try_start_10
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 663
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_21

    .line 664
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mHandlerHelper:Lcom/transsion/camera/feature/setting/livephoto/util/HandlerHelper;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mEventHandler:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$EventHandler;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/setting/livephoto/util/HandlerHelper;->sendMessageAndAwaitResponse(Landroid/os/Message;)V

    return-void

    :catchall_21
    move-exception v0

    .line 663
    :try_start_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v0

    :cond_24
    return-void
.end method
