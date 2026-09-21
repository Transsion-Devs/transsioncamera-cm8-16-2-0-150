.class Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/adapter/ICameraDeviceInfo;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final PRE_ISP_FAKE_FRONT_CAMERA:I

.field private final PRE_ISP_FAKE_TELE_CAMERA:I

.field private final PRE_ISP_FAKE_WIDE_CAMERA:I

.field private mBackFakeDualCameraId:Ljava/lang/String;

.field private mBlackWhitePortraitCameraId:Ljava/lang/String;

.field private final mCameraCapabilitiesMap:Ljava/util/Map;

.field private final mCameraCharacteristicsMap:Ljava/util/Map;

.field private mCameraIds:[Ljava/lang/String;

.field private final mCameraInfoMap:Ljava/util/Map;

.field private mDualCamCalibrationSize:Ljava/lang/String;

.field private mFoldedFrontCameraId:Ljava/lang/String;

.field private mFrontFakeDualCameraId:Ljava/lang/String;

.field private mFrontWideCameraId:Ljava/lang/String;

.field private mHighDefinitionLogicBackId:Ljava/lang/String;

.field private mHighDefinitionLogicFrontId:Ljava/lang/String;

.field private mHighFpsSupport:Z

.field private mIsDistortionCorrectionSupport:Z

.field private mIsFusionSupport:Z

.field private mIsMacroTorchSupport:Z

.field private mIsSupportMicroCamera:Z

.field private mLogicalId:Ljava/lang/String;

.field private mMacroCameraId:Ljava/lang/String;

.field private mMicroPanTiltCameraLogicId:Ljava/lang/String;

.field private final mNumberOfCameras:I

.field private mPeriscopeCameraId:Ljava/lang/String;

.field private final mPlatformCameraMap:Ljava/util/Map;

.field private mPreIspFrontFakeId:Ljava/lang/String;

.field private mPreIspTeleFakeId:Ljava/lang/String;

.field private mPreIspWideFakeId:Ljava/lang/String;

.field private mSatCameraLogicId:Ljava/lang/String;

.field private mSecondLogicId:Ljava/lang/String;

.field private mTeleCameraId:Ljava/lang/String;

.field private mVideoCameraId:Ljava/lang/String;

.field private mWideCameraId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 40
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "CameraDeviceInfo2"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Landroid/hardware/camera2/CameraManager;)V
    .registers 7

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraInfoMap:Ljava/util/Map;

    .line 43
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraCharacteristicsMap:Ljava/util/Map;

    .line 44
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mPlatformCameraMap:Ljava/util/Map;

    .line 45
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraCapabilitiesMap:Ljava/util/Map;

    const/4 v0, 0x1

    .line 47
    iput v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->PRE_ISP_FAKE_FRONT_CAMERA:I

    const/4 v0, 0x2

    .line 48
    iput v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->PRE_ISP_FAKE_TELE_CAMERA:I

    const/4 v0, 0x3

    .line 49
    iput v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->PRE_ISP_FAKE_WIDE_CAMERA:I

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraIds:[Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mLogicalId:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mSecondLogicId:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mWideCameraId:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mFrontWideCameraId:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mMacroCameraId:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mFoldedFrontCameraId:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mTeleCameraId:Ljava/lang/String;

    .line 73
    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mVideoCameraId:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mFrontFakeDualCameraId:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mBackFakeDualCameraId:Ljava/lang/String;

    .line 83
    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mBlackWhitePortraitCameraId:Ljava/lang/String;

    .line 85
    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mDualCamCalibrationSize:Ljava/lang/String;

    .line 88
    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mSatCameraLogicId:Ljava/lang/String;

    .line 90
    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mPeriscopeCameraId:Ljava/lang/String;

    .line 92
    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mMicroPanTiltCameraLogicId:Ljava/lang/String;

    .line 95
    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mHighDefinitionLogicBackId:Ljava/lang/String;

    .line 96
    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mHighDefinitionLogicFrontId:Ljava/lang/String;

    .line 99
    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mPreIspWideFakeId:Ljava/lang/String;

    .line 100
    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mPreIspFrontFakeId:Ljava/lang/String;

    .line 101
    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mPreIspTeleFakeId:Ljava/lang/String;

    .line 109
    :try_start_53
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraIds:[Ljava/lang/String;
    :try_end_59
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_53 .. :try_end_59} :catch_5a

    goto :goto_5e

    :catch_5a
    move-exception v0

    .line 111
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 113
    :goto_5e
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraIds:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_81

    array-length v2, v0

    if-nez v2, :cond_67

    goto :goto_81

    .line 117
    :cond_67
    array-length v0, v0

    iput v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mNumberOfCameras:I

    .line 118
    sget-object v2, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Camera num is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_8a

    .line 114
    :cond_81
    :goto_81
    sget-object v0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "Camera num is 0, Sensor should double check"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 115
    iput v1, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mNumberOfCameras:I

    .line 120
    :goto_8a
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->loadCharacteristics(Landroid/hardware/camera2/CameraManager;Z)V

    return-void
.end method

.method private loadCharacteristics(Landroid/hardware/camera2/CameraManager;Z)V
    .registers 10

    const/4 v0, 0x0

    .line 124
    :goto_1
    iget v1, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mNumberOfCameras:I

    if-ge v0, v1, :cond_114

    .line 126
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraIds:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 129
    :try_start_9
    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2
    :try_end_d
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_9 .. :try_end_d} :catch_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_d} :catch_e

    goto :goto_13

    :catch_e
    move-exception v2

    .line 131
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v2, 0x0

    :goto_13
    if-nez v2, :cond_17

    goto/16 :goto_110

    :cond_17
    if-nez p2, :cond_44

    .line 136
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mPlatformCameraMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_44

    .line 137
    invoke-static {}, Lcom/transsion/camera/adapter/platformcamera/PlatformCameraFactory;->createPlatformCamera2()Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    move-result-object v3

    .line 138
    sget-object v4, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PlatformCameraFactory.createPlatformCamera2(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 139
    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mPlatformCameraMap:Ljava/util/Map;

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :cond_44
    new-instance v3, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mPlatformCameraMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-direct {v3, v4}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;-><init>(Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    .line 142
    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraCapabilitiesMap:Ljava/util/Map;

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mPlatformCameraMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v3, v2}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->initFirst(Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 144
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mPlatformCameraMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v3, v1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isSupportMultichannelFlow(Ljava/lang/String;)Z

    .line 145
    new-instance v3, Lcom/transsion/camera/adapter/CameraInfo2Impl;

    invoke-direct {v3, v2}, Lcom/transsion/camera/adapter/CameraInfo2Impl;-><init>(Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 146
    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraInfoMap:Ljava/util/Map;

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraCharacteristicsMap:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v0, :cond_110

    .line 150
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mPlatformCameraMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v3, v2}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isLogicalCameraSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v3

    if-eqz v3, :cond_110

    .line 151
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mPlatformCameraMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v1, v2}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getLogicId(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/lang/String;

    move-result-object v1

    .line 152
    sget-object v2, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadCharacteristics logicId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 155
    :try_start_ad
    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v3
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_b1} :catch_105

    .line 161
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_cd

    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mPlatformCameraMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_cd

    .line 162
    const-string v4, "loadCharacteristics mPlatformCameraMap add"

    invoke-static {v2, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 163
    invoke-static {}, Lcom/transsion/camera/adapter/platformcamera/PlatformCameraFactory;->createPlatformCamera2()Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    move-result-object v2

    .line 164
    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mPlatformCameraMap:Ljava/util/Map;

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    :cond_cd
    new-instance v2, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mPlatformCameraMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-direct {v2, v4}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;-><init>(Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    .line 167
    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraCapabilitiesMap:Ljava/util/Map;

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mPlatformCameraMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v2, v3}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->initFirst(Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 169
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mPlatformCameraMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v2, v1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isSupportMultichannelFlow(Ljava/lang/String;)Z

    .line 170
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraInfoMap:Ljava/util/Map;

    new-instance v4, Lcom/transsion/camera/adapter/CameraInfo2Impl;

    invoke-direct {v4, v3}, Lcom/transsion/camera/adapter/CameraInfo2Impl;-><init>(Landroid/hardware/camera2/CameraCharacteristics;)V

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraCharacteristicsMap:Ljava/util/Map;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_110

    :catch_105
    move-exception v1

    .line 157
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 158
    sget-object v1, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "loadCharacteristics getCameraCharacteristics fail"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_110
    :goto_110
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_114
    return-void
.end method


# virtual methods
.method public aeLockSupported(Ljava/lang/String;)Z
    .registers 2

    .line 597
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->getCameraCapabilities(Ljava/lang/String;)Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 599
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraCapabilities;->isAutoExposureLockSupported()Z

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public getBackFakeDualCameraId()Ljava/lang/String;
    .registers 1

    .line 424
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mBackFakeDualCameraId:Ljava/lang/String;

    return-object p0
.end method

.method public getBaseZoomRatio(Ljava/lang/String;F)F
    .registers 4

    .line 616
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraCapabilitiesMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 617
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraCapabilitiesMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    .line 618
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraCapabilities;->getBaseZoomRatio()F

    move-result p0

    const/4 p1, 0x0

    cmpl-float p1, p0, p1

    if-lez p1, :cond_1a

    return p0

    :cond_1a
    return p2
.end method

.method public getBlackWhitePortraitCameraId()Ljava/lang/String;
    .registers 1

    .line 445
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mBlackWhitePortraitCameraId:Ljava/lang/String;

    return-object p0
.end method

.method getCameraCapabilities(Ljava/lang/String;)Lcom/transsion/camera/adapter/CameraCapabilities2Impl;
    .registers 3

    .line 457
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraCapabilitiesMap:Ljava/util/Map;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    return-object p0
.end method

.method getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;
    .registers 3

    .line 449
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraCharacteristicsMap:Ljava/util/Map;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/CameraCharacteristics;

    return-object p0
.end method

.method public getCameraIdList()[Ljava/lang/String;
    .registers 1

    .line 369
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraIds:[Ljava/lang/String;

    return-object p0
.end method

.method public getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;
    .registers 3

    .line 329
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraInfoMap:Ljava/util/Map;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/adapter/ICameraInfo;

    return-object p0
.end method

.method public getDualCamCalibrationSize()Ljava/lang/String;
    .registers 1

    .line 480
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mDualCamCalibrationSize:Ljava/lang/String;

    return-object p0
.end method

.method public getFoldedFrontCameraId()Ljava/lang/String;
    .registers 1

    .line 409
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mFoldedFrontCameraId:Ljava/lang/String;

    return-object p0
.end method

.method public getFrontFakeDualCameraId()Ljava/lang/String;
    .registers 1

    .line 419
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mFrontFakeDualCameraId:Ljava/lang/String;

    return-object p0
.end method

.method public getFrontWideCameraId()Ljava/lang/String;
    .registers 1

    .line 404
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mFrontWideCameraId:Ljava/lang/String;

    return-object p0
.end method

.method public getHighDefinitionLogicBackId()Ljava/lang/String;
    .registers 1

    .line 587
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mHighDefinitionLogicBackId:Ljava/lang/String;

    return-object p0
.end method

.method public getHighDefinitionLogicFrontId()Ljava/lang/String;
    .registers 1

    .line 592
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mHighDefinitionLogicFrontId:Ljava/lang/String;

    return-object p0
.end method

.method public getLargestSupportedPictureSize(Ljava/lang/String;)Landroid/util/Size;
    .registers 2

    .line 568
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->getSupportedPictureSizes(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 569
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_17

    .line 570
    invoke-static {p0}, Lcom/transsion/camera/utils/CameraUtil;->sortSizeInDescending(Ljava/util/List;)V

    const/4 p1, 0x0

    .line 571
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Size;

    return-object p0

    :cond_17
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLensFocalLengths(Ljava/lang/String;)[F
    .registers 2

    .line 490
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraCharacteristicsMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/CameraCharacteristics;

    if-nez p0, :cond_e

    const/4 p0, 0x0

    .line 492
    new-array p0, p0, [F

    return-object p0

    .line 494
    :cond_e
    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    return-object p0
.end method

.method public getLogicalCameraId()Ljava/lang/String;
    .registers 1

    .line 379
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mLogicalId:Ljava/lang/String;

    return-object p0
.end method

.method public getMacroCameraId()Ljava/lang/String;
    .registers 1

    .line 394
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mMacroCameraId:Ljava/lang/String;

    return-object p0
.end method

.method public getMaxZoom(Ljava/lang/String;)I
    .registers 3

    .line 529
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraCapabilitiesMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    if-eqz p0, :cond_26

    .line 531
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraCapabilities;->getSupportedZoomRatios()Ljava/util/List;

    move-result-object p0

    .line 532
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_26

    .line 533
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_26
    const/4 p0, 0x0

    return p0
.end method

.method public getMicroPanTiltCameraLogicId()Ljava/lang/String;
    .registers 1

    .line 435
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mMicroPanTiltCameraLogicId:Ljava/lang/String;

    return-object p0
.end method

.method public getMiniZoom(Ljava/lang/String;)I
    .registers 4

    .line 517
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraCapabilitiesMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    const/4 p1, 0x0

    if-eqz p0, :cond_21

    .line 519
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraCapabilities;->getSupportedZoomRatios()Ljava/util/List;

    move-result-object p0

    .line 520
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_21

    .line 521
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_21
    return p1
.end method

.method public getNumberOfCameras()I
    .registers 1

    .line 374
    iget p0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mNumberOfCameras:I

    return p0
.end method

.method public getOpticalZoomCameraId()Ljava/lang/String;
    .registers 1

    .line 414
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mTeleCameraId:Ljava/lang/String;

    return-object p0
.end method

.method public getPeriscopeCameraId()Ljava/lang/String;
    .registers 1

    .line 440
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mPeriscopeCameraId:Ljava/lang/String;

    return-object p0
.end method

.method public getPhysicalCameraIds(Ljava/lang/String;)Ljava/util/Set;
    .registers 3

    .line 559
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->getCameraCapabilities(Ljava/lang/String;)Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 560
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->getCameraCapabilities(Ljava/lang/String;)Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraCapabilities;->getPhysicalCameraIds()Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 562
    :cond_f
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0
.end method

.method public getPhysicalId4In1Size(Ljava/lang/String;)Ljava/util/List;
    .registers 3

    .line 578
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->getCameraCapabilities(Ljava/lang/String;)Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 579
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->getCameraCapabilities(Ljava/lang/String;)Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraCapabilities;->get4cellInOneSize()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method getPlatformCamera(Ljava/lang/String;)Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;
    .registers 3

    .line 453
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mPlatformCameraMap:Ljava/util/Map;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    return-object p0
.end method

.method public getPreIspFrontFakeId()Ljava/lang/String;
    .registers 1

    .line 677
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mPreIspFrontFakeId:Ljava/lang/String;

    return-object p0
.end method

.method public getPreIspTeleFakeId()Ljava/lang/String;
    .registers 1

    .line 682
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mPreIspTeleFakeId:Ljava/lang/String;

    return-object p0
.end method

.method public getPreIspWideFakeId()Ljava/lang/String;
    .registers 1

    .line 672
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mPreIspWideFakeId:Ljava/lang/String;

    return-object p0
.end method

.method public getSatCameraLogicId()Ljava/lang/String;
    .registers 1

    .line 430
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mSatCameraLogicId:Ljava/lang/String;

    return-object p0
.end method

.method public getSecondLogicalCameraId()Ljava/lang/String;
    .registers 1

    .line 399
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mSecondLogicId:Ljava/lang/String;

    return-object p0
.end method

.method public getSensorColorFilterArrange(Ljava/lang/String;)I
    .registers 3

    .line 687
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->getCameraCapabilities(Ljava/lang/String;)Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 688
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->getCameraCapabilities(Ljava/lang/String;)Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraCapabilities;->getSensorColorFilterArrange()I

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public getSensorPhysicalSize(Ljava/lang/String;)Landroid/util/SizeF;
    .registers 2

    .line 499
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraCharacteristicsMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/CameraCharacteristics;

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 503
    :cond_c
    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PHYSICAL_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SizeF;

    return-object p0
.end method

.method public getSensorRect(Ljava/lang/String;)Landroid/graphics/Rect;
    .registers 2

    .line 508
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraCharacteristicsMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/CameraCharacteristics;

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 512
    :cond_c
    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    return-object p0
.end method

.method public getSupportedFocusModes(Ljava/lang/String;)Ljava/util/List;
    .registers 2

    .line 607
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->getCameraCapabilities(Ljava/lang/String;)Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    move-result-object p0

    if-nez p0, :cond_c

    .line 609
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 611
    :cond_c
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraCapabilities;->getSupportedFocusModes()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSupportedPictureSizes(Ljava/lang/String;)Ljava/util/List;
    .registers 3

    .line 541
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->getCameraCapabilities(Ljava/lang/String;)Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 542
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->getCameraCapabilities(Ljava/lang/String;)Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraCapabilities;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSupportedRawPictureSizes(Ljava/lang/String;)Ljava/util/List;
    .registers 3

    .line 550
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->getCameraCapabilities(Ljava/lang/String;)Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 551
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->getCameraCapabilities(Ljava/lang/String;)Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraCapabilities;->getSupportedRawPictureSizes()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 553
    :cond_f
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getSupportedVideoSizes(Ljava/lang/String;)Ljava/util/List;
    .registers 3

    .line 462
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->getCameraCapabilities(Ljava/lang/String;)Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 463
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->getCameraCapabilities(Ljava/lang/String;)Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraCapabilities;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method public getVideoCameraId()Ljava/lang/String;
    .registers 1

    .line 485
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mVideoCameraId:Ljava/lang/String;

    return-object p0
.end method

.method public getWideCameraId()Ljava/lang/String;
    .registers 1

    .line 384
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mWideCameraId:Ljava/lang/String;

    return-object p0
.end method

.method initFirst()V
    .registers 12

    .line 177
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraCharacteristicsMap:Ljava/util/Map;

    const-string v1, "37"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCharacteristics;

    if-eqz v0, :cond_3a

    .line 179
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraCapabilitiesMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    .line 180
    invoke-virtual {v2, v0}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedMaxPictureSize(Landroid/hardware/camera2/CameraCharacteristics;)J

    move-result-wide v2

    .line 181
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraCharacteristicsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 182
    iget-object v5, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraCapabilitiesMap:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    .line 183
    invoke-virtual {v4, v2, v3}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->setMaxPictureSize(J)V

    goto :goto_22

    .line 187
    :cond_3a
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraCharacteristicsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_44
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_218

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 188
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraCharacteristicsMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CameraCharacteristics;

    .line 189
    sget-object v4, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initDeviceInfo initFirst, key= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " and value= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 190
    iget-object v5, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraInfoMap:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/camera/adapter/CameraInfo2Impl;

    .line 191
    iget-object v6, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraCapabilitiesMap:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    .line 192
    invoke-virtual {v6, v3}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildAllCapabilities(Ljava/lang/Object;)V

    .line 193
    invoke-virtual {v6}, Lcom/transsion/camera/adapter/CameraCapabilities;->isSupportMicroCamera()Z

    move-result v3

    iput-boolean v3, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mIsSupportMicroCamera:Z

    if-eqz v3, :cond_93

    .line 195
    iput-object v2, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mMacroCameraId:Ljava/lang/String;

    .line 197
    :cond_93
    invoke-virtual {v6}, Lcom/transsion/camera/adapter/CameraCapabilities;->isWideCameraSupport()Z

    move-result v3

    const/4 v7, 0x2

    const-string v8, "0"

    const-string v9, "1"

    const/4 v10, 0x1

    if-eqz v3, :cond_c0

    .line 198
    invoke-virtual {v5}, Lcom/transsion/camera/adapter/CameraInfo2Impl;->getFacing()I

    move-result v3

    if-ne v3, v10, :cond_ab

    .line 199
    iput-object v2, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mFrontWideCameraId:Ljava/lang/String;

    .line 200
    invoke-static {v2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setFrontWideCameraId(Ljava/lang/String;)V

    goto :goto_b6

    .line 201
    :cond_ab
    invoke-virtual {v5}, Lcom/transsion/camera/adapter/CameraInfo2Impl;->getFacing()I

    move-result v3

    if-nez v3, :cond_b6

    .line 202
    iput-object v2, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mWideCameraId:Ljava/lang/String;

    .line 203
    invoke-static {v2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setsWideCameraId(Ljava/lang/String;)V

    .line 205
    :cond_b6
    :goto_b6
    invoke-virtual {v6}, Lcom/transsion/camera/adapter/CameraCapabilities;->isMicroPanTiltSupport()Z

    move-result v3

    if-eqz v3, :cond_149

    .line 206
    iput-object v2, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mMicroPanTiltCameraLogicId:Ljava/lang/String;

    goto/16 :goto_149

    .line 208
    :cond_c0
    invoke-virtual {v6}, Lcom/transsion/camera/adapter/CameraCapabilities;->isTeleCameraSupport()Z

    move-result v3

    if-eqz v3, :cond_ca

    .line 209
    iput-object v2, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mTeleCameraId:Ljava/lang/String;

    goto/16 :goto_149

    .line 210
    :cond_ca
    invoke-virtual {v6}, Lcom/transsion/camera/adapter/CameraCapabilities;->isPeriscopeLensSupport()Z

    move-result v3

    if-eqz v3, :cond_d4

    .line 211
    iput-object v2, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mPeriscopeCameraId:Ljava/lang/String;

    goto/16 :goto_149

    .line 212
    :cond_d4
    invoke-virtual {v6}, Lcom/transsion/camera/adapter/CameraCapabilities;->isSatModeSupport()Z

    move-result v3

    if-eqz v3, :cond_de

    .line 213
    iput-object v2, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mSatCameraLogicId:Ljava/lang/String;

    goto/16 :goto_149

    .line 214
    :cond_de
    invoke-virtual {v6}, Lcom/transsion/camera/adapter/CameraCapabilities;->isFakeDualLensSupport()Z

    move-result v3

    if-eqz v3, :cond_10b

    .line 215
    const-string v3, "initFirst isFakeDualLensSupport"

    invoke-static {v4, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 216
    invoke-virtual {v5}, Lcom/transsion/camera/adapter/CameraInfo2Impl;->getFacing()I

    move-result v3

    if-ne v3, v10, :cond_fa

    .line 217
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mFrontFakeDualCameraId:Ljava/lang/String;

    invoke-static {v3, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_149

    .line 218
    iput-object v2, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mFrontFakeDualCameraId:Ljava/lang/String;

    goto :goto_149

    .line 220
    :cond_fa
    invoke-virtual {v5}, Lcom/transsion/camera/adapter/CameraInfo2Impl;->getFacing()I

    move-result v3

    if-nez v3, :cond_149

    .line 222
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mBackFakeDualCameraId:Ljava/lang/String;

    invoke-static {v3, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_149

    .line 223
    iput-object v2, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mBackFakeDualCameraId:Ljava/lang/String;

    goto :goto_149

    .line 226
    :cond_10b
    invoke-virtual {v6}, Lcom/transsion/camera/adapter/CameraCapabilities;->isVideoCameraSupport()Z

    move-result v3

    if-eqz v3, :cond_114

    .line 227
    iput-object v2, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mVideoCameraId:Ljava/lang/String;

    goto :goto_149

    .line 228
    :cond_114
    invoke-virtual {v6}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->isBWPortraitSupport()Z

    move-result v3

    if-eqz v3, :cond_11d

    .line 229
    iput-object v2, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mBlackWhitePortraitCameraId:Ljava/lang/String;

    goto :goto_149

    .line 230
    :cond_11d
    iget v3, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mNumberOfCameras:I

    if-le v3, v7, :cond_149

    .line 231
    const-string v3, "initFirst isLogicalCameraSupport"

    invoke-static {v4, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 232
    invoke-virtual {v6}, Lcom/transsion/camera/adapter/CameraCapabilities;->isLogicalCameraSupport()Z

    move-result v3

    if-eqz v3, :cond_149

    invoke-virtual {v6}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->isBWPortraitSupport()Z

    move-result v3

    if-nez v3, :cond_149

    .line 233
    invoke-virtual {v6}, Lcom/transsion/camera/adapter/CameraCapabilities;->isMultiDualCamTeleSupport()Z

    move-result v3

    if-eqz v3, :cond_13b

    .line 234
    iput-object v2, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mSecondLogicId:Ljava/lang/String;

    goto :goto_149

    .line 236
    :cond_13b
    invoke-virtual {v6}, Lcom/transsion/camera/adapter/CameraCapabilities;->getLogicId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_143

    move-object v3, v2

    goto :goto_147

    :cond_143
    invoke-virtual {v6}, Lcom/transsion/camera/adapter/CameraCapabilities;->getLogicId()Ljava/lang/String;

    move-result-object v3

    :goto_147
    iput-object v3, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mLogicalId:Ljava/lang/String;

    .line 240
    :cond_149
    :goto_149
    invoke-static {v2, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_155

    invoke-static {v2, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15d

    .line 241
    :cond_155
    invoke-virtual {v6}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->isHighFpsSupport()Z

    move-result v3

    if-eqz v3, :cond_15d

    .line 242
    iput-boolean v10, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mHighFpsSupport:Z

    .line 246
    :cond_15d
    invoke-virtual {v6}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->isFusionSupport()Z

    move-result v3

    if-eqz v3, :cond_165

    .line 247
    iput-boolean v10, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mIsFusionSupport:Z

    .line 250
    :cond_165
    invoke-virtual {v6}, Lcom/transsion/camera/adapter/CameraCapabilities;->isMacroTorchSupport()Z

    move-result v3

    if-eqz v3, :cond_16d

    .line 251
    iput-boolean v10, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mIsMacroTorchSupport:Z

    .line 254
    :cond_16d
    invoke-virtual {v6}, Lcom/transsion/camera/adapter/CameraCapabilities;->getSupportedDistortionCorrection()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_179

    .line 255
    iput-boolean v10, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mIsDistortionCorrectionSupport:Z

    .line 258
    :cond_179
    invoke-virtual {v6}, Lcom/transsion/camera/adapter/CameraCapabilities;->isCameraFoldedFlagSupport()Z

    move-result v3

    if-eqz v3, :cond_181

    .line 259
    iput-object v2, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mFoldedFrontCameraId:Ljava/lang/String;

    .line 262
    :cond_181
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mLogicalId:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1ae

    .line 263
    invoke-virtual {v6}, Lcom/transsion/camera/adapter/CameraCapabilities;->getDualCamCalibrationSize()Landroid/util/Size;

    move-result-object v3

    if-eqz v3, :cond_1ae

    .line 265
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mDualCamCalibrationSize:Ljava/lang/String;

    .line 269
    :cond_1ae
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1b7

    .line 270
    iput-object v2, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mHighDefinitionLogicBackId:Ljava/lang/String;

    goto :goto_1c1

    .line 271
    :cond_1b7
    const-string v3, "39"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1c1

    .line 272
    iput-object v2, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mHighDefinitionLogicFrontId:Ljava/lang/String;

    .line 276
    :cond_1c1
    :goto_1c1
    invoke-virtual {v6}, Lcom/transsion/camera/adapter/CameraCapabilities;->getPreIspFakeIdAndModes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1f4

    .line 278
    :try_start_1cb
    invoke-virtual {v6}, Lcom/transsion/camera/adapter/CameraCapabilities;->getPreIspFakeIdAndModes()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    div-int/lit8 v3, v3, 0xa

    if-eq v3, v10, :cond_1ea

    if-eq v3, v7, :cond_1e7

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1e4

    goto :goto_1f4

    .line 287
    :cond_1e4
    iput-object v2, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mPreIspWideFakeId:Ljava/lang/String;

    goto :goto_1f4

    .line 284
    :cond_1e7
    iput-object v2, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mPreIspTeleFakeId:Ljava/lang/String;

    goto :goto_1f4

    .line 281
    :cond_1ea
    iput-object v2, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mPreIspFrontFakeId:Ljava/lang/String;
    :try_end_1ec
    .catch Ljava/lang/NumberFormatException; {:try_start_1cb .. :try_end_1ec} :catch_1ed

    goto :goto_1f4

    .line 294
    :catch_1ed
    sget-object v3, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v4, "pre isp fake id analysis error"

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 297
    :cond_1f4
    :goto_1f4
    sget-object v3, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initDeviceInfo initFirst, id= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " PhysicalCameraIds: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/transsion/camera/adapter/CameraCapabilities;->getPhysicalCameraIds()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_44

    :cond_218
    return-void
.end method

.method initSecond()V
    .registers 5

    .line 302
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraCharacteristicsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 303
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraCharacteristicsMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraCharacteristics;

    if-nez v2, :cond_21

    goto :goto_a

    .line 307
    :cond_21
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mPlatformCameraMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v1, v2}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->initSecond(Landroid/hardware/camera2/CameraCharacteristics;)V

    goto :goto_a

    :cond_2d
    return-void
.end method

.method public isBGServiceSupport()Z
    .registers 2

    .line 334
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraCapabilitiesMap:Ljava/util/Map;

    const-string v0, "0"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    if-eqz p0, :cond_11

    .line 336
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraCapabilities;->isBgServiceModeSupport()Z

    move-result p0

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public isDistortionCorrectionSupport()Z
    .registers 1

    .line 667
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mIsDistortionCorrectionSupport:Z

    return p0
.end method

.method public isFusionSupported()Z
    .registers 1

    .line 657
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mIsFusionSupport:Z

    return p0
.end method

.method public isHighFPSSupport()Z
    .registers 1

    .line 364
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mHighFpsSupport:Z

    return p0
.end method

.method public isOffLineSessionSupport(Ljava/lang/String;)Z
    .registers 2

    .line 344
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraCapabilitiesMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    if-eqz p0, :cond_f

    .line 346
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraCapabilities;->isOffLineSessionSupport()Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public isOfflineJniSupport(Ljava/lang/String;)Z
    .registers 2

    .line 354
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraCapabilitiesMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    if-eqz p0, :cond_f

    .line 356
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraCapabilities;->isOfflineJniSupport()Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public isSupportHighFps(Ljava/lang/String;)Z
    .registers 2

    .line 648
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->getPlatformCamera(Ljava/lang/String;)Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 650
    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isHighFpsSupport()Z

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public isSupportMicroCamera()Z
    .registers 1

    .line 389
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mIsSupportMicroCamera:Z

    return p0
.end method

.method public isSupportedAIRawLite(Ljava/lang/String;)Z
    .registers 2

    .line 638
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->getCameraCapabilities(Ljava/lang/String;)Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 640
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraCapabilities;->isSupportedAIRawLite()Z

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public isSupportedFastSuperNightMode(Ljava/lang/String;)Z
    .registers 2

    .line 628
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->getCameraCapabilities(Ljava/lang/String;)Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 630
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraCapabilities;->isSupportedFastSuperNightMode()Z

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method reloadCharacteristics(Landroid/hardware/camera2/CameraManager;)Z
    .registers 5

    .line 312
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraCharacteristicsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_a

    return v1

    .line 315
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->mCameraCharacteristicsMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCharacteristics;

    if-nez v0, :cond_19

    return v1

    .line 319
    :cond_19
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCharacteristics;->getKeysNeedingPermission()Ljava/util/List;

    move-result-object v0

    .line 320
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_24

    return v1

    :cond_24
    const/4 v0, 0x1

    .line 323
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->loadCharacteristics(Landroid/hardware/camera2/CameraManager;Z)V

    return v0
.end method
