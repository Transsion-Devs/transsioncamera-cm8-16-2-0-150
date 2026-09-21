.class public Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder$AudioData;,
        Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder$PcmData;
    }
.end annotation


# static fields
.field private static final AAC_HE:I = 0x2

.field private static final AAC_LC:I = 0x1

.field private static final INIT_ENCODER_INVALID_PARAM:I = -0x65

.field private static INPUT_DEQUEUE_TIMEOUT_US:J = 0x2710L

.field private static final MEDIACODEC_CONFIGURE_EXCEPTION:I = -0xcb

.field private static final MEDIACODEC_CREATE_FAILURE:I = -0xc9

.field private static final MEDIA_CODEC_DEQUEUE_INPUT_BUFFER_EXCEPTION:I = -0xc35a

.field private static final MEDIA_CODEC_DEQUEUE_OUTPUT_BUFFER_EXCEPTION:I = -0xea6a

.field private static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TEAudioHwEncoder"

.field private static TRY_AGAIN_LATER_COUNT_LIMIT:I = 0x5


# instance fields
.field private audioEncoder:Landroid/media/MediaCodec;

.field private audioQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder$AudioData;",
            ">;"
        }
    .end annotation
.end field

.field private curBitrate:I

.field private curChannelCount:I

.field private curCodecInfoAACProfile:I

.field private curMimeType:Ljava/lang/String;

.field private curSampleNumPerChannel:I

.field private curSampleRate:I

.field private volatile encoderStarted:Z

.field private volatile inputCountDequeued:J

.field private volatile inputEof:Z

.field private inputFormat:Landroid/media/MediaFormat;

.field private outputAsc:[B

.field private outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private volatile outputCountDequeued:J

.field private volatile outputEof:Z

.field private outputFormat:Landroid/media/MediaFormat;

.field private recordInputBufferSize:I

.field private remainingPcmQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder$PcmData;",
            ">;"
        }
    .end annotation
.end field

.field private theOldestAudioData:Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder$AudioData;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 47
    iput v0, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->curSampleRate:I

    .line 48
    iput v0, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->curChannelCount:I

    .line 49
    iput v0, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->curCodecInfoAACProfile:I

    .line 50
    iput v0, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->curBitrate:I

    .line 51
    iput v0, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->curSampleNumPerChannel:I

    const/4 v1, 0x0

    .line 58
    iput-boolean v1, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->encoderStarted:Z

    const-wide/16 v2, 0x0

    .line 61
    iput-wide v2, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->inputCountDequeued:J

    .line 64
    iput-wide v2, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->outputCountDequeued:J

    .line 67
    iput-boolean v1, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->inputEof:Z

    .line 70
    iput-boolean v1, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->outputEof:Z

    .line 73
    iput v0, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->recordInputBufferSize:I

    .line 75
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->remainingPcmQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->theOldestAudioData:Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder$AudioData;

    .line 77
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->audioQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 78
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    return-void
.end method

.method private addAudioData([B)V
    .registers 5

    .line 578
    new-instance v0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder$AudioData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder$AudioData;-><init>(Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder$1;)V

    .line 579
    iput-object p1, v0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder$AudioData;->data:[B

    .line 580
    iget-object p1, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v1, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v1, v0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder$AudioData;->pts:J

    .line 581
    iget p1, p1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iput p1, v0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder$AudioData;->flag:I

    .line 582
    iget-object p0, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->audioQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addPcmData([BJ)V
    .registers 6

    .line 551
    new-instance v0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder$PcmData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder$PcmData;-><init>(Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder$1;)V

    .line 552
    iput-object p1, v0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder$PcmData;->data:[B

    .line 553
    iput-wide p2, v0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder$PcmData;->pts:J

    .line 554
    iget-object p0, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->remainingPcmQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private closeEncoder()I
    .registers 4

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "closeEncoder, remainingPcmQueue size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->remainingPcmQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", audioQueue size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->audioQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", inputCountDequeued: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->inputCountDequeued:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", outputCountDequeued: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->outputCountDequeued:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TEAudioHwEncoder"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-direct {p0}, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->releaseEncoder()V

    const/4 v0, 0x0

    .line 332
    iput-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->curMimeType:Ljava/lang/String;

    const/4 v1, -0x1

    .line 334
    iput v1, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->curChannelCount:I

    .line 335
    iput v1, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->curSampleRate:I

    .line 336
    iput v1, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->curCodecInfoAACProfile:I

    .line 337
    iput v1, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->curSampleNumPerChannel:I

    .line 338
    iput-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->outputAsc:[B

    const/4 p0, 0x0

    return p0
.end method

.method private drainOutputBuffer(Z)I
    .registers 12

    .line 237
    const-string v0, "TEAudioHwEncoder"

    const/4 v1, 0x0

    :cond_3
    :goto_3
    move v2, v1

    .line 238
    :cond_4
    :try_start_4
    iget-boolean v3, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->outputEof:Z

    if-nez v3, :cond_179

    .line 239
    iget-object v3, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->audioEncoder:Landroid/media/MediaCodec;

    iget-object v4, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v5, 0x0

    if-lez v2, :cond_13

    const-wide/16 v7, 0x2710

    goto :goto_14

    :cond_13
    move-wide v7, v5

    :goto_14
    invoke-virtual {v3, v4, v7, v8}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v3

    if-ltz v3, :cond_cb

    .line 242
    iget-object v2, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v2, :cond_b4

    .line 243
    invoke-direct {p0, v3}, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->geOutputBufferByIndex(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 244
    iget-object v4, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 245
    iget-object v4, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v7, v4, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v7, v4

    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 246
    iget-object v4, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v4, v4, [B

    .line 247
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 249
    iget-object v2, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I
    :try_end_42
    .catchall {:try_start_4 .. :try_end_42} :catchall_6d

    and-int/lit8 v2, v2, 0x2

    const-string v7, ", pts: "

    if-eqz v2, :cond_70

    .line 250
    :try_start_48
    iput-object v4, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->outputAsc:[B

    .line 251
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "output BUFFER_FLAG_CODEC_CONFIG, asc size: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v4, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b4

    :catchall_6d
    move-exception p0

    goto/16 :goto_17a

    .line 255
    :cond_70
    iget-wide v8, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->outputCountDequeued:J

    cmp-long v2, v8, v5

    if-lez v2, :cond_aa

    iget-object v2, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v8, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v2, v8, v5

    if-gtz v2, :cond_aa

    .line 256
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "outputCountDequeued: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->outputCountDequeued:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", size: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v5, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v5, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :cond_aa
    invoke-direct {p0, v4}, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->addAudioData([B)V

    .line 259
    iget-wide v4, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->outputCountDequeued:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->outputCountDequeued:J

    .line 264
    :cond_b4
    :goto_b4
    iget-object v2, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2, v3, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 265
    iget-object v2, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_3

    .line 266
    const-string p1, "output buffer eof"

    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 267
    iput-boolean p1, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->outputEof:Z

    goto/16 :goto_179

    :cond_cb
    const/4 v4, -0x3

    if-ne v3, v4, :cond_d5

    .line 273
    const-string v2, "output buffer changed, need to getOutputBuffers again"

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_d5
    const/4 v4, -0x2

    if-ne v3, v4, :cond_12e

    .line 276
    iget-object v2, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v2

    iput-object v2, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->outputFormat:Landroid/media/MediaFormat;

    .line 277
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "output buffer format changed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->outputFormat:Landroid/media/MediaFormat;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object v2, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->outputFormat:Landroid/media/MediaFormat;

    const-string v3, "sample-rate"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    .line 280
    iget-object v3, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->outputFormat:Landroid/media/MediaFormat;

    const-string v4, "channel-count"

    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    .line 281
    iget v4, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->curSampleRate:I

    if-ne v4, v2, :cond_10e

    iget v2, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->curChannelCount:I

    if-eq v2, v3, :cond_113

    .line 282
    :cond_10e
    const-string v2, "audio meta info changed, error error error !!!"

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    :cond_113
    iget-object v2, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->outputFormat:Landroid/media/MediaFormat;

    const-string v3, "csd-0"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 286
    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    if-lez v3, :cond_3

    .line 287
    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    new-array v3, v3, [B

    .line 288
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 289
    iput-object v3, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->outputAsc:[B

    goto/16 :goto_3

    :cond_12e
    const/4 v4, -0x1

    if-ne v3, v4, :cond_174

    if-eqz p1, :cond_138

    .line 301
    const-string v3, "dequeue output buffer timeout, try again later"

    invoke-static {v0, v3}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :cond_138
    iget-boolean v3, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->inputEof:Z

    if-nez v3, :cond_145

    if-eqz p1, :cond_179

    iget-object v3, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->outputAsc:[B

    if-eqz v3, :cond_145

    array-length v3, v3

    if-gtz v3, :cond_179

    :cond_145
    add-int/lit8 v2, v2, 0x1

    .line 306
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inputEof, tryAgainLaterCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    sget v3, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->TRY_AGAIN_LATER_COUNT_LIMIT:I

    if-le v2, v3, :cond_4

    .line 310
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "dequeue output buffer timeout, tryAgainLaterCount: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_179

    .line 317
    :cond_174
    const-string p0, "not available output buffer"

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_179
    .catchall {:try_start_48 .. :try_end_179} :catchall_6d

    :cond_179
    :goto_179
    return v1

    .line 322
    :goto_17a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "drainOutputBuffer error: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0xea6a

    return p0
.end method

.method private geOutputBufferByIndex(I)Ljava/nio/ByteBuffer;
    .registers 2

    .line 538
    iget-object p0, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method private getAudioData()[B
    .registers 1

    .line 570
    iget-object p0, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->theOldestAudioData:Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder$AudioData;

    if-eqz p0, :cond_7

    iget-object p0, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder$AudioData;->data:[B

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method private getAudioPts()J
    .registers 3

    .line 574
    iget-object p0, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->theOldestAudioData:Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder$AudioData;

    if-eqz p0, :cond_7

    iget-wide v0, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder$AudioData;->pts:J

    return-wide v0

    :cond_7
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private getGoogleEncoderCodecInfo()Landroid/media/MediaCodecInfo;
    .registers 12

    .line 463
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->curMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 468
    :cond_a
    new-instance v0, Landroid/media/MediaCodecList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 469
    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v0

    .line 470
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_17
    if-ge v4, v2, :cond_cb

    aget-object v5, v0, v4

    .line 471
    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v6

    if-eqz v6, :cond_c7

    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "OMX.google"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2f

    goto/16 :goto_c7

    .line 476
    :cond_2f
    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_c7

    .line 478
    array-length v7, v6

    move v8, v3

    :goto_37
    if-ge v8, v7, :cond_c7

    aget-object v9, v6, v8

    .line 479
    iget-object v10, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->curMimeType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c3

    .line 487
    iget-object v6, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->curMimeType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    move-result-object v6

    .line 488
    const-string v7, "TEAudioHwEncoder"

    if-nez v6, :cond_6a

    .line 489
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " null audio capabilities"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c7

    .line 492
    :cond_6a
    iget v8, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->curSampleRate:I

    invoke-virtual {v6, v8}, Landroid/media/MediaCodecInfo$AudioCapabilities;->isSampleRateSupported(I)Z

    move-result v8

    if-nez v8, :cond_90

    .line 493
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " not support SampleRate: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->curSampleRate:I

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c7

    .line 496
    :cond_90
    iget v8, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->curChannelCount:I

    invoke-virtual {v6}, Landroid/media/MediaCodecInfo$AudioCapabilities;->getMaxInputChannelCount()I

    move-result v9

    if-le v8, v9, :cond_c2

    .line 497
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " not support ChannelCount: "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->curChannelCount:I

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", max channel count is "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/media/MediaCodecInfo$AudioCapabilities;->getMaxInputChannelCount()I

    move-result v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c7

    :cond_c2
    return-object v5

    :cond_c3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_37

    :cond_c7
    :goto_c7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_17

    :cond_cb
    return-object v1
.end method

.method private getInputBufferByIndex(I)Ljava/nio/ByteBuffer;
    .registers 2

    .line 528
    iget-object p0, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method private getOutputAsc()[B
    .registers 1

    .line 565
    iget-object p0, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->outputAsc:[B

    return-object p0
.end method

.method private initEncoder(Ljava/lang/String;IIIII)I
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    .line 82
    sget v7, Lcom/ss/android/vesdk/VERuntimeConfig;->sHardWareEncFallBack:I

    sget-object v8, Lcom/ss/android/vesdk/VERuntimeConfig$HwEncFallBackMode;->AUDIO_ENC_INIT_FALLBACK:Lcom/ss/android/vesdk/VERuntimeConfig$HwEncFallBackMode;

    invoke-virtual {v8}, Lcom/ss/android/vesdk/VERuntimeConfig$HwEncFallBackMode;->getValue()I

    move-result v8

    const-string v9, "TEAudioHwEncoder"

    if-ne v7, v8, :cond_22

    .line 83
    const-string v0, "TESTING! HW AUDIO ENC INIT FALLBACK"

    invoke-static {v9, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0xcb

    return v0

    .line 87
    :cond_22
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const-string v8, "te_composition_audio_create_hw_encoder"

    const-string v10, ", sampleNumPerChannel: "

    const-string v11, ", bitrate: "

    const-string v12, ", channelCount: "

    const-string v13, ", sampleRate: "

    if-nez v7, :cond_120

    if-lez v2, :cond_120

    if-lez v3, :cond_120

    if-lez v4, :cond_120

    if-lez v5, :cond_120

    if-gtz v6, :cond_3e

    goto/16 :goto_120

    :cond_3e
    const/4 v7, 0x2

    if-ne v2, v7, :cond_43

    const/4 v2, 0x5

    goto :goto_44

    :cond_43
    move v2, v7

    .line 94
    :goto_44
    iget-object v15, v0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->curMimeType:Ljava/lang/String;

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    const/16 v16, 0x0

    if-eqz v15, :cond_62

    iget v15, v0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->curCodecInfoAACProfile:I

    if-ne v15, v2, :cond_62

    iget v15, v0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->curSampleRate:I

    if-ne v15, v3, :cond_62

    iget v15, v0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->curChannelCount:I

    if-ne v15, v4, :cond_62

    iget v15, v0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->curSampleNumPerChannel:I

    if-eq v15, v6, :cond_5f

    goto :goto_62

    :cond_5f
    move/from16 v15, v16

    goto :goto_63

    :cond_62
    :goto_62
    const/4 v15, 0x1

    .line 98
    :goto_63
    iput-object v1, v0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->curMimeType:Ljava/lang/String;

    .line 99
    iput v2, v0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->curCodecInfoAACProfile:I

    .line 100
    iput v3, v0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->curSampleRate:I

    .line 101
    iput v4, v0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->curChannelCount:I

    .line 102
    iput v5, v0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->curBitrate:I

    .line 103
    iput v6, v0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->curSampleNumPerChannel:I

    .line 104
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initEncoder, mimeType: "

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", codecInfoAACProfile: "

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v15, :cond_ad

    .line 107
    iget-boolean v2, v0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->encoderStarted:Z

    if-nez v2, :cond_aa

    goto :goto_ad

    :cond_aa
    move/from16 v1, v16

    goto :goto_e4

    .line 108
    :cond_ad
    :goto_ad
    invoke-static {v1, v3, v4}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v1

    iput-object v1, v0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->inputFormat:Landroid/media/MediaFormat;

    .line 109
    const-string v2, "bitrate"

    invoke-virtual {v1, v2, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 110
    iget-object v1, v0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->inputFormat:Landroid/media/MediaFormat;

    const-string v2, "aac-profile"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 112
    iget v1, v0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->curChannelCount:I

    mul-int/2addr v1, v6

    mul-int/lit8 v1, v1, 0x4

    .line 113
    iget-object v2, v0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->inputFormat:Landroid/media/MediaFormat;

    const-string v3, "max-input-size"

    invoke-virtual {v2, v3, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KEY_MAX_INPUT_SIZE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-direct {v0}, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->restartEncoder()I

    move-result v1

    :goto_e4
    if-nez v1, :cond_fd

    .line 121
    const-string v1, "initEncoder, try to get asc start"

    invoke-static {v9, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 122
    invoke-direct {v0, v2}, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->drainOutputBuffer(Z)I

    move-result v1

    .line 123
    const-string v0, "initEncoder, try to get asc end"

    invoke-static {v9, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_fa

    :goto_f7
    move/from16 v0, v16

    goto :goto_ff

    :cond_fa
    const/16 v16, 0x3

    goto :goto_f7

    :cond_fd
    const/4 v2, 0x1

    move v0, v2

    :goto_ff
    int-to-long v3, v0

    .line 133
    invoke-static {v2, v8, v3, v4}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initEncoder, result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", monitor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 88
    :cond_120
    :goto_120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initEncoder invalid param, mimeType: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", profile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x2

    const/4 v2, 0x1

    .line 89
    invoke-static {v2, v8, v0, v1}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    const/16 v0, -0x65

    return v0
.end method

.method private releaseEncoder()V
    .registers 5

    .line 348
    const-string v0, "TEAudioHwEncoder"

    iget-object v1, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->audioEncoder:Landroid/media/MediaCodec;

    if-nez v1, :cond_7

    goto :goto_57

    .line 353
    :cond_7
    :try_start_7
    iget-boolean v1, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->encoderStarted:Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_9} :catch_30
    .catchall {:try_start_7 .. :try_end_9} :catchall_11

    if-eqz v1, :cond_32

    .line 355
    :try_start_b
    iget-object v1, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_13
    .catchall {:try_start_b .. :try_end_10} :catchall_11

    goto :goto_2c

    :catchall_11
    move-exception v0

    goto :goto_58

    :catch_13
    move-exception v1

    .line 357
    :try_start_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaCodec stop exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2c
    const/4 v1, 0x0

    .line 360
    iput-boolean v1, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->encoderStarted:Z

    goto :goto_32

    :catch_30
    move-exception v1

    goto :goto_3e

    .line 362
    :cond_32
    :goto_32
    iget-object v1, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    const/4 v1, 0x0

    .line 363
    iput-object v1, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->audioEncoder:Landroid/media/MediaCodec;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_3a} :catch_30
    .catchall {:try_start_14 .. :try_end_3a} :catchall_11

    .line 367
    :goto_3a
    invoke-direct {p0}, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->resetCodecInfo()V

    goto :goto_57

    .line 365
    :goto_3e
    :try_start_3e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseEncoder: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_56
    .catchall {:try_start_3e .. :try_end_56} :catchall_11

    goto :goto_3a

    :goto_57
    return-void

    .line 367
    :goto_58
    invoke-direct {p0}, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->resetCodecInfo()V

    .line 368
    throw v0
.end method

.method private resetCodecInfo()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 390
    iput-wide v0, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->inputCountDequeued:J

    .line 391
    iput-wide v0, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->outputCountDequeued:J

    const/4 v0, 0x0

    .line 392
    iput-boolean v0, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->inputEof:Z

    .line 393
    iput-boolean v0, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->outputEof:Z

    .line 394
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->remainingPcmQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 395
    iget-object p0, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->audioQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    return-void
.end method

.method private restartEncoder()I
    .registers 1

    .line 343
    invoke-direct {p0}, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->releaseEncoder()V

    .line 344
    invoke-direct {p0}, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->startEncoder()I

    move-result p0

    return p0
.end method

.method private selectMediaCodec()Landroid/media/MediaCodec;
    .registers 8

    .line 405
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->curMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 409
    :cond_a
    invoke-direct {p0}, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->getGoogleEncoderCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v0

    .line 411
    const-string v2, "TEAudioHwEncoder"

    if-nez v0, :cond_14

    :goto_12
    move-object v0, v1

    goto :goto_37

    .line 415
    :cond_14
    :try_start_14
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1c} :catch_1d

    goto :goto_37

    :catch_1d
    move-exception v0

    .line 418
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createByCodecName error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :goto_37
    if-nez v0, :cond_5a

    .line 424
    :try_start_39
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->curMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3f} :catch_40

    goto :goto_5b

    :catch_40
    move-exception v0

    .line 427
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createEncoderByType error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5b

    :cond_5a
    move-object v1, v0

    :goto_5b
    if-eqz v1, :cond_b4

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selectMediaCodec, encoder name: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->inputFormat:Landroid/media/MediaFormat;

    if-eqz v0, :cond_b4

    .line 436
    invoke-virtual {v1}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v0

    iget-object v3, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->curMimeType:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v0

    iget-object v0, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    if-eqz v0, :cond_b4

    .line 438
    array-length v3, v0

    const/4 v4, 0x0

    :goto_89
    if-ge v4, v3, :cond_b4

    aget-object v5, v0, v4

    .line 439
    iget v5, v5, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    iget v6, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->curCodecInfoAACProfile:I

    if-ne v5, v6, :cond_b1

    .line 447
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->inputFormat:Landroid/media/MediaFormat;

    const-string v3, "aac-profile"

    invoke-virtual {v0, v3, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "final profile: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->curCodecInfoAACProfile:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b4

    :cond_b1
    add-int/lit8 v4, v4, 0x1

    goto :goto_89

    :cond_b4
    :goto_b4
    return-object v1
.end method

.method private startEncoder()I
    .registers 6

    .line 373
    const-string v0, "TEAudioHwEncoder"

    :try_start_2
    invoke-direct {p0}, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->selectMediaCodec()Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->audioEncoder:Landroid/media/MediaCodec;

    if-nez v1, :cond_25

    .line 375
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create encoder failure, mime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->curMimeType:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0xc9

    return p0

    :catch_23
    move-exception p0

    goto :goto_35

    .line 379
    :cond_25
    iget-object v2, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->inputFormat:Landroid/media/MediaFormat;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 380
    iget-object v1, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    .line 381
    iput-boolean v3, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->encoderStarted:Z
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_33} :catch_23

    const/4 p0, 0x0

    return p0

    .line 384
    :goto_35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startEncoder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0xcb

    return p0
.end method


# virtual methods
.method encodeFrame([BJ)I
    .registers 20

    move-object/from16 v1, p0

    .line 148
    sget v0, Lcom/ss/android/vesdk/VERuntimeConfig;->sHardWareEncFallBack:I

    sget-object v2, Lcom/ss/android/vesdk/VERuntimeConfig$HwEncFallBackMode;->AUDIO_ENC_ENCODING_FALLBACK:Lcom/ss/android/vesdk/VERuntimeConfig$HwEncFallBackMode;

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VERuntimeConfig$HwEncFallBackMode;->getValue()I

    move-result v2

    const v3, -0xc35a

    const-string v4, "TEAudioHwEncoder"

    if-ne v0, v2, :cond_17

    .line 149
    const-string v0, "TESTING! HW AUDIO ENC ENCODING FALLBACK"

    invoke-static {v4, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_17
    const/4 v2, 0x0

    .line 155
    :try_start_18
    iget-boolean v0, v1, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->inputEof:Z

    if-nez v0, :cond_23

    .line 156
    invoke-direct/range {p0 .. p3}, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->addPcmData([BJ)V

    goto :goto_23

    :catchall_20
    move-exception v0

    goto/16 :goto_10d

    :cond_23
    :goto_23
    move v0, v2

    .line 159
    :cond_24
    :goto_24
    iget-boolean v5, v1, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->inputEof:Z

    if-nez v5, :cond_108

    iget-object v5, v1, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->remainingPcmQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v5}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_108

    .line 160
    iget-object v5, v1, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->remainingPcmQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder$PcmData;

    if-nez v5, :cond_3c

    goto/16 :goto_108

    .line 165
    :cond_3c
    iget-object v6, v1, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->audioEncoder:Landroid/media/MediaCodec;

    sget-wide v7, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->INPUT_DEQUEUE_TIMEOUT_US:J

    invoke-virtual {v6, v7, v8}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v10

    if-ltz v10, :cond_e0

    .line 167
    iget-object v6, v5, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder$PcmData;->data:[B

    if-eqz v6, :cond_b8

    array-length v7, v6

    if-gtz v7, :cond_4e

    goto :goto_b8

    .line 174
    :cond_4e
    array-length v6, v6

    .line 175
    invoke-direct {v1, v10}, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->getInputBufferByIndex(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 176
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 178
    invoke-virtual {v7}, Ljava/nio/Buffer;->remaining()I

    move-result v8

    if-le v6, v8, :cond_79

    .line 180
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "input buffer not enough, audio data size: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", buffer available size: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9d

    .line 181
    :cond_79
    iget v9, v1, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->recordInputBufferSize:I

    if-eq v8, v9, :cond_9d

    .line 182
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "recordInputBufferSize changed, old: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->recordInputBufferSize:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", new: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iput v8, v1, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->recordInputBufferSize:I

    .line 186
    :cond_9d
    :goto_9d
    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 187
    iget-object v6, v5, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder$PcmData;->data:[B

    invoke-virtual {v7, v6, v2, v12}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 188
    iget-object v9, v1, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->audioEncoder:Landroid/media/MediaCodec;

    iget-wide v13, v5, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder$PcmData;->pts:J

    const/4 v15, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v9 .. v15}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 189
    iget-wide v5, v1, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->inputCountDequeued:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, v1, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->inputCountDequeued:J

    goto/16 :goto_24

    .line 169
    :cond_b8
    :goto_b8
    iget-object v9, v1, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->audioEncoder:Landroid/media/MediaCodec;

    iget-wide v13, v5, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder$PcmData;->pts:J

    const/4 v15, 0x4

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v9 .. v15}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    const/4 v0, 0x1

    .line 170
    iput-boolean v0, v1, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->inputEof:Z

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "input buffer eof, remainingPcmQueue size: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->remainingPcmQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_108

    :cond_e0
    const/4 v5, -0x1

    if-ne v10, v5, :cond_103

    .line 192
    const-string v5, "dequeue input buffer timeout, try again later"

    invoke-static {v4, v5}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    .line 196
    sget v5, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->TRY_AGAIN_LATER_COUNT_LIMIT:I

    if-le v0, v5, :cond_24

    .line 197
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dequeue input buffer timeout, tryAgainLaterCount: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_108

    .line 201
    :cond_103
    const-string v0, "not available input buffer"

    invoke-static {v4, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :cond_108
    :goto_108
    invoke-direct {v1, v2}, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->drainOutputBuffer(Z)I

    move-result v3
    :try_end_10c
    .catchall {:try_start_18 .. :try_end_10c} :catchall_20

    goto :goto_125

    .line 209
    :goto_10d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "drainOutputBuffer error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_125
    if-gez v3, :cond_128

    return v3

    .line 216
    :cond_128
    iget-object v0, v1, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->audioQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13c

    iget-boolean v0, v1, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->outputEof:Z

    if-eqz v0, :cond_13c

    .line 217
    const-string v0, "encoder all EOF"

    invoke-static {v4, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x400

    return v0

    .line 221
    :cond_13c
    iget-object v0, v1, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->audioQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder$AudioData;

    iput-object v0, v1, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder;->theOldestAudioData:Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder$AudioData;

    if-eqz v0, :cond_14b

    .line 223
    iget-object v0, v0, Lcom/ss/android/ttve/mediacodec/TEAudioHwEncoder$AudioData;->data:[B

    array-length v2, v0

    :cond_14b
    return v2
.end method
