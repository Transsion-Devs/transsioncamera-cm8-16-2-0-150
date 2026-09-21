.class public Lcom/effectsar/labcv/effectsdk/StudentIdOcr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private volatile mInitialized:Z

.field private mNativePtr:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 10
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
    .registers 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/StudentIdOcr;->mInitialized:Z

    return-void
.end method

.method private native nativeCheckLicense(Ljava/lang/String;)I
.end method

.method private native nativeCreateHandle()I
.end method

.method private native nativeDetect(Ljava/nio/ByteBuffer;IIIIILcom/effectsar/labcv/effectsdk/BefStudentIdOcrInfo;)I
.end method

.method private native nativeRelease()I
.end method

.method private native nativeSetModel(ILjava/lang/String;)I
.end method


# virtual methods
.method public detect(Ljava/nio/ByteBuffer;Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$PixlFormat;IIILcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$Rotation;)Lcom/effectsar/labcv/effectsdk/BefStudentIdOcrInfo;
    .registers 16

    .line 45
    iget-boolean v1, p0, Lcom/effectsar/labcv/effectsdk/StudentIdOcr;->mInitialized:Z

    const/4 v8, 0x0

    if-nez v1, :cond_6

    return-object v8

    .line 48
    :cond_6
    new-instance v7, Lcom/effectsar/labcv/effectsdk/BefStudentIdOcrInfo;

    invoke-direct {v7}, Lcom/effectsar/labcv/effectsdk/BefStudentIdOcrInfo;-><init>()V

    .line 50
    invoke-virtual {p2}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$PixlFormat;->getValue()I

    move-result v2

    iget v6, p6, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$Rotation;->id:I

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    .line 49
    invoke-direct/range {v0 .. v7}, Lcom/effectsar/labcv/effectsdk/StudentIdOcr;->nativeDetect(Ljava/nio/ByteBuffer;IIIIILcom/effectsar/labcv/effectsdk/BefStudentIdOcrInfo;)I

    move-result v0

    if-eqz v0, :cond_33

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "native detect return "

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

.method public init(Ljava/lang/String;)I
    .registers 4

    .line 21
    invoke-direct {p0}, Lcom/effectsar/labcv/effectsdk/StudentIdOcr;->nativeCreateHandle()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 23
    iput-boolean v1, p0, Lcom/effectsar/labcv/effectsdk/StudentIdOcr;->mInitialized:Z

    return v0

    .line 26
    :cond_a
    invoke-direct {p0, p1}, Lcom/effectsar/labcv/effectsdk/StudentIdOcr;->nativeCheckLicense(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_13

    .line 28
    iput-boolean v1, p0, Lcom/effectsar/labcv/effectsdk/StudentIdOcr;->mInitialized:Z

    return p1

    :cond_13
    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/StudentIdOcr;->mInitialized:Z

    return p1
.end method

.method public isInitialized()Z
    .registers 1

    .line 73
    iget-boolean p0, p0, Lcom/effectsar/labcv/effectsdk/StudentIdOcr;->mInitialized:Z

    return p0
.end method

.method public release()I
    .registers 3

    .line 65
    iget-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/StudentIdOcr;->mInitialized:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 66
    iput-boolean v1, p0, Lcom/effectsar/labcv/effectsdk/StudentIdOcr;->mInitialized:Z

    .line 67
    invoke-direct {p0}, Lcom/effectsar/labcv/effectsdk/StudentIdOcr;->nativeRelease()I

    move-result p0

    return p0

    :cond_c
    return v1
.end method

.method public setModel(Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$StudentIdOcrModelType;Ljava/lang/String;)I
    .registers 3

    .line 36
    invoke-virtual {p1}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$StudentIdOcrModelType;->getValue()I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/effectsar/labcv/effectsdk/StudentIdOcr;->nativeSetModel(ILjava/lang/String;)I

    move-result p0

    return p0
.end method
