.class public Lcom/bytedance/labcv/effectsdk/PetFaceDetect;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MAX_PET_FACE_NUM:I = 0xa


# instance fields
.field private volatile mInited:Z

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
    .registers 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/PetFaceDetect;->mInited:Z

    return-void
.end method

.method private native nativeCheckLicense(Landroid/content/Context;Ljava/lang/String;Z)I
.end method

.method private native nativeCreateHandle(Ljava/lang/String;JI)I
.end method

.method private native nativeDetect(Ljava/nio/ByteBuffer;IIIIILcom/bytedance/labcv/effectsdk/BefPetFaceInfo;)I
.end method

.method private native nativeRelease()V
.end method


# virtual methods
.method public detectFace(Ljava/nio/ByteBuffer;Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;IIILcom/bytedance/labcv/effectsdk/BytedEffectConstants$Rotation;)Lcom/bytedance/labcv/effectsdk/BefPetFaceInfo;
    .registers 16

    .line 71
    iget-boolean v1, p0, Lcom/bytedance/labcv/effectsdk/PetFaceDetect;->mInited:Z

    const/4 v8, 0x0

    if-nez v1, :cond_6

    return-object v8

    .line 74
    :cond_6
    new-instance v7, Lcom/bytedance/labcv/effectsdk/BefPetFaceInfo;

    invoke-direct {v7}, Lcom/bytedance/labcv/effectsdk/BefPetFaceInfo;-><init>()V

    .line 75
    invoke-virtual {p2}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;->getValue()I

    move-result v2

    iget v6, p6, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$Rotation;->id:I

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/labcv/effectsdk/PetFaceDetect;->nativeDetect(Ljava/nio/ByteBuffer;IIIIILcom/bytedance/labcv/effectsdk/BefPetFaceInfo;)I

    move-result v0

    if-eqz v0, :cond_33

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nativeDetect return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bef_byteeffect_ai"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    :cond_33
    return-object v7
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)I
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 54
    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/labcv/effectsdk/PetFaceDetect;->init(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Z)I
    .registers 8

    int-to-long v0, p3

    const/16 p3, 0xa

    .line 37
    invoke-direct {p0, p2, v0, v1, p3}, Lcom/bytedance/labcv/effectsdk/PetFaceDetect;->nativeCreateHandle(Ljava/lang/String;JI)I

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_d

    .line 39
    iput-boolean p3, p0, Lcom/bytedance/labcv/effectsdk/PetFaceDetect;->mInited:Z

    return p2

    .line 43
    :cond_d
    invoke-direct {p0, p1, p4, p5}, Lcom/bytedance/labcv/effectsdk/PetFaceDetect;->nativeCheckLicense(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p1

    if-eqz p1, :cond_16

    .line 45
    iput-boolean p3, p0, Lcom/bytedance/labcv/effectsdk/PetFaceDetect;->mInited:Z

    return p1

    :cond_16
    const/4 p2, 0x1

    .line 49
    iput-boolean p2, p0, Lcom/bytedance/labcv/effectsdk/PetFaceDetect;->mInited:Z

    return p1
.end method

.method public isInited()Z
    .registers 1

    .line 106
    iget-boolean p0, p0, Lcom/bytedance/labcv/effectsdk/PetFaceDetect;->mInited:Z

    return p0
.end method

.method public release()V
    .registers 2

    .line 89
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/PetFaceDetect;->mInited:Z

    if-eqz v0, :cond_7

    .line 90
    invoke-direct {p0}, Lcom/bytedance/labcv/effectsdk/PetFaceDetect;->nativeRelease()V

    :cond_7
    const/4 v0, 0x0

    .line 92
    iput-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/PetFaceDetect;->mInited:Z

    return-void
.end method
