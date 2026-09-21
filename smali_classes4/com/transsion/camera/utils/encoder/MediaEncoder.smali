.class public abstract Lcom/transsion/camera/utils/encoder/MediaEncoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;,
        Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaFrameTimeStamp;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field protected mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field protected mFirstFrameTime:J

.field private mFrameIndex:J

.field protected volatile mIsCapturing:Z

.field protected mIsEOS:Z

.field protected final mListener:Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;

.field protected final mLock:Ljava/lang/Object;

.field protected mMediaCodec:Landroid/media/MediaCodec;

.field protected mMuxerStarted:Z

.field private mOncePauseTime:J

.field protected volatile mPresentationTime:J

.field private mRequestDrain:I

.field protected volatile mRequestPause:Z

.field protected volatile mRequestStop:Z

.field protected volatile mRequestStopImmediately:Z

.field protected volatile mTotalPauseTime:J

.field protected mTrackIndex:I

.field protected final mWeakMuxer:Ljava/lang/ref/WeakReference;

.field protected prevOutputPTSUs:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 18
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "MediaEncoder"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;)V
    .registers 4

    const/4 v0, 0x0

    .line 187
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/utils/encoder/MediaEncoder;-><init>(Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaFrameTimeStamp;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaFrameTimeStamp;)V
    .registers 9

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mLock:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 164
    iput v0, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mTrackIndex:I

    const-wide/16 v0, 0x0

    .line 180
    iput-wide v0, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mFrameIndex:J

    const-wide/16 v2, -0x1

    .line 181
    iput-wide v2, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mFirstFrameTime:J

    .line 182
    iput-wide v0, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mOncePauseTime:J

    .line 183
    iput-wide v0, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mTotalPauseTime:J

    .line 184
    iput-wide v0, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mPresentationTime:J

    .line 454
    iput-wide v0, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->prevOutputPTSUs:J

    if-eqz p2, :cond_59

    if-eqz p1, :cond_51

    .line 193
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mWeakMuxer:Ljava/lang/ref/WeakReference;

    .line 194
    invoke-virtual {p1, p0}, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->addEncoder(Lcom/transsion/camera/utils/encoder/MediaEncoder;)V

    .line 195
    iput-object p2, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mListener:Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;

    .line 197
    iput-wide v2, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mFirstFrameTime:J

    .line 198
    iput-wide v0, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mOncePauseTime:J

    .line 199
    iput-wide v0, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mTotalPauseTime:J

    .line 200
    iput-wide v0, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mPresentationTime:J

    .line 201
    monitor-enter p3

    .line 203
    :try_start_36
    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 205
    invoke-static {}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->getInstance()Lcom/transsion/camera/utils/threads/WorkThreadPools;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->execute(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 206
    monitor-exit p3

    return-void

    :catchall_4e
    move-exception p0

    monitor-exit p3
    :try_end_50
    .catchall {:try_start_36 .. :try_end_50} :catchall_4e

    throw p0

    .line 192
    :cond_51
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "MediaExtractorWrapper is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 191
    :cond_59
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "MediaDecoderListener is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected drain()V
    .registers 11

    .line 29
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-nez v0, :cond_6

    goto/16 :goto_185

    .line 32
    :cond_6
    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mWeakMuxer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    if-nez v1, :cond_1c

    .line 38
    sget-object p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "muxer is unexpectedly null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_1c
    const/4 v2, 0x0

    move v3, v2

    .line 43
    :cond_1e
    :goto_1e
    iget-boolean v4, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mIsCapturing:Z

    if-eqz v4, :cond_185

    .line 47
    :try_start_22
    const-string v4, "dequeueOutputBuffer"

    invoke-static {v4}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 48
    iget-object v4, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    iget-object v5, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v6, 0x2710

    invoke-virtual {v4, v5, v6, v7}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v4

    .line 49
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    const/4 v5, -0x1

    if-ne v4, v5, :cond_45

    .line 52
    iget-boolean v4, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mIsEOS:Z

    if-nez v4, :cond_1e

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x5

    if-le v3, v4, :cond_1e

    goto/16 :goto_185

    :catch_42
    move-exception v4

    goto/16 :goto_176

    :cond_45
    const/4 v5, -0x3

    if-ne v4, v5, :cond_56

    .line 57
    sget-object v4, Lcom/transsion/camera/utils/encoder/MediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v5, "INFO_OUTPUT_BUFFERS_CHANGED"

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 59
    iget-object v4, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_1e

    :cond_56
    const/4 v5, -0x2

    if-ne v4, v5, :cond_cb

    .line 61
    sget-object v4, Lcom/transsion/camera/utils/encoder/MediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INFO_OUTPUT_FORMAT_CHANGED, this : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    .line 62
    iput-wide v4, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->prevOutputPTSUs:J

    .line 67
    iget-boolean v4, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mMuxerStarted:Z

    if-nez v4, :cond_c3

    .line 72
    iget-object v4, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v4

    .line 73
    invoke-virtual {v1, v4}, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->addTrack(Landroid/media/MediaFormat;)I

    move-result v4

    iput v4, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mTrackIndex:I

    .line 74
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "muxerStart_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v1}, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->start()Z

    move-result v4

    if-nez v4, :cond_b0

    .line 76
    invoke-virtual {v1}, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->enCoderLock()V

    .line 78
    :cond_b0
    invoke-virtual {v1}, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->isStarted()Z

    move-result v4

    if-eqz v4, :cond_b9

    const/4 v4, 0x1

    .line 79
    iput-boolean v4, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mMuxerStarted:Z

    .line 81
    :cond_b9
    iget-object v4, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mListener:Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;

    invoke-interface {v4, p0}, Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;->onStarted(Lcom/transsion/camera/utils/encoder/MediaEncoder;)V

    .line 82
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    goto/16 :goto_1e

    .line 68
    :cond_c3
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "format changed twice"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_cb
    if-gez v4, :cond_e5

    .line 85
    sget-object v5, Lcom/transsion/camera/utils/encoder/MediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "drain:unexpected result from encoder#dequeueOutputBuffer: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_1e

    .line 87
    :cond_e5
    aget-object v5, v0, v4

    if-eqz v5, :cond_15a

    .line 92
    iget-object v6, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v6, v6, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_fc

    .line 97
    sget-object v6, Lcom/transsion/camera/utils/encoder/MediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v7, "drain:BUFFER_FLAG_CODEC_CONFIG"

    invoke-static {v6, v7}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 98
    iget-object v6, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iput v2, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 101
    :cond_fc
    iget-object v6, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v6, v6, Landroid/media/MediaCodec$BufferInfo;->size:I
    :try_end_100
    .catch Ljava/lang/IllegalStateException; {:try_start_22 .. :try_end_100} :catch_42

    if-eqz v6, :cond_14a

    .line 104
    :try_start_102
    iget-boolean v3, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mMuxerStarted:Z

    if-eqz v3, :cond_142

    .line 108
    iget-wide v6, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mFrameIndex:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mFrameIndex:J

    .line 111
    const-string v3, "writeSampleData"

    invoke-static {v3}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 112
    iget v3, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mTrackIndex:I

    iget-object v6, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v1, v3, v5, v6}, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 113
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    .line 114
    iget-object v3, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v5, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v5, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->prevOutputPTSUs:J

    .line 115
    sget-object v3, Lcom/transsion/camera/utils/encoder/MediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CML_prevOutputPTSMs = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->prevOutputPTSUs:J

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    move v3, v2

    goto :goto_14a

    :catch_13f
    move-exception v4

    move v3, v2

    goto :goto_176

    .line 106
    :cond_142
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "drain:muxer hasn\'t started"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_14a
    .catch Ljava/lang/IllegalStateException; {:try_start_102 .. :try_end_14a} :catch_13f

    .line 118
    :cond_14a
    :goto_14a
    :try_start_14a
    iget-object v5, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v5, v4, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 119
    iget-object v4, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_1e

    .line 121
    iput-boolean v2, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mIsCapturing:Z

    goto :goto_185

    .line 90
    :cond_15a
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "encoderOutputBuffer "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " was null"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_176
    .catch Ljava/lang/IllegalStateException; {:try_start_14a .. :try_end_176} :catch_42

    .line 126
    :goto_176
    sget-object v5, Lcom/transsion/camera/utils/encoder/MediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v6, " recording error."

    invoke-static {v5, v6}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lcom/transsion/camera/utils/encoder/MediaEncoder;->release()V

    .line 128
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1e

    :cond_185
    :goto_185
    return-void
.end method

.method protected encode(Ljava/nio/ByteBuffer;IJ)V
    .registers 16

    .line 390
    iget-boolean v0, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mIsCapturing:Z

    if-eqz v0, :cond_80

    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_80

    iget-boolean v0, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mRequestStopImmediately:Z

    if-eqz v0, :cond_e

    goto/16 :goto_80

    .line 393
    :cond_e
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 394
    :cond_14
    :goto_14
    iget-boolean v0, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mIsCapturing:Z

    if-eqz v0, :cond_80

    .line 396
    :try_start_18
    const-string v0, "dequeueInputBuffer"

    invoke-static {v0}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 397
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    .line 398
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    if-ltz v5, :cond_14

    .line 401
    aget-object v0, v1, v5

    .line 402
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    if-eqz p1, :cond_39

    .line 404
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_34
    .catch Ljava/lang/IllegalStateException; {:try_start_18 .. :try_end_34} :catch_35

    goto :goto_39

    :catch_35
    move-exception v0

    move v7, p2

    move-wide v8, p3

    goto :goto_70

    :cond_39
    :goto_39
    if-gtz p2, :cond_5d

    const/4 v0, 0x1

    .line 409
    :try_start_3c
    iput-boolean v0, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mIsEOS:Z

    .line 410
    sget-object v0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "send BUFFER_FLAG_END_OF_STREAM"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 411
    const-string v0, "queueInputBuffer_END"

    invoke-static {v0}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 412
    iget-object v4, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;
    :try_end_4c
    .catch Ljava/lang/IllegalStateException; {:try_start_3c .. :try_end_4c} :catch_5a

    const/4 v7, 0x0

    const/4 v10, 0x4

    const/4 v6, 0x0

    move-wide v8, p3

    :try_start_50
    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 414
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    goto :goto_80

    :catch_57
    move-exception v0

    :goto_58
    move v7, p2

    goto :goto_70

    :catch_5a
    move-exception v0

    move-wide v8, p3

    goto :goto_58

    :cond_5d
    move-wide v8, p3

    .line 417
    const-string p3, "queueInputBuffer"

    invoke-static {p3}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 418
    iget-object v4, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;
    :try_end_65
    .catch Ljava/lang/IllegalStateException; {:try_start_50 .. :try_end_65} :catch_57

    const/4 v6, 0x0

    const/4 v10, 0x0

    move v7, p2

    :try_start_68
    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 420
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V
    :try_end_6e
    .catch Ljava/lang/IllegalStateException; {:try_start_68 .. :try_end_6e} :catch_6f

    goto :goto_80

    :catch_6f
    move-exception v0

    .line 429
    :goto_70
    sget-object p2, Lcom/transsion/camera/utils/encoder/MediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p3, " encode StateException."

    invoke-static {p2, p3}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 430
    invoke-virtual {p0}, Lcom/transsion/camera/utils/encoder/MediaEncoder;->release()V

    .line 431
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move p2, v7

    move-wide p3, v8

    goto :goto_14

    :cond_80
    :goto_80
    return-void
.end method

.method public frameAvailableSoon()Z
    .registers 4

    .line 216
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 217
    :try_start_3
    iget-boolean v1, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mIsCapturing:Z

    if-eqz v1, :cond_1f

    iget-boolean v1, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mRequestStop:Z

    if-nez v1, :cond_1f

    iget-boolean v1, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mRequestPause:Z

    if-eqz v1, :cond_10

    goto :goto_1f

    .line 221
    :cond_10
    iget v1, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mRequestDrain:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mRequestDrain:I

    .line 222
    iget-object p0, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 224
    monitor-exit v0

    return v2

    :catchall_1d
    move-exception p0

    goto :goto_27

    .line 218
    :cond_1f
    :goto_1f
    iget-object p0, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    const/4 p0, 0x0

    .line 219
    monitor-exit v0

    return p0

    .line 224
    :goto_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_1d

    throw p0
.end method

.method pauseRecording()V
    .registers 6

    .line 299
    sget-object v0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "pauseRecording"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 301
    :try_start_b
    iput-boolean v1, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mRequestPause:Z

    .line 302
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iput-wide v1, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mOncePauseTime:J

    .line 303
    iget-object p0, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 304
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_b .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method abstract prepare()V
.end method

.method protected release()V
    .registers 5

    .line 344
    sget-object v0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "release start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 345
    iput-boolean v0, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mIsCapturing:Z

    .line 346
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    .line 348
    :try_start_f
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 349
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 350
    iput-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_19} :catch_1a

    goto :goto_22

    :catch_1a
    move-exception v0

    .line 352
    sget-object v2, Lcom/transsion/camera/utils/encoder/MediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "failed releasing MediaCodec"

    invoke-static {v2, v3, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 355
    :cond_22
    :goto_22
    iget-boolean v0, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mMuxerStarted:Z

    if-eqz v0, :cond_5b

    .line 356
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mWeakMuxer:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    goto :goto_32

    :cond_31
    move-object v0, v1

    :goto_32
    if-eqz v0, :cond_5b

    .line 359
    :try_start_34
    iget v2, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mTrackIndex:I

    const/4 v3, -0x1

    if-gt v2, v3, :cond_4a

    iget-object v2, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v2, :cond_4a

    .line 360
    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v2

    .line 361
    invoke-virtual {v0, v2}, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->addTrack(Landroid/media/MediaFormat;)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mTrackIndex:I

    goto :goto_4a

    :catch_48
    move-exception v0

    goto :goto_4e

    .line 363
    :cond_4a
    :goto_4a
    invoke-virtual {v0}, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->stop()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_4d} :catch_48

    goto :goto_5b

    .line 365
    :goto_4e
    iget-object v2, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mListener:Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;

    const/4 v3, 0x2

    invoke-interface {v2, p0, v3}, Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;->onStopped(Lcom/transsion/camera/utils/encoder/MediaEncoder;I)V

    .line 366
    sget-object v2, Lcom/transsion/camera/utils/encoder/MediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "failed stopping muxer"

    invoke-static {v2, v3, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 370
    :cond_5b
    :goto_5b
    iput-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 371
    sget-object p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "release end"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method resumeRecording()V
    .registers 7

    .line 308
    sget-object v0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "resumeRecording"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 309
    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    .line 310
    :try_start_b
    iput-boolean v2, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mRequestPause:Z

    .line 311
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iget-wide v4, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mOncePauseTime:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mOncePauseTime:J

    .line 312
    iget-wide v2, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mTotalPauseTime:J

    iget-wide v4, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mOncePauseTime:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mTotalPauseTime:J

    .line 313
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resumeRecording, once pausetime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mOncePauseTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", total pausetime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mTotalPauseTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 314
    iget-object p0, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 315
    monitor-exit v1

    return-void

    :catchall_47
    move-exception p0

    monitor-exit v1
    :try_end_49
    .catchall {:try_start_b .. :try_end_49} :catchall_47

    throw p0
.end method

.method public run()V
    .registers 8

    .line 234
    invoke-static {}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->getInstance()Lcom/transsion/camera/thub/TranSchedManagerProxy;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->setDualVideoTranSched(I)V

    const-wide/16 v0, 0x0

    .line 238
    iput-wide v0, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mFrameIndex:J

    .line 240
    :goto_f
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 241
    :try_start_12
    iget-boolean v1, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mRequestStop:Z

    .line 242
    sget-object v2, Lcom/transsion/camera/utils/encoder/MediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "localRequestStop : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 243
    iget v2, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mRequestDrain:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_32

    move v5, v4

    goto :goto_33

    :cond_32
    move v5, v3

    :goto_33
    if-eqz v5, :cond_3c

    add-int/lit8 v2, v2, -0x1

    .line 245
    iput v2, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mRequestDrain:I

    goto :goto_3c

    :catchall_3a
    move-exception p0

    goto :goto_97

    .line 246
    :cond_3c
    :goto_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_12 .. :try_end_3d} :catchall_3a

    if-eqz v1, :cond_4c

    .line 248
    invoke-virtual {p0}, Lcom/transsion/camera/utils/encoder/MediaEncoder;->drain()V

    .line 250
    invoke-virtual {p0}, Lcom/transsion/camera/utils/encoder/MediaEncoder;->signalEndOfInputStream()V

    .line 252
    invoke-virtual {p0}, Lcom/transsion/camera/utils/encoder/MediaEncoder;->drain()V

    .line 254
    invoke-virtual {p0}, Lcom/transsion/camera/utils/encoder/MediaEncoder;->release()V

    goto :goto_5f

    :cond_4c
    if-eqz v5, :cond_52

    .line 258
    invoke-virtual {p0}, Lcom/transsion/camera/utils/encoder/MediaEncoder;->drain()V

    goto :goto_f

    .line 260
    :cond_52
    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 262
    :try_start_55
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_5a
    .catch Ljava/lang/InterruptedException; {:try_start_55 .. :try_end_5a} :catch_5e
    .catchall {:try_start_55 .. :try_end_5a} :catchall_5c

    .line 266
    :try_start_5a
    monitor-exit v1

    goto :goto_f

    :catchall_5c
    move-exception p0

    goto :goto_95

    .line 264
    :catch_5e
    monitor-exit v1
    :try_end_5f
    .catchall {:try_start_5a .. :try_end_5f} :catchall_5c

    .line 269
    :goto_5f
    sget-object v0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Encoder thread exiting"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drain frameCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mFrameIndex:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 272
    :try_start_7f
    iput-boolean v4, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mRequestStop:Z

    .line 273
    iput-boolean v3, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mIsCapturing:Z

    .line 275
    iput-boolean v3, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mRequestPause:Z

    .line 276
    invoke-static {}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->getInstance()Lcom/transsion/camera/thub/TranSchedManagerProxy;

    move-result-object p0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->cancelDualVideoTranSched(I)V

    .line 277
    monitor-exit v0

    return-void

    :catchall_92
    move-exception p0

    monitor-exit v0
    :try_end_94
    .catchall {:try_start_7f .. :try_end_94} :catchall_92

    throw p0

    .line 266
    :goto_95
    :try_start_95
    monitor-exit v1
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_5c

    throw p0

    .line 246
    :goto_97
    :try_start_97
    monitor-exit v0
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_3a

    throw p0
.end method

.method protected signalEndOfInputStream()V
    .registers 5

    .line 375
    sget-object v0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "sending EOS to encoder"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 379
    iget-wide v1, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mPresentationTime:J

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/transsion/camera/utils/encoder/MediaEncoder;->encode(Ljava/nio/ByteBuffer;IJ)V

    return-void
.end method

.method startRecording()V
    .registers 4

    .line 289
    sget-object v0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "startDecoding"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 290
    iput-boolean v0, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mRequestStopImmediately:Z

    .line 291
    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x1

    .line 292
    :try_start_e
    iput-boolean v2, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mIsCapturing:Z

    .line 293
    iput-boolean v0, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mRequestStop:Z

    .line 294
    iget-object p0, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 295
    monitor-exit v1

    return-void

    :catchall_19
    move-exception p0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_19

    throw p0
.end method

.method stopRecording()V
    .registers 5

    .line 322
    sget-object v0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "stopRecording"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 323
    iput-boolean v1, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mRequestStopImmediately:Z

    .line 324
    iget-object v2, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 325
    :try_start_d
    iget-boolean v3, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mIsCapturing:Z

    if-eqz v3, :cond_26

    iget-boolean v3, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mRequestStop:Z

    if-eqz v3, :cond_16

    goto :goto_26

    .line 329
    :cond_16
    const-string v3, "stopRecording : mRequestStop = true"

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 330
    iput-boolean v1, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mRequestStop:Z

    .line 331
    iget-object p0, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 334
    monitor-exit v2

    return-void

    :catchall_24
    move-exception p0

    goto :goto_2d

    .line 326
    :cond_26
    :goto_26
    iget-object p0, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 327
    monitor-exit v2

    return-void

    .line 334
    :goto_2d
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_d .. :try_end_2e} :catchall_24

    throw p0
.end method
