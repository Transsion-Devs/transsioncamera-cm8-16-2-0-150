.class public Lcom/effectsar/labcv/effectsdk/HalEffect;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private volatile mInited:Z

.field private mNativePtr:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 23
    const-string v0, "effect"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native nativeAppendComposerNodes([Ljava/lang/String;)I
.end method

.method private native nativeCleanPipeline()I
.end method

.method private native nativeGetFaceDetectResult(Lcom/effectsar/labcv/effectsdk/BefFaceInfo;)I
.end method

.method private native nativeInit(Ljava/lang/String;Ljava/lang/String;ZII)I
.end method

.method private native nativeProcessBuffer([B[BIIIII)I
.end method

.method private native nativeProcessBufferWithFaceInfo([B[BIIIIIILcom/effectsar/labcv/effectsdk/BefFaceInfo;)I
.end method

.method private native nativeProcessGesture(IFFFFF)I
.end method

.method private native nativeProcessTouch(IFFFFII)I
.end method

.method private native nativeRelease()V
.end method

.method private native nativeRemoveComposerNodes([Ljava/lang/String;)I
.end method

.method private native nativeSetCameraPosition(Z)I
.end method

.method private native nativeSetComposer(Ljava/lang/String;)I
.end method

.method private native nativeSetComposerNodes([Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method private native nativeSetFilter(Ljava/lang/String;)I
.end method

.method private native nativeSetRenderCacheTexture(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native nativeSetRenderCacheTexture(Ljava/lang/String;Ljava/nio/ByteBuffer;IIIII)I
.end method

.method private native nativeSetSticker(Ljava/lang/String;)I
.end method

.method private native nativeUpdateComposer(Ljava/lang/String;Ljava/lang/String;FZ)I
.end method

.method private native nativeUpdateIntensity(IF)I
.end method


# virtual methods
.method public appendComposerNodes([Ljava/lang/String;)I
    .registers 3

    .line 413
    iget-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/HalEffect;->mInited:Z

    if-nez v0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 416
    :cond_6
    invoke-direct {p0, p1}, Lcom/effectsar/labcv/effectsdk/HalEffect;->nativeAppendComposerNodes([Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public cleanPipeline()Z
    .registers 3

    .line 307
    iget-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/HalEffect;->mInited:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 310
    :cond_6
    invoke-direct {p0}, Lcom/effectsar/labcv/effectsdk/HalEffect;->nativeCleanPipeline()I

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    return v1
.end method

.method public getFaceDetectResult()Lcom/effectsar/labcv/effectsdk/BefFaceInfo;
    .registers 4

    .line 520
    iget-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/HalEffect;->mInited:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 524
    :cond_6
    new-instance v0, Lcom/effectsar/labcv/effectsdk/BefFaceInfo;

    invoke-direct {v0}, Lcom/effectsar/labcv/effectsdk/BefFaceInfo;-><init>()V

    .line 525
    invoke-direct {p0, v0}, Lcom/effectsar/labcv/effectsdk/HalEffect;->nativeGetFaceDetectResult(Lcom/effectsar/labcv/effectsdk/BefFaceInfo;)I

    move-result p0

    if-eqz p0, :cond_28

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nativeGetFaceDetectResult return "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "bef_effect_ai"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_28
    return-object v0
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;ZII)I
    .registers 9

    .line 28
    iget-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/HalEffect;->mInited:Z

    const/4 v1, 0x0

    if-nez v0, :cond_12

    move-object v2, p2

    move-object p2, p1

    move-object p1, v2

    .line 29
    invoke-direct/range {p0 .. p5}, Lcom/effectsar/labcv/effectsdk/HalEffect;->nativeInit(Ljava/lang/String;Ljava/lang/String;ZII)I

    move-result p1

    if-nez p1, :cond_f

    const/4 v1, 0x1

    .line 30
    :cond_f
    iput-boolean v1, p0, Lcom/effectsar/labcv/effectsdk/HalEffect;->mInited:Z

    return p1

    :cond_12
    return v1
.end method

.method public isInited()Z
    .registers 1

    .line 103
    iget-boolean p0, p0, Lcom/effectsar/labcv/effectsdk/HalEffect;->mInited:Z

    return p0
.end method

.method public processBuffer([B[BIIIII)Z
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 463
    iget-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/HalEffect;->mInited:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    move v2, p6

    move p6, p3

    move p3, p5

    move p5, p7

    move p7, p4

    move p4, v2

    .line 466
    invoke-direct/range {p0 .. p7}, Lcom/effectsar/labcv/effectsdk/HalEffect;->nativeProcessBuffer([B[BIIIII)I

    move-result p0

    if-nez p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    return v1
.end method

.method public processBufferWithFaceInfo([B[BIIIIIILcom/effectsar/labcv/effectsdk/BefFaceInfo;)Z
    .registers 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 486
    iget-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/HalEffect;->mInited:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    move v2, p6

    move p6, p3

    move p3, p5

    move p5, p7

    move p7, p4

    move p4, v2

    .line 489
    invoke-direct/range {p0 .. p9}, Lcom/effectsar/labcv/effectsdk/HalEffect;->nativeProcessBufferWithFaceInfo([B[BIIIIIILcom/effectsar/labcv/effectsdk/BefFaceInfo;)I

    move-result p0

    if-nez p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    return v1
.end method

.method public processGesture(Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GestureEventCode;FFFFF)I
    .registers 7

    .line 603
    invoke-virtual {p1}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GestureEventCode;->getCode()I

    move-result p1

    invoke-direct/range {p0 .. p6}, Lcom/effectsar/labcv/effectsdk/HalEffect;->nativeProcessGesture(IFFFFF)I

    move-result p0

    return p0
.end method

.method public processTouch(Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$TouchEventCode;FFFFII)I
    .registers 8

    .line 590
    invoke-virtual {p1}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$TouchEventCode;->getCode()I

    move-result p1

    invoke-direct/range {p0 .. p7}, Lcom/effectsar/labcv/effectsdk/HalEffect;->nativeProcessTouch(IFFFFII)I

    move-result p0

    return p0
.end method

.method public release()V
    .registers 2

    .line 110
    iget-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/HalEffect;->mInited:Z

    if-eqz v0, :cond_7

    .line 111
    invoke-direct {p0}, Lcom/effectsar/labcv/effectsdk/HalEffect;->nativeRelease()V

    :cond_7
    const/4 v0, 0x0

    .line 113
    iput-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/HalEffect;->mInited:Z

    return-void
.end method

.method public removeComposerNodes([Ljava/lang/String;)I
    .registers 3

    .line 426
    iget-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/HalEffect;->mInited:Z

    if-nez v0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 429
    :cond_6
    invoke-direct {p0, p1}, Lcom/effectsar/labcv/effectsdk/HalEffect;->nativeRemoveComposerNodes([Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setCameraPostion(Z)Z
    .registers 4

    .line 95
    iget-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/HalEffect;->mInited:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 98
    :cond_6
    invoke-direct {p0, p1}, Lcom/effectsar/labcv/effectsdk/HalEffect;->nativeSetCameraPosition(Z)I

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    return v1
.end method

.method public setComposerNodes([Ljava/lang/String;)I
    .registers 3

    .line 385
    iget-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/HalEffect;->mInited:Z

    if-nez v0, :cond_6

    const/4 p0, -0x1

    return p0

    :cond_6
    const/4 v0, 0x0

    .line 388
    invoke-direct {p0, p1, v0}, Lcom/effectsar/labcv/effectsdk/HalEffect;->nativeSetComposerNodes([Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setComposerNodesWithTags([Ljava/lang/String;[Ljava/lang/String;)I
    .registers 4

    .line 399
    iget-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/HalEffect;->mInited:Z

    if-nez v0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 402
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/effectsar/labcv/effectsdk/HalEffect;->nativeSetComposerNodes([Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setFilter(Ljava/lang/String;)Z
    .registers 4

    .line 159
    iget-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/HalEffect;->mInited:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    if-nez p1, :cond_a

    .line 163
    const-string p1, ""

    .line 165
    :cond_a
    invoke-direct {p0, p1}, Lcom/effectsar/labcv/effectsdk/HalEffect;->nativeSetFilter(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    return v1
.end method

.method public setRenderCacheTexture(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 624
    invoke-direct {p0, p1, p2}, Lcom/effectsar/labcv/effectsdk/HalEffect;->nativeSetRenderCacheTexture(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setRenderCacheTextureWithBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;IIILcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$PixlFormat;Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$Rotation;)I
    .registers 8

    .line 639
    invoke-virtual {p6}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$PixlFormat;->getValue()I

    move-result p6

    iget p7, p7, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$Rotation;->id:I

    invoke-direct/range {p0 .. p7}, Lcom/effectsar/labcv/effectsdk/HalEffect;->nativeSetRenderCacheTexture(Ljava/lang/String;Ljava/nio/ByteBuffer;IIIII)I

    move-result p0

    return p0
.end method

.method public setSticker(Ljava/lang/String;)Z
    .registers 4

    .line 192
    iget-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/HalEffect;->mInited:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    if-nez p1, :cond_a

    .line 196
    const-string p1, ""

    .line 198
    :cond_a
    invoke-direct {p0, p1}, Lcom/effectsar/labcv/effectsdk/HalEffect;->nativeSetSticker(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    return v1
.end method

.method public updateComposerNodes(Ljava/lang/String;Ljava/lang/String;FZ)I
    .registers 6

    .line 441
    iget-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/HalEffect;->mInited:Z

    if-nez v0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 444
    :cond_6
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/effectsar/labcv/effectsdk/HalEffect;->nativeUpdateComposer(Ljava/lang/String;Ljava/lang/String;FZ)I

    move-result p0

    return p0
.end method

.method public updateIntensity(IF)Z
    .registers 5

    .line 341
    iget-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/HalEffect;->mInited:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 344
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/effectsar/labcv/effectsdk/HalEffect;->nativeUpdateIntensity(IF)I

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    return v1
.end method
