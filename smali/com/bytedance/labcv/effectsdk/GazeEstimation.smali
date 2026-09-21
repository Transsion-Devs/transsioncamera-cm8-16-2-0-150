.class public Lcom/bytedance/labcv/effectsdk/GazeEstimation;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mInited:Z

.field private mNativePtr:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 14
    :try_start_0
    const-string v0, "byteeffect"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native nativeCreate(Ljava/lang/String;Z)I
.end method

.method private native nativeDetect(Ljava/nio/ByteBuffer;IIIIILcom/bytedance/labcv/effectsdk/BefFaceInfo;FLcom/bytedance/labcv/effectsdk/BefGazeEstimationInfo;)I
.end method

.method private native nativeRelease()I
.end method

.method private native nativeSetModel(ILjava/lang/String;)I
.end method

.method private native nativeSetParam(IF)I
.end method


# virtual methods
.method public detect(Ljava/nio/ByteBuffer;Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;IIILcom/bytedance/labcv/effectsdk/BytedEffectConstants$Rotation;Lcom/bytedance/labcv/effectsdk/BefFaceInfo;F)Lcom/bytedance/labcv/effectsdk/BefGazeEstimationInfo;
    .registers 20

    .line 46
    iget-boolean v1, p0, Lcom/bytedance/labcv/effectsdk/GazeEstimation;->mInited:Z

    const/4 v10, 0x0

    if-nez v1, :cond_6

    return-object v10

    .line 47
    :cond_6
    new-instance v9, Lcom/bytedance/labcv/effectsdk/BefGazeEstimationInfo;

    invoke-direct {v9}, Lcom/bytedance/labcv/effectsdk/BefGazeEstimationInfo;-><init>()V

    .line 48
    invoke-virtual {p2}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;->getValue()I

    move-result v2

    move-object/from16 v1, p6

    iget v6, v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$Rotation;->id:I

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/bytedance/labcv/effectsdk/GazeEstimation;->nativeDetect(Ljava/nio/ByteBuffer;IIIIILcom/bytedance/labcv/effectsdk/BefFaceInfo;FLcom/bytedance/labcv/effectsdk/BefGazeEstimationInfo;)I

    move-result v0

    if-eqz v0, :cond_3a

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "native detect return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bef_byteeffect_ai"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    :cond_3a
    return-object v9
.end method

.method public init(Ljava/lang/String;)I
    .registers 3

    const/4 v0, 0x0

    .line 34
    invoke-virtual {p0, p1, v0}, Lcom/bytedance/labcv/effectsdk/GazeEstimation;->init(Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public init(Ljava/lang/String;Z)I
    .registers 3

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/bytedance/labcv/effectsdk/GazeEstimation;->nativeCreate(Ljava/lang/String;Z)I

    move-result p1

    if-eqz p1, :cond_a

    const/4 p2, 0x0

    .line 26
    iput-boolean p2, p0, Lcom/bytedance/labcv/effectsdk/GazeEstimation;->mInited:Z

    return p1

    :cond_a
    const/4 p2, 0x1

    .line 29
    iput-boolean p2, p0, Lcom/bytedance/labcv/effectsdk/GazeEstimation;->mInited:Z

    return p1
.end method

.method public isInited()Z
    .registers 1

    .line 64
    iget-boolean p0, p0, Lcom/bytedance/labcv/effectsdk/GazeEstimation;->mInited:Z

    return p0
.end method

.method public release()V
    .registers 2

    .line 57
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/GazeEstimation;->mInited:Z

    if-eqz v0, :cond_7

    .line 58
    invoke-direct {p0}, Lcom/bytedance/labcv/effectsdk/GazeEstimation;->nativeRelease()I

    :cond_7
    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/GazeEstimation;->mInited:Z

    return-void
.end method

.method public setModel(Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GazeEstimationModelType;Ljava/lang/String;)I
    .registers 3

    .line 38
    invoke-virtual {p1}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GazeEstimationModelType;->getValue()I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/bytedance/labcv/effectsdk/GazeEstimation;->nativeSetModel(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setParam(Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GazeEstimationParamType;F)I
    .registers 3

    .line 42
    invoke-virtual {p1}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GazeEstimationParamType;->getValue()I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/bytedance/labcv/effectsdk/GazeEstimation;->nativeSetParam(IF)I

    move-result p0

    return p0
.end method
