.class public Lcom/effectsar/labcv/effectsdk/VideoFI;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private buffer:Ljava/nio/ByteBuffer;

.field private bufferHeight:I

.field private bufferWidth:I

.field private mInited:Z

.field private mNativePtr:J

.field private mRwDir:Ljava/lang/String;


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

    .line 12
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/VideoFI;->mInited:Z

    return-void
.end method

.method private native nativeCheckLicense(Ljava/lang/String;Z)I
.end method

.method private native nativeCreate(Ljava/lang/String;IIII)I
.end method

.method private native nativeDestroy()V
.end method

.method private native nativeProcessTexture(IIIIIFFF)I
.end method


# virtual methods
.method public checkLicense(Ljava/lang/String;Z)I
    .registers 3

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/effectsar/labcv/effectsdk/VideoFI;->nativeCheckLicense(Ljava/lang/String;Z)I

    move-result p1

    if-nez p1, :cond_a

    const/4 p2, 0x1

    .line 47
    iput-boolean p2, p0, Lcom/effectsar/labcv/effectsdk/VideoFI;->mInited:Z

    return p1

    :cond_a
    const/4 p2, 0x0

    .line 49
    iput-boolean p2, p0, Lcom/effectsar/labcv/effectsdk/VideoFI;->mInited:Z

    return p1
.end method

.method public create(Ljava/lang/String;Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityVfiType;Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityVfiDataType;ILcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQulityPowerLevel;)I
    .registers 7

    .line 24
    invoke-virtual {p3}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityVfiDataType;->getValue()I

    move-result p3

    invoke-virtual {p2}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQualityVfiType;->getValue()I

    move-result p2

    invoke-virtual {p5}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQulityPowerLevel;->getLevel()I

    move-result p5

    move v0, p3

    move p3, p2

    move p2, v0

    move v0, p5

    move p5, p4

    move p4, v0

    invoke-direct/range {p0 .. p5}, Lcom/effectsar/labcv/effectsdk/VideoFI;->nativeCreate(Ljava/lang/String;IIII)I

    move-result p1

    if-nez p1, :cond_1b

    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Lcom/effectsar/labcv/effectsdk/VideoFI;->mInited:Z

    :cond_1b
    const/4 p0, 0x0

    return p0
.end method

.method public destroy()V
    .registers 1

    .line 55
    invoke-direct {p0}, Lcom/effectsar/labcv/effectsdk/VideoFI;->nativeDestroy()V

    return-void
.end method

.method public processTexture(IIIIIFFF)I
    .registers 9

    .line 32
    invoke-direct/range {p0 .. p8}, Lcom/effectsar/labcv/effectsdk/VideoFI;->nativeProcessTexture(IIIIIFFF)I

    move-result p0

    return p0
.end method
