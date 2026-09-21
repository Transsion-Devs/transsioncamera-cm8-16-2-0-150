.class public final Lcom/tencent/qgame/animplayer/z1OoOcase;
.super Lcom/tencent/qgame/animplayer/z1OoOnew;

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qgame/animplayer/z1OoOcase$z1OoOdo;
    }
.end annotation


# static fields
.field static final synthetic z1OoOlong:[Lkotlin/reflect/KProperty;

.field public static final z1OoOthis:Lcom/tencent/qgame/animplayer/z1OoOcase$z1OoOdo;


# instance fields
.field private final z1OoObreak:Lkotlin/Lazy;

.field private z1OoOcatch:Z

.field private z1OoOclass:I

.field private z1OoOconst:I

.field private z1OoOfinal:I

.field private z1OoOfloat:I

.field private z1OoOshort:Z

.field private z1OoOsuper:Landroid/media/MediaFormat;

.field private z1OoOvoid:Landroid/graphics/SurfaceTexture;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v1, Lcom/tencent/qgame/animplayer/z1OoOcase;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const-string v2, "bufferInfo"

    const-string v3, "getBufferInfo()Landroid/media/MediaCodec$BufferInfo;"

    invoke-direct {v0, v1, v2, v3}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOlong:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/tencent/qgame/animplayer/z1OoOcase$z1OoOdo;

    invoke-direct {v0, v2}, Lcom/tencent/qgame/animplayer/z1OoOcase$z1OoOdo;-><init>(B)V

    sput-object v0, Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOthis:Lcom/tencent/qgame/animplayer/z1OoOcase$z1OoOdo;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/qgame/animplayer/z1OoOif;)V
    .registers 3

    const-string v0, "player"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/tencent/qgame/animplayer/z1OoOnew;-><init>(Lcom/tencent/qgame/animplayer/z1OoOif;)V

    sget-object p1, Lcom/tencent/qgame/animplayer/z1OoOcase$z1OoOif;->z1OoOdo:Lcom/tencent/qgame/animplayer/z1OoOcase$z1OoOif;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoObreak:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic z1OoOdo(Lcom/tencent/qgame/animplayer/z1OoOcase;)Landroid/graphics/SurfaceTexture;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOvoid:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method private final z1OoOdo(Landroid/media/MediaCodec;Landroid/media/MediaExtractor;)V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOfor:Lcom/tencent/qgame/animplayer/z1OoObyte;

    iget-object v0, v0, Lcom/tencent/qgame/animplayer/z1OoObyte;->z1OoOif:Landroid/os/Handler;

    if-eqz v0, :cond_e

    new-instance v1, Lcom/tencent/qgame/animplayer/z1OoOcase$z1OoOint;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/qgame/animplayer/z1OoOcase$z1OoOint;-><init>(Lcom/tencent/qgame/animplayer/z1OoOcase;Landroid/media/MediaCodec;Landroid/media/MediaExtractor;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_e
    return-void
.end method

.method public static final synthetic z1OoOdo(Lcom/tencent/qgame/animplayer/z1OoOcase;Landroid/media/MediaCodec;Landroid/media/MediaExtractor;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOdo(Landroid/media/MediaCodec;Landroid/media/MediaExtractor;)V

    return-void
.end method

.method public static final synthetic z1OoOdo(Lcom/tencent/qgame/animplayer/z1OoOcase;Landroid/media/MediaExtractor;Landroid/media/MediaCodec;)V
    .registers 30

    .line 0
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v3}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v10

    const-string v0, "decoder.inputBuffers"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x0

    move v0, v11

    move v12, v0

    move v13, v12

    move v14, v13

    move v15, v14

    :goto_15
    if-nez v12, :cond_280

    iget-boolean v4, v1, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOchar:Z

    const-string v5, "AnimPlayer.HardDecoder"

    if-eqz v4, :cond_28

    sget-object v0, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    const-string v4, "stop decode"

    invoke-virtual {v0, v5, v4}, Lcom/tencent/qgame/animplayer/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v3, v2}, Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOdo(Landroid/media/MediaCodec;Landroid/media/MediaExtractor;)V

    return-void

    :cond_28
    const-wide/16 v6, 0x2710

    const/16 v16, 0x1

    if-nez v0, :cond_95

    invoke-virtual {v3, v6, v7}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v4

    if-ltz v4, :cond_8a

    aget-object v8, v10, v4

    invoke-virtual {v2, v8, v11}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v8

    if-gez v8, :cond_59

    move-wide/from16 v17, v6

    const-wide/16 v7, 0x0

    const/4 v9, 0x4

    move-object v6, v5

    const/4 v5, 0x0

    move-object/from16 v19, v6

    const/4 v6, 0x0

    move/from16 v20, v12

    move-object/from16 v11, v19

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    sget-object v0, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    const-string v3, "decode EOS"

    invoke-virtual {v0, v11, v3}, Lcom/tencent/qgame/animplayer/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, p2

    move/from16 v4, v16

    goto :goto_99

    :cond_59
    move-object v11, v5

    move v6, v8

    move/from16 v20, v12

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v7

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p2

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    sget-object v4, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "submitted frame "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " to dec, size="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v11, v5}, Lcom/tencent/qgame/animplayer/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->advance()Z

    :goto_88
    move v4, v0

    goto :goto_99

    :cond_8a
    move-object v11, v5

    move/from16 v20, v12

    sget-object v4, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    const-string v5, "input buffer not available"

    invoke-virtual {v4, v11, v5}, Lcom/tencent/qgame/animplayer/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_88

    :cond_95
    move-object v11, v5

    move/from16 v20, v12

    goto :goto_88

    :goto_99
    if-nez v20, :cond_276

    invoke-direct {v1}, Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOfor()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v0

    const-wide/16 v5, 0x2710

    invoke-virtual {v3, v0, v5, v6}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    const/4 v5, -0x1

    if-ne v0, v5, :cond_b0

    sget-object v0, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    const-string v5, "no output from decoder available"

    :goto_ac
    invoke-virtual {v0, v11, v5}, Lcom/tencent/qgame/animplayer/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f7

    :cond_b0
    const/4 v6, -0x3

    if-ne v0, v6, :cond_b8

    sget-object v0, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    const-string v5, "decoder output buffers changed"

    goto :goto_ac

    :cond_b8
    const/4 v6, -0x2

    if-ne v0, v6, :cond_fd

    invoke-virtual {v3}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOsuper:Landroid/media/MediaFormat;

    if-eqz v0, :cond_e2

    :try_start_c3
    const-string v5, "stride"

    invoke-virtual {v0, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    const-string v6, "slice-height"

    invoke-virtual {v0, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    if-lez v5, :cond_e2

    if-lez v0, :cond_e2

    iput v5, v1, Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOfinal:I

    iput v0, v1, Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOfloat:I
    :try_end_d7
    .catchall {:try_start_c3 .. :try_end_d7} :catchall_d8

    goto :goto_e2

    :catchall_d8
    move-exception v0

    sget-object v5, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v11, v6, v0}, Lcom/tencent/qgame/animplayer/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_e2
    :goto_e2
    sget-object v0, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "decoder output format changed: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOsuper:Landroid/media/MediaFormat;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v11, v5}, Lcom/tencent/qgame/animplayer/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_f7
    move v0, v4

    move/from16 v12, v20

    const/4 v11, 0x0

    goto/16 :goto_15

    :cond_fd
    if-ltz v0, :cond_265

    invoke-direct {v1}, Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOfor()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v6

    iget v6, v6, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_11c

    iget v6, v1, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoObyte:I

    add-int/2addr v5, v6

    iput v5, v1, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoObyte:I

    iget-object v6, v1, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOelse:Lcom/tencent/qgame/animplayer/z1OoOif;

    invoke-virtual {v6, v5}, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOif(I)V

    iget v6, v1, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoObyte:I

    if-gtz v6, :cond_11a

    move/from16 v12, v16

    goto :goto_11f

    :cond_11a
    const/4 v12, 0x0

    goto :goto_11f

    :cond_11c
    move/from16 v12, v20

    const/4 v5, 0x0

    :goto_11f
    if-nez v12, :cond_12e

    invoke-virtual {v1}, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOdo()Lcom/tencent/qgame/animplayer/util/SpeedControlUtil;

    move-result-object v6

    invoke-direct {v1}, Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOfor()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v7

    iget-wide v7, v7, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v6, v7, v8}, Lcom/tencent/qgame/animplayer/util/SpeedControlUtil;->preRender(J)V

    :cond_12e
    iget-boolean v6, v1, Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOshort:Z

    if-eqz v6, :cond_1f4

    if-nez v12, :cond_1f4

    invoke-virtual {v3}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v6

    aget-object v6, v6, v0

    if-eqz v6, :cond_1f4

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-direct {v1}, Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOfor()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v8

    iget v8, v8, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-direct {v1}, Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOfor()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v9

    iget v9, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v8, v9

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v6}, Ljava/nio/Buffer;->remaining()I

    move-result v8

    new-array v9, v8, [B

    invoke-virtual {v6, v9}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    if-nez v8, :cond_15e

    move/from16 v8, v16

    goto :goto_15f

    :cond_15e
    const/4 v8, 0x0

    :goto_15f
    if-nez v8, :cond_1f4

    iget v6, v1, Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOclass:I

    iget v8, v1, Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOconst:I

    const/16 v17, 0x2

    mul-int v7, v6, v8

    new-array v7, v7, [B

    mul-int v18, v6, v8

    move/from16 v19, v4

    div-int/lit8 v4, v18, 0x4

    new-array v4, v4, [B

    mul-int/2addr v6, v8

    div-int/lit8 v6, v6, 0x4

    new-array v6, v6, [B

    iget-object v8, v1, Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOsuper:Landroid/media/MediaFormat;

    move-object/from16 v18, v4

    if-eqz v8, :cond_18c

    const-string v4, "color-format"

    invoke-virtual {v8, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    const/16 v8, 0x15

    if-ne v4, v8, :cond_18c

    invoke-direct {v1, v9}, Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOdo([B)[B

    move-result-object v9

    :cond_18c
    move-object/from16 v20, v9

    iget v4, v1, Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOfinal:I

    iget v8, v1, Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOfloat:I

    iget v9, v1, Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOclass:I

    move/from16 v22, v4

    iget v4, v1, Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOconst:I

    const/16 v21, 0x0

    move/from16 v26, v4

    move-object/from16 v24, v7

    move/from16 v23, v8

    move/from16 v25, v9

    invoke-static/range {v20 .. v26}, Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOdo([BIII[BII)V

    move-object/from16 v4, v24

    iget v7, v1, Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOfinal:I

    iget v8, v1, Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOfloat:I

    mul-int v21, v7, v8

    div-int/lit8 v22, v7, 0x2

    div-int/lit8 v23, v8, 0x2

    iget v7, v1, Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOclass:I

    div-int/lit8 v25, v7, 0x2

    iget v7, v1, Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOconst:I

    div-int/lit8 v26, v7, 0x2

    move-object/from16 v24, v18

    invoke-static/range {v20 .. v26}, Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOdo([BIII[BII)V

    iget v7, v1, Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOfinal:I

    iget v8, v1, Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOfloat:I

    mul-int v9, v7, v8

    mul-int/lit8 v9, v9, 0x5

    div-int/lit8 v21, v9, 0x4

    div-int/lit8 v22, v7, 0x2

    div-int/lit8 v23, v8, 0x2

    iget v7, v1, Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOclass:I

    div-int/lit8 v25, v7, 0x2

    iget v7, v1, Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOconst:I

    div-int/lit8 v26, v7, 0x2

    move-object/from16 v24, v6

    invoke-static/range {v20 .. v26}, Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOdo([BIII[BII)V

    iget-object v6, v1, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOif:Lcom/tencent/qgame/animplayer/z1OoOchar;

    if-eqz v6, :cond_1f0

    iget v7, v1, Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOclass:I

    iget v8, v1, Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOconst:I

    move-object/from16 v23, v4

    move-object/from16 v20, v6

    move/from16 v21, v7

    move/from16 v22, v8

    move-object/from16 v25, v24

    move-object/from16 v24, v18

    invoke-interface/range {v20 .. v25}, Lcom/tencent/qgame/animplayer/z1OoOchar;->z1OoOdo(II[B[B[B)V

    :cond_1f0
    invoke-direct {v1}, Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOint()V

    goto :goto_1f8

    :cond_1f4
    move/from16 v19, v4

    const/16 v17, 0x2

    :goto_1f8
    if-nez v12, :cond_201

    iget-boolean v4, v1, Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOshort:Z

    if-nez v4, :cond_201

    move/from16 v8, v16

    goto :goto_202

    :cond_201
    const/4 v8, 0x0

    :goto_202
    invoke-virtual {v3, v0, v8}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    if-nez v14, :cond_20c

    if-nez v15, :cond_20c

    invoke-virtual {v1}, Lcom/tencent/qgame/animplayer/z1OoOnew;->onVideoStart()V

    :cond_20c
    iget-object v0, v1, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOelse:Lcom/tencent/qgame/animplayer/z1OoOif;

    iget-object v0, v0, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOclass:Lcom/tencent/qgame/animplayer/z1OoOif/z1OoOdo;

    invoke-virtual {v0, v14}, Lcom/tencent/qgame/animplayer/z1OoOif/z1OoOdo;->z1OoOdo(I)V

    iget-object v0, v1, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOelse:Lcom/tencent/qgame/animplayer/z1OoOif;

    iget-object v0, v0, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOcatch:Lcom/tencent/qgame/animplayer/z1OoOdo;

    iget-object v0, v0, Lcom/tencent/qgame/animplayer/z1OoOdo;->z1OoOdo:Lcom/tencent/qgame/animplayer/AnimConfig;

    invoke-virtual {v1, v14, v0}, Lcom/tencent/qgame/animplayer/z1OoOnew;->onVideoRender(ILcom/tencent/qgame/animplayer/AnimConfig;)V

    add-int/lit8 v8, v14, 0x1

    sget-object v0, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    const-string v4, "decode frameIndex="

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v11, v4}, Lcom/tencent/qgame/animplayer/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v5, :cond_25a

    const-string v4, "Reached EOD, looping"

    invoke-virtual {v0, v11, v4}, Lcom/tencent/qgame/animplayer/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v1, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOelse:Lcom/tencent/qgame/animplayer/z1OoOif;

    iget-object v4, v4, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOclass:Lcom/tencent/qgame/animplayer/z1OoOif/z1OoOdo;

    const-string v5, "AnimPlayer.AnimPluginManager"

    const-string v6, "onLoopStart"

    invoke-virtual {v0, v5, v6}, Lcom/tencent/qgame/animplayer/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    iput v5, v4, Lcom/tencent/qgame/animplayer/z1OoOif/z1OoOdo;->z1OoOfor:I

    iput v5, v4, Lcom/tencent/qgame/animplayer/z1OoOif/z1OoOdo;->z1OoOint:I

    const-wide/16 v6, 0x0

    move/from16 v0, v17

    invoke-virtual {v2, v6, v7, v0}, Landroid/media/MediaExtractor;->seekTo(JI)V

    invoke-virtual {v3}, Landroid/media/MediaCodec;->flush()V

    invoke-virtual {v1}, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOdo()Lcom/tencent/qgame/animplayer/util/SpeedControlUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/util/SpeedControlUtil;->reset()V

    move v4, v5

    move v8, v4

    move/from16 v15, v16

    goto :goto_25d

    :cond_25a
    const/4 v5, 0x0

    move/from16 v4, v19

    :goto_25d
    if-eqz v12, :cond_262

    invoke-direct {v1, v3, v2}, Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOdo(Landroid/media/MediaCodec;Landroid/media/MediaExtractor;)V

    :cond_262
    move v0, v4

    move v14, v8

    goto :goto_27d

    :cond_265
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "unexpected result from decoder.dequeueOutputBuffer: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_276
    move/from16 v19, v4

    const/4 v5, 0x0

    move/from16 v0, v19

    move/from16 v12, v20

    :goto_27d
    move v11, v5

    goto/16 :goto_15

    :cond_280
    return-void
.end method

.method public static final synthetic z1OoOdo(Lcom/tencent/qgame/animplayer/z1OoOcase;Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOfor;)V
    .registers 12

    .line 0
    const-string v0, "AnimPlayer.Decoder"

    const-string/jumbo v1, "video/hevc"

    const-string v2, "AnimPlayer.HardDecoder"

    new-instance v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const/4 v3, 0x0

    iput-object v3, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object v3, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object v3, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :try_start_1d
    sget-object v4, Lcom/tencent/qgame/animplayer/util/MediaUtil;->INSTANCE:Lcom/tencent/qgame/animplayer/util/MediaUtil;

    invoke-virtual {v4, p1}, Lcom/tencent/qgame/animplayer/util/MediaUtil;->getExtractor(Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOfor;)Landroid/media/MediaExtractor;

    move-result-object p1

    iput-object p1, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {v4, p1}, Lcom/tencent/qgame/animplayer/util/MediaUtil;->selectVideoTrack(Landroid/media/MediaExtractor;)I

    move-result p1

    if-ltz p1, :cond_1e4

    iget-object v5, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v5, Landroid/media/MediaExtractor;

    invoke-virtual {v5, p1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    iget-object v5, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v5, Landroid/media/MediaExtractor;

    invoke-virtual {v5, p1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object p1

    iput-object p1, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz p1, :cond_1db

    invoke-virtual {v4, p1}, Lcom/tencent/qgame/animplayer/util/MediaUtil;->checkIsHevc(Landroid/media/MediaFormat;)Z

    move-result p1
    :try_end_42
    .catchall {:try_start_1d .. :try_end_42} :catchall_1b3

    if-eqz p1, :cond_74

    :try_start_44
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v4, v1}, Lcom/tencent/qgame/animplayer/util/MediaUtil;->checkSupportCodec(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_74

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "0x8 hevc not support sdk:"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",support hevc:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Lcom/tencent/qgame/animplayer/util/MediaUtil;->checkSupportCodec(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x2718

    invoke-virtual {p0, v0, p1}, Lcom/tencent/qgame/animplayer/z1OoOnew;->onFailed(ILjava/lang/String;)V

    invoke-direct {p0, v3, v3}, Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOdo(Landroid/media/MediaCodec;Landroid/media/MediaExtractor;)V
    :try_end_6e
    .catchall {:try_start_44 .. :try_end_6e} :catchall_6f

    return-void

    :catchall_6f
    move-exception v0

    move-object p1, v0

    move-object v5, p0

    goto/16 :goto_1ed

    :cond_74
    :try_start_74
    iget-object p1, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Landroid/media/MediaFormat;

    const-string/jumbo v1, "width"

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOclass:I

    iget-object p1, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Landroid/media/MediaFormat;

    const-string v1, "height"

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOconst:I

    iget v1, p0, Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOclass:I

    iput v1, p0, Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOfinal:I

    iput p1, p0, Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOfloat:I

    sget-object p1, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Video size is "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOclass:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " x "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOconst:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/tencent/qgame/animplayer/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOclass:I

    rem-int/lit8 v1, v1, 0x10
    :try_end_b6
    .catchall {:try_start_74 .. :try_end_b6} :catchall_1b3

    const/4 v4, 0x0

    if-eqz v1, :cond_c1

    :try_start_b9
    iget-object v1, p0, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOelse:Lcom/tencent/qgame/animplayer/z1OoOif;

    iget-boolean v1, v1, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOchar:Z
    :try_end_bd
    .catchall {:try_start_b9 .. :try_end_bd} :catchall_6f

    if-eqz v1, :cond_c1

    const/4 v1, 0x1

    goto :goto_c2

    :cond_c1
    move v1, v4

    :goto_c2
    :try_start_c2
    iput-boolean v1, p0, Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOshort:Z
    :try_end_c4
    .catchall {:try_start_c2 .. :try_end_c4} :catchall_1b3

    :try_start_c4
    iget-object v5, p0, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOif:Lcom/tencent/qgame/animplayer/z1OoOchar;
    :try_end_c6
    .catchall {:try_start_c4 .. :try_end_c6} :catchall_1c3

    if-nez v5, :cond_f9

    :try_start_c8
    const-string v5, "prepareRender"

    invoke-virtual {p1, v0, v5}, Lcom/tencent/qgame/animplayer/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOelse:Lcom/tencent/qgame/animplayer/z1OoOif;

    iget-object v5, v5, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOconst:Lcom/tencent/qgame/animplayer/IAnimView;

    invoke-interface {v5}, Lcom/tencent/qgame/animplayer/IAnimView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v5

    if-eqz v5, :cond_f9

    if-eqz v1, :cond_ec

    const-string/jumbo v1, "use yuv render"

    invoke-virtual {p1, v0, v1}, Lcom/tencent/qgame/animplayer/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/qgame/animplayer/z1OoOthis;

    invoke-direct {v0, v5}, Lcom/tencent/qgame/animplayer/z1OoOthis;-><init>(Landroid/graphics/SurfaceTexture;)V

    :goto_e4
    iput-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOif:Lcom/tencent/qgame/animplayer/z1OoOchar;

    goto :goto_f9

    :catchall_e7
    move-exception v0

    move-object p1, v0

    move-object v5, p0

    goto/16 :goto_1c6

    :cond_ec
    new-instance v0, Lcom/tencent/qgame/animplayer/z1OoOlong;

    invoke-direct {v0, v5}, Lcom/tencent/qgame/animplayer/z1OoOlong;-><init>(Landroid/graphics/SurfaceTexture;)V

    iget v1, p0, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOnew:I

    iget v5, p0, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOtry:I

    invoke-virtual {v0, v1, v5}, Lcom/tencent/qgame/animplayer/z1OoOlong;->z1OoOdo(II)V
    :try_end_f8
    .catchall {:try_start_c8 .. :try_end_f8} :catchall_e7

    goto :goto_e4

    :cond_f9
    :goto_f9
    :try_start_f9
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOif:Lcom/tencent/qgame/animplayer/z1OoOchar;
    :try_end_fb
    .catchall {:try_start_f9 .. :try_end_fb} :catchall_1c3

    if-eqz v0, :cond_1b7

    :try_start_fd
    iget v0, p0, Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOclass:I

    iget v1, p0, Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOconst:I

    invoke-virtual {p0, v0, v1}, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOdo(II)V

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOif:Lcom/tencent/qgame/animplayer/z1OoOchar;
    :try_end_106
    .catchall {:try_start_fd .. :try_end_106} :catchall_1b3

    if-eqz v0, :cond_120

    :try_start_108
    new-instance v1, Landroid/graphics/SurfaceTexture;

    invoke-interface {v0}, Lcom/tencent/qgame/animplayer/z1OoOchar;->z1OoOint()I

    move-result v5

    invoke-direct {v1, v5}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    invoke-virtual {v1, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    iget v5, p0, Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOclass:I

    iget v9, p0, Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOconst:I

    invoke-virtual {v1, v5, v9}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    iput-object v1, p0, Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOvoid:Landroid/graphics/SurfaceTexture;

    invoke-interface {v0}, Lcom/tencent/qgame/animplayer/z1OoOchar;->z1OoOif()V
    :try_end_120
    .catchall {:try_start_108 .. :try_end_120} :catchall_6f

    :cond_120
    :try_start_120
    iget-object v0, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaFormat;

    const-string v1, "mime"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_12a
    .catchall {:try_start_120 .. :try_end_12a} :catchall_181

    if-nez v0, :cond_133

    :try_start_12c
    const-string v0, ""
    :try_end_12e
    .catchall {:try_start_12c .. :try_end_12e} :catchall_12f

    goto :goto_133

    :catchall_12f
    move-exception v0

    move-object p1, v0

    move-object v5, p0

    goto :goto_189

    :cond_133
    :goto_133
    :try_start_133
    const-string v1, "format.getString(MediaFormat.KEY_MIME) ?: \"\""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "Video MIME is "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/tencent/qgame/animplayer/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p1

    iget-boolean v0, p0, Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOshort:Z
    :try_end_147
    .catchall {:try_start_133 .. :try_end_147} :catchall_181

    if-eqz v0, :cond_15c

    :try_start_149
    iget-object v0, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaFormat;

    const-string v1, "color-format"

    const/16 v5, 0x13

    invoke-virtual {v0, v1, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object v0, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaFormat;

    invoke-virtual {p1, v0, v3, v3, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_15b
    .catchall {:try_start_149 .. :try_end_15b} :catchall_12f

    goto :goto_16a

    :cond_15c
    :try_start_15c
    iget-object v0, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaFormat;

    new-instance v1, Landroid/view/Surface;

    iget-object v5, p0, Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOvoid:Landroid/graphics/SurfaceTexture;

    invoke-direct {v1, v5}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    :goto_16a
    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOint:Lcom/tencent/qgame/animplayer/z1OoObyte;

    iget-object v0, v0, Lcom/tencent/qgame/animplayer/z1OoObyte;->z1OoOif:Landroid/os/Handler;

    if-eqz v0, :cond_184

    new-instance v3, Lcom/tencent/qgame/animplayer/z1OoOcase$z1OoObyte;
    :try_end_175
    .catchall {:try_start_15c .. :try_end_175} :catchall_181

    move-object v5, p0

    move-object v4, p1

    :try_start_177
    invoke-direct/range {v3 .. v8}, Lcom/tencent/qgame/animplayer/z1OoOcase$z1OoObyte;-><init>(Landroid/media/MediaCodec;Lcom/tencent/qgame/animplayer/z1OoOcase;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_186

    :catchall_17e
    move-exception v0

    :goto_17f
    move-object p1, v0

    goto :goto_189

    :catchall_181
    move-exception v0

    move-object v5, p0

    goto :goto_17f

    :cond_184
    move-object v5, p0

    move-object v4, p1

    :goto_186
    iput-object v4, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_188
    .catchall {:try_start_177 .. :try_end_188} :catchall_17e

    return-void

    :goto_189
    sget-object p0, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    const-string v0, "MediaCodec configure exception e="

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0, p1}, Lcom/tencent/qgame/animplayer/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p0, "0x2 MediaCodec exception e="

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x2712

    :goto_1a4
    invoke-virtual {v5, p1, p0}, Lcom/tencent/qgame/animplayer/z1OoOnew;->onFailed(ILjava/lang/String;)V

    iget-object p0, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Landroid/media/MediaCodec;

    iget-object p1, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Landroid/media/MediaExtractor;

    invoke-direct {v5, p0, p1}, Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOdo(Landroid/media/MediaCodec;Landroid/media/MediaExtractor;)V

    return-void

    :catchall_1b3
    move-exception v0

    move-object v5, p0

    :goto_1b5
    move-object p1, v0

    goto :goto_1ed

    :cond_1b7
    move-object v5, p0

    :try_start_1b8
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "render create fail"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1c0
    .catchall {:try_start_1b8 .. :try_end_1c0} :catchall_1c0

    :catchall_1c0
    move-exception v0

    :goto_1c1
    move-object p1, v0

    goto :goto_1c6

    :catchall_1c3
    move-exception v0

    move-object v5, p0

    goto :goto_1c1

    :goto_1c6
    :try_start_1c6
    const-string p0, "0x4 render create fail e="

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x2714

    invoke-virtual {v5, p1, p0}, Lcom/tencent/qgame/animplayer/z1OoOnew;->onFailed(ILjava/lang/String;)V

    invoke-direct {v5, v3, v3}, Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOdo(Landroid/media/MediaCodec;Landroid/media/MediaExtractor;)V

    return-void

    :catchall_1d9
    move-exception v0

    goto :goto_1b5

    :cond_1db
    move-object v5, p0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "format is null"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1e4
    move-object v5, p0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "No video track found"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1ed
    .catchall {:try_start_1c6 .. :try_end_1ed} :catchall_1d9

    :goto_1ed
    sget-object p0, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    const-string v0, "MediaExtractor exception e="

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0, p1}, Lcom/tencent/qgame/animplayer/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p0, "0x1 MediaExtractor exception e="

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x2711

    goto :goto_1a4
.end method

.method private static z1OoOdo([BIII[BII)V
    .registers 10

    .line 0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_10

    if-ge v0, p6, :cond_d

    mul-int v1, v0, p2

    add-int/2addr v1, p1

    mul-int v2, v0, p5

    invoke-static {p0, v1, p4, v2, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_10
    return-void
.end method

.method private final z1OoOdo([B)[B
    .registers 7

    .line 0
    array-length v0, p1

    new-array v0, v0, [B

    iget v1, p0, Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOfinal:I

    iget p0, p0, Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOfloat:I

    mul-int v2, v1, p0

    const/4 v3, 0x0

    mul-int/2addr v1, p0

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move p0, v2

    move v1, p0

    :goto_10
    mul-int/lit8 v3, v2, 0x3

    div-int/lit8 v3, v3, 0x2

    if-ge p0, v3, :cond_28

    aget-byte v3, p1, p0

    aput-byte v3, v0, v1

    div-int/lit8 v3, v2, 0x4

    add-int/2addr v3, v1

    add-int/lit8 v4, p0, 0x1

    aget-byte v4, p1, v4

    aput-byte v4, v0, v3

    add-int/lit8 p0, p0, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_28
    return-object v0
.end method

.method private final z1OoOfor()Landroid/media/MediaCodec$BufferInfo;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoObreak:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/MediaCodec$BufferInfo;

    return-object p0
.end method

.method public static final synthetic z1OoOfor(Lcom/tencent/qgame/animplayer/z1OoOcase;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOcatch:Z

    return p0
.end method

.method public static final synthetic z1OoOif(Lcom/tencent/qgame/animplayer/z1OoOcase;)V
    .registers 2

    .line 0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOvoid:Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method private z1OoOint()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOfor:Lcom/tencent/qgame/animplayer/z1OoObyte;

    iget-object v0, v0, Lcom/tencent/qgame/animplayer/z1OoObyte;->z1OoOif:Landroid/os/Handler;

    if-eqz v0, :cond_e

    new-instance v1, Lcom/tencent/qgame/animplayer/z1OoOcase$z1OoOnew;

    invoke-direct {v1, p0}, Lcom/tencent/qgame/animplayer/z1OoOcase$z1OoOnew;-><init>(Lcom/tencent/qgame/animplayer/z1OoOcase;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_e
    return-void
.end method

.method public static final synthetic z1OoOint(Lcom/tencent/qgame/animplayer/z1OoOcase;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOnew()V

    return-void
.end method

.method private final z1OoOnew()V
    .registers 4

    sget-object v0, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    const-string v1, "AnimPlayer.HardDecoder"

    const-string v2, "destroyInner"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qgame/animplayer/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOfor:Lcom/tencent/qgame/animplayer/z1OoObyte;

    iget-object v0, v0, Lcom/tencent/qgame/animplayer/z1OoObyte;->z1OoOif:Landroid/os/Handler;

    if-eqz v0, :cond_17

    new-instance v1, Lcom/tencent/qgame/animplayer/z1OoOcase$z1OoOfor;

    invoke-direct {v1, p0}, Lcom/tencent/qgame/animplayer/z1OoOcase$z1OoOfor;-><init>(Lcom/tencent/qgame/animplayer/z1OoOcase;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_17
    return-void
.end method


# virtual methods
.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .registers 4

    iget-boolean p1, p0, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOchar:Z

    if-eqz p1, :cond_5

    return-void

    :cond_5
    sget-object p1, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    const-string v0, "AnimPlayer.HardDecoder"

    const-string v1, "onFrameAvailable"

    invoke-virtual {p1, v0, v1}, Lcom/tencent/qgame/animplayer/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOint()V

    return-void
.end method

.method public final z1OoOdo(Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOfor;)V
    .registers 4

    .line 0
    const-string v0, "fileContainer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOchar:Z

    iput-boolean v0, p0, Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOcatch:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOcase:Z

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOfor:Lcom/tencent/qgame/animplayer/z1OoObyte;

    iget-object v0, v0, Lcom/tencent/qgame/animplayer/z1OoObyte;->z1OoOif:Landroid/os/Handler;

    if-eqz v0, :cond_1b

    new-instance v1, Lcom/tencent/qgame/animplayer/z1OoOcase$z1OoOtry;

    invoke-direct {v1, p0, p1}, Lcom/tencent/qgame/animplayer/z1OoOcase$z1OoOtry;-><init>(Lcom/tencent/qgame/animplayer/z1OoOcase;Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOfor;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1b
    return-void
.end method

.method public final z1OoOif()V
    .registers 2

    .line 0
    iget-boolean v0, p0, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOcase:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOcatch:Z

    iput-boolean v0, p0, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOchar:Z

    return-void

    :cond_a
    invoke-direct {p0}, Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOnew()V

    return-void
.end method
