.class public Lcom/effectsar/labcv/effectsdk/LightClsDetect;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private volatile mInited:Z

.field private mNativePtr:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 13
    :try_start_0
    const-string v0, "effect"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/LightClsDetect;->mInited:Z

    return-void
.end method

.method private native nativeCheckLicense(Landroid/content/Context;Ljava/lang/String;Z)I
.end method

.method private native nativeCreateHandle(Ljava/lang/String;I)I
.end method

.method private native nativeDetect(Ljava/nio/ByteBuffer;IIIIILcom/effectsar/labcv/effectsdk/BefLightclsInfo;)I
.end method

.method private native nativeRelease()V
.end method


# virtual methods
.method public detectLightCls(Ljava/nio/ByteBuffer;Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$PixlFormat;IIILcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$Rotation;)Lcom/effectsar/labcv/effectsdk/BefLightclsInfo;
    .registers 16

    .line 47
    iget-boolean v1, p0, Lcom/effectsar/labcv/effectsdk/LightClsDetect;->mInited:Z

    const/4 v8, 0x0

    if-nez v1, :cond_6

    return-object v8

    .line 48
    :cond_6
    new-instance v7, Lcom/effectsar/labcv/effectsdk/BefLightclsInfo;

    invoke-direct {v7}, Lcom/effectsar/labcv/effectsdk/BefLightclsInfo;-><init>()V

    .line 49
    invoke-virtual {p2}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$PixlFormat;->getValue()I

    move-result v2

    iget v6, p6, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$Rotation;->id:I

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/effectsar/labcv/effectsdk/LightClsDetect;->nativeDetect(Ljava/nio/ByteBuffer;IIIIILcom/effectsar/labcv/effectsdk/BefLightclsInfo;)I

    move-result v0

    if-eqz v0, :cond_33

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nativeDetect return "

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

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 38
    invoke-virtual/range {v0 .. v5}, Lcom/effectsar/labcv/effectsdk/LightClsDetect;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)I

    move-result p0

    return p0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)I
    .registers 6

    .line 23
    invoke-direct {p0, p2, p4}, Lcom/effectsar/labcv/effectsdk/LightClsDetect;->nativeCreateHandle(Ljava/lang/String;I)I

    move-result p2

    const/4 p4, 0x0

    if-eqz p2, :cond_a

    .line 25
    iput-boolean p4, p0, Lcom/effectsar/labcv/effectsdk/LightClsDetect;->mInited:Z

    return p2

    .line 28
    :cond_a
    invoke-direct {p0, p1, p3, p5}, Lcom/effectsar/labcv/effectsdk/LightClsDetect;->nativeCheckLicense(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p1

    if-eqz p1, :cond_13

    .line 30
    iput-boolean p4, p0, Lcom/effectsar/labcv/effectsdk/LightClsDetect;->mInited:Z

    return p1

    :cond_13
    const/4 p2, 0x1

    .line 33
    iput-boolean p2, p0, Lcom/effectsar/labcv/effectsdk/LightClsDetect;->mInited:Z

    return p1
.end method

.method public isInited()Z
    .registers 1

    .line 66
    iget-boolean p0, p0, Lcom/effectsar/labcv/effectsdk/LightClsDetect;->mInited:Z

    return p0
.end method

.method public release()V
    .registers 2

    .line 59
    iget-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/LightClsDetect;->mInited:Z

    if-eqz v0, :cond_7

    .line 60
    invoke-direct {p0}, Lcom/effectsar/labcv/effectsdk/LightClsDetect;->nativeRelease()V

    :cond_7
    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/LightClsDetect;->mInited:Z

    return-void
.end method

.method public setmInited(Z)V
    .registers 2

    .line 70
    iput-boolean p1, p0, Lcom/effectsar/labcv/effectsdk/LightClsDetect;->mInited:Z

    return-void
.end method
