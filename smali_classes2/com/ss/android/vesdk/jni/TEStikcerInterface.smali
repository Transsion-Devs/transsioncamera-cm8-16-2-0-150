.class public Lcom/ss/android/vesdk/jni/TEStikcerInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TEMVInterface"


# instance fields
.field private mHostTrackIndex:I

.field private mNative:J


# direct methods
.method public constructor <init>(J)V
    .registers 4

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->mHostTrackIndex:I

    .line 33
    iput-wide p1, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->mNative:J

    .line 34
    const-string p0, "TEMVInterface"

    const-string p1, "enable public pin adaptor:trueenable info sticker code refactor:true"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private native nativeAddInfoSticker(JLjava/lang/String;[Ljava/lang/String;)I
.end method

.method private native nativeAddInfoStickerWithBuffer(J)I
.end method

.method private native nativeAddSubTrack(J[Ljava/lang/String;[Ljava/lang/String;[I[I[I[IDDDDII)I
.end method

.method private native nativeBegin2DBrush(J)I
.end method

.method private native nativeBeginInfoStickerPin(JI)I
.end method

.method private native nativeCancelInfoStickerPin(JI)I
.end method

.method private native nativeControlInfoStickerAnimationPreview(JZII)I
.end method

.method private native nativeDeleteSubTrack(JI)I
.end method

.method private native nativeEnd2DBrush(JLjava/lang/String;)I
.end method

.method private native nativeGet2DBrushStrokeCount(J)I
.end method

.method private native nativeGetInfoStickerBoundingBox(JI)[F
.end method

.method private native nativeGetInfoStickerBoundingBoxWithoutRotate(JI)[F
.end method

.method private native nativeGetInfoStickerFlip(JI[Z)I
.end method

.method private native nativeGetInfoStickerIsDynamic(JI)Z
.end method

.method private native nativeGetInfoStickerPinData(JI[Ljava/nio/ByteBuffer;)I
.end method

.method private native nativeGetInfoStickerPinState(JI)I
.end method

.method private native nativeGetInfoStickerPosition(JI[F)I
.end method

.method private native nativeGetInfoStickerRotate(JI)F
.end method

.method private native nativeGetInfoStickerScale(JI)F
.end method

.method private native nativeGetInfoStickerTemplateParam(JI)Ljava/lang/String;
.end method

.method private native nativeGetInfoStickerTemplateParamWithPath(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private native nativeGetInfoStickerVisible(JI)Z
.end method

.method private native nativeGetSrtInfoStickerInitPosition(JI[F)I
.end method

.method private native nativeGetSubTrackFilter(JI)I
.end method

.method private native nativeGetTextContentCallback(JLcom/ss/android/ttve/nativePort/NativeCallbacks$OnARTextContentCallback;)I
.end method

.method private native nativeGetTextLimitCount(J)I
.end method

.method private native nativeIsInfoStickerAnimatable(JI)Z
.end method

.method private native nativeNotifyHideKeyBoard(JZ)I
.end method

.method private native nativePauseEffectAudio(JZ)I
.end method

.method private native nativePauseInfoStickerAnimation(JZ)I
.end method

.method private native nativeRemoveInfoSticker(JI)I
.end method

.method private native nativeRemoveInfoStickerWithBuffer(JI)I
.end method

.method private native nativeRestoreInfoStickerPinWithJson(JILjava/nio/ByteBuffer;I)I
.end method

.method private native nativeSet2DBrushCanvasColor(JF)I
.end method

.method private native nativeSet2DBrushColor(JFFFF)I
.end method

.method private native nativeSet2DBrushSize(JF)I
.end method

.method private native nativeSetEffectBgmEnable(JZ)I
.end method

.method private native nativeSetEffectFontPath(JLjava/lang/String;I)I
.end method

.method private native nativeSetEffectInputText(JLjava/lang/String;IILjava/lang/String;)I
.end method

.method private native nativeSetInfoStickerAnimationParam(JIZLjava/lang/String;ILjava/lang/String;ILjava/lang/String;III)I
.end method

.method private native nativeSetInfoStickerAnimationPreview(JIZ)I
.end method

.method private native nativeSetInfoStickerBufferCallback(JLcom/ss/android/vesdk/VEListener$VEInfoStickerBufferListener;)I
.end method

.method private native nativeSetInfoStickerCallSync(JZ)I
.end method

.method private native nativeSetInfoStickerFlip(JIZZ)I
.end method

.method private native nativeSetInfoStickerRestoreMode(JI)I
.end method

.method private native nativeSetInfoStickerScale(JIF)F
.end method

.method private native nativeSetLanguage(JLjava/lang/String;)I
.end method

.method private native nativeSetStickerPinArea(JILcom/ss/android/vesdk/filterparam/VEStickerPinAreaParam;)I
.end method

.method private native nativeSetTextBitmapCallback(JLcom/ss/android/ttve/nativePort/NativeCallbacks$OnARTextBitmapCallback;)I
.end method

.method private native nativeStopInfoStickerPin(JI)I
.end method

.method private native nativeUndo2DBrush(J)I
.end method

.method private native nativeUpdateTextSticker(JILjava/lang/String;)I
.end method


# virtual methods
.method public addInfoSticker(Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7

    .line 45
    iget-wide v0, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 47
    :cond_b
    iget v2, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->mHostTrackIndex:I

    if-gez v2, :cond_12

    const/16 p0, -0x69

    return p0

    .line 51
    :cond_12
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->nativeAddInfoSticker(JLjava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public addInfoStickerWithBuffer()I
    .registers 5

    .line 94
    iget-wide v0, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 97
    :cond_b
    invoke-direct {p0, v0, v1}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->nativeAddInfoStickerWithBuffer(J)I

    move-result p0

    return p0
.end method

.method public addSticker([Ljava/lang/String;[Ljava/lang/String;[I[I[I[IDDDD)I
    .registers 35

    move-object/from16 v1, p0

    .line 399
    iget-wide v2, v1, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->mNative:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_d

    const/16 v0, -0x70

    return v0

    .line 401
    :cond_d
    iget v0, v1, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->mHostTrackIndex:I

    if-gez v0, :cond_14

    const/16 v0, -0x69

    return v0

    :cond_14
    const/16 v18, 0x0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    move-wide/from16 v14, p11

    move-wide/from16 v16, p13

    move/from16 v19, v0

    .line 405
    invoke-direct/range {v1 .. v19}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->nativeAddSubTrack(J[Ljava/lang/String;[Ljava/lang/String;[I[I[I[IDDDDII)I

    move-result v0

    return v0
.end method

.method public begin2DBrush()I
    .registers 5

    .line 501
    iget-wide v0, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 505
    :cond_b
    invoke-direct {p0, v0, v1}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->nativeBegin2DBrush(J)I

    move-result p0

    return p0
.end method

.method public beginInfoStickerPin(I)I
    .registers 6

    .line 471
    iget-wide v0, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 473
    :cond_b
    iget v2, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->mHostTrackIndex:I

    if-gez v2, :cond_12

    const/16 p0, -0x69

    return p0

    .line 476
    :cond_12
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->nativeBeginInfoStickerPin(JI)I

    move-result p0

    if-eqz p0, :cond_19

    const/4 p0, -0x1

    :cond_19
    return p0
.end method

.method public cancelInfoStickerPin(I)I
    .registers 6

    .line 218
    iget-wide v0, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 220
    :cond_b
    iget v2, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->mHostTrackIndex:I

    if-gez v2, :cond_12

    const/16 p0, -0x69

    return p0

    .line 223
    :cond_12
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->nativeCancelInfoStickerPin(JI)I

    move-result p0

    if-eqz p0, :cond_19

    const/4 p0, -0x1

    :cond_19
    return p0
.end method

.method public clearNative()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 602
    iput-wide v0, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->mNative:J

    return-void
.end method

.method public controlStickerAnimationPreview(ZIFI)I
    .registers 11

    .line 351
    iget-wide v1, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long p3, v1, v3

    if-nez p3, :cond_b

    const/16 p0, -0x70

    return p0

    :cond_b
    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p4

    .line 354
    invoke-direct/range {v0 .. v5}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->nativeControlInfoStickerAnimationPreview(JZII)I

    move-result p0

    return p0
.end method

.method public deleteSticker(I)I
    .registers 6

    .line 372
    iget-wide v0, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    :cond_b
    if-gez p1, :cond_10

    const/16 p0, -0x64

    return p0

    .line 379
    :cond_10
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->nativeDeleteSubTrack(JI)I

    move-result p0

    return p0
.end method

.method public enableStickerAnimationPreview(IZ)I
    .registers 7

    .line 344
    iget-wide v0, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 347
    :cond_b
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->nativeSetInfoStickerAnimationPreview(JIZ)I

    move-result p0

    return p0
.end method

.method public end2DBrush(Ljava/lang/String;)I
    .registers 6

    .line 512
    iget-wide v0, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 516
    :cond_b
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->nativeEnd2DBrush(JLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public get2DBrushStrokeCount()I
    .registers 5

    .line 563
    iget-wide v0, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 567
    :cond_b
    invoke-direct {p0, v0, v1}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->nativeGet2DBrushStrokeCount(J)I

    move-result p0

    return p0
.end method

.method public getInfoStickerBoundingBox(I)[F
    .registers 3

    const/4 v0, 0x1

    .line 71
    invoke-virtual {p0, p1, v0}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->getInfoStickerBoundingBox(IZ)[F

    move-result-object p0

    return-object p0
.end method

.method public getInfoStickerBoundingBox(IZ)[F
    .registers 7

    .line 75
    iget-wide v0, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const-string v3, ""

    if-eqz v2, :cond_53

    .line 78
    iget v2, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->mHostTrackIndex:I

    if-ltz v2, :cond_4b

    if-eqz p2, :cond_15

    .line 83
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->nativeGetInfoStickerBoundingBox(JI)[F

    move-result-object p0

    goto :goto_19

    .line 84
    :cond_15
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->nativeGetInfoStickerBoundingBoxWithoutRotate(JI)[F

    move-result-object p0

    :goto_19
    const/4 p2, 0x0

    .line 85
    aget v0, p0, p2

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_29

    const/4 p1, 0x4

    .line 88
    new-array v0, p1, [F

    const/4 v1, 0x1

    .line 89
    invoke-static {p0, v1, v0, p2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    .line 86
    :cond_29
    new-instance v0, Lcom/ss/android/vesdk/VEException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "native getInfoStickerBoundingBox failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p0, p0, p2

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " index: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, -0x1

    invoke-direct {v0, p1, p0}, Lcom/ss/android/vesdk/VEException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 79
    :cond_4b
    new-instance p0, Lcom/ss/android/vesdk/VEException;

    const/16 p1, -0x64

    invoke-direct {p0, p1, v3}, Lcom/ss/android/vesdk/VEException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 76
    :cond_53
    new-instance p0, Lcom/ss/android/vesdk/VEException;

    const/16 p1, -0x70

    invoke-direct {p0, p1, v3}, Lcom/ss/android/vesdk/VEException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public getInfoStickerFlip(I[Z)I
    .registers 7

    .line 153
    iget-wide v0, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 156
    :cond_b
    iget v2, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->mHostTrackIndex:I

    if-gez v2, :cond_12

    const/16 p0, -0x64

    return p0

    .line 159
    :cond_12
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->nativeGetInfoStickerFlip(JI[Z)I

    move-result p0

    if-eqz p0, :cond_19

    const/4 p0, -0x1

    :cond_19
    return p0
.end method

.method public getInfoStickerIsDynamic(I)Z
    .registers 6

    .line 595
    iget-wide v0, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_a

    const/4 p0, 0x0

    return p0

    .line 598
    :cond_a
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->nativeGetInfoStickerIsDynamic(JI)Z

    move-result p0

    return p0
.end method

.method public getInfoStickerPinData(I[Ljava/nio/ByteBuffer;)I
    .registers 7

    .line 242
    iget-wide v0, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 244
    :cond_b
    iget v2, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->mHostTrackIndex:I

    if-gez v2, :cond_12

    const/16 p0, -0x69

    return p0

    .line 247
    :cond_12
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->nativeGetInfoStickerPinData(JI[Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0
.end method

.method public getInfoStickerPinState(I)I
    .registers 6

    .line 232
    iget-wide v0, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 234
    :cond_b
    iget v2, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->mHostTrackIndex:I

    if-gez v2, :cond_12

    const/16 p0, -0x69

    return p0

    .line 237
    :cond_12
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->nativeGetInfoStickerPinState(JI)I

    move-result p0

    return p0
.end method

.method public getInfoStickerPosition(I[F)I
    .registers 7

    .line 190
    iget-wide v0, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 193
    :cond_b
    iget v2, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->mHostTrackIndex:I

    if-gez v2, :cond_12

    const/16 p0, -0x64

    return p0

    .line 196
    :cond_12
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->nativeGetInfoStickerPosition(JI[F)I

    move-result p0

    if-eqz p0, :cond_19

    const/4 p0, -0x1

    :cond_19
    return p0
.end method

.method public getInfoStickerRotate(I)F
    .registers 6

    .line 302
    iget-wide v0, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/high16 p0, -0x3d200000    # -112.0f

    return p0

    .line 304
    :cond_b
    iget v2, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->mHostTrackIndex:I

    if-gez v2, :cond_12

    const/high16 p0, -0x3d2e0000    # -105.0f

    return p0

    .line 307
    :cond_12
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->nativeGetInfoStickerRotate(JI)F

    move-result p0

    return p0
.end method

.method public getInfoStickerScale(I)F
    .registers 6

    .line 279
    iget-wide v0, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/high16 p0, -0x3d200000    # -112.0f

    return p0

    .line 281
    :cond_b
    iget v2, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->mHostTrackIndex:I

    if-gez v2, :cond_12

    const/high16 p0, -0x3d2e0000    # -105.0f

    return p0

    .line 284
    :cond_12
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->nativeGetInfoStickerScale(JI)F

    move-result p0

    const/4 p1, 0x0

    cmpg-float p1, p0, p1

    if-gez p1, :cond_1d

    const/high16 p0, -0x40800000    # -1.0f

    :cond_1d
    return p0
.end method

.method public getInfoStickerTemplateParam(I)Ljava/lang/String;
    .registers 6

    .line 167
    iget-wide v0, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const-string v3, ""

    if-nez v2, :cond_b

    return-object v3

    .line 170
    :cond_b
    iget v2, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->mHostTrackIndex:I

    if-gez v2, :cond_10

    return-object v3

    .line 173
    :cond_10
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->nativeGetInfoStickerTemplateParam(JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getInfoStickerTemplateParam(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 177
    iget-wide v0, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const-string v3, ""

    const-string v4, "TEMVInterface"

    if-nez v2, :cond_12

    .line 178
    const-string p0, "[getInfoStickerTemplateParam] mNative wrong value"

    invoke-static {v4, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 182
    :cond_12
    iget v2, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->mHostTrackIndex:I

    if-gez v2, :cond_1c

    .line 183
    const-string p0, "[getInfoStickerTemplateParam] no host tack"

    invoke-static {v4, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 186
    :cond_1c
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->nativeGetInfoStickerTemplateParamWithPath(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getInfoStickerVisible(I)Z
    .registers 6

    .line 292
    iget-wide v0, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x1

    if-nez v2, :cond_a

    return v3

    .line 294
    :cond_a
    iget v2, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->mHostTrackIndex:I

    if-gez v2, :cond_f

    return v3

    .line 297
    :cond_f
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->nativeGetInfoStickerVisible(JI)Z

    move-result p0

    return p0
.end method

.method public getSrtInfoStickerInitPosition(I[F)I
    .registers 7

    .line 204
    iget-wide v0, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 207
    :cond_b
    iget v2, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->mHostTrackIndex:I

    if-gez v2, :cond_12

    const/16 p0, -0x64

    return p0

    .line 210
    :cond_12
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->nativeGetSrtInfoStickerInitPosition(JI[F)I

    move-result p0

    if-eqz p0, :cond_19

    const/4 p0, -0x1

    :cond_19
    return p0
.end method

.method public getStickerFilterIndex(I)I
    .registers 6

    .line 312
    iget-wide v0, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    :cond_b
    if-gez p1, :cond_10

    const/16 p0, -0x64

    return p0

    .line 317
    :cond_10
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->nativeGetSubTrackFilter(JI)I

    move-result p0

    return p0
.end method

.method public getTextContent(Lcom/ss/android/vesdk/VEEditor$OnARTextContentCallback;)I
    .registers 6

    .line 439
    iget-wide v0, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 442
    :cond_b
    new-instance v2, Lcom/ss/android/vesdk/jni/TEStikcerInterface$1;

    invoke-direct {v2, p0, p1}, Lcom/ss/android/vesdk/jni/TEStikcerInterface$1;-><init>(Lcom/ss/android/vesdk/jni/TEStikcerInterface;Lcom/ss/android/vesdk/VEEditor$OnARTextContentCallback;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->nativeGetTextContentCallback(JLcom/ss/android/ttve/nativePort/NativeCallbacks$OnARTextContentCallback;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getTextLimitCount()I
    .registers 5

    .line 432
    iget-wide v0, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 435
    :cond_b
    invoke-direct {p0, v0, v1}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->nativeGetTextLimitCount(J)I

    move-result p0

    return p0
.end method

.method public isInfoStickerAnimatable(I)Z
    .registers 6

    .line 122
    iget-wide v0, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_a

    return v3

    .line 124
    :cond_a
    iget v2, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->mHostTrackIndex:I

    if-gez v2, :cond_f

    return v3

    .line 128
    :cond_f
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->nativeIsInfoStickerAnimatable(JI)Z

    move-result p0

    return p0
.end method

.method public notifyHideKeyBoard(Z)I
    .registers 6

    .line 418
    iget-wide v0, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 421
    :cond_b
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->nativeNotifyHideKeyBoard(JZ)I

    move-result p0

    return p0
.end method

.method public pauseEffectAudio(Z)I
    .registers 6

    .line 484
    iget-wide v0, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 487
    :cond_b
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->nativePauseEffectAudio(JZ)I

    move-result p0

    return p0
.end method

.method public pauseInfoStickerAnimation(Z)I
    .registers 6

    .line 132
    iget-wide v0, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 133
    :cond_b
    iget v2, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->mHostTrackIndex:I

    if-gez v2, :cond_12

    const/16 p0, -0x69

    return p0

    .line 135
    :cond_12
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->nativePauseInfoStickerAnimation(JZ)I

    move-result p0

    return p0
.end method

.method public removeInfoSticker(I)I
    .registers 6

    .line 61
    iget-wide v0, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 63
    :cond_b
    iget v2, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->mHostTrackIndex:I

    if-gez v2, :cond_12

    const/16 p0, -0x69

    return p0

    .line 67
    :cond_12
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->nativeRemoveInfoSticker(JI)I

    move-result p0

    return p0
.end method

.method public restoreInfoStickerPinWithJson(ILjava/nio/ByteBuffer;)I
    .registers 9

    .line 251
    iget-wide v1, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_b

    const/16 p0, -0x70

    return p0

    .line 253
    :cond_b
    iget v0, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->mHostTrackIndex:I

    if-gez v0, :cond_12

    const/16 p0, -0x69

    return p0

    .line 257
    :cond_12
    invoke-virtual {p2}, Ljava/nio/Buffer;->capacity()I

    move-result v5

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->nativeRestoreInfoStickerPinWithJson(JILjava/nio/ByteBuffer;I)I

    move-result p0

    if-eqz p0, :cond_20

    const/4 p0, -0x1

    :cond_20
    return p0
.end method

.method public set2DBrushCanvasAlpha(F)I
    .registers 6

    .line 544
    iget-wide v0, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 548
    :cond_b
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->nativeSet2DBrushCanvasColor(JF)I

    move-result p0

    return p0
.end method

.method public set2DBrushColor(FFFF)I
    .registers 12

    .line 536
    iget-wide v1, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_b

    const/16 p0, -0x70

    return p0

    :cond_b
    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 540
    invoke-direct/range {v0 .. v6}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->nativeSet2DBrushColor(JFFFF)I

    move-result p0

    return p0
.end method

.method public set2DBrushSize(F)I
    .registers 6

    .line 525
    iget-wide v0, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 529
    :cond_b
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->nativeSet2DBrushSize(JF)I

    move-result p0

    return p0
.end method

.method public setEffectBgmEnable(Z)I
    .registers 6

    .line 491
    iget-wide v0, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 494
    :cond_b
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->nativeSetEffectBgmEnable(JZ)I

    move-result p0

    return p0
.end method

.method public setEffectFontPath(Ljava/lang/String;I)I
    .registers 7

    .line 358
    iget-wide v0, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 361
    :cond_b
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->nativeSetEffectFontPath(JLjava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public setEffectInputText(Ljava/lang/String;IILjava/lang/String;)I
    .registers 12

    .line 365
    iget-wide v1, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_b

    const/16 p0, -0x70

    return p0

    :cond_b
    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    .line 368
    invoke-direct/range {v0 .. v6}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->nativeSetEffectInputText(JLjava/lang/String;IILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setInfoStickerBufferCallback(Lcom/ss/android/vesdk/VEListener$VEInfoStickerBufferListener;)I
    .registers 6

    .line 115
    iget-wide v0, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 118
    :cond_b
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->nativeSetInfoStickerBufferCallback(JLcom/ss/android/vesdk/VEListener$VEInfoStickerBufferListener;)I

    move-result p0

    return p0
.end method

.method public setInfoStickerCallSync(Z)I
    .registers 6

    .line 411
    iget-wide v0, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 414
    :cond_b
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->nativeSetInfoStickerCallSync(JZ)I

    move-result p0

    return p0
.end method

.method public setInfoStickerFlip(IZZ)I
    .registers 10

    .line 139
    iget-wide v1, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_b

    const/16 p0, -0x70

    return p0

    .line 142
    :cond_b
    iget v0, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->mHostTrackIndex:I

    if-gez v0, :cond_12

    const/16 p0, -0x64

    return p0

    :cond_12
    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    .line 145
    invoke-direct/range {v0 .. v5}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->nativeSetInfoStickerFlip(JIZZ)I

    move-result p0

    if-eqz p0, :cond_1d

    const/4 p0, -0x1

    :cond_1d
    return p0
.end method

.method public setInfoStickerRestoreMode(I)I
    .registers 6

    .line 265
    iget-wide v0, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 267
    :cond_b
    iget v2, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->mHostTrackIndex:I

    if-gez v2, :cond_12

    const/16 p0, -0x69

    return p0

    .line 271
    :cond_12
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->nativeSetInfoStickerRestoreMode(JI)I

    move-result p0

    if-eqz p0, :cond_19

    const/4 p0, -0x1

    :cond_19
    return p0
.end method

.method public setInfoStickerScale(IF)F
    .registers 7

    .line 321
    iget-wide v0, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/high16 p0, -0x3d200000    # -112.0f

    return p0

    .line 324
    :cond_b
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->nativeSetInfoStickerScale(JIF)F

    move-result p0

    return p0
.end method

.method public setLanguage(Ljava/lang/String;)I
    .registers 6

    .line 425
    iget-wide v0, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 428
    :cond_b
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->nativeSetLanguage(JLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setStickerAnimation(IZLjava/lang/String;ILjava/lang/String;ILjava/lang/String;III)I
    .registers 24

    .line 333
    iget-wide v1, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_b

    const/16 p0, -0x70

    return p0

    :cond_b
    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    .line 337
    invoke-direct/range {v0 .. v12}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->nativeSetInfoStickerAnimationParam(JIZLjava/lang/String;ILjava/lang/String;ILjava/lang/String;III)I

    move-result p0

    return p0
.end method

.method public setStickerPinArea(ILcom/ss/android/vesdk/filterparam/VEStickerPinAreaParam;)I
    .registers 7

    .line 571
    iget-wide v0, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 574
    :cond_b
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->nativeSetStickerPinArea(JILcom/ss/android/vesdk/filterparam/VEStickerPinAreaParam;)I

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, -0x1

    :cond_12
    return p0
.end method

.method public setTextBitmapCallback(Lcom/ss/android/vesdk/VEEditor$OnARTextBitmapCallback;)I
    .registers 6

    .line 455
    iget-wide v0, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 458
    :cond_b
    new-instance v2, Lcom/ss/android/vesdk/jni/TEStikcerInterface$2;

    invoke-direct {v2, p0, p1}, Lcom/ss/android/vesdk/jni/TEStikcerInterface$2;-><init>(Lcom/ss/android/vesdk/jni/TEStikcerInterface;Lcom/ss/android/vesdk/VEEditor$OnARTextBitmapCallback;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->nativeSetTextBitmapCallback(JLcom/ss/android/ttve/nativePort/NativeCallbacks$OnARTextBitmapCallback;)I

    const/4 p0, 0x0

    return p0
.end method

.method public stopInfoStickerPin(I)I
    .registers 6

    .line 582
    iget-wide v0, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 584
    :cond_b
    iget v2, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->mHostTrackIndex:I

    if-gez v2, :cond_12

    const/16 p0, -0x69

    return p0

    .line 587
    :cond_12
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->nativeStopInfoStickerPin(JI)I

    move-result p0

    if-eqz p0, :cond_19

    const/4 p0, -0x1

    :cond_19
    return p0
.end method

.method public undo2DBrush()I
    .registers 5

    .line 555
    iget-wide v0, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 559
    :cond_b
    invoke-direct {p0, v0, v1}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->nativeUndo2DBrush(J)I

    move-result p0

    return p0
.end method

.method public updateTextSticker(ILjava/lang/String;)I
    .registers 7

    .line 101
    iget-wide v0, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 104
    :cond_b
    iget v2, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->mHostTrackIndex:I

    if-gez v2, :cond_12

    const/16 p0, -0x64

    return p0

    .line 107
    :cond_12
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/vesdk/jni/TEStikcerInterface;->nativeUpdateTextSticker(JILjava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_19

    const/4 p0, -0x1

    :cond_19
    return p0
.end method
