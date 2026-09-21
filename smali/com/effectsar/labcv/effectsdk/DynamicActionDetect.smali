.class public Lcom/effectsar/labcv/effectsdk/DynamicActionDetect;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mInited:Z

.field private mNativePtr:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 15
    :try_start_0
    const-string v0, "effect"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native nativeCheckLicense(Landroid/content/Context;Ljava/lang/String;Z)I
.end method

.method private native nativeCreateHandle(I)I
.end method

.method private native nativeDetect(Ljava/nio/ByteBuffer;IIIIIJILcom/effectsar/labcv/effectsdk/BefDynamicActionInfo;)I
.end method

.method private native nativeRelease()I
.end method

.method private native nativeSetModel(ILjava/lang/String;)I
.end method

.method private native nativeSetParam(IF)I
.end method


# virtual methods
.method public detectDynamicAction(Ljava/nio/ByteBuffer;Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$PixlFormat;IIILcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$Rotation;JI)Lcom/effectsar/labcv/effectsdk/BefDynamicActionInfo;
    .registers 22

    .line 50
    iget-boolean v1, p0, Lcom/effectsar/labcv/effectsdk/DynamicActionDetect;->mInited:Z

    const/4 v11, 0x0

    if-nez v1, :cond_6

    return-object v11

    .line 51
    :cond_6
    new-instance v10, Lcom/effectsar/labcv/effectsdk/BefDynamicActionInfo;

    invoke-direct {v10}, Lcom/effectsar/labcv/effectsdk/BefDynamicActionInfo;-><init>()V

    .line 52
    invoke-virtual {p2}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$PixlFormat;->getValue()I

    move-result v2

    move-object/from16 v1, p6

    iget v6, v1, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$Rotation;->id:I

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-wide/from16 v7, p7

    move/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lcom/effectsar/labcv/effectsdk/DynamicActionDetect;->nativeDetect(Ljava/nio/ByteBuffer;IIIIIJILcom/effectsar/labcv/effectsdk/BefDynamicActionInfo;)I

    move-result v0

    if-eqz v0, :cond_3b

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nativeDetect return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bef_effect_ai"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v11

    :cond_3b
    return-object v10
.end method

.method public init(Landroid/content/Context;ILjava/lang/String;Z)I
    .registers 6

    .line 25
    invoke-direct {p0, p2}, Lcom/effectsar/labcv/effectsdk/DynamicActionDetect;->nativeCreateHandle(I)I

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_a

    .line 27
    iput-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/DynamicActionDetect;->mInited:Z

    return p2

    .line 30
    :cond_a
    invoke-direct {p0, p1, p3, p4}, Lcom/effectsar/labcv/effectsdk/DynamicActionDetect;->nativeCheckLicense(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p1

    if-eqz p1, :cond_13

    .line 32
    iput-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/DynamicActionDetect;->mInited:Z

    return p1

    :cond_13
    const/4 p2, 0x1

    .line 35
    iput-boolean p2, p0, Lcom/effectsar/labcv/effectsdk/DynamicActionDetect;->mInited:Z

    return p1
.end method

.method public isInited()Z
    .registers 1

    .line 68
    iget-boolean p0, p0, Lcom/effectsar/labcv/effectsdk/DynamicActionDetect;->mInited:Z

    return p0
.end method

.method public release()V
    .registers 2

    .line 61
    iget-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/DynamicActionDetect;->mInited:Z

    if-eqz v0, :cond_7

    .line 62
    invoke-direct {p0}, Lcom/effectsar/labcv/effectsdk/DynamicActionDetect;->nativeRelease()I

    :cond_7
    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/DynamicActionDetect;->mInited:Z

    return-void
.end method

.method public setModel(Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$DynamicActionModelType;Ljava/lang/String;)I
    .registers 4

    .line 45
    iget-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/DynamicActionDetect;->mInited:Z

    if-nez v0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 46
    :cond_6
    invoke-virtual {p1}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$DynamicActionModelType;->getValue()I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/effectsar/labcv/effectsdk/DynamicActionDetect;->nativeSetModel(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setParam(Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$DynamicActionParamType;F)I
    .registers 4

    .line 40
    iget-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/DynamicActionDetect;->mInited:Z

    if-nez v0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 41
    :cond_6
    invoke-virtual {p1}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$DynamicActionParamType;->getValue()I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/effectsar/labcv/effectsdk/DynamicActionDetect;->nativeSetParam(IF)I

    move-result p0

    return p0
.end method
