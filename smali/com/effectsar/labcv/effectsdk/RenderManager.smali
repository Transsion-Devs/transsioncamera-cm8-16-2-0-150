.class public Lcom/effectsar/labcv/effectsdk/RenderManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private volatile mInited:Z

.field private mNativePtr:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatErrorCode(I)Ljava/lang/String;
    .registers 1

    .line 649
    invoke-static {p0}, Lcom/effectsar/labcv/effectsdk/RenderManager;->nativeFormatErrorCode(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static loadLib()V
    .registers 3

    .line 24
    :try_start_0
    const-string v0, "effect"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 25
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "RenderManager_jni: library load!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception v0

    .line 27
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "WARNING: RenderManager_jni Could not load library!"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 28
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 29
    throw v0
.end method

.method private native nativeAlgorithmBuffer(Ljava/nio/ByteBuffer;IIIIID)I
.end method

.method private native nativeAlgorithmTextureWithBuffer(ILjava/nio/ByteBuffer;IIIIID)I
.end method

.method private native nativeAppendComposerNodes([Ljava/lang/String;)I
.end method

.method private native nativeCleanPipeline()I
.end method

.method private native nativeDeviceConfig(ZZZZ)I
.end method

.method private static native nativeFormatErrorCode(I)Ljava/lang/String;
.end method

.method private native nativeGetAvailableFeatures([Ljava/lang/String;)I
.end method

.method private native nativeGetCapturedImageWithKey(Ljava/lang/String;Ljava/nio/ByteBuffer;Lcom/effectsar/labcv/effectsdk/BefPublicDefine$BefCapturedImageInfo;)I
.end method

.method private native nativeGetFaceDetectResult(Lcom/effectsar/labcv/effectsdk/BefFaceInfo;)I
.end method

.method private native nativeGetFaceMaskResult(ILcom/effectsar/labcv/effectsdk/BefFaceInfo;)I
.end method

.method private native nativeGetHandDetectResult(Lcom/effectsar/labcv/effectsdk/BefHandInfo;)I
.end method

.method private native nativeGetSDKVersion()Ljava/lang/String;
.end method

.method private native nativeGetSkeletonDetectResult(Lcom/effectsar/labcv/effectsdk/BefSkeletonInfo;)I
.end method

.method private native nativeInit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)I
.end method

.method private native nativeInit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)I
.end method

.method private native nativeInit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZI)I
.end method

.method private native nativeLoadWithTimeout(I)I
.end method

.method private native nativeOnAcceleratorChanged(DDDD)I
.end method

.method private native nativeOnGravityChanged(DDDD)I
.end method

.method private native nativeOnGyroscopeChanged(DDDD)I
.end method

.method private native nativeOnOrientationChanged([DID)I
.end method

.method private native nativeProcess(IIIIID)I
.end method

.method private native nativeProcessBuffer(Ljava/nio/ByteBuffer;IIIII[BID)I
.end method

.method private native nativeProcessGesture(IFFFFF)I
.end method

.method private native nativeProcessTexture(IIIIID)I
.end method

.method private native nativeProcessTouch(IFFFFII)I
.end method

.method private native nativeRelease()V
.end method

.method private native nativeRemoveComposerNodes([Ljava/lang/String;)I
.end method

.method private native nativeScaleSlam(F)I
.end method

.method private native nativeSendMessage(IJJLjava/lang/String;)I
.end method

.method private native nativeSet3buffer(Z)I
.end method

.method private native nativeSetAlgorithmForceDetect(Z)I
.end method

.method private native nativeSetBeauty(Ljava/lang/String;)I
.end method

.method private native nativeSetCameraPosition(Z)I
.end method

.method private native nativeSetComposer(Ljava/lang/String;)I
.end method

.method private native nativeSetComposerMode(II)I
.end method

.method private native nativeSetComposerNodes([Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method private native nativeSetDeviceRotation([F)I
.end method

.method private native nativeSetFilter(Ljava/lang/String;)I
.end method

.method private native nativeSetImageMode(Z)I
.end method

.method private native nativeSetMakeUp(Ljava/lang/String;)I
.end method

.method private native nativeSetPipeline(Z)I
.end method

.method private native nativeSetRenderAPI(I)I
.end method

.method private native nativeSetRenderCacheTexture(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native nativeSetRenderCacheTexture(Ljava/lang/String;Ljava/nio/ByteBuffer;IIIII)I
.end method

.method private native nativeSetReshape(Ljava/lang/String;)I
.end method

.method private native nativeSetSticker(Ljava/lang/String;)I
.end method

.method private native nativeUpdateComposer(Ljava/lang/String;Ljava/lang/String;F)I
.end method

.method private native nativeUpdateIntensity(IF)I
.end method

.method private native nativeUpdateReshape(FF)I
.end method

.method private native nativeUseBuiltinSensor(Z)I
.end method


# virtual methods
.method public SetFaceForceDetect(Z)I
    .registers 2

    .line 686
    invoke-direct {p0, p1}, Lcom/effectsar/labcv/effectsdk/RenderManager;->nativeSetAlgorithmForceDetect(Z)I

    move-result p0

    return p0
.end method

.method public algorithmBuffer(Ljava/nio/ByteBuffer;Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$Rotation;IIIIJ)Z
    .registers 11

    .line 255
    iget-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/RenderManager;->mInited:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 258
    :cond_6
    iget p2, p2, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$Rotation;->id:I

    invoke-virtual {p0, p7, p8}, Lcom/effectsar/labcv/effectsdk/RenderManager;->getSurfaceTimeStamp(J)D

    move-result-wide p7

    invoke-direct/range {p0 .. p8}, Lcom/effectsar/labcv/effectsdk/RenderManager;->nativeAlgorithmBuffer(Ljava/nio/ByteBuffer;IIIIID)I

    move-result p0

    if-nez p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    return v1
.end method

.method public algorithmTextureWithBuffer(ILjava/nio/ByteBuffer;Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$Rotation;IIIIJ)Z
    .registers 12

    .line 277
    iget-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/RenderManager;->mInited:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 280
    :cond_6
    iget p3, p3, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$Rotation;->id:I

    invoke-virtual {p0, p8, p9}, Lcom/effectsar/labcv/effectsdk/RenderManager;->getSurfaceTimeStamp(J)D

    move-result-wide p8

    invoke-direct/range {p0 .. p9}, Lcom/effectsar/labcv/effectsdk/RenderManager;->nativeAlgorithmTextureWithBuffer(ILjava/nio/ByteBuffer;IIIIID)I

    move-result p0

    if-nez p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    return v1
.end method

.method public appendComposerNodes([Ljava/lang/String;)I
    .registers 2

    .line 460
    invoke-direct {p0, p1}, Lcom/effectsar/labcv/effectsdk/RenderManager;->nativeAppendComposerNodes([Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public cleanPipeline()Z
    .registers 3

    .line 339
    iget-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/RenderManager;->mInited:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 342
    :cond_6
    invoke-direct {p0}, Lcom/effectsar/labcv/effectsdk/RenderManager;->nativeCleanPipeline()I

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    return v1
.end method

.method public deviceConfig(ZZZZ)I
    .registers 5

    .line 653
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/effectsar/labcv/effectsdk/RenderManager;->nativeDeviceConfig(ZZZZ)I

    move-result p0

    return p0
.end method

.method public getAvailableFeatures([Ljava/lang/String;)Z
    .registers 2

    .line 238
    invoke-direct {p0, p1}, Lcom/effectsar/labcv/effectsdk/RenderManager;->nativeGetAvailableFeatures([Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public getCapturedImageWithKey(Ljava/lang/String;Ljava/nio/ByteBuffer;Lcom/effectsar/labcv/effectsdk/BefPublicDefine$BefCapturedImageInfo;)I
    .registers 4

    .line 640
    invoke-direct {p0, p1, p2, p3}, Lcom/effectsar/labcv/effectsdk/RenderManager;->nativeGetCapturedImageWithKey(Ljava/lang/String;Ljava/nio/ByteBuffer;Lcom/effectsar/labcv/effectsdk/BefPublicDefine$BefCapturedImageInfo;)I

    move-result p0

    return p0
.end method

.method public getFaceDetectResult()Lcom/effectsar/labcv/effectsdk/BefFaceInfo;
    .registers 4

    .line 512
    iget-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/RenderManager;->mInited:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 514
    :cond_6
    new-instance v0, Lcom/effectsar/labcv/effectsdk/BefFaceInfo;

    invoke-direct {v0}, Lcom/effectsar/labcv/effectsdk/BefFaceInfo;-><init>()V

    .line 515
    invoke-direct {p0, v0}, Lcom/effectsar/labcv/effectsdk/RenderManager;->nativeGetFaceDetectResult(Lcom/effectsar/labcv/effectsdk/BefFaceInfo;)I

    move-result p0

    if-eqz p0, :cond_28

    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nativeGetFaceDetectResult return "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "bef_effect_ai"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_28
    return-object v0
.end method

.method public getFaceMaskResult(Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$FaceMaskType;Lcom/effectsar/labcv/effectsdk/BefFaceInfo;)V
    .registers 4

    .line 529
    iget-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/RenderManager;->mInited:Z

    if-nez v0, :cond_5

    goto :goto_30

    :cond_5
    if-nez p2, :cond_8

    goto :goto_30

    .line 532
    :cond_8
    invoke-virtual {p1}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$FaceMaskType;->getValue()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/effectsar/labcv/effectsdk/RenderManager;->nativeGetFaceMaskResult(ILcom/effectsar/labcv/effectsdk/BefFaceInfo;)I

    move-result p0

    if-eqz p0, :cond_30

    .line 534
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getFaceMaskResult type:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " return "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "bef_effect_ai"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    :goto_30
    return-void
.end method

.method public getHandDetectResult()Lcom/effectsar/labcv/effectsdk/BefHandInfo;
    .registers 4

    .line 543
    iget-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/RenderManager;->mInited:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 545
    :cond_6
    new-instance v0, Lcom/effectsar/labcv/effectsdk/BefHandInfo;

    invoke-direct {v0}, Lcom/effectsar/labcv/effectsdk/BefHandInfo;-><init>()V

    .line 546
    invoke-direct {p0, v0}, Lcom/effectsar/labcv/effectsdk/RenderManager;->nativeGetHandDetectResult(Lcom/effectsar/labcv/effectsdk/BefHandInfo;)I

    move-result p0

    if-eqz p0, :cond_28

    .line 548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nativeGetHandDetectResult return "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "bef_effect_ai"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_28
    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .registers 1

    .line 505
    invoke-direct {p0}, Lcom/effectsar/labcv/effectsdk/RenderManager;->nativeGetSDKVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSkeletonDetectResult()Lcom/effectsar/labcv/effectsdk/BefSkeletonInfo;
    .registers 4

    .line 558
    iget-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/RenderManager;->mInited:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 560
    :cond_6
    new-instance v0, Lcom/effectsar/labcv/effectsdk/BefSkeletonInfo;

    invoke-direct {v0}, Lcom/effectsar/labcv/effectsdk/BefSkeletonInfo;-><init>()V

    .line 561
    invoke-direct {p0, v0}, Lcom/effectsar/labcv/effectsdk/RenderManager;->nativeGetSkeletonDetectResult(Lcom/effectsar/labcv/effectsdk/BefSkeletonInfo;)I

    move-result p0

    if-eqz p0, :cond_28

    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nativeGetSkeletonDetectResult return "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "bef_effect_ai"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_28
    return-object v0
.end method

.method public getSurfaceTimeStamp(J)D
    .registers 13

    .line 492
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long v2, v0, p1

    .line 493
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 494
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    sub-long/2addr v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    .line 495
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-wide/32 v8, 0xf4240

    mul-long/2addr v6, v8

    sub-long/2addr v6, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    .line 496
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    sub-long/2addr v0, p0

    long-to-double p0, v0

    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .registers 10

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 34
    invoke-virtual/range {v0 .. v5}, Lcom/effectsar/labcv/effectsdk/RenderManager;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)I

    move-result p0

    return p0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)I
    .registers 10

    .line 76
    iget-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/RenderManager;->mInited:Z

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 77
    invoke-direct/range {p0 .. p7}, Lcom/effectsar/labcv/effectsdk/RenderManager;->nativeInit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)I

    move-result p1

    if-nez p1, :cond_c

    const/4 v1, 0x1

    .line 78
    :cond_c
    iput-boolean v1, p0, Lcom/effectsar/labcv/effectsdk/RenderManager;->mInited:Z

    return p1

    :cond_f
    return v1
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)I
    .registers 13

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v6, p5

    .line 93
    invoke-virtual/range {v0 .. v6}, Lcom/effectsar/labcv/effectsdk/RenderManager;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZI)I

    move-result p0

    return p0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZI)I
    .registers 9

    .line 57
    iget-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/RenderManager;->mInited:Z

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 58
    invoke-direct/range {p0 .. p6}, Lcom/effectsar/labcv/effectsdk/RenderManager;->nativeInit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZI)I

    move-result p1

    if-nez p1, :cond_c

    const/4 v1, 0x1

    .line 59
    :cond_c
    iput-boolean v1, p0, Lcom/effectsar/labcv/effectsdk/RenderManager;->mInited:Z

    return p1

    :cond_f
    return v1
.end method

.method public isInited()Z
    .registers 1

    .line 123
    iget-boolean p0, p0, Lcom/effectsar/labcv/effectsdk/RenderManager;->mInited:Z

    return p0
.end method

.method public loadResourceWithTimeout(I)Z
    .registers 4

    .line 227
    iget-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/RenderManager;->mInited:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 230
    :cond_6
    invoke-direct {p0, p1}, Lcom/effectsar/labcv/effectsdk/RenderManager;->nativeLoadWithTimeout(I)I

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    return v1
.end method

.method public onAcceleratorChanged(DDDD)I
    .registers 9

    .line 661
    invoke-direct/range {p0 .. p8}, Lcom/effectsar/labcv/effectsdk/RenderManager;->nativeOnAcceleratorChanged(DDDD)I

    move-result p0

    return p0
.end method

.method public onGravityChanged(DDDD)I
    .registers 9

    .line 665
    invoke-direct/range {p0 .. p8}, Lcom/effectsar/labcv/effectsdk/RenderManager;->nativeOnGravityChanged(DDDD)I

    move-result p0

    return p0
.end method

.method public onGyroscopeChanged(DDDD)I
    .registers 9

    .line 669
    invoke-direct/range {p0 .. p8}, Lcom/effectsar/labcv/effectsdk/RenderManager;->nativeOnGyroscopeChanged(DDDD)I

    move-result p0

    return p0
.end method

.method public onOrientationChanged([DID)I
    .registers 5

    .line 657
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/effectsar/labcv/effectsdk/RenderManager;->nativeOnOrientationChanged([DID)I

    move-result p0

    return p0
.end method

.method public processBuffer(Ljava/nio/ByteBuffer;Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$Rotation;IIII[BI)Z
    .registers 21
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 380
    iget-boolean v1, p0, Lcom/effectsar/labcv/effectsdk/RenderManager;->mInited:Z

    const/4 v11, 0x0

    if-nez v1, :cond_6

    return v11

    .line 383
    :cond_6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    long-to-double v9, v1

    .line 384
    iget v2, p2, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$Rotation;->id:I

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v10}, Lcom/effectsar/labcv/effectsdk/RenderManager;->nativeProcessBuffer(Ljava/nio/ByteBuffer;IIIII[BID)I

    move-result v0

    if-nez v0, :cond_22

    const/4 v0, 0x1

    return v0

    :cond_22
    return v11
.end method

.method public processGesture(Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GestureEventCode;FFFFF)I
    .registers 7

    .line 593
    invoke-virtual {p1}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$GestureEventCode;->getCode()I

    move-result p1

    invoke-direct/range {p0 .. p6}, Lcom/effectsar/labcv/effectsdk/RenderManager;->nativeProcessGesture(IFFFFF)I

    move-result p0

    return p0
.end method

.method public processTexture(IIIILcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$Rotation;J)Z
    .registers 10

    .line 358
    iget-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/RenderManager;->mInited:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 361
    :cond_6
    iget p5, p5, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$Rotation;->id:I

    invoke-virtual {p0, p6, p7}, Lcom/effectsar/labcv/effectsdk/RenderManager;->getSurfaceTimeStamp(J)D

    move-result-wide p6

    invoke-direct/range {p0 .. p7}, Lcom/effectsar/labcv/effectsdk/RenderManager;->nativeProcess(IIIIID)I

    move-result p0

    if-nez p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    return v1
.end method

.method public processTextureOnly(IIIILcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$Rotation;J)Z
    .registers 10

    .line 296
    iget-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/RenderManager;->mInited:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 299
    :cond_6
    iget p5, p5, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$Rotation;->id:I

    invoke-virtual {p0, p6, p7}, Lcom/effectsar/labcv/effectsdk/RenderManager;->getSurfaceTimeStamp(J)D

    move-result-wide p6

    invoke-direct/range {p0 .. p7}, Lcom/effectsar/labcv/effectsdk/RenderManager;->nativeProcessTexture(IIIIID)I

    move-result p0

    if-nez p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    return v1
.end method

.method public processTouch(Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$TouchEventCode;FFFFII)I
    .registers 8

    .line 580
    invoke-virtual {p1}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$TouchEventCode;->getCode()I

    move-result p1

    invoke-direct/range {p0 .. p7}, Lcom/effectsar/labcv/effectsdk/RenderManager;->nativeProcessTouch(IFFFFII)I

    move-result p0

    return p0
.end method

.method public release()V
    .registers 2

    .line 130
    iget-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/RenderManager;->mInited:Z

    if-eqz v0, :cond_7

    .line 131
    invoke-direct {p0}, Lcom/effectsar/labcv/effectsdk/RenderManager;->nativeRelease()V

    :cond_7
    const/4 v0, 0x0

    .line 133
    iput-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/RenderManager;->mInited:Z

    return-void
.end method

.method public removeComposerNodes([Ljava/lang/String;)I
    .registers 2

    .line 470
    invoke-direct {p0, p1}, Lcom/effectsar/labcv/effectsdk/RenderManager;->nativeRemoveComposerNodes([Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public scaleSlam(F)I
    .registers 2

    .line 678
    invoke-direct {p0, p1}, Lcom/effectsar/labcv/effectsdk/RenderManager;->nativeScaleSlam(F)I

    move-result p0

    return p0
.end method

.method public sendMessage(IJJLjava/lang/String;)V
    .registers 7

    .line 604
    invoke-direct/range {p0 .. p6}, Lcom/effectsar/labcv/effectsdk/RenderManager;->nativeSendMessage(IJJLjava/lang/String;)I

    return-void
.end method

.method public set3Buffer(Z)Z
    .registers 4

    .line 327
    iget-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/RenderManager;->mInited:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 330
    :cond_6
    invoke-direct {p0, p1}, Lcom/effectsar/labcv/effectsdk/RenderManager;->nativeSet3buffer(Z)I

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    return v1
.end method

.method public setBeauty(Ljava/lang/String;)Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 147
    iget-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/RenderManager;->mInited:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    if-nez p1, :cond_a

    .line 151
    const-string p1, ""

    .line 153
    :cond_a
    invoke-direct {p0, p1}, Lcom/effectsar/labcv/effectsdk/RenderManager;->nativeSetBeauty(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    return v1
.end method

.method public setCameraPostion(Z)Z
    .registers 4

    .line 115
    iget-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/RenderManager;->mInited:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 118
    :cond_6
    invoke-direct {p0, p1}, Lcom/effectsar/labcv/effectsdk/RenderManager;->nativeSetCameraPosition(Z)I

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    return v1
.end method

.method public setComposer(Ljava/lang/String;)I
    .registers 2

    .line 424
    invoke-direct {p0, p1}, Lcom/effectsar/labcv/effectsdk/RenderManager;->nativeSetComposer(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setComposerMode(II)I
    .registers 3

    .line 428
    invoke-direct {p0, p1, p2}, Lcom/effectsar/labcv/effectsdk/RenderManager;->nativeSetComposerMode(II)I

    move-result p0

    return p0
.end method

.method public setComposerNodes([Ljava/lang/String;)I
    .registers 3

    const/4 v0, 0x0

    .line 438
    invoke-direct {p0, p1, v0}, Lcom/effectsar/labcv/effectsdk/RenderManager;->nativeSetComposerNodes([Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setComposerNodesWithTags([Ljava/lang/String;[Ljava/lang/String;)I
    .registers 3

    .line 449
    invoke-direct {p0, p1, p2}, Lcom/effectsar/labcv/effectsdk/RenderManager;->nativeSetComposerNodes([Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setDeviceRotation([F)I
    .registers 2

    .line 673
    invoke-direct {p0, p1}, Lcom/effectsar/labcv/effectsdk/RenderManager;->nativeSetDeviceRotation([F)I

    move-result p0

    return p0
.end method

.method public setFilter(Ljava/lang/String;)Z
    .registers 4

    .line 179
    iget-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/RenderManager;->mInited:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    if-nez p1, :cond_a

    .line 183
    const-string p1, ""

    .line 185
    :cond_a
    invoke-direct {p0, p1}, Lcom/effectsar/labcv/effectsdk/RenderManager;->nativeSetFilter(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    return v1
.end method

.method public setImageMode(Z)Z
    .registers 4

    .line 102
    iget-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/RenderManager;->mInited:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 105
    :cond_6
    invoke-direct {p0, p1}, Lcom/effectsar/labcv/effectsdk/RenderManager;->nativeSetImageMode(Z)I

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    return v1
.end method

.method public setMakeUp(Ljava/lang/String;)Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 197
    iget-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/RenderManager;->mInited:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    if-nez p1, :cond_a

    .line 201
    const-string p1, ""

    .line 203
    :cond_a
    invoke-direct {p0, p1}, Lcom/effectsar/labcv/effectsdk/RenderManager;->nativeSetMakeUp(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    return v1
.end method

.method public setPipeline(Z)Z
    .registers 4

    .line 311
    iget-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/RenderManager;->mInited:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 314
    :cond_6
    invoke-direct {p0, p1}, Lcom/effectsar/labcv/effectsdk/RenderManager;->nativeSetPipeline(Z)I

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    return v1
.end method

.method public setRenderAPI(I)Z
    .registers 2

    .line 408
    invoke-direct {p0, p1}, Lcom/effectsar/labcv/effectsdk/RenderManager;->nativeSetRenderAPI(I)I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public setRenderCacheTexture(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 614
    invoke-direct {p0, p1, p2}, Lcom/effectsar/labcv/effectsdk/RenderManager;->nativeSetRenderCacheTexture(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setRenderCacheTextureWithBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;IIILcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$PixlFormat;Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$Rotation;)I
    .registers 8

    .line 629
    invoke-virtual {p6}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$PixlFormat;->getValue()I

    move-result p6

    iget p7, p7, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$Rotation;->id:I

    invoke-direct/range {p0 .. p7}, Lcom/effectsar/labcv/effectsdk/RenderManager;->nativeSetRenderCacheTexture(Ljava/lang/String;Ljava/nio/ByteBuffer;IIIII)I

    move-result p0

    return p0
.end method

.method public setReshape(Ljava/lang/String;)Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 164
    iget-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/RenderManager;->mInited:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    if-nez p1, :cond_a

    .line 168
    const-string p1, ""

    .line 170
    :cond_a
    invoke-direct {p0, p1}, Lcom/effectsar/labcv/effectsdk/RenderManager;->nativeSetReshape(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    return v1
.end method

.method public setSticker(Ljava/lang/String;)Z
    .registers 4

    .line 212
    iget-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/RenderManager;->mInited:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    if-nez p1, :cond_a

    .line 216
    const-string p1, ""

    .line 218
    :cond_a
    invoke-direct {p0, p1}, Lcom/effectsar/labcv/effectsdk/RenderManager;->nativeSetSticker(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    return v1
.end method

.method public updateComposerNodes(Ljava/lang/String;Ljava/lang/String;F)I
    .registers 4

    .line 482
    invoke-direct {p0, p1, p2, p3}, Lcom/effectsar/labcv/effectsdk/RenderManager;->nativeUpdateComposer(Ljava/lang/String;Ljava/lang/String;F)I

    move-result p0

    return p0
.end method

.method public updateIntensity(IF)Z
    .registers 3

    .line 397
    invoke-direct {p0, p1, p2}, Lcom/effectsar/labcv/effectsdk/RenderManager;->nativeUpdateIntensity(IF)I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public updateReshape(FF)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 420
    invoke-direct {p0, p1, p2}, Lcom/effectsar/labcv/effectsdk/RenderManager;->nativeUpdateReshape(FF)I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public useBuiltinSensor(Z)I
    .registers 2

    .line 682
    invoke-direct {p0, p1}, Lcom/effectsar/labcv/effectsdk/RenderManager;->nativeUseBuiltinSensor(Z)I

    move-result p0

    return p0
.end method
