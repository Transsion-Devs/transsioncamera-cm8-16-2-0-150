.class public Lcom/effectsar/labcv/effectsdk/VideoClsDetect;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mInited:Z

.field private mNativePtr:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 11
    :try_start_0
    const-string v0, "effect"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native nativeCreate(ILjava/lang/String;Ljava/lang/String;Z)I
.end method

.method private native nativeDetect(Ljava/nio/ByteBuffer;IIIIIZLcom/effectsar/labcv/effectsdk/BefVideoClsInfo;)I
.end method

.method private native nativeRelease()I
.end method

.method private native nativeSetParam(IF)I
.end method


# virtual methods
.method public detect(Ljava/nio/ByteBuffer;Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$PixlFormat;IIIZLcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$Rotation;)Lcom/effectsar/labcv/effectsdk/BefVideoClsInfo;
    .registers 18

    .line 40
    iget-boolean v1, p0, Lcom/effectsar/labcv/effectsdk/VideoClsDetect;->mInited:Z

    const/4 v9, 0x0

    if-nez v1, :cond_6

    return-object v9

    .line 41
    :cond_6
    new-instance v8, Lcom/effectsar/labcv/effectsdk/BefVideoClsInfo;

    invoke-direct {v8}, Lcom/effectsar/labcv/effectsdk/BefVideoClsInfo;-><init>()V

    .line 42
    invoke-virtual {p2}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$PixlFormat;->getValue()I

    move-result v2

    move-object/from16 v1, p7

    iget v6, v1, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$Rotation;->id:I

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/effectsar/labcv/effectsdk/VideoClsDetect;->nativeDetect(Ljava/nio/ByteBuffer;IIIIIZLcom/effectsar/labcv/effectsdk/BefVideoClsInfo;)I

    move-result v0

    if-eqz v0, :cond_37

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "native detect return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bef_effect_ai"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :cond_37
    return-object v8
.end method

.method public init(Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$VideoClsModelType;Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x0

    .line 31
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/effectsar/labcv/effectsdk/VideoClsDetect;->init(Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$VideoClsModelType;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public init(Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$VideoClsModelType;Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 5

    .line 21
    invoke-virtual {p1}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$VideoClsModelType;->getValue()I

    move-result p1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/effectsar/labcv/effectsdk/VideoClsDetect;->nativeCreate(ILjava/lang/String;Ljava/lang/String;Z)I

    move-result p1

    if-eqz p1, :cond_e

    const/4 p2, 0x0

    .line 23
    iput-boolean p2, p0, Lcom/effectsar/labcv/effectsdk/VideoClsDetect;->mInited:Z

    return p1

    :cond_e
    const/4 p2, 0x1

    .line 26
    iput-boolean p2, p0, Lcom/effectsar/labcv/effectsdk/VideoClsDetect;->mInited:Z

    return p1
.end method

.method public isInited()Z
    .registers 1

    .line 58
    iget-boolean p0, p0, Lcom/effectsar/labcv/effectsdk/VideoClsDetect;->mInited:Z

    return p0
.end method

.method public release()V
    .registers 2

    .line 51
    iget-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/VideoClsDetect;->mInited:Z

    if-eqz v0, :cond_7

    .line 52
    invoke-direct {p0}, Lcom/effectsar/labcv/effectsdk/VideoClsDetect;->nativeRelease()I

    :cond_7
    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/VideoClsDetect;->mInited:Z

    return-void
.end method

.method public setParam(Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$VideoClsParamType;F)I
    .registers 4

    .line 35
    iget-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/VideoClsDetect;->mInited:Z

    if-nez v0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 36
    :cond_6
    invoke-virtual {p1}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$VideoClsParamType;->getValue()I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/effectsar/labcv/effectsdk/VideoClsDetect;->nativeSetParam(IF)I

    move-result p0

    return p0
.end method
