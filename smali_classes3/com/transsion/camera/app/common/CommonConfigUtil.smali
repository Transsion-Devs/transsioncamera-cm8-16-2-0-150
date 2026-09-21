.class public Lcom/transsion/camera/app/common/CommonConfigUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sConfigUtil:Lcom/transsion/camera/app/common/CommonConfigUtil;


# instance fields
.field public mAppDebugLogEnable:Z

.field public mBaseFocalLength:Ljava/lang/Float;

.field public mEnableAR30FaceDetection:Z

.field public mEnableArDrawline:Z

.field public mEnableArEntrance:Z

.field public mEnableBgServiceCheck:Z

.field public mEnableBgServiceDisorderImage:Z

.field public mEnableDVMode:Z

.field public mEnablePreReadIOSize:I

.field public mEnableShotToShotAutoColorLevelBypass:Z

.field public mEnableShotToShotPortraitEnhanceBypass:Z

.field public mEnableShotToShotSlimBodyBypass:Z

.field public mEnableSuperNightStableCameraMode:Z

.field public mEnableTrueToneV2:Z

.field public mFaceBeautyIntegrationInApp:Z

.field public mFaceBeautyV3:Z

.field public mFoldProductModel:Ljava/lang/String;

.field public mFrontCameraSupport:Z

.field public mGLSurfaceViewSetBackgroundOnPause:Z

.field public mHighQualityBitmap:Z

.field public mImageStyleSupport:Z

.field public mIntentVideoModeSupportFlashOperationWhenRecording:Z

.field public mIsFiveZoomItems:Z

.field public mMainCropFocalLens:[Ljava/lang/String;

.field public mMainFocalLens:[Ljava/lang/String;

.field public mMainPmasterFocalLens:[Ljava/lang/String;

.field public mMediumFaceBeautySupport:Z

.field public mMultiTouchSupport:Z

.field public mNeedNewVideoMemory:Z

.field public mNewCameraUI4:Z

.field public mPMasterFocalLens:[Ljava/lang/String;

.field public mPhotoNightUseTranYuv:Z

.field public mPhotoPreviewSupportP3:Z

.field public mProExposureTimeImprove:Z

.field public mProjectSupportSat:Z

.field public mSettingFragment120HzRefreshRate:Z

.field public mSingleBlurForBackCamera:Z

.field public mSkipEnableUIOnPictureTaken:Z

.field public mSupportColorStyle:Z

.field public mSupportNewVideoSize:Z

.field public mSupportTopBarLottieAnimation:Z

.field public mTeleFocalLens:[Ljava/lang/String;

.field public mTeleFocalLens2X:[Ljava/lang/String;

.field public mTelePmasterFocalLens:[Ljava/lang/String;

.field public mThermalDuration:Ljava/lang/String;

.field public mTonesAssetSupport:Z

.field public mTonesSoSupport:Z

.field public mTouchCaptureDefaultOnSupport:Z

.field public mVIPCaptureOptimizeSlavePreviewSize:Z

.field public mVIPCaptureTaCaptureRotateImgEnable:Z

.field public mVideoAsdSupportWideCamera:Z

.field public mVideoEnhanceYuvSupportWideCamera:Z

.field public mVideoFaceBeautySupportWideCamera:Z

.field public mVideoFlashlightOnWhenRingScreenlightOn:Z

.field public mVideoFlashlightSupportWhenRecording:Z

.field public mVideoNightUseTranYuv:Z

.field public mVideoPreviewSupportP3:Z

.field public mVideoSatSupport4k:Z

.field public mWideFocalLens:[Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AsdSupportFiveItems()Z
    .registers 1

    .line 202
    sget-object v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->sConfigUtil:Lcom/transsion/camera/app/common/CommonConfigUtil;

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mIsFiveZoomItems:Z

    return v0
.end method

.method public static createInstance()V
    .registers 2

    .line 79
    const-class v0, Lcom/transsion/camera/app/common/CommonConfigUtil;

    monitor-enter v0

    .line 80
    :try_start_3
    sget-object v1, Lcom/transsion/camera/app/common/CommonConfigUtil;->sConfigUtil:Lcom/transsion/camera/app/common/CommonConfigUtil;

    if-nez v1, :cond_11

    .line 81
    new-instance v1, Lcom/transsion/camera/app/common/CommonConfigUtil;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/CommonConfigUtil;-><init>()V

    sput-object v1, Lcom/transsion/camera/app/common/CommonConfigUtil;->sConfigUtil:Lcom/transsion/camera/app/common/CommonConfigUtil;

    goto :goto_11

    :catchall_f
    move-exception v1

    goto :goto_13

    .line 83
    :cond_11
    :goto_11
    monitor-exit v0

    return-void

    :goto_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_f

    throw v1
.end method

.method public static getBaseFocalLength()Ljava/lang/Float;
    .registers 1

    .line 187
    sget-object v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->sConfigUtil:Lcom/transsion/camera/app/common/CommonConfigUtil;

    iget-object v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mBaseFocalLength:Ljava/lang/Float;

    return-object v0
.end method

.method public static getBitmapConfig()Landroid/graphics/Bitmap$Config;
    .registers 1

    .line 226
    sget-object v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->sConfigUtil:Lcom/transsion/camera/app/common/CommonConfigUtil;

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mHighQualityBitmap:Z

    if-eqz v0, :cond_9

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    return-object v0

    :cond_9
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public static getFoldProductModel()Ljava/lang/String;
    .registers 1

    .line 149
    sget-object v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->sConfigUtil:Lcom/transsion/camera/app/common/CommonConfigUtil;

    iget-object v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mFoldProductModel:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;
    .registers 1

    .line 97
    sget-object v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->sConfigUtil:Lcom/transsion/camera/app/common/CommonConfigUtil;

    return-object v0
.end method

.method public static getMainCropFocalLength()[Ljava/lang/String;
    .registers 1

    .line 164
    sget-object v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->sConfigUtil:Lcom/transsion/camera/app/common/CommonConfigUtil;

    iget-object v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mMainCropFocalLens:[Ljava/lang/String;

    return-object v0
.end method

.method public static getMainFocalLength()[Ljava/lang/String;
    .registers 1

    .line 160
    sget-object v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->sConfigUtil:Lcom/transsion/camera/app/common/CommonConfigUtil;

    iget-object v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mMainFocalLens:[Ljava/lang/String;

    return-object v0
.end method

.method public static getMainPmasterFocalLength()[Ljava/lang/String;
    .registers 1

    .line 176
    sget-object v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->sConfigUtil:Lcom/transsion/camera/app/common/CommonConfigUtil;

    iget-object v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mMainPmasterFocalLens:[Ljava/lang/String;

    return-object v0
.end method

.method public static getPmasterFocalLength()[Ljava/lang/String;
    .registers 1

    .line 183
    sget-object v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->sConfigUtil:Lcom/transsion/camera/app/common/CommonConfigUtil;

    iget-object v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mPMasterFocalLens:[Ljava/lang/String;

    return-object v0
.end method

.method public static getTeleFocalLength()[Ljava/lang/String;
    .registers 1

    .line 168
    sget-object v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->sConfigUtil:Lcom/transsion/camera/app/common/CommonConfigUtil;

    iget-object v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mTeleFocalLens:[Ljava/lang/String;

    return-object v0
.end method

.method public static getTeleFocalLength2X()[Ljava/lang/String;
    .registers 1

    .line 172
    sget-object v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->sConfigUtil:Lcom/transsion/camera/app/common/CommonConfigUtil;

    iget-object v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mTeleFocalLens2X:[Ljava/lang/String;

    return-object v0
.end method

.method public static getTelePmasterFocalLength()[Ljava/lang/String;
    .registers 1

    .line 180
    sget-object v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->sConfigUtil:Lcom/transsion/camera/app/common/CommonConfigUtil;

    iget-object v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mTelePmasterFocalLens:[Ljava/lang/String;

    return-object v0
.end method

.method public static getWideFocalLength()[Ljava/lang/String;
    .registers 1

    .line 156
    sget-object v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->sConfigUtil:Lcom/transsion/camera/app/common/CommonConfigUtil;

    iget-object v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mWideFocalLens:[Ljava/lang/String;

    return-object v0
.end method

.method public static isBgServiceCheckConfigEnable()Z
    .registers 1

    .line 92
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mAppDebugLogEnable:Z

    if-eqz v0, :cond_12

    .line 93
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mEnableBgServiceCheck:Z

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public static isBgServiceCheckEnable()Z
    .registers 1

    .line 87
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isBgServiceCheckConfigEnable()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 88
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->isBGServiceSupport()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public static isFrontCameraSupport()Z
    .registers 1

    .line 141
    sget-object v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->sConfigUtil:Lcom/transsion/camera/app/common/CommonConfigUtil;

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mFrontCameraSupport:Z

    return v0
.end method

.method public static isImageStyleSupport()Z
    .registers 1

    .line 109
    sget-object v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->sConfigUtil:Lcom/transsion/camera/app/common/CommonConfigUtil;

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mImageStyleSupport:Z

    return v0
.end method

.method public static isMultiTouchSupport()Z
    .registers 1

    .line 113
    sget-object v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->sConfigUtil:Lcom/transsion/camera/app/common/CommonConfigUtil;

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mMultiTouchSupport:Z

    return v0
.end method

.method public static isNewCamera4()Z
    .registers 1

    .line 190
    sget-object v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->sConfigUtil:Lcom/transsion/camera/app/common/CommonConfigUtil;

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mNewCameraUI4:Z

    return v0
.end method

.method public static isPhotoNightUseTranYuv()Z
    .registers 1

    .line 117
    sget-object v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->sConfigUtil:Lcom/transsion/camera/app/common/CommonConfigUtil;

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mPhotoNightUseTranYuv:Z

    return v0
.end method

.method public static isProExposureTimeImprove()Z
    .registers 1

    .line 206
    sget-object v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->sConfigUtil:Lcom/transsion/camera/app/common/CommonConfigUtil;

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mProExposureTimeImprove:Z

    return v0
.end method

.method public static isProjectSupportSat()Z
    .registers 1

    .line 213
    sget-object v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->sConfigUtil:Lcom/transsion/camera/app/common/CommonConfigUtil;

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mProjectSupportSat:Z

    return v0
.end method

.method public static isSupportNewVideoSize()Z
    .registers 1

    .line 198
    sget-object v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->sConfigUtil:Lcom/transsion/camera/app/common/CommonConfigUtil;

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mSupportNewVideoSize:Z

    return v0
.end method

.method public static isSupportTopBarLottieAnimation()Z
    .registers 1

    .line 194
    sget-object v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->sConfigUtil:Lcom/transsion/camera/app/common/CommonConfigUtil;

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mSupportTopBarLottieAnimation:Z

    return v0
.end method

.method public static isSupportTouchCaptureDefaultOn()Z
    .registers 1

    .line 145
    sget-object v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->sConfigUtil:Lcom/transsion/camera/app/common/CommonConfigUtil;

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mTouchCaptureDefaultOnSupport:Z

    return v0
.end method

.method public static isVideoAsdSupportWideCamera()Z
    .registers 1

    .line 125
    sget-object v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->sConfigUtil:Lcom/transsion/camera/app/common/CommonConfigUtil;

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mVideoAsdSupportWideCamera:Z

    return v0
.end method

.method public static isVideoEnhanceYuvSupportWideCamera()Z
    .registers 1

    .line 121
    sget-object v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->sConfigUtil:Lcom/transsion/camera/app/common/CommonConfigUtil;

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mVideoEnhanceYuvSupportWideCamera:Z

    return v0
.end method

.method public static isVideoFlashlightSupportWhenRecording()Z
    .registers 1

    .line 133
    sget-object v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->sConfigUtil:Lcom/transsion/camera/app/common/CommonConfigUtil;

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mVideoFlashlightSupportWhenRecording:Z

    return v0
.end method

.method public static isVideoNightUseTranYuv()Z
    .registers 1

    .line 137
    sget-object v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->sConfigUtil:Lcom/transsion/camera/app/common/CommonConfigUtil;

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mVideoNightUseTranYuv:Z

    return v0
.end method

.method public static isVideoSatSupport4k()Z
    .registers 1

    .line 217
    sget-object v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->sConfigUtil:Lcom/transsion/camera/app/common/CommonConfigUtil;

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mVideoSatSupport4k:Z

    return v0
.end method

.method public static needNewVideoMemory()Z
    .registers 1

    .line 221
    sget-object v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->sConfigUtil:Lcom/transsion/camera/app/common/CommonConfigUtil;

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mNeedNewVideoMemory:Z

    return v0
.end method

.method public static supportColorStyle()Z
    .registers 1

    .line 209
    sget-object v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->sConfigUtil:Lcom/transsion/camera/app/common/CommonConfigUtil;

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mSupportColorStyle:Z

    return v0
.end method


# virtual methods
.method public getThermalDuration()Ljava/lang/String;
    .registers 1

    .line 153
    sget-object p0, Lcom/transsion/camera/app/common/CommonConfigUtil;->sConfigUtil:Lcom/transsion/camera/app/common/CommonConfigUtil;

    iget-object p0, p0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mThermalDuration:Ljava/lang/String;

    return-object p0
.end method
