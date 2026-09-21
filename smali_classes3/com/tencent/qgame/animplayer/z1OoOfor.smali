.class public final Lcom/tencent/qgame/animplayer/z1OoOfor;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qgame/animplayer/z1OoOfor$z1OoOdo;
    }
.end annotation


# static fields
.field public static final z1OoOtry:Lcom/tencent/qgame/animplayer/z1OoOfor$z1OoOdo;


# instance fields
.field private z1OoObyte:Landroid/media/MediaExtractor;

.field private z1OoOcase:Landroid/media/MediaCodec;

.field private z1OoOchar:Landroid/media/AudioTrack;

.field final z1OoOdo:Lcom/tencent/qgame/animplayer/z1OoObyte;

.field private final z1OoOelse:Lcom/tencent/qgame/animplayer/z1OoOif;

.field z1OoOfor:I

.field z1OoOif:Z

.field z1OoOint:Z

.field z1OoOnew:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/tencent/qgame/animplayer/z1OoOfor$z1OoOdo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/qgame/animplayer/z1OoOfor$z1OoOdo;-><init>(B)V

    sput-object v0, Lcom/tencent/qgame/animplayer/z1OoOfor;->z1OoOtry:Lcom/tencent/qgame/animplayer/z1OoOfor$z1OoOdo;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/qgame/animplayer/z1OoOif;)V
    .registers 3

    const-string v0, "player"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/z1OoOfor;->z1OoOelse:Lcom/tencent/qgame/animplayer/z1OoOif;

    new-instance p1, Lcom/tencent/qgame/animplayer/z1OoObyte;

    invoke-direct {p1}, Lcom/tencent/qgame/animplayer/z1OoObyte;-><init>()V

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/z1OoOfor;->z1OoOdo:Lcom/tencent/qgame/animplayer/z1OoObyte;

    return-void
.end method

.method public static final synthetic z1OoOdo(Lcom/tencent/qgame/animplayer/z1OoOfor;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/tencent/qgame/animplayer/z1OoOfor;->z1OoOif()V

    return-void
.end method

.method public static final synthetic z1OoOdo(Lcom/tencent/qgame/animplayer/z1OoOfor;Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOfor;)V
    .registers 25

    .line 0
    move-object/from16 v0, p0

    sget-object v1, Lcom/tencent/qgame/animplayer/util/MediaUtil;->INSTANCE:Lcom/tencent/qgame/animplayer/util/MediaUtil;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Lcom/tencent/qgame/animplayer/util/MediaUtil;->getExtractor(Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOfor;)Landroid/media/MediaExtractor;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/qgame/animplayer/z1OoOfor;->z1OoObyte:Landroid/media/MediaExtractor;

    invoke-virtual {v1, v2}, Lcom/tencent/qgame/animplayer/util/MediaUtil;->selectAudioTrack(Landroid/media/MediaExtractor;)I

    move-result v3

    const-string v4, "AnimPlayer.AudioPlayer"

    if-gez v3, :cond_1d

    sget-object v1, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    const-string v2, "cannot find audio track"

    invoke-virtual {v1, v4, v2}, Lcom/tencent/qgame/animplayer/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_17c

    :cond_1d
    invoke-virtual {v2, v3}, Landroid/media/MediaExtractor;->selectTrack(I)V

    invoke-virtual {v2, v3}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    const-string v5, "extractor.getTrackFormat(audioIndex)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "mime"

    invoke-virtual {v3, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_33

    const-string v5, ""

    :cond_33
    const-string v6, "format.getString(MediaFormat.KEY_MIME) ?: \"\""

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    const-string v7, "audio mime="

    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Lcom/tencent/qgame/animplayer/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/tencent/qgame/animplayer/util/MediaUtil;->checkSupportCodec(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_61

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mime="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not support"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v4, v1}, Lcom/tencent/qgame/animplayer/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_17c

    :cond_61
    invoke-static {v5}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v7

    const/4 v1, 0x0

    const/4 v5, 0x0

    invoke-virtual {v7, v3, v1, v1, v5}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    invoke-virtual {v7}, Landroid/media/MediaCodec;->start()V

    const-string v1, "MediaCodec.createDecoder\u2026        start()\n        }"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v7, v0, Lcom/tencent/qgame/animplayer/z1OoOfor;->z1OoOcase:Landroid/media/MediaCodec;

    invoke-virtual {v7}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    const-string v8, "decoder.inputBuffers"

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v8

    const-string v14, "decoder.outputBuffers"

    invoke-static {v8, v14}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v15, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v15}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const-string v9, "sample-rate"

    invoke-virtual {v3, v9}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v9

    const-string v10, "channel-count"

    invoke-virtual {v3, v10}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    const/4 v10, 0x2

    packed-switch v3, :pswitch_data_180

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unsupported channel count: "

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_ab
    const/16 v3, 0x4fc

    goto :goto_be

    :pswitch_ae
    const/16 v3, 0xfc

    goto :goto_be

    :pswitch_b1
    const/16 v3, 0xdc

    goto :goto_be

    :pswitch_b4
    const/16 v3, 0xcc

    goto :goto_be

    :pswitch_b7
    const/16 v3, 0x1c

    goto :goto_be

    :pswitch_ba
    const/16 v3, 0xc

    goto :goto_be

    :pswitch_bd
    move v3, v10

    :goto_be
    invoke-static {v9, v3, v10}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v21

    new-instance v16, Landroid/media/AudioTrack;

    const/16 v20, 0x2

    const/16 v22, 0x1

    const/16 v17, 0x3

    move/from16 v19, v3

    move/from16 v18, v9

    invoke-direct/range {v16 .. v22}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    move-object/from16 v3, v16

    iput-object v3, v0, Lcom/tencent/qgame/animplayer/z1OoOfor;->z1OoOchar:Landroid/media/AudioTrack;

    invoke-virtual {v3}, Landroid/media/AudioTrack;->getState()I

    move-result v9

    const/4 v11, 0x1

    if-eq v9, v11, :cond_e5

    invoke-direct {v0}, Lcom/tencent/qgame/animplayer/z1OoOfor;->z1OoOif()V

    const-string v0, "init audio track failure"

    invoke-virtual {v6, v4, v0}, Lcom/tencent/qgame/animplayer/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e5
    invoke-virtual {v3}, Landroid/media/AudioTrack;->play()V

    move/from16 v16, v5

    move-object v6, v8

    :goto_eb
    iget-boolean v8, v0, Lcom/tencent/qgame/animplayer/z1OoOfor;->z1OoOint:Z

    if-nez v8, :cond_17c

    if-nez v16, :cond_123

    const-wide/16 v8, 0x3e8

    invoke-virtual {v7, v8, v9}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v8

    if-ltz v8, :cond_123

    aget-object v9, v1, v8

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v2, v9, v5}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v9

    if-gez v9, :cond_115

    move v13, v11

    const-wide/16 v11, 0x0

    move v9, v13

    const/4 v13, 0x4

    move/from16 v16, v9

    const/4 v9, 0x0

    move/from16 v17, v10

    const/4 v10, 0x0

    move/from16 v17, v16

    invoke-virtual/range {v7 .. v13}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_125

    :cond_115
    move/from16 v17, v11

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    move v10, v9

    const/4 v9, 0x0

    invoke-virtual/range {v7 .. v13}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_125

    :cond_123
    move/from16 v17, v11

    :goto_125
    const-wide/16 v8, 0x0

    invoke-virtual {v7, v15, v8, v9}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v10

    const/4 v11, -0x2

    if-ne v10, v11, :cond_135

    invoke-virtual {v7}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-static {v6, v14}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_135
    if-ltz v10, :cond_14b

    aget-object v11, v6, v10

    iget v12, v15, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v12, v12, [B

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget v11, v15, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v3, v12, v5, v11}, Landroid/media/AudioTrack;->write([BII)I

    invoke-virtual {v7, v10, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    :cond_14b
    if-eqz v16, :cond_17a

    iget v10, v15, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v10, v10, 0x4

    if-eqz v10, :cond_17a

    iget v10, v0, Lcom/tencent/qgame/animplayer/z1OoOfor;->z1OoOfor:I

    add-int/lit8 v10, v10, -0x1

    iput v10, v0, Lcom/tencent/qgame/animplayer/z1OoOfor;->z1OoOfor:I

    if-lez v10, :cond_16f

    sget-object v10, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    const-string v11, "Reached EOS, looping -> playLoop"

    invoke-virtual {v10, v4, v11}, Lcom/tencent/qgame/animplayer/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x2

    invoke-virtual {v2, v8, v9, v10}, Landroid/media/MediaExtractor;->seekTo(JI)V

    invoke-virtual {v7}, Landroid/media/MediaCodec;->flush()V

    move/from16 v16, v5

    :goto_16b
    move/from16 v11, v17

    goto/16 :goto_eb

    :cond_16f
    sget-object v1, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    const-string v2, "decode finish"

    invoke-virtual {v1, v4, v2}, Lcom/tencent/qgame/animplayer/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0}, Lcom/tencent/qgame/animplayer/z1OoOfor;->z1OoOif()V

    goto :goto_17c

    :cond_17a
    const/4 v10, 0x2

    goto :goto_16b

    :cond_17c
    :goto_17c
    invoke-direct {v0}, Lcom/tencent/qgame/animplayer/z1OoOfor;->z1OoOif()V

    return-void

    :pswitch_data_180
    .packed-switch 0x1
        :pswitch_bd
        :pswitch_ba
        :pswitch_b7
        :pswitch_b4
        :pswitch_b1
        :pswitch_ae
        :pswitch_ab
    .end packed-switch
.end method

.method private final z1OoOif()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOfor;->z1OoOcase:Landroid/media/MediaCodec;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    goto :goto_d

    :catchall_b
    move-exception v0

    goto :goto_2c

    :cond_d
    :goto_d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOfor;->z1OoOcase:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/tencent/qgame/animplayer/z1OoOfor;->z1OoObyte:Landroid/media/MediaExtractor;

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    :cond_17
    iput-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOfor;->z1OoObyte:Landroid/media/MediaExtractor;

    iget-object v1, p0, Lcom/tencent/qgame/animplayer/z1OoOfor;->z1OoOchar:Landroid/media/AudioTrack;

    if-eqz v1, :cond_29

    invoke-virtual {v1}, Landroid/media/AudioTrack;->pause()V

    invoke-virtual {v1}, Landroid/media/AudioTrack;->flush()V

    invoke-virtual {v1}, Landroid/media/AudioTrack;->stop()V

    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V

    :cond_29
    iput-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOfor;->z1OoOchar:Landroid/media/AudioTrack;
    :try_end_2b
    .catchall {:try_start_0 .. :try_end_2b} :catchall_b

    goto :goto_3d

    :goto_2c
    sget-object v1, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    const-string v2, "release exception="

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AnimPlayer.AudioPlayer"

    invoke-virtual {v1, v3, v2, v0}, Lcom/tencent/qgame/animplayer/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qgame/animplayer/z1OoOfor;->z1OoOif:Z

    iget-boolean v0, p0, Lcom/tencent/qgame/animplayer/z1OoOfor;->z1OoOnew:Z

    if-eqz v0, :cond_47

    invoke-virtual {p0}, Lcom/tencent/qgame/animplayer/z1OoOfor;->z1OoOdo()V

    :cond_47
    return-void
.end method


# virtual methods
.method final z1OoOdo()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOfor;->z1OoOelse:Lcom/tencent/qgame/animplayer/z1OoOif;

    iget-boolean v0, v0, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOgoto:Z

    if-eqz v0, :cond_24

    sget-object v0, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    const-string v1, "AnimPlayer.AudioPlayer"

    const-string v2, "destroyThread"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qgame/animplayer/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOfor;->z1OoOdo:Lcom/tencent/qgame/animplayer/z1OoObyte;

    iget-object v0, v0, Lcom/tencent/qgame/animplayer/z1OoObyte;->z1OoOif:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_19
    iget-object p0, p0, Lcom/tencent/qgame/animplayer/z1OoOfor;->z1OoOdo:Lcom/tencent/qgame/animplayer/z1OoObyte;

    sget-object v0, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOgoto:Lcom/tencent/qgame/animplayer/z1OoOnew$z1OoOdo;

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoObyte;->z1OoOdo:Landroid/os/HandlerThread;

    invoke-static {v0}, Lcom/tencent/qgame/animplayer/z1OoOnew$z1OoOdo;->z1OoOdo(Landroid/os/HandlerThread;)Landroid/os/HandlerThread;

    iput-object v1, p0, Lcom/tencent/qgame/animplayer/z1OoObyte;->z1OoOdo:Landroid/os/HandlerThread;

    :cond_24
    return-void
.end method
