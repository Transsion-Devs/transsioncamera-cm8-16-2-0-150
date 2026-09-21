.class public Lcom/bytedance/labcv/effectsdk/AdaptiveSharpen;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAmount:F

.field private mDiffImgSmoothEnable:I

.field private mEdgeWeightGamma:F

.field private mFrameHeight:I

.field private mFrameWidth:I

.field private mInited:Z

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mNativePtr:J

.field private mOverRatio:F

.field private mPowerLevel:I

.field private mSceneMode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 8
    :try_start_0
    const-string v0, "byteeffect"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/bytedance/labcv/effectsdk/AdaptiveSharpen;->mFrameWidth:I

    .line 25
    iput v0, p0, Lcom/bytedance/labcv/effectsdk/AdaptiveSharpen;->mFrameHeight:I

    return-void
.end method

.method private native nativeCreate(Ljava/lang/String;IIIIFFFIZ)I
.end method

.method private native nativeProcess(ILjava/lang/Integer;)I
.end method

.method private native nativeRelease()I
.end method

.method private native nativeSetProperty(IIIIFFFI)I
.end method


# virtual methods
.method public getmAmount()F
    .registers 1

    .line 138
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/AdaptiveSharpen;->mAmount:F

    return p0
.end method

.method public getmDiffImgSmoothEnable()I
    .registers 1

    .line 162
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/AdaptiveSharpen;->mDiffImgSmoothEnable:I

    return p0
.end method

.method public getmEdgeWeightGamma()F
    .registers 1

    .line 154
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/AdaptiveSharpen;->mEdgeWeightGamma:F

    return p0
.end method

.method public getmMaxHeight()I
    .registers 1

    .line 114
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/AdaptiveSharpen;->mMaxHeight:I

    return p0
.end method

.method public getmMaxWidth()I
    .registers 1

    .line 106
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/AdaptiveSharpen;->mMaxWidth:I

    return p0
.end method

.method public getmOverRatio()F
    .registers 1

    .line 146
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/AdaptiveSharpen;->mOverRatio:F

    return p0
.end method

.method public getmPowerLevel()I
    .registers 1

    .line 130
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/AdaptiveSharpen;->mPowerLevel:I

    return p0
.end method

.method public getmSceneMode()I
    .registers 1

    .line 122
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/AdaptiveSharpen;->mSceneMode:I

    return p0
.end method

.method public init(Ljava/lang/String;IIIIFFFI)I
    .registers 21

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    .line 54
    invoke-virtual/range {v0 .. v10}, Lcom/bytedance/labcv/effectsdk/AdaptiveSharpen;->init(Ljava/lang/String;IIIIFFFIZ)I

    move-result p0

    return p0
.end method

.method public init(Ljava/lang/String;IIIIFFFIZ)I
    .registers 12

    .line 31
    iput p2, p0, Lcom/bytedance/labcv/effectsdk/AdaptiveSharpen;->mMaxHeight:I

    .line 32
    iput p3, p0, Lcom/bytedance/labcv/effectsdk/AdaptiveSharpen;->mMaxWidth:I

    .line 33
    iput p4, p0, Lcom/bytedance/labcv/effectsdk/AdaptiveSharpen;->mSceneMode:I

    .line 34
    iput p5, p0, Lcom/bytedance/labcv/effectsdk/AdaptiveSharpen;->mPowerLevel:I

    .line 35
    iput p6, p0, Lcom/bytedance/labcv/effectsdk/AdaptiveSharpen;->mAmount:F

    .line 36
    iput p7, p0, Lcom/bytedance/labcv/effectsdk/AdaptiveSharpen;->mOverRatio:F

    .line 37
    iput p8, p0, Lcom/bytedance/labcv/effectsdk/AdaptiveSharpen;->mEdgeWeightGamma:F

    .line 38
    iput p9, p0, Lcom/bytedance/labcv/effectsdk/AdaptiveSharpen;->mDiffImgSmoothEnable:I

    move v0, p5

    move p5, p4

    move p4, v0

    .line 40
    invoke-direct/range {p0 .. p10}, Lcom/bytedance/labcv/effectsdk/AdaptiveSharpen;->nativeCreate(Ljava/lang/String;IIIIFFFIZ)I

    move-result p1

    if-eqz p1, :cond_1d

    const/4 p2, 0x0

    .line 43
    iput-boolean p2, p0, Lcom/bytedance/labcv/effectsdk/AdaptiveSharpen;->mInited:Z

    return p1

    :cond_1d
    const/4 p2, 0x1

    .line 46
    iput-boolean p2, p0, Lcom/bytedance/labcv/effectsdk/AdaptiveSharpen;->mInited:Z

    return p1
.end method

.method public isInited()Z
    .registers 1

    .line 102
    iget-boolean p0, p0, Lcom/bytedance/labcv/effectsdk/AdaptiveSharpen;->mInited:Z

    return p0
.end method

.method public process(ILjava/lang/Integer;)I
    .registers 4

    .line 58
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/AdaptiveSharpen;->mInited:Z

    if-nez v0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 62
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/bytedance/labcv/effectsdk/AdaptiveSharpen;->nativeProcess(ILjava/lang/Integer;)I

    move-result p0

    if-eqz p0, :cond_22

    .line 64
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "nativeNightSceneProcess "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "bef_byteeffect_ai"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    return p0
.end method

.method public release()V
    .registers 2

    .line 95
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/AdaptiveSharpen;->mInited:Z

    if-eqz v0, :cond_7

    .line 96
    invoke-direct {p0}, Lcom/bytedance/labcv/effectsdk/AdaptiveSharpen;->nativeRelease()I

    :cond_7
    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/AdaptiveSharpen;->mInited:Z

    return-void
.end method

.method public setProperty(IIIIFFFI)I
    .registers 10

    .line 72
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/AdaptiveSharpen;->mInited:Z

    if-nez v0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 76
    :cond_6
    invoke-direct/range {p0 .. p8}, Lcom/bytedance/labcv/effectsdk/AdaptiveSharpen;->nativeSetProperty(IIIIFFFI)I

    move-result v0

    if-eqz v0, :cond_23

    .line 79
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "nativeSetProperty "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "bef_byteeffect_ai"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 82
    :cond_23
    iput p4, p0, Lcom/bytedance/labcv/effectsdk/AdaptiveSharpen;->mFrameHeight:I

    .line 83
    iput p3, p0, Lcom/bytedance/labcv/effectsdk/AdaptiveSharpen;->mFrameWidth:I

    .line 84
    iput p1, p0, Lcom/bytedance/labcv/effectsdk/AdaptiveSharpen;->mSceneMode:I

    .line 85
    iput p2, p0, Lcom/bytedance/labcv/effectsdk/AdaptiveSharpen;->mPowerLevel:I

    .line 86
    iput p5, p0, Lcom/bytedance/labcv/effectsdk/AdaptiveSharpen;->mAmount:F

    .line 87
    iput p6, p0, Lcom/bytedance/labcv/effectsdk/AdaptiveSharpen;->mOverRatio:F

    .line 88
    iput p7, p0, Lcom/bytedance/labcv/effectsdk/AdaptiveSharpen;->mEdgeWeightGamma:F

    .line 89
    iput p8, p0, Lcom/bytedance/labcv/effectsdk/AdaptiveSharpen;->mDiffImgSmoothEnable:I

    return v0
.end method

.method public setmAmount(F)V
    .registers 2

    .line 142
    iput p1, p0, Lcom/bytedance/labcv/effectsdk/AdaptiveSharpen;->mAmount:F

    return-void
.end method

.method public setmDiffImgSmoothEnable(I)V
    .registers 2

    .line 166
    iput p1, p0, Lcom/bytedance/labcv/effectsdk/AdaptiveSharpen;->mDiffImgSmoothEnable:I

    return-void
.end method

.method public setmEdgeWeightGamma(F)V
    .registers 2

    .line 158
    iput p1, p0, Lcom/bytedance/labcv/effectsdk/AdaptiveSharpen;->mEdgeWeightGamma:F

    return-void
.end method

.method public setmMaxHeight(I)V
    .registers 2

    .line 118
    iput p1, p0, Lcom/bytedance/labcv/effectsdk/AdaptiveSharpen;->mMaxHeight:I

    return-void
.end method

.method public setmMaxWidth(I)V
    .registers 2

    .line 110
    iput p1, p0, Lcom/bytedance/labcv/effectsdk/AdaptiveSharpen;->mMaxWidth:I

    return-void
.end method

.method public setmOverRatio(F)V
    .registers 2

    .line 150
    iput p1, p0, Lcom/bytedance/labcv/effectsdk/AdaptiveSharpen;->mOverRatio:F

    return-void
.end method

.method public setmPowerLevel(I)V
    .registers 2

    .line 134
    iput p1, p0, Lcom/bytedance/labcv/effectsdk/AdaptiveSharpen;->mPowerLevel:I

    return-void
.end method

.method public setmSceneMode(I)V
    .registers 2

    .line 126
    iput p1, p0, Lcom/bytedance/labcv/effectsdk/AdaptiveSharpen;->mSceneMode:I

    return-void
.end method
