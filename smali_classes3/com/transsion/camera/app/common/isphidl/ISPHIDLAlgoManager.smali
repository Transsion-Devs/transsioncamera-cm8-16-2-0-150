.class public Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static sInstance:Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;


# instance fields
.field private TAPS_CAPTURE_INPUT_COUNT:Ljava/lang/Integer;

.field private m2XRemosaicAvailable:Z

.field private m2XRemosaicISOTh:I

.field private mAiRawLiteAsdModeBv:I

.field private mAiRawLiteMemLimit:I

.field private mFrontIspHidlRemoaicISO:I

.field private mIspHidlArcMFNRSupport:Z

.field private mIspHidlHDRSupport:Z

.field private mIspHidlMFNRSupport:Z

.field private mIspHidlRemoaicISO:I

.field private mLongFocusIspHidlRemoaicISO:I

.field private mSkipFlag:Z

.field private mWideIspHidlRemoaicISO:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 33
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ISPHIDLAlgoManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x0

    .line 35
    sput-object v0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;->sInstance:Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 34
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;->TAPS_CAPTURE_INPUT_COUNT:Ljava/lang/Integer;

    .line 55
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIspHidlRemosaicISOWide:I

    iput v0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;->mWideIspHidlRemoaicISO:I

    .line 56
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIspHidlRemosaicISOLongFocus:I

    iput v0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;->mLongFocusIspHidlRemoaicISO:I

    .line 57
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIspHidlRemosaicISOFront:I

    iput v0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;->mFrontIspHidlRemoaicISO:I

    .line 58
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIspHidlRemosaicISO:I

    iput v0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;->mIspHidlRemoaicISO:I

    .line 59
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAiRawLiteMemLimit:I

    iput v0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;->mAiRawLiteMemLimit:I

    .line 60
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAiRawLiteAsdModeBv:I

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->getAiRAwLiteBvDebug(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;->mAiRawLiteAsdModeBv:I

    .line 61
    sget-object v0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAiRawLiteAsdModeBv = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;->mAiRawLiteAsdModeBv:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoom2XRemosaicISO:I

    iput v1, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;->m2XRemosaicISOTh:I

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2XRemosaicTh: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;->m2XRemosaicISOTh:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIspHidlHDRSupport:Z

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;->mIspHidlHDRSupport:Z

    .line 65
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIspHidlMFNRSupport:Z

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;->mIspHidlMFNRSupport:Z

    .line 66
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIspHidlArcMFNRSupport:Z

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;->mIspHidlArcMFNRSupport:Z

    return-void
.end method

.method public static createInstance()V
    .registers 1

    .line 50
    sget-object v0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;->sInstance:Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;

    if-nez v0, :cond_b

    .line 51
    new-instance v0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;->sInstance:Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;

    :cond_b
    return-void
.end method

.method public static getInstance()Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;
    .registers 1

    .line 69
    sget-object v0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;->sInstance:Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;

    if-nez v0, :cond_9

    new-instance v0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;-><init>()V

    :cond_9
    return-object v0
.end method


# virtual methods
.method public configAlgo(Lcom/transsion/camera/adapter/CameraParameters;[[I[ILandroid/hardware/camera2/CaptureResult;I)V
    .registers 44

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    const/4 v3, 0x5

    .line 170
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x4

    .line 168
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    if-nez v2, :cond_17

    .line 78
    invoke-virtual {v1, v7}, Lcom/transsion/camera/adapter/CameraParameters;->setPostAlgoType(I)V

    return-void

    .line 81
    :cond_17
    aget-object v8, p2, v7

    const/4 v9, 0x1

    .line 82
    aget-object v10, p2, v9

    const/4 v11, 0x2

    .line 83
    aget-object v12, p2, v11

    const/4 v13, 0x3

    .line 84
    aget-object v14, p2, v13

    .line 85
    aget-object v15, p2, v5

    move/from16 v16, v13

    .line 86
    invoke-virtual {v0, v8}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;->isValidAeExpoInfo([I)Z

    move-result v13

    .line 87
    invoke-virtual {v0, v10}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;->isValidAeExpoInfo([I)Z

    move-result v17

    if-eqz v17, :cond_36

    iget-boolean v3, v0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;->mIspHidlHDRSupport:Z

    if-eqz v3, :cond_36

    move v3, v9

    goto :goto_37

    :cond_36
    move v3, v7

    .line 88
    :goto_37
    invoke-virtual {v0, v12}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;->isValidAeExpoInfo([I)Z

    move-result v18

    if-eqz v18, :cond_43

    iget-boolean v11, v0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;->mIspHidlMFNRSupport:Z

    if-eqz v11, :cond_43

    move v11, v9

    goto :goto_44

    :cond_43
    move v11, v7

    .line 89
    :goto_44
    invoke-virtual {v0, v14}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;->isValidAeExpoInfo([I)Z

    move-result v19

    if-eqz v19, :cond_56

    invoke-static {}, Lcom/transsion/camera/utils/CameraUtil;->getRam()I

    move-result v5

    move/from16 v20, v7

    const/16 v7, 0x67

    if-gt v5, v7, :cond_58

    move v5, v9

    goto :goto_5a

    :cond_56
    move/from16 v20, v7

    :cond_58
    move/from16 v5, v20

    .line 90
    :goto_5a
    invoke-virtual {v0, v15}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;->isValidAeExpoInfo([I)Z

    move-result v7

    if-eqz v7, :cond_66

    iget-boolean v7, v0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;->mIspHidlArcMFNRSupport:Z

    if-eqz v7, :cond_66

    move v7, v9

    goto :goto_68

    :cond_66
    move/from16 v7, v20

    .line 92
    :goto_68
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters;->getAIRawMode()I

    move-result v9

    if-eqz v13, :cond_75

    .line 93
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters;->getRawScene()I

    move-result v22

    :goto_72
    move/from16 p2, v7

    goto :goto_78

    :cond_75
    move/from16 v22, v20

    goto :goto_72

    .line 94
    :goto_78
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters;->getZoomRatio()I

    move-result v7

    move/from16 v23, v5

    .line 95
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters;->getSkipMultCapture()Z

    move-result v5

    move/from16 v24, v5

    .line 96
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters;->getLivePhotoMode()I

    move-result v5

    move/from16 v25, v11

    const/4 v11, 0x1

    if-ne v5, v11, :cond_8f

    const/4 v11, 0x1

    goto :goto_91

    :cond_8f
    move/from16 v11, v20

    .line 97
    :goto_91
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionHDR()I

    move-result v5

    if-gtz v5, :cond_a1

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionLowLightMode()I

    move-result v5

    if-lez v5, :cond_9e

    goto :goto_a1

    :cond_9e
    move/from16 v5, v20

    goto :goto_a2

    :cond_a1
    :goto_a1
    const/4 v5, 0x1

    :goto_a2
    if-eqz v3, :cond_ac

    if-nez v24, :cond_ac

    if-nez v11, :cond_ac

    if-eqz v5, :cond_ac

    const/4 v5, 0x1

    goto :goto_ae

    :cond_ac
    move/from16 v5, v20

    :goto_ae
    if-eqz v25, :cond_b7

    if-nez v11, :cond_b7

    .line 99
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters;->getMiddleNightMode()I

    move-result v26

    goto :goto_b9

    :cond_b7
    move/from16 v26, v20

    :goto_b9
    if-eqz p2, :cond_c8

    if-nez v11, :cond_c8

    .line 100
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionNightMode()I

    move-result v27

    move/from16 p2, v5

    move/from16 v5, v27

    :goto_c5
    move/from16 v27, v11

    goto :goto_cd

    :cond_c8
    move/from16 p2, v5

    move/from16 v5, v20

    goto :goto_c5

    .line 101
    :goto_cd
    const-string v11, ""

    if-eqz v23, :cond_de

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters;->getSuperNightAlgoType()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v29, v28

    move/from16 v28, v3

    move-object/from16 v3, v29

    :goto_db
    move/from16 v29, v13

    goto :goto_e2

    :cond_de
    move/from16 v28, v3

    move-object v3, v11

    goto :goto_db

    .line 102
    :goto_e2
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters;->getBestMomentDetectMode()I

    move-result v13

    .line 103
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters;->getMotionCaptureMode()I

    move-result v30

    move/from16 v31, v5

    .line 104
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v32, v4

    const/16 v21, 0x1

    aget v4, p3, v21

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v7}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;->getRemosaicLimitISO(Ljava/lang/String;I)I

    move-result v4

    .line 105
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters;->get2XRemosaicMode()Z

    move-result v5

    .line 106
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters;->getSuperDefinitionMode()I

    move-result v7

    move/from16 v11, v21

    if-eq v7, v11, :cond_113

    if-eqz v5, :cond_129

    :cond_113
    sget-object v5, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    .line 107
    invoke-virtual {v2, v5}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v5, v4, :cond_129

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionHDR()I

    move-result v5

    if-eq v5, v11, :cond_129

    move v5, v11

    goto :goto_12b

    :cond_129
    move/from16 v5, v20

    .line 108
    :goto_12b
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v7

    iget-boolean v7, v7, Lcom/transsion/camera/utils/CustomConfigUtil;->mPostAlgoStreamIdSupport:Z

    if-nez v7, :cond_13f

    aget v7, p3, v20

    move/from16 v21, v11

    aget v11, p3, v21

    if-eq v7, v11, :cond_13f

    if-eqz v11, :cond_13f

    const/4 v7, 0x1

    goto :goto_141

    :cond_13f
    move/from16 v7, v20

    .line 110
    :goto_141
    invoke-static {}, Lcom/transsion/camera/utils/MemoryUtils;->getAvailableMemory()J

    move-result-wide v33

    iget v11, v0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;->mAiRawLiteMemLimit:I

    move/from16 v35, v4

    move/from16 v36, v5

    int-to-long v4, v11

    cmp-long v4, v33, v4

    if-gtz v4, :cond_164

    .line 111
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v4

    iget-boolean v4, v4, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportBackgroundShot2shot:Z

    if-eqz v4, :cond_161

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v4

    iget-boolean v4, v4, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportDeferSystem:Z

    if-eqz v4, :cond_161

    goto :goto_164

    :cond_161
    move/from16 v11, v20

    goto :goto_165

    :cond_164
    :goto_164
    const/4 v11, 0x1

    .line 112
    :goto_165
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionCameraMode()I

    move-result v4

    .line 113
    iget v5, v0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;->mAiRawLiteAsdModeBv:I

    move/from16 p3, v7

    move/from16 v7, p5

    if-lt v7, v5, :cond_17d

    if-eqz v4, :cond_17b

    const/16 v5, 0xa

    if-eq v4, v5, :cond_17b

    const/16 v5, 0x1e

    if-ne v4, v5, :cond_17d

    :cond_17b
    const/4 v4, 0x1

    goto :goto_17f

    :cond_17d
    move/from16 v4, v20

    :goto_17f
    if-nez v4, :cond_183

    if-nez v11, :cond_185

    :cond_183
    move/from16 v22, v20

    .line 119
    :cond_185
    const-string v5, "Night"

    const-string v7, "Night_Light"

    if-nez p3, :cond_24a

    move/from16 p3, v4

    iget-boolean v4, v0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;->mSkipFlag:Z

    if-nez v4, :cond_245

    if-nez v30, :cond_245

    if-lez v22, :cond_1b7

    .line 121
    invoke-virtual {v1, v8}, Lcom/transsion/camera/adapter/CameraParameters;->setPostAlgoFrameInfo([I)V

    .line 122
    sget-object v4, Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    move-object/from16 v34, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v37, v11

    const-string v11, "configAlgo: aeExpoInfo = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v34 .. v34}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1b9

    :cond_1b7
    move/from16 v37, v11

    :goto_1b9
    if-lez p2, :cond_1d8

    .line 125
    invoke-virtual {v1, v10}, Lcom/transsion/camera/adapter/CameraParameters;->setHDRAeExpoInfo([I)V

    .line 126
    sget-object v4, Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "configAlgo: hdrAeExpoInfo = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_1d8
    if-lez v26, :cond_1f7

    .line 129
    invoke-virtual {v1, v12}, Lcom/transsion/camera/adapter/CameraParameters;->setMFNRAeExpoInfo([I)V

    .line 130
    sget-object v4, Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "configAlgo: mfnrAeExpoInfo = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 132
    :cond_1f7
    invoke-static {v3, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_203

    .line 133
    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_220

    .line 134
    :cond_203
    invoke-virtual {v1, v14}, Lcom/transsion/camera/adapter/CameraParameters;->setNightAeExpoInfo([I)V

    .line 135
    sget-object v4, Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "configAlgo: nightAeExpoInfo = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_220
    if-lez v31, :cond_23f

    .line 138
    invoke-virtual {v1, v15}, Lcom/transsion/camera/adapter/CameraParameters;->setLlsInfo([I)V

    .line 139
    sget-object v4, Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "configAlgo: llsInfo = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_23f
    move/from16 v4, p2

    move/from16 v8, v22

    :goto_243
    const/4 v11, 0x1

    goto :goto_273

    :cond_245
    :goto_245
    move/from16 v37, v11

    move/from16 v3, v20

    goto :goto_24d

    :cond_24a
    move/from16 p3, v4

    goto :goto_245

    .line 146
    :goto_24d
    new-array v4, v3, [I

    invoke-virtual {v1, v4}, Lcom/transsion/camera/adapter/CameraParameters;->setPostAlgoFrameInfo([I)V

    .line 147
    new-array v4, v3, [I

    invoke-virtual {v1, v4}, Lcom/transsion/camera/adapter/CameraParameters;->setHDRAeExpoInfo([I)V

    .line 148
    new-array v4, v3, [I

    invoke-virtual {v1, v4}, Lcom/transsion/camera/adapter/CameraParameters;->setMFNRAeExpoInfo([I)V

    .line 149
    new-array v4, v3, [I

    invoke-virtual {v1, v4}, Lcom/transsion/camera/adapter/CameraParameters;->setNightAeExpoInfo([I)V

    .line 150
    new-array v4, v3, [I

    invoke-virtual {v1, v4}, Lcom/transsion/camera/adapter/CameraParameters;->setLlsInfo([I)V

    .line 151
    sget-object v3, Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v4, "configAlgo: aeExpoInfo error"

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/16 v26, 0x0

    goto :goto_243

    :goto_273
    if-ne v9, v11, :cond_27f

    if-lez v8, :cond_27f

    if-nez v36, :cond_27f

    const/4 v10, 0x4

    .line 154
    invoke-virtual {v1, v10}, Lcom/transsion/camera/adapter/CameraParameters;->setPostAlgoType(I)V

    goto/16 :goto_3c4

    :cond_27f
    const/4 v10, 0x2

    if-ne v9, v10, :cond_28c

    if-lez v8, :cond_28c

    if-nez v36, :cond_28c

    const/4 v11, 0x5

    .line 156
    invoke-virtual {v1, v11}, Lcom/transsion/camera/adapter/CameraParameters;->setPostAlgoType(I)V

    goto/16 :goto_3c4

    .line 157
    :cond_28c
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters;->getRawSuperResolutionMode()I

    move-result v11

    if-ne v11, v10, :cond_2a0

    if-eqz v37, :cond_2a0

    iget-boolean v10, v0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;->mSkipFlag:Z

    if-nez v10, :cond_2a0

    if-nez v36, :cond_2a0

    const/4 v2, 0x7

    .line 158
    invoke-virtual {v1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setPostAlgoType(I)V

    goto/16 :goto_3c4

    .line 159
    :cond_2a0
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters;->getSuperResolutionMode()I

    move-result v10

    if-lez v10, :cond_2b5

    if-eqz v37, :cond_2b5

    iget-boolean v10, v0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;->mSkipFlag:Z

    if-nez v10, :cond_2b5

    if-nez v36, :cond_2b5

    const/16 v2, 0xb

    .line 160
    invoke-virtual {v1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setPostAlgoType(I)V

    goto/16 :goto_3c4

    .line 161
    :cond_2b5
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v10

    invoke-virtual {v10}, Lcom/transsion/camera/utils/CustomConfigUtil;->isSupportFlashSnapV1_G100()Z

    move-result v10

    const-string v11, "configAlgo: POSTALGO_INPUT_COUNT "

    const/4 v12, 0x6

    if-eqz v10, :cond_32f

    const/4 v10, 0x1

    if-ne v13, v10, :cond_32f

    if-nez v24, :cond_32f

    .line 163
    invoke-virtual {v1, v12}, Lcom/transsion/camera/adapter/CameraParameters;->setPostAlgoType(I)V

    .line 164
    sget-object v3, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xc80

    if-ge v2, v3, :cond_2e1

    .line 166
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;->TAPS_CAPTURE_INPUT_COUNT:Ljava/lang/Integer;

    goto :goto_2f7

    :cond_2e1
    const/16 v3, 0x12c0

    if-ge v2, v3, :cond_2e8

    .line 168
    iput-object v6, v0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;->TAPS_CAPTURE_INPUT_COUNT:Ljava/lang/Integer;

    goto :goto_2f7

    :cond_2e8
    const/16 v3, 0x1900

    if-ge v2, v3, :cond_2f1

    move-object/from16 v10, v32

    .line 170
    iput-object v10, v0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;->TAPS_CAPTURE_INPUT_COUNT:Ljava/lang/Integer;

    goto :goto_2f7

    .line 172
    :cond_2f1
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;->TAPS_CAPTURE_INPUT_COUNT:Ljava/lang/Integer;

    .line 174
    :goto_2f7
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters;->getDeBandingMode()I

    move-result v3

    const/4 v10, 0x1

    if-ne v3, v10, :cond_306

    const/16 v18, 0x2

    .line 175
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;->TAPS_CAPTURE_INPUT_COUNT:Ljava/lang/Integer;

    .line 177
    :cond_306
    sget-object v3, Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;->TAPS_CAPTURE_INPUT_COUNT:Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", iso: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 178
    iget-object v2, v0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;->TAPS_CAPTURE_INPUT_COUNT:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setBMMultiFrameNum(I)V

    goto/16 :goto_3c4

    :cond_32f
    move-object/from16 v10, v32

    .line 179
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/utils/CustomConfigUtil;->isFlashSnapV2_G200()Z

    move-result v2

    if-nez v2, :cond_348

    .line 180
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/utils/CustomConfigUtil;->isSupportFlashSnapV2_G100_ForOSUpToW()Z

    move-result v2

    if-eqz v2, :cond_346

    goto :goto_348

    :cond_346
    const/4 v11, 0x1

    goto :goto_387

    :cond_348
    :goto_348
    if-eqz v30, :cond_346

    if-nez v24, :cond_346

    .line 182
    invoke-virtual {v1, v12}, Lcom/transsion/camera/adapter/CameraParameters;->setPostAlgoType(I)V

    .line 183
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters;->getDeBandingMode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_359

    .line 184
    iput-object v10, v0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;->TAPS_CAPTURE_INPUT_COUNT:Ljava/lang/Integer;

    goto :goto_35b

    .line 186
    :cond_359
    iput-object v6, v0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;->TAPS_CAPTURE_INPUT_COUNT:Ljava/lang/Integer;

    .line 188
    :goto_35b
    iget-object v2, v0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;->TAPS_CAPTURE_INPUT_COUNT:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setBMMultiFrameNum(I)V

    .line 189
    sget-object v2, Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;->TAPS_CAPTURE_INPUT_COUNT:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", BlurLevel: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters;->getSTBlurLevel()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_3c4

    :goto_387
    if-ne v4, v11, :cond_38d

    .line 191
    invoke-virtual {v1, v11}, Lcom/transsion/camera/adapter/CameraParameters;->setPostAlgoType(I)V

    goto :goto_3c4

    :cond_38d
    if-lez v26, :cond_397

    if-nez v36, :cond_397

    const/16 v2, 0x9

    .line 193
    invoke-virtual {v1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setPostAlgoType(I)V

    goto :goto_3c4

    .line 194
    :cond_397
    invoke-static {v3, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3a3

    move/from16 v2, v16

    .line 195
    invoke-virtual {v1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setPostAlgoType(I)V

    goto :goto_3c4

    .line 196
    :cond_3a3
    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3af

    const/16 v2, 0x8

    .line 197
    invoke-virtual {v1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setPostAlgoType(I)V

    goto :goto_3c4

    :cond_3af
    move/from16 v2, v31

    const/4 v11, 0x1

    if-ne v2, v11, :cond_3c0

    .line 198
    iget-boolean v2, v0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;->mSkipFlag:Z

    if-nez v2, :cond_3c0

    if-nez v36, :cond_3c0

    const/16 v5, 0xa

    .line 199
    invoke-virtual {v1, v5}, Lcom/transsion/camera/adapter/CameraParameters;->setPostAlgoType(I)V

    goto :goto_3c4

    :cond_3c0
    const/4 v3, 0x0

    .line 201
    invoke-virtual {v1, v3}, Lcom/transsion/camera/adapter/CameraParameters;->setPostAlgoType(I)V

    .line 203
    :goto_3c4
    invoke-virtual {v1, v8}, Lcom/transsion/camera/adapter/CameraParameters;->setAiRawScene(I)V

    .line 204
    sget-object v2, Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configAlgo: postAlgoType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraParameters;->getPostAlgoType()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rawScene = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " aiRawMode = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isRemosaicEnable = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, v36

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " remosaicISO = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v35

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " memEnough = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v37

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isBrightnessLimit = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, p3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mSkipFlag = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;->mSkipFlag:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " isAiRawAeExpoInfo = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " isRawHdrExpoInfo = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, v28

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " isMFNRExpoInfo = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, v25

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " isNightExpoInfoValid = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, v23

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " skipMultCapture = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " livePhotoMode = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected getRemosaicLimitISO(Ljava/lang/String;I)I
    .registers 4

    .line 212
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackWideCamera(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 213
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/CameraRepository;->isFrontWideCamera(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_3d

    .line 215
    :cond_15
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackLongFocusCamera(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 216
    iget p0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;->mLongFocusIspHidlRemoaicISO:I

    return p0

    .line 217
    :cond_22
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 218
    iget p0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;->mFrontIspHidlRemoaicISO:I

    return p0

    .line 220
    :cond_2b
    sget p1, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_1X:I

    mul-int/lit8 p1, p1, 0x2

    .line 221
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;->m2XRemosaicAvailable:Z

    if-eqz v0, :cond_3a

    iget v0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;->m2XRemosaicISOTh:I

    if-lez v0, :cond_3a

    if-lt p2, p1, :cond_3a

    return v0

    .line 224
    :cond_3a
    iget p0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;->mIspHidlRemoaicISO:I

    return p0

    .line 214
    :cond_3d
    :goto_3d
    iget p0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;->mWideIspHidlRemoaicISO:I

    return p0
.end method

.method isValidAeExpoInfo([I)Z
    .registers 3

    const/4 p0, 0x0

    if-eqz p1, :cond_b

    .line 234
    array-length v0, p1

    if-lez v0, :cond_b

    aget p1, p1, p0

    if-lez p1, :cond_b

    const/4 p0, 0x1

    :cond_b
    return p0
.end method

.method public set2XRemosaicAvailable(Z)V
    .registers 5

    .line 72
    sget-object v0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set2XRemosaicAvailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 73
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;->m2XRemosaicAvailable:Z

    return-void
.end method

.method public setSkipFlag(Z)V
    .registers 2

    .line 230
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;->mSkipFlag:Z

    return-void
.end method
