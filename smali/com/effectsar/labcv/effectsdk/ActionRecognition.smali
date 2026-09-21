.class public Lcom/effectsar/labcv/effectsdk/ActionRecognition;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mInited:Z

.field private mNativePtr:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 16
    :try_start_0
    const-string v0, "effect"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native nDestroy()I
.end method

.method private native nDetect(Ljava/nio/ByteBuffer;IIIIIILcom/effectsar/labcv/effectsdk/BefActionRecognitionInfo;)I
.end method

.method private native nDetectPose(Ljava/nio/ByteBuffer;IIIIIILcom/effectsar/labcv/effectsdk/BefActionRecognitionInfo$PoseDetectResult;)I
.end method

.method private native nInit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)I
.end method

.method private native nSetTemplate(Ljava/lang/String;)I
.end method

.method private native nSetTemplateThreshold(F)I
.end method


# virtual methods
.method public destroy()V
    .registers 2

    .line 90
    iget-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/ActionRecognition;->mInited:Z

    if-eqz v0, :cond_7

    .line 91
    invoke-direct {p0}, Lcom/effectsar/labcv/effectsdk/ActionRecognition;->nDestroy()I

    :cond_7
    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/ActionRecognition;->mInited:Z

    return-void
.end method

.method public detect(Ljava/nio/ByteBuffer;Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$PixlFormat;IIILcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$Rotation;I)Lcom/effectsar/labcv/effectsdk/BefActionRecognitionInfo;
    .registers 18

    .line 77
    iget-boolean v1, p0, Lcom/effectsar/labcv/effectsdk/ActionRecognition;->mInited:Z

    const/4 v9, 0x0

    if-nez v1, :cond_6

    return-object v9

    .line 81
    :cond_6
    new-instance v8, Lcom/effectsar/labcv/effectsdk/BefActionRecognitionInfo;

    invoke-direct {v8}, Lcom/effectsar/labcv/effectsdk/BefActionRecognitionInfo;-><init>()V

    .line 82
    invoke-virtual {p2}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$PixlFormat;->getValue()I

    move-result v2

    move-object/from16 v1, p6

    iget v6, v1, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$Rotation;->id:I

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/effectsar/labcv/effectsdk/ActionRecognition;->nDetect(Ljava/nio/ByteBuffer;IIIIIILcom/effectsar/labcv/effectsdk/BefActionRecognitionInfo;)I

    move-result v0

    if-eqz v0, :cond_21

    return-object v9

    :cond_21
    return-object v8
.end method

.method public detectPose(Ljava/nio/ByteBuffer;Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$PixlFormat;IIILcom/effectsar/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$Rotation;)Lcom/effectsar/labcv/effectsdk/BefActionRecognitionInfo$PoseDetectResult;
    .registers 18

    .line 60
    iget-boolean v1, p0, Lcom/effectsar/labcv/effectsdk/ActionRecognition;->mInited:Z

    const/4 v9, 0x0

    if-nez v1, :cond_6

    return-object v9

    .line 63
    :cond_6
    new-instance v8, Lcom/effectsar/labcv/effectsdk/BefActionRecognitionInfo$PoseDetectResult;

    invoke-direct {v8}, Lcom/effectsar/labcv/effectsdk/BefActionRecognitionInfo$PoseDetectResult;-><init>()V

    .line 64
    invoke-virtual {p2}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$PixlFormat;->getValue()I

    move-result v2

    move-object/from16 v1, p7

    iget v6, v1, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$Rotation;->id:I

    move-object/from16 v1, p6

    iget v7, v1, Lcom/effectsar/labcv/effectsdk/BefActionRecognitionInfo$ActionRecognitionPoseType;->id:I

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v8}, Lcom/effectsar/labcv/effectsdk/ActionRecognition;->nDetectPose(Ljava/nio/ByteBuffer;IIIIIILcom/effectsar/labcv/effectsdk/BefActionRecognitionInfo$PoseDetectResult;)I

    move-result v0

    if-eqz v0, :cond_23

    return-object v9

    :cond_23
    return-object v8
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x0

    .line 36
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/effectsar/labcv/effectsdk/ActionRecognition;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 5

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/effectsar/labcv/effectsdk/ActionRecognition;->nInit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p1

    if-eqz p1, :cond_a

    const/4 p2, 0x0

    .line 28
    iput-boolean p2, p0, Lcom/effectsar/labcv/effectsdk/ActionRecognition;->mInited:Z

    return p1

    :cond_a
    const/4 p2, 0x1

    .line 31
    iput-boolean p2, p0, Lcom/effectsar/labcv/effectsdk/ActionRecognition;->mInited:Z

    return p1
.end method

.method public setTemplate(Ljava/lang/String;)I
    .registers 3

    .line 41
    iget-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/ActionRecognition;->mInited:Z

    if-nez v0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 44
    :cond_6
    invoke-direct {p0, p1}, Lcom/effectsar/labcv/effectsdk/ActionRecognition;->nSetTemplate(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setThreshold(F)I
    .registers 3

    .line 48
    iget-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/ActionRecognition;->mInited:Z

    if-nez v0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 51
    :cond_6
    invoke-direct {p0, p1}, Lcom/effectsar/labcv/effectsdk/ActionRecognition;->nSetTemplateThreshold(F)I

    move-result p0

    return p0
.end method
