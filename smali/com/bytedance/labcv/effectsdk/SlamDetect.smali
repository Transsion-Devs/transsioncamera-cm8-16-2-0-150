.class public Lcom/bytedance/labcv/effectsdk/SlamDetect;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private volatile mCreateSuc:Z

.field private volatile mInited:Z

.field private mNativePtr:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 19
    :try_start_0
    const-string v0, "byteeffect"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/SlamDetect;->mInited:Z

    .line 15
    iput-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/SlamDetect;->mCreateSuc:Z

    return-void
.end method

.method private native nativeChecklicense(Landroid/content/Context;Ljava/lang/String;Z)I
.end method

.method private native nativeDestroy()V
.end method

.method private native nativeDetect(Ljava/nio/ByteBuffer;IIIIIDLcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamClickFlag;)Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamPose;
.end method

.method private native nativeGetFeaturePoints()[Lcom/bytedance/labcv/effectsdk/BefSlamInfo$Points;
.end method

.method private native nativeGetIntrinsic(Ljava/lang/String;Ljava/lang/String;II)Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamCameraIntrinsic;
.end method

.method private native nativeGetPlane(Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamPose;ILcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamClickFlag;)Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamPlane;
.end method

.method private native nativeGetPlanePose(Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamPose;ILcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamClickFlag;)Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamPose;
.end method

.method private native nativeInit(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamCameraInfo;Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamImuInfo;I)I
.end method

.method private native nativeInitCameraInfo(Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamCameraInfo;)V
.end method

.method private native nativeResetStatues()I
.end method

.method private native nativeSetImuData(ILcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamImuData;)I
.end method

.method private native nativeSetRotationVector([DD)I
.end method

.method private native nativeSetVersion(I)I
.end method


# virtual methods
.method public checklicense(Landroid/content/Context;Ljava/lang/String;Z)I
    .registers 5

    .line 38
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/SlamDetect;->mCreateSuc:Z

    if-nez v0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 42
    :cond_6
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/labcv/effectsdk/SlamDetect;->nativeChecklicense(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p1

    if-eqz p1, :cond_10

    const/4 p2, 0x0

    .line 44
    iput-boolean p2, p0, Lcom/bytedance/labcv/effectsdk/SlamDetect;->mInited:Z

    return p1

    :cond_10
    const/4 p2, 0x1

    .line 46
    iput-boolean p2, p0, Lcom/bytedance/labcv/effectsdk/SlamDetect;->mInited:Z

    return p1
.end method

.method public destory()V
    .registers 2

    .line 111
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/SlamDetect;->mInited:Z

    if-nez v0, :cond_5

    return-void

    .line 112
    :cond_5
    invoke-direct {p0}, Lcom/bytedance/labcv/effectsdk/SlamDetect;->nativeDestroy()V

    return-void
.end method

.method public getCameraIntrinsic(Ljava/lang/String;Ljava/lang/String;II)Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamCameraIntrinsic;
    .registers 6

    .line 64
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/SlamDetect;->mInited:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 67
    :cond_6
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/labcv/effectsdk/SlamDetect;->nativeGetIntrinsic(Ljava/lang/String;Ljava/lang/String;II)Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamCameraIntrinsic;

    move-result-object p0

    return-object p0
.end method

.method public getFeaturePoints()[Lcom/bytedance/labcv/effectsdk/BefSlamInfo$Points;
    .registers 2

    .line 97
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/SlamDetect;->mInited:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 98
    :cond_6
    invoke-direct {p0}, Lcom/bytedance/labcv/effectsdk/SlamDetect;->nativeGetFeaturePoints()[Lcom/bytedance/labcv/effectsdk/BefSlamInfo$Points;

    move-result-object p0

    return-object p0
.end method

.method public getPlane(Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamPose;ILcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamClickFlag;)Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamPlane;
    .registers 6

    .line 85
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/SlamDetect;->mInited:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    if-nez p1, :cond_9

    return-object v1

    .line 87
    :cond_9
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/labcv/effectsdk/SlamDetect;->nativeGetPlane(Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamPose;ILcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamClickFlag;)Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamPlane;

    move-result-object p0

    return-object p0
.end method

.method public getPlanePose(Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamPose;ILcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamClickFlag;)Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamPose;
    .registers 6

    .line 91
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/SlamDetect;->mInited:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    if-nez p1, :cond_9

    return-object v1

    .line 93
    :cond_9
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/labcv/effectsdk/SlamDetect;->nativeGetPlanePose(Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamPose;ILcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamClickFlag;)Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamPose;

    move-result-object p0

    return-object p0
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamImuInfo;Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamCameraInfo;Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamVersion;)I
    .registers 7

    .line 27
    invoke-virtual {p5}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamVersion;->getValue()I

    move-result p5

    move-object v0, p4

    move-object p4, p3

    move-object p3, v0

    invoke-direct/range {p0 .. p5}, Lcom/bytedance/labcv/effectsdk/SlamDetect;->nativeInit(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamCameraInfo;Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamImuInfo;I)I

    move-result p1

    if-eqz p1, :cond_11

    const/4 p2, 0x0

    .line 29
    iput-boolean p2, p0, Lcom/bytedance/labcv/effectsdk/SlamDetect;->mCreateSuc:Z

    return p1

    :cond_11
    const/4 p2, 0x1

    .line 31
    iput-boolean p2, p0, Lcom/bytedance/labcv/effectsdk/SlamDetect;->mCreateSuc:Z

    return p1
.end method

.method public initCameraInfo(Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamCameraInfo;)V
    .registers 2

    .line 116
    invoke-direct {p0, p1}, Lcom/bytedance/labcv/effectsdk/SlamDetect;->nativeInitCameraInfo(Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamCameraInfo;)V

    return-void
.end method

.method public resetStatues()I
    .registers 2

    .line 107
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/SlamDetect;->mInited:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 108
    :cond_6
    invoke-direct {p0}, Lcom/bytedance/labcv/effectsdk/SlamDetect;->nativeResetStatues()I

    move-result p0

    return p0
.end method

.method public setImuData(Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamImuDataType;Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamImuData;)I
    .registers 4

    if-eqz p2, :cond_f

    .line 52
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/SlamDetect;->mInited:Z

    if-eqz v0, :cond_f

    .line 53
    invoke-virtual {p1}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamImuDataType;->getValue()I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/bytedance/labcv/effectsdk/SlamDetect;->nativeSetImuData(ILcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamImuData;)I

    move-result p0

    return p0

    :cond_f
    const/4 p0, -0x1

    return p0
.end method

.method public setRotationVector([DD)I
    .registers 5

    if-eqz p1, :cond_c

    .line 59
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/SlamDetect;->mInited:Z

    if-nez v0, :cond_7

    goto :goto_c

    .line 60
    :cond_7
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/labcv/effectsdk/SlamDetect;->nativeSetRotationVector([DD)I

    move-result p0

    return p0

    :cond_c
    :goto_c
    const/4 p0, -0x1

    return p0
.end method

.method public setVersion(Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamVersion;)I
    .registers 3

    .line 102
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/SlamDetect;->mInited:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 103
    :cond_6
    invoke-virtual {p1}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamVersion;->getValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/bytedance/labcv/effectsdk/SlamDetect;->nativeSetVersion(I)I

    move-result p0

    return p0
.end method

.method public slamDetect(Ljava/nio/ByteBuffer;IIIILcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamDeviceOrientation;DLcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamClickFlag;)Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamPose;
    .registers 12

    .line 76
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/SlamDetect;->mInited:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    if-nez p1, :cond_9

    return-object v1

    .line 81
    :cond_9
    invoke-virtual {p6}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$SlamDeviceOrientation;->getValue()I

    move-result p6

    invoke-direct/range {p0 .. p9}, Lcom/bytedance/labcv/effectsdk/SlamDetect;->nativeDetect(Ljava/nio/ByteBuffer;IIIIIDLcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamClickFlag;)Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamPose;

    move-result-object p0

    return-object p0
.end method
