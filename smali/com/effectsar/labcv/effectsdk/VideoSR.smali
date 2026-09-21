.class public Lcom/effectsar/labcv/effectsdk/VideoSR;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mInited:Z

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mNativePtr:J

.field private mPowerLevel:I

.field private mRwDir:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 9
    :try_start_0
    const-string v0, "effect"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native nativeCreate(Ljava/lang/String;Ljava/lang/String;IIIZZI)I
.end method

.method private native nativeProcess(IIILcom/effectsar/labcv/effectsdk/BefVideoSRInfo;)I
.end method

.method private native nativeRelease()I
.end method


# virtual methods
.method public getmMaxHeight()I
    .registers 1

    .line 31
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/VideoSR;->mMaxHeight:I

    return p0
.end method

.method public getmMaxWidth()I
    .registers 1

    .line 23
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/VideoSR;->mMaxWidth:I

    return p0
.end method

.method public getmPowerLevel()I
    .registers 1

    .line 39
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/VideoSR;->mPowerLevel:I

    return p0
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;IILcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQulityPowerLevel;ZLcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LensVideoAlgType;)I
    .registers 17

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v7, p6

    move-object/from16 v8, p7

    .line 69
    invoke-virtual/range {v0 .. v8}, Lcom/effectsar/labcv/effectsdk/VideoSR;->init(Ljava/lang/String;Ljava/lang/String;IILcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQulityPowerLevel;ZZLcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LensVideoAlgType;)I

    move-result p0

    return p0
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;IILcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQulityPowerLevel;ZZLcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LensVideoAlgType;)I
    .registers 18

    .line 53
    iput-object p2, p0, Lcom/effectsar/labcv/effectsdk/VideoSR;->mRwDir:Ljava/lang/String;

    .line 54
    iput p3, p0, Lcom/effectsar/labcv/effectsdk/VideoSR;->mMaxHeight:I

    .line 55
    iput p4, p0, Lcom/effectsar/labcv/effectsdk/VideoSR;->mMaxWidth:I

    .line 56
    invoke-virtual {p5}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQulityPowerLevel;->getLevel()I

    move-result p2

    iput p2, p0, Lcom/effectsar/labcv/effectsdk/VideoSR;->mPowerLevel:I

    .line 58
    iget-object v2, p0, Lcom/effectsar/labcv/effectsdk/VideoSR;->mRwDir:Ljava/lang/String;

    iget v3, p0, Lcom/effectsar/labcv/effectsdk/VideoSR;->mMaxHeight:I

    iget v4, p0, Lcom/effectsar/labcv/effectsdk/VideoSR;->mMaxWidth:I

    invoke-virtual {p5}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ImageQulityPowerLevel;->getLevel()I

    move-result v5

    invoke-virtual/range {p8 .. p8}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$LensVideoAlgType;->getValue()I

    move-result v8

    move-object v0, p0

    move-object v1, p1

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/effectsar/labcv/effectsdk/VideoSR;->nativeCreate(Ljava/lang/String;Ljava/lang/String;IIIZZI)I

    move-result p1

    if-eqz p1, :cond_29

    const/4 p2, 0x0

    .line 60
    iput-boolean p2, p0, Lcom/effectsar/labcv/effectsdk/VideoSR;->mInited:Z

    return p1

    :cond_29
    const/4 p2, 0x1

    .line 63
    iput-boolean p2, p0, Lcom/effectsar/labcv/effectsdk/VideoSR;->mInited:Z

    return p1
.end method

.method public isInited()Z
    .registers 1

    .line 93
    iget-boolean p0, p0, Lcom/effectsar/labcv/effectsdk/VideoSR;->mInited:Z

    return p0
.end method

.method public process(III)Lcom/effectsar/labcv/effectsdk/BefVideoSRInfo;
    .registers 6

    .line 72
    iget-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/VideoSR;->mInited:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 76
    :cond_6
    new-instance v0, Lcom/effectsar/labcv/effectsdk/BefVideoSRInfo;

    invoke-direct {v0}, Lcom/effectsar/labcv/effectsdk/BefVideoSRInfo;-><init>()V

    .line 77
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/effectsar/labcv/effectsdk/VideoSR;->nativeProcess(IIILcom/effectsar/labcv/effectsdk/BefVideoSRInfo;)I

    move-result p0

    if-eqz p0, :cond_28

    .line 79
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "nativeVideoSrProcess "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "bef_effect_ai"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_28
    return-object v0
.end method

.method public release()V
    .registers 2

    .line 86
    iget-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/VideoSR;->mInited:Z

    if-eqz v0, :cond_7

    .line 87
    invoke-direct {p0}, Lcom/effectsar/labcv/effectsdk/VideoSR;->nativeRelease()I

    :cond_7
    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/VideoSR;->mInited:Z

    return-void
.end method

.method public setmMaxHeight(I)V
    .registers 2

    .line 35
    iput p1, p0, Lcom/effectsar/labcv/effectsdk/VideoSR;->mMaxHeight:I

    return-void
.end method

.method public setmMaxWidth(I)V
    .registers 2

    .line 27
    iput p1, p0, Lcom/effectsar/labcv/effectsdk/VideoSR;->mMaxWidth:I

    return-void
.end method

.method public setmPowerLevel(I)V
    .registers 2

    .line 43
    iput p1, p0, Lcom/effectsar/labcv/effectsdk/VideoSR;->mPowerLevel:I

    return-void
.end method
