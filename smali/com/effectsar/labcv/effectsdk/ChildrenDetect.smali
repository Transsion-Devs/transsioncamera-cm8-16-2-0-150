.class public Lcom/effectsar/labcv/effectsdk/ChildrenDetect;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mFaceDetectConfig:I

.field private volatile mInited:Z

.field private mNativePtr:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

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
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/ChildrenDetect;->mInited:Z

    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lcom/effectsar/labcv/effectsdk/ChildrenDetect;->mFaceDetectConfig:I

    return-void
.end method

.method private native nativeDetect(Ljava/nio/ByteBuffer;IIIIIJLcom/effectsar/labcv/effectsdk/BefChildrenInfo;)I
.end method

.method private native nativeInit(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)I
.end method

.method private native nativeInitExtraModel(ILjava/lang/String;)I
.end method

.method private native nativeRelease()V
.end method

.method private native nativeSetParam(IF)I
.end method


# virtual methods
.method public detectChildren(Ljava/nio/ByteBuffer;Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$PixlFormat;IIILcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$Rotation;)Lcom/effectsar/labcv/effectsdk/BefChildrenInfo;
    .registers 19

    .line 125
    iget-boolean v1, p0, Lcom/effectsar/labcv/effectsdk/ChildrenDetect;->mInited:Z

    const/4 v10, 0x0

    if-nez v1, :cond_6

    return-object v10

    .line 129
    :cond_6
    iget v1, p0, Lcom/effectsar/labcv/effectsdk/ChildrenDetect;->mFaceDetectConfig:I

    const/4 v2, -0x1

    const-string v11, "bef_effect_ai"

    if-ne v1, v2, :cond_13

    .line 130
    const-string v0, "Need call setFaceDetectConfig before calling current function"

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    .line 134
    :cond_13
    new-instance v9, Lcom/effectsar/labcv/effectsdk/BefChildrenInfo;

    invoke-direct {v9}, Lcom/effectsar/labcv/effectsdk/BefChildrenInfo;-><init>()V

    .line 136
    invoke-virtual {p2}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$PixlFormat;->getValue()I

    move-result v2

    move-object/from16 v1, p6

    iget v6, v1, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$Rotation;->id:I

    iget v1, p0, Lcom/effectsar/labcv/effectsdk/ChildrenDetect;->mFaceDetectConfig:I

    int-to-long v7, v1

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v9}, Lcom/effectsar/labcv/effectsdk/ChildrenDetect;->nativeDetect(Ljava/nio/ByteBuffer;IIIIIJLcom/effectsar/labcv/effectsdk/BefChildrenInfo;)I

    move-result v0

    if-eqz v0, :cond_45

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nativeDetect return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    :cond_45
    return-object v9
.end method

.method public getFaceDetectConfig()I
    .registers 1

    .line 89
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/ChildrenDetect;->mFaceDetectConfig:I

    return p0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)I
    .registers 14

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v2, p5

    move-object v4, p6

    move v5, p7

    .line 46
    invoke-direct/range {v0 .. v5}, Lcom/effectsar/labcv/effectsdk/ChildrenDetect;->nativeInit(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)I

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_10

    .line 48
    iput-boolean p1, v0, Lcom/effectsar/labcv/effectsdk/ChildrenDetect;->mInited:Z

    return p0

    :cond_10
    if-eqz p3, :cond_26

    .line 52
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_26

    .line 53
    sget-object p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChildrenModelType;->BEF_CHILDREN_MODEL_FACEATTRI:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChildrenModelType;

    invoke-virtual {v0, p0, p3}, Lcom/effectsar/labcv/effectsdk/ChildrenDetect;->initExtraModel(Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChildrenModelType;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_26

    .line 55
    invoke-virtual {v0}, Lcom/effectsar/labcv/effectsdk/ChildrenDetect;->release()V

    .line 56
    iput-boolean p1, v0, Lcom/effectsar/labcv/effectsdk/ChildrenDetect;->mInited:Z

    return p0

    :cond_26
    if-eqz p4, :cond_59

    .line 61
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_59

    .line 62
    sget-object p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChildrenParamType;->BEF_CHILDREN_HALFBODY_INTERVAL:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChildrenParamType;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {v0, p0, p2}, Lcom/effectsar/labcv/effectsdk/ChildrenDetect;->setDetectParam(Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChildrenParamType;F)I

    .line 63
    sget-object p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChildrenParamType;->BEF_CHILDREN_HALFBODY_MODEL_LEN:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChildrenParamType;

    const/high16 p2, 0x43400000    # 192.0f

    invoke-virtual {v0, p0, p2}, Lcom/effectsar/labcv/effectsdk/ChildrenDetect;->setDetectParam(Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChildrenParamType;F)I

    .line 64
    sget-object p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChildrenParamType;->BEF_CHILDREN_HALFBODY_THRESHOLDL:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChildrenParamType;

    const p2, 0x3f333333    # 0.7f

    invoke-virtual {v0, p0, p2}, Lcom/effectsar/labcv/effectsdk/ChildrenDetect;->setDetectParam(Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChildrenParamType;F)I

    .line 65
    sget-object p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChildrenParamType;->BEF_CHILDREN_ATTR_MODEL_LEN:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChildrenParamType;

    const/high16 p2, 0x43600000    # 224.0f

    invoke-virtual {v0, p0, p2}, Lcom/effectsar/labcv/effectsdk/ChildrenDetect;->setDetectParam(Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChildrenParamType;F)I

    .line 66
    sget-object p0, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChildrenModelType;->BEF_CHILDREN_MODEL_HALFBODY:Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChildrenModelType;

    invoke-virtual {v0, p0, p4}, Lcom/effectsar/labcv/effectsdk/ChildrenDetect;->initExtraModel(Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChildrenModelType;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_59

    .line 68
    invoke-virtual {v0}, Lcom/effectsar/labcv/effectsdk/ChildrenDetect;->release()V

    .line 69
    iput-boolean p1, v0, Lcom/effectsar/labcv/effectsdk/ChildrenDetect;->mInited:Z

    return p0

    :cond_59
    const/4 p1, 0x1

    .line 74
    iput-boolean p1, v0, Lcom/effectsar/labcv/effectsdk/ChildrenDetect;->mInited:Z

    return p0
.end method

.method public initExtraModel(Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChildrenModelType;Ljava/lang/String;)I
    .registers 3

    .line 80
    invoke-virtual {p1}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChildrenModelType;->getValue()I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/effectsar/labcv/effectsdk/ChildrenDetect;->nativeInitExtraModel(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public isInited()Z
    .registers 1

    .line 109
    iget-boolean p0, p0, Lcom/effectsar/labcv/effectsdk/ChildrenDetect;->mInited:Z

    return p0
.end method

.method public release()V
    .registers 2

    .line 150
    iget-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/ChildrenDetect;->mInited:Z

    if-eqz v0, :cond_7

    .line 151
    invoke-direct {p0}, Lcom/effectsar/labcv/effectsdk/ChildrenDetect;->nativeRelease()V

    :cond_7
    const/4 v0, 0x0

    .line 153
    iput-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/ChildrenDetect;->mInited:Z

    return-void
.end method

.method public setDetectParam(Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChildrenParamType;F)I
    .registers 3

    .line 165
    invoke-virtual {p1}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$ChildrenParamType;->getValue()I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/effectsar/labcv/effectsdk/ChildrenDetect;->nativeSetParam(IF)I

    move-result p0

    return p0
.end method

.method public setFaceDetectConfig(I)V
    .registers 2

    .line 99
    iput p1, p0, Lcom/effectsar/labcv/effectsdk/ChildrenDetect;->mFaceDetectConfig:I

    return-void
.end method
