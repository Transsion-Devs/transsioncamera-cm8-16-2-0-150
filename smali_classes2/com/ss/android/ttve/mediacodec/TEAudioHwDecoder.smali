.class public Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder$PcmData;
    }
.end annotation


# static fields
.field private static final FLUSH_DECODER_EXCEPTION:I = -0xd3

.field private static final INIT_DECODER_INVALID_PARAM:I = -0x65

.field private static INPUT_DEQUEUE_TIMEOUT_US:J = 0x2710L

.field private static final MEDIACODEC_CONFIGURE_EXCEPTION:I = -0xcb

.field private static final MEDIACODEC_CREATE_FAILURE:I = -0xc9

.field private static final MEDIACODEC_NULL:I = -0xcc

.field private static final MEDIA_CODEC_DEQUEUE_INPUT_BUFFER_EXCEPTION:I = -0x1388

.field private static final MEDIA_CODEC_DEQUEUE_OUTPUT_BUFFER_EXCEPTION:I = -0x1770

.field private static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TEAudioHwDecoder"


# instance fields
.field private audioDecoder:Landroid/media/MediaCodec;

.field private curAsc:[B

.field private curChannelCount:I

.field private curMimeType:Ljava/lang/String;

.field private curSampleRate:I

.field private volatile decoderStarted:Z

.field private volatile inputCountQueued:J

.field private volatile inputEof:Z

.field private inputFormat:Landroid/media/MediaFormat;

.field private outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private volatile outputCountDequeued:J

.field private volatile outputEof:Z

.field private outputFormat:Landroid/media/MediaFormat;

.field private pcmQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder$PcmData;",
            ">;"
        }
    .end annotation
.end field

.field private theOldestPcmData:Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder$PcmData;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 40
    iput v0, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->curSampleRate:I

    .line 41
    iput v0, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->curChannelCount:I

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->decoderStarted:Z

    const-wide/16 v1, 0x0

    .line 50
    iput-wide v1, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->inputCountQueued:J

    .line 53
    iput-wide v1, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->outputCountDequeued:J

    .line 56
    iput-boolean v0, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->inputEof:Z

    .line 59
    iput-boolean v0, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->outputEof:Z

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->theOldestPcmData:Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder$PcmData;

    .line 62
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->pcmQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 63
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    return-void
.end method

.method private addPcmData([B)V
    .registers 5

    .line 469
    new-instance v0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder$PcmData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder$PcmData;-><init>(Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder$1;)V

    .line 470
    iput-object p1, v0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder$PcmData;->data:[B

    .line 471
    iget-object p1, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v1, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v1, v0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder$PcmData;->pts:J

    .line 472
    iget p1, p1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iput p1, v0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder$PcmData;->flag:I

    .line 473
    iget-object p0, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->pcmQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private closeDecoder()I
    .registers 3

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "closeDecoder, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TEAudioHwDecoder"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-direct {p0}, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->releaseDecoder()V

    const/4 v0, 0x0

    .line 256
    iput-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->curMimeType:Ljava/lang/String;

    const/4 v1, -0x1

    .line 257
    iput v1, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->curSampleRate:I

    .line 258
    iput v1, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->curChannelCount:I

    .line 259
    iput-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->curAsc:[B

    const/4 p0, 0x0

    return p0
.end method

.method private decodeFrame([BJ)[I
    .registers 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 102
    const-string v2, "TEAudioHwDecoder"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_12

    .line 106
    array-length v5, v0

    if-gtz v5, :cond_e

    goto :goto_12

    .line 111
    :cond_e
    array-length v5, v0

    move v6, v4

    move v7, v6

    goto :goto_15

    :cond_12
    :goto_12
    move v7, v3

    move v5, v4

    move v6, v5

    .line 115
    :goto_15
    :try_start_15
    iget-boolean v8, v1, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->inputEof:Z

    if-nez v8, :cond_73

    if-lt v6, v5, :cond_1d

    if-eqz v7, :cond_73

    .line 116
    :cond_1d
    iget-object v8, v1, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->audioDecoder:Landroid/media/MediaCodec;

    sget-wide v9, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->INPUT_DEQUEUE_TIMEOUT_US:J

    invoke-virtual {v8, v9, v10}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v12

    if-ltz v12, :cond_65

    if-eqz v7, :cond_3e

    .line 120
    iget-object v11, v1, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->audioDecoder:Landroid/media/MediaCodec;

    const/4 v14, 0x0

    const/16 v17, 0x4

    const/4 v13, 0x0

    move-wide/from16 v15, p2

    invoke-virtual/range {v11 .. v17}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 121
    iput-boolean v3, v1, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->inputEof:Z

    .line 122
    const-string v0, "input buffer eof"

    invoke-static {v2, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_73

    :catchall_3c
    move-exception v0

    goto :goto_78

    .line 125
    :cond_3e
    invoke-direct {v1, v12}, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->getInputBufferByIndex(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 126
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 127
    invoke-virtual {v8}, Ljava/nio/Buffer;->remaining()I

    move-result v9

    sub-int v10, v5, v6

    .line 128
    invoke-static {v10, v9}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 129
    invoke-virtual {v8, v0, v6, v14}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v6, v14

    .line 131
    iget-object v11, v1, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->audioDecoder:Landroid/media/MediaCodec;

    const/4 v13, 0x0

    const/16 v17, 0x0

    move-wide/from16 v15, p2

    invoke-virtual/range {v11 .. v17}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 132
    iget-wide v8, v1, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->inputCountQueued:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, v1, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->inputCountQueued:J

    goto :goto_15

    :cond_65
    const/4 v0, -0x1

    if-ne v12, v0, :cond_6e

    .line 135
    const-string v0, "dequeue input buffer timeout, try again later"

    invoke-static {v2, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_73

    .line 138
    :cond_6e
    const-string v0, "not available input buffer"

    invoke-static {v2, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_73
    :goto_73
    invoke-direct {v1}, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->drainOutputBuffer()I

    move-result v0
    :try_end_77
    .catchall {:try_start_15 .. :try_end_77} :catchall_3c

    goto :goto_92

    .line 146
    :goto_78
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "drainOutputBuffer error: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x1388

    .line 151
    :goto_92
    iget-object v2, v1, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->pcmQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder$PcmData;

    iput-object v2, v1, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->theOldestPcmData:Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder$PcmData;

    if-eqz v2, :cond_a1

    .line 153
    iget-object v1, v2, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder$PcmData;->data:[B

    array-length v4, v1

    .line 156
    :cond_a1
    filled-new-array {v0, v6, v4}, [I

    move-result-object v0

    return-object v0
.end method

.method private drainOutputBuffer()I
    .registers 8

    .line 168
    const-string v0, "TEAudioHwDecoder"

    .line 171
    :cond_2
    :goto_2
    :try_start_2
    iget-boolean v1, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->outputEof:Z

    const/4 v2, 0x0

    if-nez v1, :cond_ac

    .line 172
    iget-object v1, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->audioDecoder:Landroid/media/MediaCodec;

    iget-object v3, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    if-ltz v1, :cond_5a

    .line 174
    iget-object v3, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v3, :cond_44

    .line 175
    invoke-direct {p0, v1}, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->geOutputBufferByIndex(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 176
    iget-object v4, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 177
    iget-object v4, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v5, v4, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v5, v4

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 179
    iget-object v4, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v4, v4, [B

    .line 180
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 181
    invoke-direct {p0, v4}, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->addPcmData([B)V

    .line 182
    iget-wide v3, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->outputCountDequeued:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->outputCountDequeued:J

    goto :goto_44

    :catchall_42
    move-exception p0

    goto :goto_ad

    .line 185
    :cond_44
    :goto_44
    iget-object v3, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->audioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v3, v1, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 186
    iget-object v1, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 187
    const-string v1, "output buffer eof"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 188
    iput-boolean v1, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->outputEof:Z

    goto :goto_ac

    :cond_5a
    const/4 v3, -0x3

    if-ne v1, v3, :cond_63

    .line 193
    const-string v1, "output buffer changed, need to getOutputBuffers again"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_63
    const/4 v3, -0x2

    if-ne v1, v3, :cond_a3

    .line 195
    iget-object v1, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->audioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->outputFormat:Landroid/media/MediaFormat;

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "output buffer format changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->outputFormat:Landroid/media/MediaFormat;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v1, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->outputFormat:Landroid/media/MediaFormat;

    const-string v2, "sample-rate"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    .line 199
    iget-object v2, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->outputFormat:Landroid/media/MediaFormat;

    const-string v3, "channel-count"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    .line 200
    iget v3, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->curSampleRate:I

    if-ne v3, v1, :cond_9c

    iget v1, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->curChannelCount:I

    if-eq v1, v2, :cond_2

    .line 201
    :cond_9c
    const-string v1, "audio meta info changed, error error error !!!"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_a3
    const/4 p0, -0x1

    if-ne v1, p0, :cond_a7

    goto :goto_ac

    .line 206
    :cond_a7
    const-string p0, "not available output buffer"

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ac
    .catchall {:try_start_2 .. :try_end_ac} :catchall_42

    :cond_ac
    :goto_ac
    return v2

    .line 211
    :goto_ad
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drainOutputBuffer error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x1770

    return p0
.end method

.method private flushDecoder()I
    .registers 7

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "flushDecoder, inputEof: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->inputEof:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", outputEof: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->outputEof:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", inputCountQueued: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->inputCountQueued:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TEAudioHwDecoder"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->audioDecoder:Landroid/media/MediaCodec;

    if-nez v0, :cond_3f

    const/16 p0, -0xcc

    return p0

    :cond_3f
    const/4 v0, 0x0

    .line 225
    :try_start_40
    iget-boolean v2, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->inputEof:Z

    if-nez v2, :cond_66

    iget-boolean v2, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->outputEof:Z

    if-eqz v2, :cond_49

    goto :goto_66

    .line 230
    :cond_49
    iget-wide v2, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->inputCountQueued:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_5d

    .line 233
    iget-object v2, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->audioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->flush()V

    .line 234
    iput-wide v4, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->inputCountQueued:J

    .line 235
    iput-wide v4, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->outputCountDequeued:J
    :try_end_5a
    .catchall {:try_start_40 .. :try_end_5a} :catchall_5b

    goto :goto_5d

    :catchall_5b
    move-exception v2

    goto :goto_72

    .line 246
    :cond_5d
    :goto_5d
    iget-object v1, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->pcmQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 247
    iput-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->theOldestPcmData:Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder$PcmData;

    const/4 p0, 0x0

    return p0

    .line 228
    :cond_66
    :goto_66
    :try_start_66
    invoke-direct {p0}, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->restartDecoder()I

    move-result v1
    :try_end_6a
    .catchall {:try_start_66 .. :try_end_6a} :catchall_5b

    .line 246
    iget-object v2, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->pcmQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 247
    iput-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->theOldestPcmData:Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder$PcmData;

    return v1

    .line 241
    :goto_72
    :try_start_72
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "flushDecoder error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8a
    .catchall {:try_start_72 .. :try_end_8a} :catchall_94

    .line 246
    iget-object v1, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->pcmQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 247
    iput-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->theOldestPcmData:Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder$PcmData;

    const/16 p0, -0xd3

    return p0

    :catchall_94
    move-exception v1

    .line 246
    iget-object v2, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->pcmQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 247
    iput-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->theOldestPcmData:Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder$PcmData;

    .line 248
    throw v1
.end method

.method private geOutputBufferByIndex(I)Ljava/nio/ByteBuffer;
    .registers 2

    .line 446
    iget-object p0, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->audioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method private getGoogleMediaCodecInfo()Landroid/media/MediaCodecInfo;
    .registers 12

    .line 378
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->curMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 383
    :cond_a
    new-instance v0, Landroid/media/MediaCodecList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 384
    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v0

    .line 385
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_17
    if-ge v4, v2, :cond_ad

    aget-object v5, v0, v4

    .line 386
    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v6

    if-nez v6, :cond_a9

    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "OMX.google"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2f

    goto/16 :goto_a9

    .line 391
    :cond_2f
    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v6

    .line 392
    array-length v7, v6

    move v8, v3

    :goto_35
    if-ge v8, v7, :cond_a9

    aget-object v9, v6, v8

    .line 393
    iget-object v10, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->curMimeType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a6

    .line 400
    iget-object v6, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->curMimeType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    move-result-object v6

    .line 401
    iget v7, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->curSampleRate:I

    invoke-virtual {v6, v7}, Landroid/media/MediaCodecInfo$AudioCapabilities;->isSampleRateSupported(I)Z

    move-result v7

    const-string v8, "TEAudioHwDecoder"

    if-nez v7, :cond_73

    .line 402
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " not support SampleRate: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->curSampleRate:I

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a9

    .line 406
    :cond_73
    iget v7, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->curChannelCount:I

    invoke-virtual {v6}, Landroid/media/MediaCodecInfo$AudioCapabilities;->getMaxInputChannelCount()I

    move-result v9

    if-le v7, v9, :cond_a5

    .line 407
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " not support ChannelCount: "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->curChannelCount:I

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", max channel count is "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/media/MediaCodecInfo$AudioCapabilities;->getMaxInputChannelCount()I

    move-result v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a9

    :cond_a5
    return-object v5

    :cond_a6
    add-int/lit8 v8, v8, 0x1

    goto :goto_35

    :cond_a9
    :goto_a9
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_17

    :cond_ad
    return-object v1
.end method

.method private getInputBufferByIndex(I)Ljava/nio/ByteBuffer;
    .registers 2

    .line 436
    iget-object p0, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->audioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method private getPcmData()[B
    .registers 1

    .line 461
    iget-object p0, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->theOldestPcmData:Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder$PcmData;

    if-eqz p0, :cond_7

    iget-object p0, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder$PcmData;->data:[B

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method private getPcmPts()J
    .registers 3

    .line 465
    iget-object p0, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->theOldestPcmData:Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder$PcmData;

    if-eqz p0, :cond_7

    iget-wide v0, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder$PcmData;->pts:J

    return-wide v0

    :cond_7
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private initDecoder(Ljava/lang/String;II[B)I
    .registers 10

    .line 66
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_96

    if-lez p2, :cond_96

    if-gtz p3, :cond_c

    goto/16 :goto_96

    .line 70
    :cond_c
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->curMimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_27

    iget v0, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->curSampleRate:I

    if-ne v0, p2, :cond_27

    iget v0, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->curChannelCount:I

    if-ne v0, p3, :cond_27

    invoke-direct {p0, p4}, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->sameAsc([B)Z

    move-result v0

    if-nez v0, :cond_25

    goto :goto_27

    :cond_25
    move v0, v2

    goto :goto_28

    :cond_27
    :goto_27
    move v0, v1

    .line 73
    :goto_28
    iput-object p1, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->curMimeType:Ljava/lang/String;

    .line 74
    iput p2, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->curSampleRate:I

    .line 75
    iput p3, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->curChannelCount:I

    .line 76
    iput-object p4, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->curAsc:[B

    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initDecoder, mimeType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", sampleRate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", channelCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", asc size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_56

    array-length v4, p4

    goto :goto_57

    :cond_56
    const/4 v4, -0x1

    :goto_57
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", this: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TEAudioHwDecoder"

    invoke-static {v4, v3}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_77

    .line 79
    iget-boolean v0, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->decoderStarted:Z

    if-nez v0, :cond_76

    goto :goto_77

    :cond_76
    return v2

    .line 80
    :cond_77
    :goto_77
    invoke-static {p1, p2, p3}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->inputFormat:Landroid/media/MediaFormat;

    if-eqz p4, :cond_8c

    .line 81
    array-length p2, p4

    if-lez p2, :cond_8c

    .line 82
    const-string p2, "csd-0"

    invoke-static {p4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    goto :goto_91

    .line 84
    :cond_8c
    const-string p2, "is-adts"

    invoke-virtual {p1, p2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 93
    :goto_91
    invoke-direct {p0}, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->restartDecoder()I

    move-result p0

    return p0

    :cond_96
    :goto_96
    const/16 p0, -0x65

    return p0
.end method

.method private releaseDecoder()V
    .registers 4

    .line 287
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->audioDecoder:Landroid/media/MediaCodec;

    if-nez v0, :cond_5

    return-void

    .line 291
    :cond_5
    iget-boolean v0, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->decoderStarted:Z

    if-eqz v0, :cond_2d

    .line 293
    :try_start_9
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->audioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_f

    goto :goto_2a

    :catch_f
    move-exception v0

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaCodec stop exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TEAudioHwDecoder"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2a
    const/4 v0, 0x0

    .line 298
    iput-boolean v0, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->decoderStarted:Z

    .line 300
    :cond_2d
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->audioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    const/4 v0, 0x0

    .line 301
    iput-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->audioDecoder:Landroid/media/MediaCodec;

    .line 302
    invoke-direct {p0}, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->resetCodecInfo()V

    return-void
.end method

.method private resetCodecInfo()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 323
    iput-wide v0, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->inputCountQueued:J

    .line 324
    iput-wide v0, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->outputCountDequeued:J

    const/4 v0, 0x0

    .line 325
    iput-boolean v0, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->inputEof:Z

    .line 326
    iput-boolean v0, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->outputEof:Z

    return-void
.end method

.method private restartDecoder()I
    .registers 1

    .line 282
    invoke-direct {p0}, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->releaseDecoder()V

    .line 283
    invoke-direct {p0}, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->startDecoder()I

    move-result p0

    return p0
.end method

.method private sameAsc([B)Z
    .registers 7

    .line 264
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->curAsc:[B

    const/4 v1, 0x1

    if-nez v0, :cond_8

    if-nez p1, :cond_8

    return v1

    :cond_8
    const/4 v2, 0x0

    if-eqz v0, :cond_24

    if-nez p1, :cond_e

    goto :goto_24

    .line 270
    :cond_e
    array-length v0, v0

    array-length v3, p1

    if-eq v0, v3, :cond_13

    return v2

    :cond_13
    move v0, v2

    .line 273
    :goto_14
    iget-object v3, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->curAsc:[B

    array-length v4, v3

    if-ge v0, v4, :cond_23

    .line 274
    aget-byte v3, v3, v0

    aget-byte v4, p1, v0

    if-eq v3, v4, :cond_20

    return v2

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_23
    return v1

    :cond_24
    :goto_24
    return v2
.end method

.method private selectMediaCodec()Landroid/media/MediaCodec;
    .registers 6

    .line 336
    iget-object v0, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->curMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 341
    :cond_a
    invoke-direct {p0}, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->getGoogleMediaCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v0

    .line 344
    const-string v2, "TEAudioHwDecoder"

    if-nez v0, :cond_14

    :goto_12
    move-object v0, v1

    goto :goto_37

    .line 348
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

    .line 351
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

    .line 357
    :try_start_39
    iget-object p0, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->curMimeType:Ljava/lang/String;

    invoke-static {p0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3f} :catch_40

    goto :goto_5b

    :catch_40
    move-exception p0

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createDecoderByType error: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5b

    :cond_5a
    move-object v1, v0

    :goto_5b
    if-eqz v1, :cond_75

    .line 365
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "selectMediaCodec, decoder name: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_75
    return-object v1
.end method

.method private startDecoder()I
    .registers 6

    .line 307
    const-string v0, "TEAudioHwDecoder"

    :try_start_2
    invoke-direct {p0}, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->selectMediaCodec()Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->audioDecoder:Landroid/media/MediaCodec;

    if-nez v1, :cond_25

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create decoder failure, mime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->curMimeType:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0xc9

    return p0

    :catch_23
    move-exception p0

    goto :goto_35

    .line 312
    :cond_25
    iget-object v2, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->inputFormat:Landroid/media/MediaFormat;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 313
    iget-object v1, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->audioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    const/4 v1, 0x1

    .line 314
    iput-boolean v1, p0, Lcom/ss/android/ttve/mediacodec/TEAudioHwDecoder;->decoderStarted:Z
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_34} :catch_23

    return v3

    .line 317
    :goto_35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDecoder: "

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
