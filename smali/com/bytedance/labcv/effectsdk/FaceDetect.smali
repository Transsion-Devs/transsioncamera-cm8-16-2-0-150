.class public Lcom/bytedance/labcv/effectsdk/FaceDetect;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MaxFaceNum:I = 0xa


# instance fields
.field private mAttriNativePtr:J

.field private mFaceAttriConfig:I

.field private mFaceDetectConfig:I

.field private volatile mInited:Z

.field private volatile mInitedAttri:Z

.field private volatile mInitedExtra:Z

.field private mNativePtr:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 41
    :try_start_0
    const-string v0, "byteeffect"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    .line 43
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/FaceDetect;->mInited:Z

    .line 25
    iput-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/FaceDetect;->mInitedExtra:Z

    .line 27
    iput-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/FaceDetect;->mInitedAttri:Z

    const/4 v0, -0x1

    .line 31
    iput v0, p0, Lcom/bytedance/labcv/effectsdk/FaceDetect;->mFaceDetectConfig:I

    .line 35
    iput v0, p0, Lcom/bytedance/labcv/effectsdk/FaceDetect;->mFaceAttriConfig:I

    return-void
.end method

.method private native nativeCheckLicense(Landroid/content/Context;Ljava/lang/String;Z)I
.end method

.method private native nativeDetect(Ljava/nio/ByteBuffer;IIIIIJLcom/bytedance/labcv/effectsdk/BefFaceInfo;)I
.end method

.method private native nativeGetFaceMask(JILcom/bytedance/labcv/effectsdk/BefFaceInfo;)I
.end method

.method private native nativeInit(ILjava/lang/String;)I
.end method

.method private native nativeInitAttri(ILjava/lang/String;Landroid/content/Context;Ljava/lang/String;Z)I
.end method

.method private native nativeInitExtra(ILjava/lang/String;)I
.end method

.method private native nativeRelease()V
.end method

.method private native nativeReleaseAttri()V
.end method

.method private native nativeSetParam(II)I
.end method


# virtual methods
.method public detectFace(Ljava/nio/ByteBuffer;Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;IIILcom/bytedance/labcv/effectsdk/BytedEffectConstants$Rotation;)Lcom/bytedance/labcv/effectsdk/BefFaceInfo;
    .registers 19

    .line 227
    iget-boolean v1, p0, Lcom/bytedance/labcv/effectsdk/FaceDetect;->mInited:Z

    const/4 v10, 0x0

    if-nez v1, :cond_6

    return-object v10

    .line 231
    :cond_6
    iget v1, p0, Lcom/bytedance/labcv/effectsdk/FaceDetect;->mFaceDetectConfig:I

    const/4 v2, -0x1

    const-string v11, "bef_byteeffect_ai"

    if-ne v1, v2, :cond_13

    .line 232
    const-string v0, "Need call setFaceDetectConfig before calling current function"

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    .line 236
    :cond_13
    new-instance v9, Lcom/bytedance/labcv/effectsdk/BefFaceInfo;

    invoke-direct {v9}, Lcom/bytedance/labcv/effectsdk/BefFaceInfo;-><init>()V

    .line 238
    invoke-virtual {p2}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;->getValue()I

    move-result v2

    move-object/from16 v1, p6

    iget v6, v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$Rotation;->id:I

    iget v1, p0, Lcom/bytedance/labcv/effectsdk/FaceDetect;->mFaceDetectConfig:I

    int-to-long v7, v1

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v9}, Lcom/bytedance/labcv/effectsdk/FaceDetect;->nativeDetect(Ljava/nio/ByteBuffer;IIIIIJLcom/bytedance/labcv/effectsdk/BefFaceInfo;)I

    move-result v0

    if-eqz v0, :cond_45

    .line 241
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

.method public getFaceAttriConfig()I
    .registers 1

    .line 164
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/FaceDetect;->mFaceAttriConfig:I

    return p0
.end method

.method public getFaceDetectConfig()I
    .registers 1

    .line 173
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/FaceDetect;->mFaceDetectConfig:I

    return p0
.end method

.method public getFaceMask(Lcom/bytedance/labcv/effectsdk/BefFaceInfo;I)V
    .registers 5

    .line 257
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/FaceDetect;->mInited:Z

    if-eqz v0, :cond_26

    if-nez p1, :cond_7

    goto :goto_26

    .line 261
    :cond_7
    iget v0, p0, Lcom/bytedance/labcv/effectsdk/FaceDetect;->mFaceDetectConfig:I

    int-to-long v0, v0

    invoke-direct {p0, v0, v1, p2, p1}, Lcom/bytedance/labcv/effectsdk/FaceDetect;->nativeGetFaceMask(JILcom/bytedance/labcv/effectsdk/BefFaceInfo;)I

    move-result p0

    if-eqz p0, :cond_26

    .line 263
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "nativeGetFaceMask return "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "bef_byteeffect_ai"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    :goto_26
    return-void
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)I
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 91
    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/labcv/effectsdk/FaceDetect;->init(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Z)I
    .registers 6

    .line 64
    invoke-direct {p0, p3, p2}, Lcom/bytedance/labcv/effectsdk/FaceDetect;->nativeInit(ILjava/lang/String;)I

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_a

    .line 66
    iput-boolean p3, p0, Lcom/bytedance/labcv/effectsdk/FaceDetect;->mInited:Z

    return p2

    :cond_a
    if-eqz p2, :cond_e

    .line 71
    iput-boolean p3, p0, Lcom/bytedance/labcv/effectsdk/FaceDetect;->mInited:Z

    .line 74
    :cond_e
    invoke-direct {p0, p1, p4, p5}, Lcom/bytedance/labcv/effectsdk/FaceDetect;->nativeCheckLicense(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p1

    if-eqz p1, :cond_17

    .line 76
    iput-boolean p3, p0, Lcom/bytedance/labcv/effectsdk/FaceDetect;->mInited:Z

    return p1

    :cond_17
    const/4 p1, 0x2

    const/16 p2, 0xa

    .line 80
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/labcv/effectsdk/FaceDetect;->setDetectParam(II)I

    move-result p1

    if-eqz p1, :cond_23

    .line 82
    iput-boolean p3, p0, Lcom/bytedance/labcv/effectsdk/FaceDetect;->mInited:Z

    return p1

    :cond_23
    const/4 p2, 0x1

    .line 85
    iput-boolean p2, p0, Lcom/bytedance/labcv/effectsdk/FaceDetect;->mInited:Z

    return p1
.end method

.method public initAttri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x0

    .line 145
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/bytedance/labcv/effectsdk/FaceDetect;->initAttri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public initAttri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 12

    .line 125
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/FaceDetect;->mInited:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    goto :goto_7

    :cond_6
    const/4 v0, -0x1

    :goto_7
    if-nez v0, :cond_14

    const/4 v2, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v3, p2

    move-object v5, p3

    move v6, p4

    .line 129
    invoke-direct/range {v1 .. v6}, Lcom/bytedance/labcv/effectsdk/FaceDetect;->nativeInitAttri(ILjava/lang/String;Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v0

    goto :goto_15

    :cond_14
    move-object v1, p0

    :goto_15
    const/4 p0, 0x1

    .line 131
    iput-boolean p0, v1, Lcom/bytedance/labcv/effectsdk/FaceDetect;->mInitedAttri:Z

    return v0
.end method

.method public initExtra(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 4

    .line 113
    iget-boolean p1, p0, Lcom/bytedance/labcv/effectsdk/FaceDetect;->mInited:Z

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    goto :goto_7

    :cond_6
    const/4 p1, -0x1

    :goto_7
    if-nez p1, :cond_d

    .line 116
    invoke-direct {p0, p3, p2}, Lcom/bytedance/labcv/effectsdk/FaceDetect;->nativeInitExtra(ILjava/lang/String;)I

    move-result p1

    :cond_d
    const/4 p2, 0x1

    .line 118
    iput-boolean p2, p0, Lcom/bytedance/labcv/effectsdk/FaceDetect;->mInitedExtra:Z

    return p1
.end method

.method public isInited()Z
    .registers 1

    .line 193
    iget-boolean p0, p0, Lcom/bytedance/labcv/effectsdk/FaceDetect;->mInited:Z

    return p0
.end method

.method public isInitedAttri()Z
    .registers 1

    .line 212
    iget-boolean p0, p0, Lcom/bytedance/labcv/effectsdk/FaceDetect;->mInitedAttri:Z

    return p0
.end method

.method public isInitedExtra()Z
    .registers 1

    .line 203
    iget-boolean p0, p0, Lcom/bytedance/labcv/effectsdk/FaceDetect;->mInitedExtra:Z

    return p0
.end method

.method public release()V
    .registers 2

    .line 273
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/FaceDetect;->mInited:Z

    if-eqz v0, :cond_7

    .line 274
    invoke-direct {p0}, Lcom/bytedance/labcv/effectsdk/FaceDetect;->nativeRelease()V

    .line 276
    :cond_7
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/FaceDetect;->mInitedAttri:Z

    if-eqz v0, :cond_e

    .line 278
    invoke-direct {p0}, Lcom/bytedance/labcv/effectsdk/FaceDetect;->nativeReleaseAttri()V

    :cond_e
    const/4 v0, 0x0

    .line 280
    iput-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/FaceDetect;->mInited:Z

    .line 281
    iput-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/FaceDetect;->mInitedExtra:Z

    .line 282
    iput-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/FaceDetect;->mInitedAttri:Z

    return-void
.end method

.method public releaseAttri()V
    .registers 2

    .line 286
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/FaceDetect;->mInitedAttri:Z

    if-eqz v0, :cond_7

    .line 287
    invoke-direct {p0}, Lcom/bytedance/labcv/effectsdk/FaceDetect;->nativeReleaseAttri()V

    :cond_7
    const/4 v0, 0x0

    .line 289
    iput-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/FaceDetect;->mInitedAttri:Z

    return-void
.end method

.method public setAttriDetectConfig(I)V
    .registers 2

    .line 155
    iput p1, p0, Lcom/bytedance/labcv/effectsdk/FaceDetect;->mFaceAttriConfig:I

    return-void
.end method

.method public setDetectParam(II)I
    .registers 3

    .line 301
    invoke-direct {p0, p1, p2}, Lcom/bytedance/labcv/effectsdk/FaceDetect;->nativeSetParam(II)I

    move-result p0

    return p0
.end method

.method public setFaceDetectConfig(I)V
    .registers 2

    .line 183
    iput p1, p0, Lcom/bytedance/labcv/effectsdk/FaceDetect;->mFaceDetectConfig:I

    return-void
.end method
