.class public Lcom/bytedance/labcv/effectsdk/VideoSR;
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
    const-string v0, "byteeffect"

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

.method private native nativeCreate(Ljava/lang/String;Ljava/lang/String;IIIZ)I
.end method

.method private native nativeProcess(IIILcom/bytedance/labcv/effectsdk/BefVideoSRInfo;)I
.end method

.method private native nativeRelease()I
.end method


# virtual methods
.method public getmMaxHeight()I
    .registers 1

    .line 31
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/VideoSR;->mMaxHeight:I

    return p0
.end method

.method public getmMaxWidth()I
    .registers 1

    .line 23
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/VideoSR;->mMaxWidth:I

    return p0
.end method

.method public getmPowerLevel()I
    .registers 1

    .line 39
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/VideoSR;->mPowerLevel:I

    return p0
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;IILcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQulityPowerLevel;)I
    .registers 13

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 64
    invoke-virtual/range {v0 .. v6}, Lcom/bytedance/labcv/effectsdk/VideoSR;->init(Ljava/lang/String;Ljava/lang/String;IILcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQulityPowerLevel;Z)I

    move-result p0

    return p0
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;IILcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQulityPowerLevel;Z)I
    .registers 14

    .line 48
    iput-object p2, p0, Lcom/bytedance/labcv/effectsdk/VideoSR;->mRwDir:Ljava/lang/String;

    .line 49
    iput p3, p0, Lcom/bytedance/labcv/effectsdk/VideoSR;->mMaxHeight:I

    .line 50
    iput p4, p0, Lcom/bytedance/labcv/effectsdk/VideoSR;->mMaxWidth:I

    .line 51
    invoke-virtual {p5}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQulityPowerLevel;->getLevel()I

    move-result p2

    iput p2, p0, Lcom/bytedance/labcv/effectsdk/VideoSR;->mPowerLevel:I

    .line 53
    iget-object v2, p0, Lcom/bytedance/labcv/effectsdk/VideoSR;->mRwDir:Ljava/lang/String;

    iget v3, p0, Lcom/bytedance/labcv/effectsdk/VideoSR;->mMaxHeight:I

    iget v4, p0, Lcom/bytedance/labcv/effectsdk/VideoSR;->mMaxWidth:I

    invoke-virtual {p5}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$ImageQulityPowerLevel;->getLevel()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/labcv/effectsdk/VideoSR;->nativeCreate(Ljava/lang/String;Ljava/lang/String;IIIZ)I

    move-result p0

    if-eqz p0, :cond_23

    const/4 p1, 0x0

    .line 55
    iput-boolean p1, v0, Lcom/bytedance/labcv/effectsdk/VideoSR;->mInited:Z

    return p0

    :cond_23
    const/4 p1, 0x1

    .line 58
    iput-boolean p1, v0, Lcom/bytedance/labcv/effectsdk/VideoSR;->mInited:Z

    return p0
.end method

.method public isInited()Z
    .registers 1

    .line 88
    iget-boolean p0, p0, Lcom/bytedance/labcv/effectsdk/VideoSR;->mInited:Z

    return p0
.end method

.method public process(III)Lcom/bytedance/labcv/effectsdk/BefVideoSRInfo;
    .registers 6

    .line 67
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/VideoSR;->mInited:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 71
    :cond_6
    new-instance v0, Lcom/bytedance/labcv/effectsdk/BefVideoSRInfo;

    invoke-direct {v0}, Lcom/bytedance/labcv/effectsdk/BefVideoSRInfo;-><init>()V

    .line 72
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/bytedance/labcv/effectsdk/VideoSR;->nativeProcess(IIILcom/bytedance/labcv/effectsdk/BefVideoSRInfo;)I

    move-result p0

    if-eqz p0, :cond_28

    .line 74
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "nativeVideoSrProcess "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "bef_byteeffect_ai"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_28
    return-object v0
.end method

.method public release()V
    .registers 2

    .line 81
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/VideoSR;->mInited:Z

    if-eqz v0, :cond_7

    .line 82
    invoke-direct {p0}, Lcom/bytedance/labcv/effectsdk/VideoSR;->nativeRelease()I

    :cond_7
    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/VideoSR;->mInited:Z

    return-void
.end method

.method public setmMaxHeight(I)V
    .registers 2

    .line 35
    iput p1, p0, Lcom/bytedance/labcv/effectsdk/VideoSR;->mMaxHeight:I

    return-void
.end method

.method public setmMaxWidth(I)V
    .registers 2

    .line 27
    iput p1, p0, Lcom/bytedance/labcv/effectsdk/VideoSR;->mMaxWidth:I

    return-void
.end method

.method public setmPowerLevel(I)V
    .registers 2

    .line 43
    iput p1, p0, Lcom/bytedance/labcv/effectsdk/VideoSR;->mPowerLevel:I

    return-void
.end method
