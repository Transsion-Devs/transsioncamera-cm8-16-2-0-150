.class public Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveVideoEncoder;
.super Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;
.source "SourceFile"


# static fields
.field private static final FORCE_IDR_INTERVAL_MS:J = 0xc8L

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final TIME_INCREMENT:J = 0x25abL


# instance fields
.field private mFirstPresentationTimeUs:J

.field private mInputSurface:Landroid/view/Surface;

.field private mLastPresentationTimeUs:J

.field private mLastRequestTime:J

.field private mReleaseRequested:Z

.field private mRenderHandler:Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;

.field private final mRequestSyncParams:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 25
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "LiveVideoEncoder"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/media/MediaFormat;JJLjava/util/Queue;)V
    .registers 8
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

    .line 41
    invoke-direct/range {p0 .. p6}, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;-><init>(Landroid/media/MediaFormat;JJLjava/util/Queue;)V

    .line 30
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveVideoEncoder;->mRequestSyncParams:Landroid/os/Bundle;

    const-wide/16 p1, 0x0

    .line 35
    iput-wide p1, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveVideoEncoder;->mLastRequestTime:J

    const/4 p1, 0x0

    .line 37
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveVideoEncoder;->mReleaseRequested:Z

    .line 42
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mDesiredMediaFormat:Landroid/media/MediaFormat;

    const-string p2, "i-frame-interval"

    invoke-virtual {p1, p2}, Landroid/media/MediaFormat;->getFloat(Ljava/lang/String;)F

    move-result p1

    .line 43
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide p3, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mBufferingDurationUs:J

    invoke-virtual {p2, p3, p4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    const/high16 p4, 0x447a0000    # 1000.0f

    mul-float/2addr p1, p4

    const/high16 p4, 0x40000000    # 2.0f

    mul-float/2addr p1, p4

    long-to-float p4, p2

    cmpl-float p4, p4, p1

    if-ltz p4, :cond_57

    .line 47
    :try_start_2c
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mDesiredMediaFormat:Landroid/media/MediaFormat;

    const-string p2, "mime"

    invoke-virtual {p1, p2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 p1, 0x1

    .line 48
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mIsInitialized:Z
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_3d} :catch_3e

    return-void

    :catch_3e
    move-exception v0

    move-object p0, v0

    .line 50
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "failed to configure media codec: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 53
    :cond_57
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p5, "time span is too short: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " vs. "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private requestSyncFrame()V
    .registers 5

    .line 168
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveVideoEncoder;->mLastRequestTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2d

    .line 169
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveVideoEncoder;->mRequestSyncParams:Landroid/os/Bundle;

    const-string v1, "request-sync"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 170
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_27

    .line 172
    :try_start_19
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveVideoEncoder;->mRequestSyncParams:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1e} :catch_1f

    goto :goto_27

    :catch_1f
    move-exception v0

    .line 174
    sget-object v1, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "requestSyncFrame, failed to request sync frame: "

    invoke-static {v1, v2, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 177
    :cond_27
    :goto_27
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveVideoEncoder;->mLastRequestTime:J

    :cond_2d
    return-void
.end method


# virtual methods
.method public doRelease()V
    .registers 2

    .line 59
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mIsInitialized:Z

    if-eqz v0, :cond_d

    .line 60
    invoke-super {p0}, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->doRelease()V

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mIsInitialized:Z

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveVideoEncoder;->mReleaseRequested:Z

    :cond_d
    return-void
.end method

.method public doStart()V
    .registers 5

    .line 68
    sget-object v0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "doStart"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 69
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mIsInitialized:Z

    if-nez v1, :cond_11

    .line 70
    const-string p0, "doStart: video encoder not initialized"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 73
    :cond_11
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mIsBuffering:Z

    if-eqz v1, :cond_1b

    .line 74
    const-string p0, "doStart: video encoder is working"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 77
    :cond_1b
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mMediaRingBuffer:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->clear()V

    .line 79
    :try_start_20
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mDesiredMediaFormat:Landroid/media/MediaFormat;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 80
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveVideoEncoder;->mInputSurface:Landroid/view/Surface;

    .line 81
    invoke-static {}, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->createHandler()Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveVideoEncoder;->mRenderHandler:Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;

    .line 82
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    new-instance v1, Landroid/os/Handler;

    iget-object v3, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mEncodingThread:Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundWorker;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundWorker;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p0, v1}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V

    const-wide/16 v0, 0x0

    .line 83
    iput-wide v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mCurrentPresentationTimeUs:J

    .line 84
    iput-wide v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveVideoEncoder;->mFirstPresentationTimeUs:J

    .line 85
    iput-wide v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveVideoEncoder;->mLastPresentationTimeUs:J

    .line 86
    invoke-super {p0}, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->doStart()V

    .line 87
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mIsBuffering:Z

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveVideoEncoder;->mReleaseRequested:Z
    :try_end_57
    .catch Ljava/lang/IllegalStateException; {:try_start_20 .. :try_end_57} :catch_58

    return-void

    :catch_58
    move-exception p0

    .line 90
    sget-object v0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doStart: configure media codec failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized doStop()V
    .registers 9

    monitor-enter p0

    .line 96
    :try_start_1
    sget-object v0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "doStop"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 97
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mIsInitialized:Z

    if-eqz v0, :cond_6d

    .line 98
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mIsBuffering:Z

    if-eqz v0, :cond_6d

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mIsBuffering:Z

    .line 100
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveVideoEncoder;->mInputSurface:Landroid/view/Surface;

    const/4 v2, 0x0

    if-eqz v1, :cond_20

    .line 101
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 102
    iput-object v2, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveVideoEncoder;->mInputSurface:Landroid/view/Surface;

    goto :goto_20

    :catchall_1e
    move-exception v0

    goto :goto_6f

    .line 104
    :cond_20
    :goto_20
    invoke-super {p0}, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->doStop()V

    .line 105
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 106
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mCaptureShots:Ljava/util/List;

    monitor-enter v3
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_1e

    .line 107
    :try_start_2b
    iget-object v4, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mCaptureShots:Ljava/util/List;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 108
    iget-object v4, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mCaptureShots:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 109
    monitor-exit v3
    :try_end_36
    .catchall {:try_start_2b .. :try_end_36} :catchall_6a

    .line 110
    :try_start_36
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_3a
    if-ge v0, v3, :cond_60

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v0, v0, 0x1

    check-cast v4, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;
    :try_end_44
    .catchall {:try_start_36 .. :try_end_44} :catchall_1e

    .line 112
    :try_start_44
    invoke-virtual {v4}, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;->putEos()V
    :try_end_47
    .catch Ljava/lang/InterruptedException; {:try_start_44 .. :try_end_47} :catch_48
    .catchall {:try_start_44 .. :try_end_47} :catchall_1e

    goto :goto_3a

    :catch_48
    move-exception v4

    .line 114
    :try_start_49
    sget-object v5, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doStop: exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_3a

    .line 117
    :cond_60
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveVideoEncoder;->mRenderHandler:Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;

    if-eqz v0, :cond_6d

    .line 118
    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->release()V

    .line 119
    iput-object v2, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveVideoEncoder;->mRenderHandler:Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;
    :try_end_69
    .catchall {:try_start_49 .. :try_end_69} :catchall_1e

    goto :goto_6d

    :catchall_6a
    move-exception v0

    .line 109
    :try_start_6b
    monitor-exit v3
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    :try_start_6c
    throw v0
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_1e

    .line 123
    :cond_6d
    :goto_6d
    monitor-exit p0

    return-void

    :goto_6f
    :try_start_6f
    monitor-exit p0
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_1e

    throw v0
.end method

.method public frameAvailableSoon(I[FZ)V
    .registers 5

    .line 155
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mIsInitialized:Z

    if-eqz v0, :cond_24

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mIsBuffering:Z

    if-nez v0, :cond_9

    goto :goto_24

    .line 158
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveVideoEncoder;->mRenderHandler:Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_24

    .line 161
    :cond_14
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsLivePhotoRequestSyncFrame:Z

    if-eqz v0, :cond_1f

    .line 162
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveVideoEncoder;->requestSyncFrame()V

    .line 164
    :cond_1f
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveVideoEncoder;->mRenderHandler:Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->draw(I[FZ)V

    :cond_24
    :goto_24
    return-void
.end method

.method public getNextPresentationTimeUs(J)J
    .registers 8

    .line 127
    iget-wide v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveVideoEncoder;->mFirstPresentationTimeUs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_b

    .line 128
    iput-wide p1, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveVideoEncoder;->mFirstPresentationTimeUs:J

    return-wide v2

    :cond_b
    sub-long/2addr p1, v0

    .line 132
    iget-wide v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveVideoEncoder;->mLastPresentationTimeUs:J

    cmp-long v2, v0, p1

    if-ltz v2, :cond_18

    const-wide/16 p1, 0x25ab

    add-long/2addr v0, p1

    .line 133
    iput-wide v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveVideoEncoder;->mLastPresentationTimeUs:J

    goto :goto_1a

    .line 135
    :cond_18
    iput-wide p1, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveVideoEncoder;->mLastPresentationTimeUs:J

    .line 137
    :goto_1a
    iget-wide p0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveVideoEncoder;->mLastPresentationTimeUs:J

    return-wide p0
.end method

.method public setEglContext(Landroid/opengl/EGLContext;)V
    .registers 4

    .line 141
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveVideoEncoder;->mReleaseRequested:Z

    if-eqz v0, :cond_c

    .line 142
    sget-object p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "setEglContext: release requested, do not set EGL context."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_c
    if-nez p1, :cond_16

    .line 146
    sget-object p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "setEglContext: the shared EGLContext must not be null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 149
    :cond_16
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveVideoEncoder;->mRenderHandler:Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;

    if-eqz v0, :cond_20

    .line 150
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveVideoEncoder;->mInputSurface:Landroid/view/Surface;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Lcom/transsion/camera/feature/setting/livephoto/gles/RenderHandler;->setEglContext(Landroid/opengl/EGLContext;Landroid/view/Surface;Z)V

    :cond_20
    return-void
.end method
