.class public Lcom/effectsar/labcv/effectsdk/FaceVerify;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SAME_FACE_SCORE:Ljava/lang/Double;


# instance fields
.field private volatile mInited:Z

.field private mNativeFacePtr:J

.field private mNativeVerifyPtr:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide v0, 0x4050e66666666666L    # 67.6

    .line 18
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/effectsar/labcv/effectsdk/FaceVerify;->SAME_FACE_SCORE:Ljava/lang/Double;

    .line 24
    :try_start_b
    const-string v0, "effect"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_b .. :try_end_10} :catch_11

    return-void

    :catch_11
    move-exception v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/FaceVerify;->mInited:Z

    return-void
.end method

.method private native nativeCheckLicense(Landroid/content/Context;Ljava/lang/String;Z)I
.end method

.method private native nativeCreateHandle(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method private native nativeDistanceToScore(D)D
.end method

.method private native nativeExtractFeature(Ljava/nio/ByteBuffer;IIIIILcom/effectsar/labcv/effectsdk/BefFaceFeature;)I
.end method

.method private native nativeExtractFeatureSingle(Ljava/nio/ByteBuffer;IIIIILcom/effectsar/labcv/effectsdk/BefFaceFeature;)I
.end method

.method private native nativeRelease()V
.end method

.method private native nativeVerify([F[F)D
.end method


# virtual methods
.method public distToScore(D)D
    .registers 3

    .line 134
    invoke-direct {p0, p1, p2}, Lcom/effectsar/labcv/effectsdk/FaceVerify;->nativeDistanceToScore(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public extractFeature(Ljava/nio/ByteBuffer;Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$PixlFormat;IIILcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$Rotation;)Lcom/effectsar/labcv/effectsdk/BefFaceFeature;
    .registers 16

    .line 75
    iget-boolean v1, p0, Lcom/effectsar/labcv/effectsdk/FaceVerify;->mInited:Z

    const/4 v8, 0x0

    if-nez v1, :cond_6

    return-object v8

    .line 78
    :cond_6
    new-instance v7, Lcom/effectsar/labcv/effectsdk/BefFaceFeature;

    invoke-direct {v7}, Lcom/effectsar/labcv/effectsdk/BefFaceFeature;-><init>()V

    .line 79
    invoke-virtual {p2}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$PixlFormat;->getValue()I

    move-result v2

    iget v6, p6, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$Rotation;->id:I

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/effectsar/labcv/effectsdk/FaceVerify;->nativeExtractFeature(Ljava/nio/ByteBuffer;IIIIILcom/effectsar/labcv/effectsdk/BefFaceFeature;)I

    move-result v0

    if-eqz v0, :cond_33

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nativeVerifyFace return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bef_effect_ai"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    :cond_33
    return-object v7
.end method

.method public extractFeatureSingle(Ljava/nio/ByteBuffer;Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$PixlFormat;IIILcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$Rotation;)Lcom/effectsar/labcv/effectsdk/BefFaceFeature;
    .registers 16

    .line 102
    iget-boolean v1, p0, Lcom/effectsar/labcv/effectsdk/FaceVerify;->mInited:Z

    const/4 v8, 0x0

    if-nez v1, :cond_6

    return-object v8

    .line 105
    :cond_6
    new-instance v7, Lcom/effectsar/labcv/effectsdk/BefFaceFeature;

    invoke-direct {v7}, Lcom/effectsar/labcv/effectsdk/BefFaceFeature;-><init>()V

    .line 106
    invoke-virtual {p2}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$PixlFormat;->getValue()I

    move-result v2

    iget v6, p6, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$Rotation;->id:I

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/effectsar/labcv/effectsdk/FaceVerify;->nativeExtractFeatureSingle(Ljava/nio/ByteBuffer;IIIIILcom/effectsar/labcv/effectsdk/BefFaceFeature;)I

    move-result v0

    if-eqz v0, :cond_33

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nativeVerifyFace return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bef_effect_ai"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    :cond_33
    return-object v7
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    .registers 13

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 59
    invoke-virtual/range {v0 .. v6}, Lcom/effectsar/labcv/effectsdk/FaceVerify;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)I
    .registers 7

    .line 42
    invoke-direct {p0, p2, p3, p4}, Lcom/effectsar/labcv/effectsdk/FaceVerify;->nativeCreateHandle(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_a

    .line 44
    iput-boolean p3, p0, Lcom/effectsar/labcv/effectsdk/FaceVerify;->mInited:Z

    return p2

    .line 48
    :cond_a
    invoke-direct {p0, p1, p5, p6}, Lcom/effectsar/labcv/effectsdk/FaceVerify;->nativeCheckLicense(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p1

    if-eqz p1, :cond_13

    .line 51
    iput-boolean p3, p0, Lcom/effectsar/labcv/effectsdk/FaceVerify;->mInited:Z

    return p1

    :cond_13
    const/4 p2, 0x1

    .line 54
    iput-boolean p2, p0, Lcom/effectsar/labcv/effectsdk/FaceVerify;->mInited:Z

    return p1
.end method

.method public isInited()Z
    .registers 1

    .line 149
    iget-boolean p0, p0, Lcom/effectsar/labcv/effectsdk/FaceVerify;->mInited:Z

    return p0
.end method

.method public release()V
    .registers 2

    .line 142
    iget-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/FaceVerify;->mInited:Z

    if-eqz v0, :cond_7

    .line 143
    invoke-direct {p0}, Lcom/effectsar/labcv/effectsdk/FaceVerify;->nativeRelease()V

    :cond_7
    const/4 v0, 0x0

    .line 145
    iput-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/FaceVerify;->mInited:Z

    return-void
.end method

.method public verify([F[F)D
    .registers 3

    .line 124
    invoke-direct {p0, p1, p2}, Lcom/effectsar/labcv/effectsdk/FaceVerify;->nativeVerify([F[F)D

    move-result-wide p0

    return-wide p0
.end method
