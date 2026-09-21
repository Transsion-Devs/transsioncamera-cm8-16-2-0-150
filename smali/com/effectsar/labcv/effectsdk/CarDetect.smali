.class public Lcom/effectsar/labcv/effectsdk/CarDetect;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final TAG:Ljava/lang/String; = "CarDetect"


# instance fields
.field private inited:Z

.field private mNativePtr:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 18
    :try_start_0
    const-string v0, "effect"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    .line 20
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "WARNING: Could not load library!"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 21
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native nativeCheckLicense(Ljava/lang/String;Z)I
.end method

.method private native nativeCreateHandler()I
.end method

.method private native nativeDetect(Ljava/nio/ByteBuffer;IIIIILcom/effectsar/labcv/effectsdk/BefCarDetectInfo;)I
.end method

.method private native nativeRelease()V
.end method

.method private native nativeSetModel(JLjava/lang/String;)I
.end method

.method private native nativeSetParam(IF)I
.end method


# virtual methods
.method public createHandle(Ljava/lang/String;)I
    .registers 3

    const/4 v0, 0x0

    .line 50
    invoke-virtual {p0, p1, v0}, Lcom/effectsar/labcv/effectsdk/CarDetect;->createHandle(Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public createHandle(Ljava/lang/String;Z)I
    .registers 4

    .line 35
    iget-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/CarDetect;->inited:Z

    if-nez v0, :cond_17

    .line 36
    invoke-direct {p0}, Lcom/effectsar/labcv/effectsdk/CarDetect;->nativeCreateHandler()I

    move-result v0

    if-eqz v0, :cond_c

    const/4 p0, -0x4

    return p0

    .line 40
    :cond_c
    invoke-direct {p0, p1, p2}, Lcom/effectsar/labcv/effectsdk/CarDetect;->nativeCheckLicense(Ljava/lang/String;Z)I

    move-result p1

    if-eqz p1, :cond_13

    return p1

    :cond_13
    const/4 p2, 0x1

    .line 44
    iput-boolean p2, p0, Lcom/effectsar/labcv/effectsdk/CarDetect;->inited:Z

    return p1

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method public detect(Ljava/nio/ByteBuffer;Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$PixlFormat;IIILcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$Rotation;)Lcom/effectsar/labcv/effectsdk/BefCarDetectInfo;
    .registers 15

    .line 94
    new-instance v7, Lcom/effectsar/labcv/effectsdk/BefCarDetectInfo;

    invoke-direct {v7}, Lcom/effectsar/labcv/effectsdk/BefCarDetectInfo;-><init>()V

    .line 95
    invoke-virtual {p2}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$PixlFormat;->getValue()I

    move-result v2

    iget v6, p6, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$Rotation;->id:I

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/effectsar/labcv/effectsdk/CarDetect;->nativeDetect(Ljava/nio/ByteBuffer;IIIIILcom/effectsar/labcv/effectsdk/BefCarDetectInfo;)I

    move-result p0

    if-eqz p0, :cond_2e

    .line 98
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "nativeDetect return "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "bef_effect_ai"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_2e
    return-object v7
.end method

.method public isInited()Z
    .registers 1

    .line 120
    iget-boolean p0, p0, Lcom/effectsar/labcv/effectsdk/CarDetect;->inited:Z

    return p0
.end method

.method public release()V
    .registers 2

    .line 109
    iget-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/CarDetect;->inited:Z

    if-eqz v0, :cond_7

    .line 110
    invoke-direct {p0}, Lcom/effectsar/labcv/effectsdk/CarDetect;->nativeRelease()V

    :cond_7
    const/4 v0, 0x0

    .line 112
    iput-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/CarDetect;->inited:Z

    return-void
.end method

.method public setModel(Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$CarModelType;Ljava/lang/String;)I
    .registers 5

    .line 61
    invoke-virtual {p1}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$CarModelType;->getValue()I

    move-result p1

    int-to-long v0, p1

    invoke-direct {p0, v0, v1, p2}, Lcom/effectsar/labcv/effectsdk/CarDetect;->nativeSetModel(JLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setParam(Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$CarParamType;F)I
    .registers 3

    .line 72
    invoke-virtual {p1}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$CarParamType;->getValue()I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/effectsar/labcv/effectsdk/CarDetect;->nativeSetParam(IF)I

    move-result p0

    return p0
.end method
