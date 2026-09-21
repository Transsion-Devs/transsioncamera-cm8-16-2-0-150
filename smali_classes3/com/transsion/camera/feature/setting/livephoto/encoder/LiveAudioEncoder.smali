.class public Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveAudioEncoder;
.super Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;
.source "SourceFile"


# static fields
.field private static final NOTIFICATION_PERIOD_SAMPLE_COUNT:I = 0x5a0

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mAudioRecord:Landroid/media/AudioRecord;

.field private final mChannelCount:I

.field private final mFrameBytes:I

.field private final mNotificationPeriod:I

.field private final mSampleBuffer:[B

.field private mSampleCount:J

.field private final mSampleRate:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 28
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "LiveAudioEncoder"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveAudioEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/media/MediaFormat;JJLjava/util/Queue;)V
    .registers 13
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

    .line 44
    invoke-direct/range {p0 .. p6}, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;-><init>(Landroid/media/MediaFormat;JJLjava/util/Queue;)V

    .line 45
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mDesiredMediaFormat:Landroid/media/MediaFormat;

    const-string p2, "sample-rate"

    invoke-virtual {p1, p2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveAudioEncoder;->mSampleRate:I

    .line 46
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mDesiredMediaFormat:Landroid/media/MediaFormat;

    const-string p2, "channel-count"

    invoke-virtual {p1, p2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveAudioEncoder;->mChannelCount:I

    .line 47
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mDesiredMediaFormat:Landroid/media/MediaFormat;

    const-string p3, "pcm-encoding"

    invoke-virtual {p2, p3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    .line 48
    invoke-direct {p0, v4}, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveAudioEncoder;->sampleBytes(I)I

    move-result p2

    mul-int/2addr p2, p1

    .line 49
    iput p2, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveAudioEncoder;->mFrameBytes:I

    const/16 p1, 0x5a0

    .line 50
    iput p1, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveAudioEncoder;->mNotificationPeriod:I

    mul-int/lit16 p2, p2, 0x1680

    .line 51
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveAudioEncoder;->channelConfig()I

    move-result p1

    invoke-static {v2, p1, v4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 52
    new-array p1, v5, [B

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveAudioEncoder;->mSampleBuffer:[B

    .line 53
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x1

    .line 54
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveAudioEncoder;->channelConfig()I

    move-result v3

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveAudioEncoder;->mAudioRecord:Landroid/media/AudioRecord;

    .line 55
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result p1

    if-eqz p1, :cond_78

    .line 57
    :try_start_4e
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mDesiredMediaFormat:Landroid/media/MediaFormat;

    const-string p2, "mime"

    invoke-virtual {p1, p2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 p1, 0x1

    .line 58
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mIsInitialized:Z
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_5f} :catch_60

    return-void

    :catch_60
    move-exception v0

    move-object p1, v0

    .line 61
    sget-object p2, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveAudioEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "failed configure media codec: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 64
    :cond_78
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveAudioEncoder;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {p0}, Landroid/media/AudioRecord;->release()V

    .line 65
    sget-object p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveAudioEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "failed initialize audio record"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private addSampleCount(J)V
    .registers 5

    .line 69
    iget-wide v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveAudioEncoder;->mSampleCount:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveAudioEncoder;->mSampleCount:J

    return-void
.end method

.method private channelConfig()I
    .registers 2

    .line 73
    iget p0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveAudioEncoder;->mChannelCount:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_8

    const/16 p0, 0x10

    return p0

    :cond_8
    const/16 p0, 0xc

    return p0
.end method

.method private getPresentationTime(J)J
    .registers 7

    .line 77
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveAudioEncoder;->mSampleCount:J

    add-long/2addr v2, p1

    mul-long/2addr v0, v2

    iget p0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveAudioEncoder;->mSampleRate:I

    int-to-long p0, p0

    div-long/2addr v0, p0

    return-wide v0
.end method

.method private getSampleDataBytes()I
    .registers 1

    .line 81
    iget p0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveAudioEncoder;->mFrameBytes:I

    return p0
.end method

.method private sampleBytes(I)I
    .registers 3

    const/4 p0, 0x2

    if-eq p1, p0, :cond_7

    const/4 v0, 0x3

    if-ne p1, v0, :cond_7

    const/4 p0, 0x1

    :cond_7
    return p0
.end method


# virtual methods
.method public doRelease()V
    .registers 5

    .line 95
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mIsInitialized:Z

    if-eqz v0, :cond_27

    .line 96
    invoke-super {p0}, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->doRelease()V

    .line 98
    :try_start_7
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveAudioEncoder;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V
    :try_end_c
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_c} :catch_d

    goto :goto_24

    :catch_d
    move-exception v0

    .line 100
    sget-object v1, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveAudioEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doRelease: exception when mAudioRecord release: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_24
    const/4 v0, 0x0

    .line 102
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mIsInitialized:Z

    :cond_27
    return-void
.end method

.method public doStart()V
    .registers 5

    .line 108
    sget-object v0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveAudioEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "doStart: audio encoder start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 109
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mIsInitialized:Z

    if-nez v1, :cond_11

    .line 110
    const-string p0, "doStart: audio encoder not initialized"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 113
    :cond_11
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mIsBuffering:Z

    if-eqz v1, :cond_1b

    .line 114
    const-string p0, "doStart: audio encoder already working"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 117
    :cond_1b
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mMediaRingBuffer:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$MediaRingBuffer;->clear()V

    .line 118
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mDesiredMediaFormat:Landroid/media/MediaFormat;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 119
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mEncodingThread:Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundWorker;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundWorker;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p0, v1}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V

    .line 120
    invoke-super {p0}, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->doStart()V

    .line 121
    iput-boolean v3, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mIsBuffering:Z

    const-wide/16 v0, 0x0

    .line 122
    iput-wide v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mCurrentPresentationTimeUs:J

    .line 124
    :try_start_42
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveAudioEncoder;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {p0}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_47
    .catch Ljava/lang/IllegalStateException; {:try_start_42 .. :try_end_47} :catch_48

    return-void

    :catch_48
    move-exception p0

    .line 126
    sget-object v0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveAudioEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doStart: audio encoder start failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public doStop()V
    .registers 7

    .line 132
    sget-object v0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveAudioEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "doStop: audio encoder start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 133
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mIsInitialized:Z

    if-nez v1, :cond_11

    .line 134
    const-string p0, "doStop: audio encoder not initialized"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 137
    :cond_11
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mIsBuffering:Z

    if-nez v1, :cond_1b

    .line 138
    const-string p0, "doStop: audio encoder already working"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_1b
    const/4 v0, 0x0

    .line 141
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mIsBuffering:Z

    .line 142
    invoke-super {p0}, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->doStop()V

    .line 144
    :try_start_21
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveAudioEncoder;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V
    :try_end_26
    .catch Ljava/lang/IllegalStateException; {:try_start_21 .. :try_end_26} :catch_27

    goto :goto_3e

    :catch_27
    move-exception v1

    .line 146
    sget-object v2, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveAudioEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doStop: audio encoder stop failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 148
    :goto_3e
    sget-object v1, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveAudioEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "doStop: clear capture shot requests"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mCaptureShots:Ljava/util/List;

    monitor-enter v1

    .line 151
    :try_start_48
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mCaptureShots:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 152
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mCaptureShots:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 153
    monitor-exit v1
    :try_end_55
    .catchall {:try_start_48 .. :try_end_55} :catchall_80

    .line 154
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    :goto_59
    if-ge v0, p0, :cond_7f

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    check-cast v1, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;

    .line 156
    :try_start_63
    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;->putEos()V
    :try_end_66
    .catch Ljava/lang/InterruptedException; {:try_start_63 .. :try_end_66} :catch_67

    goto :goto_59

    :catch_67
    move-exception v1

    .line 158
    sget-object v3, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveAudioEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doStop: failed to put end of stream: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_59

    :cond_7f
    return-void

    :catchall_80
    move-exception p0

    .line 153
    :try_start_81
    monitor-exit v1
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_80

    throw p0
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .registers 14

    .line 165
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mIsBuffering:Z

    if-nez v0, :cond_c

    .line 166
    sget-object p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveAudioEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onInputBufferAvailable: already end of stream"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 169
    :cond_c
    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 170
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveAudioEncoder;->mAudioRecord:Landroid/media/AudioRecord;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveAudioEncoder;->mSampleBuffer:[B

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v2

    iget v3, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveAudioEncoder;->mNotificationPeriod:I

    iget v4, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveAudioEncoder;->mFrameBytes:I

    mul-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/media/AudioRecord;->read([BII)I

    move-result v0

    const/4 v1, -0x6

    if-eq v0, v1, :cond_b4

    if-eqz v0, :cond_ac

    const/4 v1, -0x3

    if-eq v0, v1, :cond_a4

    const/4 v1, -0x2

    if-eq v0, v1, :cond_9c

    .line 185
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 186
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveAudioEncoder;->mSampleBuffer:[B

    invoke-virtual {p1, v1, v3, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 187
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v7

    .line 188
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveAudioEncoder;->getSampleDataBytes()I

    move-result v0

    div-int v0, v7, v0

    int-to-long v0, v0

    .line 189
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveAudioEncoder;->getPresentationTime(J)J

    move-result-wide v8

    .line 190
    sget-object v2, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveAudioEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", offset=0, position="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", capacity="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", pts="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", flags="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mIsBuffering:Z

    const/4 v5, 0x4

    if-eqz p1, :cond_7f

    move p1, v3

    goto :goto_80

    :cond_7f
    move p1, v5

    :goto_80
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 190
    invoke-static {v2, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 196
    iget-object v4, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    .line 197
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder;->mIsBuffering:Z

    if-eqz p1, :cond_92

    move v10, v3

    goto :goto_93

    :cond_92
    move v10, v5

    :goto_93
    const/4 v6, 0x0

    move v5, p2

    .line 196
    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 198
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveAudioEncoder;->addSampleCount(J)V

    return-void

    .line 179
    :cond_9c
    sget-object p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveAudioEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onInputBufferAvailable: ERROR_BAD_VALUE"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 176
    :cond_a4
    sget-object p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveAudioEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onInputBufferAvailable: ERROR_INVALID_OP"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 182
    :cond_ac
    sget-object p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveAudioEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onInputBufferAvailable: END_OF_BUFFER"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 173
    :cond_b4
    sget-object p0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveAudioEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onInputBufferAvailable: ERROR_DEAD_OBJECT"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
