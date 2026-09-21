.class public Lcom/meicam/effect/sdk/NvsEffectRenderCore;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NV_EFFECT_CORE_ERROR_UNKNOWN:I = -0x1

.field public static final NV_EFFECT_CORE_FLAGS_CREATE_GLCONTEXT_IF_NEED:I = 0x2

.field public static final NV_EFFECT_CORE_FLAGS_IN_SINGLE_GLTHREAD:I = 0x1

.field public static final NV_EFFECT_CORE_FLAGS_SUPPORT_16K:I = 0x10

.field public static final NV_EFFECT_CORE_FLAGS_SUPPORT_4K:I = 0x4

.field public static final NV_EFFECT_CORE_FLAGS_SUPPORT_8K:I = 0x8

.field public static final NV_EFFECT_CORE_INVALID_TEXTURE:I = -0x2

.field public static final NV_EFFECT_CORE_NO_ERROR:I


# instance fields
.field m_internalObject:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 409
    iput-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->m_internalObject:J

    return-void
.end method

.method private native nativeCleanUp(J)V
.end method

.method private native nativeClearCacheResources(J)V
.end method

.method private native nativeClearEffectResources(JLcom/meicam/effect/sdk/NvsEffect;)V
.end method

.method private native nativeDestory(J)V
.end method

.method private native nativeDownloadFromTexture(JILcom/meicam/sdk/NvsVideoResolution;IIZ)Ljava/nio/ByteBuffer;
.end method

.method private native nativeInitialize(JI)Z
.end method

.method private native nativeRenderEffect(JLcom/meicam/effect/sdk/NvsEffect;[II[BLcom/meicam/sdk/NvsVideoFrameInfo;ILcom/meicam/sdk/NvsVideoResolution;IJI)I
.end method

.method private native nativeRenderEffectWithBuffer(JLcom/meicam/effect/sdk/NvsEffect;[BLcom/meicam/sdk/NvsVideoFrameInfo;IIZJI)Ljava/nio/ByteBuffer;
.end method

.method private native nativeUploadtoTexture(J[BLcom/meicam/sdk/NvsVideoFrameInfo;I)I
.end method


# virtual methods
.method public cleanUp()V
    .registers 3

    .line 406
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->nativeCleanUp(J)V

    return-void
.end method

.method public clearCacheResources()V
    .registers 3

    .line 394
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->nativeClearCacheResources(J)V

    return-void
.end method

.method public clearEffectResources(Lcom/meicam/effect/sdk/NvsEffect;)V
    .registers 4

    .line 382
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->nativeClearEffectResources(JLcom/meicam/effect/sdk/NvsEffect;)V

    return-void
.end method

.method public downloadFromTexture(ILcom/meicam/sdk/NvsVideoResolution;II)Ljava/nio/ByteBuffer;
    .registers 13

    if-lez p1, :cond_12

    if-nez p2, :cond_5

    goto :goto_12

    .line 342
    :cond_5
    iget-wide v1, p0, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->m_internalObject:J

    const/4 v7, 0x0

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->nativeDownloadFromTexture(JILcom/meicam/sdk/NvsVideoResolution;IIZ)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0

    :cond_12
    :goto_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public downloadFromTexture(ILcom/meicam/sdk/NvsVideoResolution;IIZ)Ljava/nio/ByteBuffer;
    .registers 14

    if-lez p1, :cond_12

    if-nez p2, :cond_5

    goto :goto_12

    .line 369
    :cond_5
    iget-wide v1, p0, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->m_internalObject:J

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->nativeDownloadFromTexture(JILcom/meicam/sdk/NvsVideoResolution;IIZ)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0

    :cond_12
    :goto_12
    const/4 p0, 0x0

    return-object p0
.end method

.method protected finalize()V
    .registers 6

    .line 417
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->m_internalObject:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_d

    .line 418
    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->nativeDestory(J)V

    .line 419
    iput-wide v2, p0, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->m_internalObject:J

    .line 422
    :cond_d
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public initialize()Z
    .registers 4

    .line 90
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->m_internalObject:J

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->nativeInitialize(JI)Z

    move-result p0

    return p0
.end method

.method public initialize(I)Z
    .registers 4

    .line 95
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->nativeInitialize(JI)Z

    move-result p0

    return p0
.end method

.method public renderEffect(Lcom/meicam/effect/sdk/NvsEffect;ILcom/meicam/sdk/NvsVideoResolution;IJI)I
    .registers 22

    if-eqz p1, :cond_25

    if-nez p3, :cond_5

    goto :goto_25

    :cond_5
    if-lez p2, :cond_23

    if-gtz p4, :cond_a

    goto :goto_23

    .line 129
    :cond_a
    filled-new-array/range {p2 .. p2}, [I

    move-result-object v4

    .line 131
    iget-wide v1, p0, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->m_internalObject:J

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object/from16 v9, p3

    move/from16 v10, p4

    move-wide/from16 v11, p5

    move/from16 v13, p7

    invoke-direct/range {v0 .. v13}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->nativeRenderEffect(JLcom/meicam/effect/sdk/NvsEffect;[II[BLcom/meicam/sdk/NvsVideoFrameInfo;ILcom/meicam/sdk/NvsVideoResolution;IJI)I

    move-result p0

    return p0

    :cond_23
    :goto_23
    const/4 p0, -0x2

    return p0

    :cond_25
    :goto_25
    const/4 p0, -0x1

    return p0
.end method

.method public renderEffect(Lcom/meicam/effect/sdk/NvsEffect;I[BLcom/meicam/sdk/NvsVideoFrameInfo;ILcom/meicam/sdk/NvsVideoResolution;IJI)I
    .registers 25

    if-eqz p1, :cond_28

    if-nez p6, :cond_5

    goto :goto_28

    :cond_5
    if-lez p2, :cond_26

    if-gtz p7, :cond_a

    goto :goto_26

    .line 183
    :cond_a
    filled-new-array/range {p2 .. p2}, [I

    move-result-object v4

    .line 184
    iget-wide v1, p0, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->m_internalObject:J

    const/4 v5, 0x1

    move-object v0, p0

    move-object v3, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move-wide/from16 v11, p8

    move/from16 v13, p10

    invoke-direct/range {v0 .. v13}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->nativeRenderEffect(JLcom/meicam/effect/sdk/NvsEffect;[II[BLcom/meicam/sdk/NvsVideoFrameInfo;ILcom/meicam/sdk/NvsVideoResolution;IJI)I

    move-result p0

    return p0

    :cond_26
    :goto_26
    const/4 p0, -0x2

    return p0

    :cond_28
    :goto_28
    const/4 p0, -0x1

    return p0
.end method

.method public renderEffect(Lcom/meicam/effect/sdk/NvsEffect;[IILcom/meicam/sdk/NvsVideoResolution;IJI)I
    .registers 23

    if-eqz p1, :cond_24

    if-nez p4, :cond_5

    goto :goto_24

    :cond_5
    if-eqz p2, :cond_22

    if-gtz p5, :cond_a

    goto :goto_22

    .line 284
    :cond_a
    iget-wide v1, p0, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->m_internalObject:J

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    move-wide/from16 v11, p6

    move/from16 v13, p8

    invoke-direct/range {v0 .. v13}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->nativeRenderEffect(JLcom/meicam/effect/sdk/NvsEffect;[II[BLcom/meicam/sdk/NvsVideoFrameInfo;ILcom/meicam/sdk/NvsVideoResolution;IJI)I

    move-result p0

    return p0

    :cond_22
    :goto_22
    const/4 p0, -0x2

    return p0

    :cond_24
    :goto_24
    const/4 p0, -0x1

    return p0
.end method

.method public renderEffect(Lcom/meicam/effect/sdk/NvsEffect;[BLcom/meicam/sdk/NvsVideoFrameInfo;IIZJI)Ljava/nio/ByteBuffer;
    .registers 22

    if-eqz p1, :cond_1a

    if-nez p3, :cond_5

    goto :goto_1a

    .line 235
    :cond_5
    iget-wide v1, p0, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->m_internalObject:J

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-wide/from16 v9, p7

    move/from16 v11, p9

    invoke-direct/range {v0 .. v11}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->nativeRenderEffectWithBuffer(JLcom/meicam/effect/sdk/NvsEffect;[BLcom/meicam/sdk/NvsVideoFrameInfo;IIZJI)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0

    :cond_1a
    :goto_1a
    const/4 p0, 0x0

    return-object p0
.end method

.method protected setInternalObject(J)V
    .registers 3

    .line 412
    iput-wide p1, p0, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->m_internalObject:J

    return-void
.end method

.method public uploadVideoFrameToTexture([BLcom/meicam/sdk/NvsVideoFrameInfo;I)I
    .registers 10

    if-eqz p2, :cond_12

    if-eqz p1, :cond_12

    if-gtz p3, :cond_7

    goto :goto_12

    .line 317
    :cond_7
    iget-wide v1, p0, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->m_internalObject:J

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->nativeUploadtoTexture(J[BLcom/meicam/sdk/NvsVideoFrameInfo;I)I

    move-result p0

    return p0

    :cond_12
    :goto_12
    const/4 p0, -0x1

    return p0
.end method
