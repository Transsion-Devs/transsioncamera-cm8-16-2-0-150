.class public Lcom/effectsar/labcv/effectsdk/HandDetect;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final TAG:Ljava/lang/String; = "HandDetect"


# instance fields
.field private inited:Z

.field private mNativePtr:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 23
    :try_start_0
    const-string v0, "effect"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    .line 25
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "WARNING: Could not load library!"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 26
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native nativeCheckLicense(Landroid/content/Context;Ljava/lang/String;Z)I
.end method

.method private native nativeCreateHandler()I
.end method

.method private native nativeDetect(Ljava/nio/ByteBuffer;IIIIIJLcom/effectsar/labcv/effectsdk/BefHandInfo;I)I
.end method

.method private native nativeRelease()V
.end method

.method private native nativeSetModel(JLjava/lang/String;)I
.end method

.method private native nativeSetParam(IF)I
.end method


# virtual methods
.method public createHandle(Landroid/content/Context;Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x0

    .line 56
    invoke-virtual {p0, p1, p2, v0}, Lcom/effectsar/labcv/effectsdk/HandDetect;->createHandle(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public createHandle(Landroid/content/Context;Ljava/lang/String;Z)I
    .registers 5

    .line 41
    iget-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/HandDetect;->inited:Z

    if-nez v0, :cond_17

    .line 42
    invoke-direct {p0}, Lcom/effectsar/labcv/effectsdk/HandDetect;->nativeCreateHandler()I

    move-result v0

    if-eqz v0, :cond_c

    const/4 p0, -0x4

    return p0

    .line 46
    :cond_c
    invoke-direct {p0, p1, p2, p3}, Lcom/effectsar/labcv/effectsdk/HandDetect;->nativeCheckLicense(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p1

    if-eqz p1, :cond_13

    return p1

    :cond_13
    const/4 p2, 0x1

    .line 50
    iput-boolean p2, p0, Lcom/effectsar/labcv/effectsdk/HandDetect;->inited:Z

    return p1

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method public detectHand(Ljava/nio/ByteBuffer;Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$PixlFormat;IIILcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$Rotation;II)Lcom/effectsar/labcv/effectsdk/BefHandInfo;
    .registers 20

    .line 101
    new-instance v9, Lcom/effectsar/labcv/effectsdk/BefHandInfo;

    invoke-direct {v9}, Lcom/effectsar/labcv/effectsdk/BefHandInfo;-><init>()V

    .line 102
    invoke-virtual {p2}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$PixlFormat;->getValue()I

    move-result v2

    move-object/from16 p2, p6

    iget v6, p2, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$Rotation;->id:I

    move/from16 p2, p7

    int-to-long v7, p2

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lcom/effectsar/labcv/effectsdk/HandDetect;->nativeDetect(Ljava/nio/ByteBuffer;IIIIIJLcom/effectsar/labcv/effectsdk/BefHandInfo;I)I

    move-result p0

    if-eqz p0, :cond_36

    .line 105
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

    :cond_36
    return-object v9
.end method

.method public isInited()Z
    .registers 1

    .line 127
    iget-boolean p0, p0, Lcom/effectsar/labcv/effectsdk/HandDetect;->inited:Z

    return p0
.end method

.method public release()V
    .registers 2

    .line 116
    iget-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/HandDetect;->inited:Z

    if-eqz v0, :cond_7

    .line 117
    invoke-direct {p0}, Lcom/effectsar/labcv/effectsdk/HandDetect;->nativeRelease()V

    :cond_7
    const/4 v0, 0x0

    .line 119
    iput-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/HandDetect;->inited:Z

    return-void
.end method

.method public setModel(Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandModelType;Ljava/lang/String;)I
    .registers 5

    .line 67
    invoke-virtual {p1}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandModelType;->getValue()I

    move-result p1

    int-to-long v0, p1

    invoke-direct {p0, v0, v1, p2}, Lcom/effectsar/labcv/effectsdk/HandDetect;->nativeSetModel(JLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setParam(Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandParamType;F)I
    .registers 3

    .line 78
    invoke-virtual {p1}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$HandParamType;->getValue()I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/effectsar/labcv/effectsdk/HandDetect;->nativeSetParam(IF)I

    move-result p0

    return p0
.end method
