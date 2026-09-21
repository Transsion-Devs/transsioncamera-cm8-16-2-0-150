.class public abstract Lcom/transsion/camera/app/ConfigFlow;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method public static synthetic $r8$lambda$EvepVMPMohLRWnCEhZIjKBs9DS0(I)[Ljava/lang/String;
    .registers 1

    .line 902
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic $r8$lambda$rHhz3jeUa_j0OqGacfc2XZeWYyE(Lcom/transsion/camera/utils/CustomConfigUtil;I)I
    .registers 3

    const/16 v0, 0x1770

    if-ge p1, v0, :cond_a

    .line 911
    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz p0, :cond_a

    mul-int/lit8 p1, p1, 0x64

    :cond_a
    return p1
.end method

.method public static synthetic $r8$lambda$v2UO0PFKFveuSKD87F5MGeRtgWs(Lcom/transsion/camera/utils/CustomConfigUtil;I)I
    .registers 3

    const/16 v0, 0x2710

    if-ge p1, v0, :cond_a

    .line 900
    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz p0, :cond_a

    mul-int/lit8 p1, p1, 0x64

    :cond_a
    return p1
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 29
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ConfigFlow"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ConfigFlow;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public static initCommonConfigInMainThread(Lcom/transsion/camera/app/common/CommonConfigUtil;)V
    .registers 2

    .line 32
    sget v0, Lcom/transsion/camera/R$bool;->dv_mode_enable:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mEnableDVMode:Z

    .line 33
    sget v0, Lcom/transsion/camera/R$string;->thermal_duration:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mThermalDuration:Ljava/lang/String;

    .line 34
    sget v0, Lcom/transsion/camera/app/common/R$bool;->tones_asset_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mTonesAssetSupport:Z

    .line 35
    sget v0, Lcom/transsion/camera/app/common/R$bool;->tones_so_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mTonesSoSupport:Z

    .line 36
    sget v0, Lcom/transsion/camera/app/common/R$bool;->new_camera_4:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mNewCameraUI4:Z

    .line 37
    sget v0, Lcom/transsion/camera/R$bool;->support_topbar_lottie_animation:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mSupportTopBarLottieAnimation:Z

    .line 38
    sget v0, Lcom/transsion/camera/R$bool;->enable_bgservice_callback_check:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mEnableBgServiceCheck:Z

    .line 39
    sget v0, Lcom/transsion/camera/R$bool;->setting_fragment_120hz_refresh_rate:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mSettingFragment120HzRefreshRate:Z

    .line 41
    sget v0, Lcom/transsion/camera/R$bool;->bgservice_disorder_image:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mEnableBgServiceDisorderImage:Z

    .line 42
    sget v0, Lcom/transsion/camera/R$bool;->enable_shot_to_shot_slimebody_bypass:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mEnableShotToShotSlimBodyBypass:Z

    .line 44
    sget v0, Lcom/transsion/camera/R$bool;->enable_shot_to_shot_portrait_enhance_bypass:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mEnableShotToShotPortraitEnhanceBypass:Z

    .line 46
    sget v0, Lcom/transsion/camera/R$bool;->enable_shot_to_shot_auto_color_level_bypass:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mEnableShotToShotAutoColorLevelBypass:Z

    .line 48
    const-string v0, "is_algo_support_for_back_camera"

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mSingleBlurForBackCamera:Z

    .line 49
    sget v0, Lcom/transsion/camera/R$bool;->skip_enable_ui_on_picture_taken:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mSkipEnableUIOnPictureTaken:Z

    .line 51
    sget v0, Lcom/transsion/camera/R$bool;->enable_ar30_face_detection:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mEnableAR30FaceDetection:Z

    .line 52
    sget v0, Lcom/transsion/camera/R$integer;->enable_pre_read_size:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mEnablePreReadIOSize:I

    return-void
.end method

.method public static initCommonConfigInSubThread(Lcom/transsion/camera/app/common/CommonConfigUtil;)V
    .registers 5

    .line 56
    sget v0, Lcom/transsion/camera/app/common/R$bool;->enable_ar_drawline:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mEnableArDrawline:Z

    .line 58
    sget v0, Lcom/transsion/camera/app/common/R$bool;->enable_ar_entrance:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mEnableArEntrance:Z

    .line 60
    sget v0, Lcom/transsion/camera/app/common/R$bool;->image_style_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mImageStyleSupport:Z

    .line 62
    sget v0, Lcom/transsion/camera/app/common/R$bool;->multi_touch_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mMultiTouchSupport:Z

    .line 64
    sget v0, Lcom/transsion/camera/app/common/R$bool;->photo_night_use_tran_yuv:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mPhotoNightUseTranYuv:Z

    .line 66
    sget v0, Lcom/transsion/camera/app/common/R$bool;->video_enhance_yuv_support_wide_camera:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mVideoEnhanceYuvSupportWideCamera:Z

    .line 68
    sget v0, Lcom/transsion/camera/app/common/R$bool;->video_flashlight_on_when_ring_screenlight_on:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mVideoFlashlightOnWhenRingScreenlightOn:Z

    .line 70
    sget v0, Lcom/transsion/camera/app/common/R$bool;->video_flashlight_support_when_recording:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mVideoFlashlightSupportWhenRecording:Z

    .line 72
    sget v0, Lcom/transsion/camera/app/common/R$bool;->video_night_use_tran_yuv:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mVideoNightUseTranYuv:Z

    .line 74
    sget v0, Lcom/transsion/camera/R$bool;->intent_video_mode_support_flash_operation_when_recording:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mIntentVideoModeSupportFlashOperationWhenRecording:Z

    .line 77
    sget v0, Lcom/transsion/camera/app/common/R$bool;->face_beauty_v3_0:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mFaceBeautyV3:Z

    .line 79
    sget v0, Lcom/transsion/camera/R$bool;->enable_true_tone_v2:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mEnableTrueToneV2:Z

    .line 80
    sget v0, Lcom/transsion/camera/R$bool;->glsurfaceview_set_background_on_pause:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mGLSurfaceViewSetBackgroundOnPause:Z

    .line 82
    sget v0, Lcom/transsion/camera/R$bool;->facebeauty_integration_in_app:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mFaceBeautyIntegrationInApp:Z

    .line 83
    sget v0, Lcom/transsion/camera/R$bool;->medium_facebeauty_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mMediumFaceBeautySupport:Z

    .line 84
    sget v0, Lcom/transsion/camera/R$bool;->video_facebeauty_support_wide_camera:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mVideoFaceBeautySupportWideCamera:Z

    .line 86
    sget v0, Lcom/transsion/camera/R$bool;->supernight_stable_camera_mode_enable:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mEnableSuperNightStableCameraMode:Z

    .line 88
    sget v0, Lcom/transsion/camera/R$bool;->app_debug_log_enable:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mAppDebugLogEnable:Z

    .line 89
    sget v0, Lcom/transsion/camera/R$bool;->vip_capture_optimize_slave_preview_size:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mVIPCaptureOptimizeSlavePreviewSize:Z

    .line 92
    sget v0, Lcom/transsion/camera/R$bool;->vip_capture_ta_capture_rotate_img_enable:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mVIPCaptureTaCaptureRotateImgEnable:Z

    .line 94
    sget v0, Lcom/transsion/camera/R$bool;->asd_mode_support_front_zoom_items:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mFrontCameraSupport:Z

    .line 95
    sget v0, Lcom/transsion/camera/R$bool;->video_asd_support_wide_camera:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mVideoAsdSupportWideCamera:Z

    .line 96
    sget v0, Lcom/transsion/camera/R$bool;->touch_capture_default_on_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mTouchCaptureDefaultOnSupport:Z

    .line 97
    sget v0, Lcom/transsion/camera/R$bool;->high_quality_bitmap:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mHighQualityBitmap:Z

    .line 98
    sget v0, Lcom/transsion/camera/R$bool;->video_mode_sat_support_4k:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mVideoSatSupport4k:Z

    .line 99
    sget v0, Lcom/transsion/camera/R$string;->fold_device_product_model:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mFoldProductModel:Ljava/lang/String;

    .line 100
    sget v0, Lcom/transsion/camera/R$array;->focal_lens_wide:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mWideFocalLens:[Ljava/lang/String;

    .line 101
    sget v0, Lcom/transsion/camera/R$array;->focal_lens_main:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mMainFocalLens:[Ljava/lang/String;

    .line 102
    sget v0, Lcom/transsion/camera/R$array;->focal_lens_main_crop:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mMainCropFocalLens:[Ljava/lang/String;

    .line 103
    sget v0, Lcom/transsion/camera/R$array;->focal_lens_tele:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mTeleFocalLens:[Ljava/lang/String;

    .line 104
    sget v0, Lcom/transsion/camera/R$array;->focal_lens_tele_2x:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mTeleFocalLens2X:[Ljava/lang/String;

    .line 105
    sget v0, Lcom/transsion/camera/R$array;->focal_lens_main_pmaster:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mMainPmasterFocalLens:[Ljava/lang/String;

    .line 106
    sget v0, Lcom/transsion/camera/R$array;->focal_lens_tele_pmaster:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mTelePmasterFocalLens:[Ljava/lang/String;

    .line 107
    const-string v0, "pmaster_zoom_lens"

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mPMasterFocalLens:[Ljava/lang/String;

    .line 108
    sget v0, Lcom/transsion/camera/R$string;->base_focal_value:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mBaseFocalLength:Ljava/lang/Float;

    .line 109
    sget v0, Lcom/transsion/camera/R$bool;->is_support_color_style:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mSupportColorStyle:Z

    .line 110
    sget v0, Lcom/transsion/camera/R$bool;->is_support_new_video_size:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mSupportNewVideoSize:Z

    .line 111
    sget v0, Lcom/transsion/camera/R$bool;->project_support_sat:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mProjectSupportSat:Z

    .line 112
    sget v0, Lcom/transsion/camera/R$bool;->professional_exposure_time_improve:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mProExposureTimeImprove:Z

    .line 113
    sget v0, Lcom/transsion/camera/R$bool;->asd_support_five_zoom_items:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mIsFiveZoomItems:Z

    .line 114
    sget v0, Lcom/transsion/camera/R$bool;->video_new_memory:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mNeedNewVideoMemory:Z

    .line 115
    sget-object v0, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    invoke-static {v0}, Lcom/transsion/camera/utils/ScreenUtils;->isWcgSupported(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_164

    .line 116
    sget v3, Lcom/transsion/camera/R$bool;->support_video_preview_p3:I

    .line 117
    invoke-static {v3}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_164

    move v3, v2

    goto :goto_165

    :cond_164
    move v3, v1

    :goto_165
    iput-boolean v3, p0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mVideoPreviewSupportP3:Z

    if-eqz v0, :cond_172

    .line 118
    sget v0, Lcom/transsion/camera/R$bool;->support_photo_preview_p3:I

    .line 119
    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_172

    move v1, v2

    :cond_172
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mPhotoPreviewSupportP3:Z

    return-void
.end method

.method public static initCustomConfigInMainThread(Lcom/transsion/camera/utils/CustomConfigUtil;)V
    .registers 4

    .line 191
    sget v0, Lcom/transsion/camera/R$bool;->zoom_accuracy_enlarged:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    .line 192
    sget v0, Lcom/transsion/camera/R$bool;->main_zoom_enlarged:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mMainZoomEnlarged:Z

    .line 193
    sget v0, Lcom/transsion/camera/R$bool;->main_zoom_enlarged_20x:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mMainZoomEnlarged20X:Z

    .line 194
    sget v0, Lcom/transsion/camera/R$bool;->is_fingerprint_support_zoom:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mFingerprintSupportZoom:Z

    .line 195
    sget v0, Lcom/transsion/camera/R$bool;->is_fingerprint_capture_default_on:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mFingerCaptureDefaultOn:Z

    .line 196
    sget v0, Lcom/transsion/camera/R$bool;->is_tele_zoom_enlarged:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsTeleZoomEnlarged:Z

    .line 197
    sget v0, Lcom/transsion/camera/R$bool;->is_telecam_support_100x:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsTeleCamSupport100X:Z

    .line 198
    sget v0, Lcom/transsion/camera/R$integer;->pro_max_zoom_ratio:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mProMaxZoomRatio:I

    .line 199
    sget v0, Lcom/transsion/camera/R$bool;->is_limited_zoom_4x_for_some_mode:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsLimitedZoom4XForSomeMode:Z

    .line 200
    sget v0, Lcom/transsion/camera/app/common/R$bool;->enable_athena:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mEnableAthena:Z

    .line 201
    sget v0, Lcom/transsion/camera/R$bool;->flash_facade_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mFlashFacadeSupport:Z

    .line 202
    invoke-static {p0}, Lcom/transsion/camera/app/ConfigFlow;->initLuminanceAdjustSupportForCamera(Lcom/transsion/camera/utils/CustomConfigUtil;)V

    .line 203
    sget v0, Lcom/transsion/camera/R$bool;->is_support_makeup_assets:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportMakeUpAssets:Z

    .line 204
    sget v0, Lcom/transsion/camera/R$bool;->is_support_makeup_3d_assets:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportMakeUp3DAssets:Z

    .line 205
    sget v0, Lcom/transsion/camera/R$bool;->is_support_qrcode_assets:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportQRCodeAssets:Z

    .line 206
    sget v0, Lcom/transsion/camera/R$bool;->is_support_voice_detection_assets:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportVoiceDetectionAssets:Z

    .line 207
    sget v0, Lcom/transsion/camera/R$bool;->is_support_vlog_assets:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportVlogAssets:Z

    .line 208
    sget v0, Lcom/transsion/camera/app/common/R$bool;->dxo_test_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mDXOTestSupport:Z

    .line 209
    sget v0, Lcom/transsion/camera/app/common/R$bool;->aigc_3_0:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAIGCV30:Z

    .line 210
    sget v0, Lcom/transsion/camera/app/common/R$bool;->portrait_arch_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mPortraitArchSupport:Z

    .line 212
    sget v0, Lcom/transsion/camera/app/common/R$bool;->recording_effect_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mRecordingEffectSupport:Z

    .line 214
    sget v0, Lcom/transsion/camera/app/common/R$bool;->support_ui_5:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    .line 215
    sget v0, Lcom/transsion/camera/R$string;->persist_oobe_name:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mPersistOobeName:Ljava/lang/String;

    .line 216
    const-string v1, ""

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mOobeCountryCode:Ljava/lang/String;

    .line 217
    sget-object v0, Lcom/transsion/camera/app/ConfigFlow;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOobeCountryCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mOobeCountryCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 218
    sget v1, Lcom/transsion/camera/R$string;->fans_on_sale_prop_name:I

    invoke-static {v1}, Lcom/transsion/camera/utils/CameraUtil;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mFansOnSalePropName:Ljava/lang/String;

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFansOnSalePropName = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mFansOnSalePropName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 220
    sget v1, Lcom/transsion/camera/R$array;->airaw_support_camera_ids:I

    invoke-static {v1}, Lcom/transsion/camera/utils/CameraUtil;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAiRawSupportCameraIds:[I

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAiRawSupportCameraIds = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAiRawSupportCameraIds:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 222
    sget v0, Lcom/transsion/camera/R$bool;->camera_exclusive_satellite_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mCameraExclusiveSatelliteSupport:Z

    .line 224
    sget v0, Lcom/transsion/camera/R$bool;->low_platform_screen_on:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mLowPlatformScreenOn:Z

    .line 225
    sget v0, Lcom/transsion/camera/R$integer;->background_shot2shot_count:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mBackgroundShot2shotCount:I

    .line 226
    sget v0, Lcom/transsion/camera/R$integer;->background_shot2shot_extra_count:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mBackgroundShot2shotExtraCount:I

    return-void
.end method

.method public static initCustomConfigInSubThread(Lcom/transsion/camera/utils/CustomConfigUtil;)V
    .registers 7

    .line 259
    sget v0, Lcom/transsion/camera/R$bool;->hdr_format_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mProductConfigHDRFormatSupport:Z

    .line 260
    sget v0, Lcom/transsion/camera/R$bool;->hdr_format_hlg_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mProductConfigHLGSupport:Z

    .line 261
    sget v0, Lcom/transsion/camera/R$integer;->slimbody_default_option:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mDefaultOption:I

    .line 262
    sget v0, Lcom/transsion/camera/R$bool;->facebeauty_slimbody_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mBothSupport:Z

    .line 263
    sget v0, Lcom/transsion/camera/R$bool;->display_p3_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsDisplayP3Support:Z

    .line 264
    sget v0, Lcom/transsion/camera/R$bool;->makeup_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mMakeupSupport:Z

    .line 265
    sget v0, Lcom/transsion/camera/R$bool;->makeup_default_close:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mMakeUpDefaultClose:Z

    .line 266
    sget v0, Lcom/transsion/camera/R$bool;->makeup_default_ai:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mMakeUpDefaultAI:Z

    .line 267
    sget v0, Lcom/transsion/camera/R$bool;->is_qcom_capture_flow:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsQcomCaptureFlow:Z

    .line 268
    sget v0, Lcom/transsion/camera/R$bool;->video_makeup_exclude_beauty:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mVideoMakeUpExcludeFaceBeauty:Z

    .line 269
    sget v0, Lcom/transsion/camera/R$bool;->video_face_beauty_makeup_combine_ui:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mVideoFaceBeautyMakeupCombineUI:Z

    .line 270
    sget v0, Lcom/transsion/camera/R$bool;->slimbody_default_close:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mCloseSB:Z

    .line 271
    sget v0, Lcom/transsion/camera/R$bool;->makeup_slimbody_default_close:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mMakeUpCloseSB:Z

    .line 272
    sget v0, Lcom/transsion/camera/R$bool;->tele_cam_setting_default_open:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mTeleDefaultOpen:Z

    .line 273
    sget v0, Lcom/transsion/camera/R$bool;->longfocus_camera_default_for_macro:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mLongFocusDefaultForMacro:Z

    .line 274
    sget v0, Lcom/transsion/camera/R$bool;->stereo_default_open:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mStereoDefaultOpen:Z

    .line 275
    sget v0, Lcom/transsion/camera/R$bool;->stereo_aod_default_open:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mStereoAodDefaultOpen:Z

    .line 276
    sget v0, Lcom/transsion/camera/R$bool;->face_attribute_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mFaceAttributeSupport:Z

    .line 277
    sget v0, Lcom/transsion/camera/R$bool;->asd_config_face_attribute:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAsdConfigFaceAttribute:Z

    .line 278
    sget v0, Lcom/transsion/camera/R$bool;->pmaster_support_super_night_lite_ui:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mPMasterSupportSuperNightLiteUI:Z

    .line 280
    sget v0, Lcom/transsion/camera/R$integer;->slimbody_reduce_preview_size_height:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSlimbodyReducePreviewSizeHeight:I

    .line 282
    sget v0, Lcom/transsion/camera/R$integer;->make_up_reduce_preview_size_height:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mMakeUpReducePreviewSizeHeight:I

    .line 284
    sget v0, Lcom/transsion/camera/R$bool;->is_thumbnail_postview:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsThumbnailPostView:Z

    .line 285
    sget v0, Lcom/transsion/camera/R$bool;->simple_thumbnail_strategy:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSimpleThumbnailStrategy:Z

    .line 286
    sget v0, Lcom/transsion/camera/R$bool;->thumbnail_transition_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mThumbnailTransitionSupport:Z

    .line 287
    sget v0, Lcom/transsion/camera/R$bool;->thumbnail_support_custom_scaleup_animation:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportCustomScaleUpAnimation:Z

    .line 288
    sget v0, Lcom/transsion/camera/R$bool;->support_shoulder_key:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mShoulderKeySupport:Z

    .line 289
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isScreenShotThumbSupport()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_e1

    .line 290
    iput-boolean v1, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsThumbnailPostView:Z

    .line 292
    :cond_e1
    sget v0, Lcom/transsion/camera/R$bool;->facebeauty_itdV2_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mItdV2Support:Z

    .line 293
    sget v0, Lcom/transsion/camera/R$bool;->headset_capture_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mHeadsetCaptureSupport:Z

    .line 294
    sget v0, Lcom/transsion/camera/R$bool;->use_haptic_vibrator:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mUseHapticVibrator:Z

    .line 295
    sget v0, Lcom/transsion/camera/R$bool;->portrait_flare_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mPortraitFlareSupport:Z

    .line 298
    sget v0, Lcom/transsion/camera/R$integer;->mode_picker_style:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mModePickerStyle:I

    .line 299
    sget v0, Lcom/transsion/camera/R$bool;->app_persistent:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsPersistent:Z

    .line 300
    sget v0, Lcom/transsion/camera/R$bool;->pop_setting_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mPopSettingSupported:Z

    .line 301
    sget v0, Lcom/transsion/camera/R$bool;->support_shutter_ui_new_style:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportShutterUiNewStyle:Z

    .line 302
    sget v0, Lcom/transsion/camera/R$bool;->asd_hint_show:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportAsdUI:Z

    .line 303
    sget v0, Lcom/transsion/camera/R$bool;->need_support_horizontal_level:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mNeedSupportHorizontalLevel:Z

    .line 304
    sget v0, Lcom/transsion/camera/R$bool;->mode_order_editor_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mModeOrderEditorSupport:Z

    .line 305
    const-string v0, "supernight_guide_support"

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsSuperNightGuideSupport:Z

    .line 306
    const-string v0, "magicsky_guide_support"

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsMagicSkyGuideSupport:Z

    .line 307
    sget v0, Lcom/transsion/camera/R$bool;->pmaster_guide_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsPmasterGuideSupport:Z

    .line 308
    sget v0, Lcom/transsion/camera/R$bool;->document_guide_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsDocumentGuideSupport:Z

    .line 309
    sget v0, Lcom/transsion/camera/R$bool;->set_1080p_30fps_color_space_to_bt2020:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSet1080p30fpsColorSpaceToBt2020:Z

    .line 311
    sget v0, Lcom/transsion/camera/app/common/R$bool;->celebrity_scene_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsCelebritySceneSupport:Z

    .line 313
    sget v0, Lcom/transsion/camera/R$bool;->live_photo_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mLivePhotoSupport:Z

    .line 314
    sget v0, Lcom/transsion/camera/R$integer;->live_photo_algorithm_type:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mLivePhotoAlgorithmType:I

    .line 315
    sget v0, Lcom/transsion/camera/R$bool;->live_photo_need_p3_switch:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsLivePhotoNeedP3Switch:Z

    .line 316
    sget v0, Lcom/transsion/camera/R$integer;->live_photo_video_duration:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mLivePhotoVideoDuration:I

    .line 317
    sget v0, Lcom/transsion/camera/R$bool;->live_photo_request_sync_frame:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsLivePhotoRequestSyncFrame:Z

    .line 318
    sget v0, Lcom/transsion/camera/R$bool;->live_photo_ai_frame_select_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsLivePhotoAIFrameSelectionSupport:Z

    .line 320
    sget v0, Lcom/transsion/camera/R$bool;->live_photo_movement_locus_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsLivePhotoMovementLocusSupport:Z

    .line 324
    sget v0, Lcom/transsion/camera/R$bool;->support_quick_capture:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportQuickCapture:Z

    .line 327
    sget v0, Lcom/transsion/camera/R$bool;->project_aux_surface_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mProjectAuxSupported:Z

    .line 328
    const-string v0, "project_slave_surface_support"

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mProjectSlaveSupported:Z

    .line 329
    sget v0, Lcom/transsion/camera/R$bool;->wide_support_superdefinition:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mWideSupportSuperdefinition:Z

    .line 330
    sget v0, Lcom/transsion/camera/R$bool;->use_google_photos_default:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    .line 331
    sget v2, Lcom/transsion/camera/R$array;->use_google_photos_default_for_market:I

    invoke-static {v2}, Lcom/transsion/camera/utils/CameraUtil;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 332
    invoke-static {v0, v2}, Lcom/transsion/camera/utils/CameraUtil;->isGooglePhotosDefault(Z[Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mUseGooglePhotosDefault:Z

    .line 334
    sget v0, Lcom/transsion/camera/R$bool;->photos_support_processing_api:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mPhotosSupportProcessingApi:Z

    .line 337
    sget v0, Lcom/transsion/camera/R$bool;->continuous_shot_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mContinuousShotSupport:Z

    .line 338
    sget v0, Lcom/transsion/camera/R$integer;->continuous_shot_support_depend_ram:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mContinuousShotSupportDependRam:I

    .line 340
    sget v0, Lcom/transsion/camera/R$integer;->screen_shot_thumbnail_crop_size:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mScreenShotThumbnailCropSize:I

    .line 341
    sget v0, Lcom/transsion/camera/R$integer;->shot2shot_max_cache_number:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mShot2shotMaxCacheNumber:I

    .line 342
    sget v0, Lcom/transsion/camera/R$bool;->shot_to_see_sync_thumbnail:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mShot2seeSyncThumbnail:Z

    .line 343
    sget v0, Lcom/transsion/camera/R$integer;->shot2shot_max_number_for_enable_ui:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mShot2shotMaxNumberForEnableUI:I

    .line 345
    sget v0, Lcom/transsion/camera/R$integer;->shot2shot_max_number_for_tf_enable_ui:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mShot2shotMaxNumberForTFEnableUI:I

    .line 347
    sget v0, Lcom/transsion/camera/R$bool;->adapt_shot2shot_on_go:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsAdaptLowPlatform:Z

    .line 348
    sget v0, Lcom/transsion/camera/R$bool;->fps_range_reduce:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mFpsRangeReduce:Z

    .line 349
    sget v0, Lcom/transsion/camera/R$integer;->pmaster_mode_upper_fps:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mPMasterUpperFps:I

    .line 352
    sget v0, Lcom/transsion/camera/R$bool;->sat_support_wide:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSatSupportWide:Z

    .line 353
    sget v0, Lcom/transsion/camera/R$bool;->is_sat_wide_fixed_lens:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSatWideFixedLens:Z

    .line 354
    sget v0, Lcom/transsion/camera/R$bool;->sat_support_anti_video:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSatSupportAntiVideo:Z

    .line 355
    sget v0, Lcom/transsion/camera/R$integer;->video_facebeauty_type:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mVideoFaceBeautyType:I

    .line 356
    sget v0, Lcom/transsion/camera/R$bool;->video_preview_sync_camcorderprofile:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsVideoPreviewSyncCamcorderProfile:Z

    .line 357
    sget v0, Lcom/transsion/camera/R$bool;->support_ai_anti_video:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportAiAntiVideo:Z

    .line 360
    sget v0, Lcom/transsion/camera/R$integer;->beauty_mode_version:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mBeautyModeVersion:I

    .line 361
    sget v0, Lcom/transsion/camera/R$bool;->portrait_camera_for_beauty:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mPortraitCameraForBeauty:Z

    .line 362
    sget v0, Lcom/transsion/camera/R$bool;->stblur_mode_asd_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mStblurModeAsdSupport:Z

    .line 363
    sget v0, Lcom/transsion/camera/R$bool;->stblur_mode_mfnr_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mStblurModeMFNRSupport:Z

    .line 364
    sget v0, Lcom/transsion/camera/R$bool;->is_itel_support_vss:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsItelSupportVss:Z

    .line 365
    sget v0, Lcom/transsion/camera/R$integer;->mild_beauty_type:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mMildBeautyType:I

    .line 366
    sget v0, Lcom/transsion/camera/R$integer;->vsdof_photo_mode_version:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mVsdofPhotoModeVersion:I

    .line 367
    sget v0, Lcom/transsion/camera/R$bool;->is_stereo_support_flash:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mStereoSupportFlash:Z

    .line 368
    sget v0, Lcom/transsion/camera/R$bool;->is_mumonomer_support_flash:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mMumonomerSupportFlash:Z

    .line 369
    sget v0, Lcom/transsion/camera/R$bool;->pmaster_blur_front_force_off:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mMumonomerForceOff:Z

    .line 370
    const-string v0, "portrait_blur_conflict_with_make_up_according_memory"

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mPortraitBlurConflictWithMakeUpAccrodingMemory:Z

    .line 372
    const-string v2, "portrait_blur_conflict_with_make_up"

    const/16 v3, 0x67

    if-eqz v0, :cond_2c9

    .line 373
    invoke-static {}, Lcom/transsion/camera/utils/CameraUtil;->getRam()I

    move-result v0

    if-gt v0, v3, :cond_2c2

    .line 375
    iput-boolean v1, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsPortraitBlurConflictWithMakeUp:Z

    goto :goto_2cf

    .line 378
    :cond_2c2
    invoke-static {v2}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsPortraitBlurConflictWithMakeUp:Z

    goto :goto_2cf

    .line 382
    :cond_2c9
    invoke-static {v2}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsPortraitBlurConflictWithMakeUp:Z

    .line 384
    :goto_2cf
    const-string v0, "platform_config_type"

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mPlatformConfigType:I

    .line 385
    sget v0, Lcom/transsion/camera/R$bool;->sdof_level_adjust_vibrate:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSdofLevelAdjustVibrate:Z

    .line 388
    sget v0, Lcom/transsion/camera/R$integer;->supernight_algo_threshold:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAlgoThreshold:I

    .line 389
    sget v0, Lcom/transsion/camera/R$bool;->super_night_asd_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSuperNightAsdSupport:Z

    .line 390
    sget v0, Lcom/transsion/camera/R$bool;->portrait_enhance_night_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mPortraitEnhanceNightSupport:Z

    .line 391
    sget v0, Lcom/transsion/camera/R$integer;->supernight_reduce_preview_size_height:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSuperNightReducePreviewSizeHeight:I

    .line 393
    sget v0, Lcom/transsion/camera/R$string;->supernight_facebeauty_max_support_preview_size:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSuperNightFaceBeautyMaxSupportPreviewSize:Ljava/lang/String;

    .line 395
    const-string v0, "limit_step_anim_min_time"

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mLimitStepAnimMinTime:I

    .line 396
    sget v0, Lcom/transsion/camera/R$bool;->superNightStable_default_open:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSuperNightStableDefaultOpen:Z

    .line 399
    sget v0, Lcom/transsion/camera/R$integer;->doc_support_mfnr_iso:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mDocSupportMfnrIso:I

    .line 400
    sget v0, Lcom/transsion/camera/R$string;->doc_algo_intensity:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mDocAlgoIntensity:Ljava/lang/String;

    .line 403
    sget v0, Lcom/transsion/camera/R$bool;->dual_video_mode_support_power_down_mode:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportPowerDownMode:Z

    .line 404
    sget v0, Lcom/transsion/camera/R$bool;->send_audio_param_for_dual_video_mode:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSendAudioParamForDualVideoMode:Z

    .line 407
    sget v0, Lcom/transsion/camera/R$array;->asd_config_support_back:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 408
    invoke-static {v0}, Lcom/transsion/camera/app/ConfigFlow;->splitAsdConfig([Ljava/lang/String;)[[I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAsdConfigSupportBack:[[I

    .line 409
    sget v0, Lcom/transsion/camera/R$array;->asd_config_support_front:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 410
    invoke-static {v0}, Lcom/transsion/camera/app/ConfigFlow;->splitAsdConfig([Ljava/lang/String;)[[I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAsdConfigSupportFront:[[I

    .line 411
    sget v0, Lcom/transsion/camera/R$array;->asd_config_support_wide:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 412
    invoke-static {v0}, Lcom/transsion/camera/app/ConfigFlow;->splitAsdConfig([Ljava/lang/String;)[[I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAsdConfigSupportWide:[[I

    .line 414
    sget v0, Lcom/transsion/camera/R$bool;->supernight_lite_suport_back_wide_camera:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSuperNightLiteSupportBackWideCamera:Z

    .line 415
    sget v0, Lcom/transsion/camera/R$bool;->hdr_asd_both_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsHdrAsdBothSupport:Z

    .line 416
    sget v0, Lcom/transsion/camera/R$bool;->airaw_night_quad_support_SR:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAirawNightQuadSupportSR:Z

    .line 417
    sget v0, Lcom/transsion/camera/R$bool;->pmaster_support_superAiraw_SR:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mPmasterSupportSuperAirawSR:Z

    .line 418
    sget v0, Lcom/transsion/camera/R$string;->asd_default_value:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAsdDefaultValue:Ljava/lang/String;

    .line 419
    sget v0, Lcom/transsion/camera/R$integer;->high_definition_limit_bv:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mLimitBV:I

    .line 420
    sget v0, Lcom/transsion/camera/R$integer;->high_definition_wide_limit_bv:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mWideLimitBV:I

    .line 421
    sget v0, Lcom/transsion/camera/R$integer;->high_definition_front_limit_bv:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mFrontLimitBV:I

    .line 422
    sget v0, Lcom/transsion/camera/R$integer;->high_definition_longfocus_limit_bv:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mLongFocusLimitBV:I

    .line 423
    sget v0, Lcom/transsion/camera/R$bool;->high_definition_limit_use_iso:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mLimitUseISO:Z

    .line 424
    sget v0, Lcom/transsion/camera/R$integer;->high_definition_limit_iso:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mLimitISO:I

    .line 425
    sget v0, Lcom/transsion/camera/R$integer;->high_definition_wide_limit_iso:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mWideLimitISO:I

    .line 426
    sget v0, Lcom/transsion/camera/R$integer;->high_definition_longfocus_limit_iso:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mLongFocusLimitISO:I

    .line 427
    sget v0, Lcom/transsion/camera/R$integer;->high_definition_front_limit_iso:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mFrontLimitISO:I

    .line 428
    sget v0, Lcom/transsion/camera/R$integer;->isphidl_remosaic_iso:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIspHidlRemosaicISO:I

    .line 429
    sget v0, Lcom/transsion/camera/R$integer;->isphidl_remosaic_iso_front:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIspHidlRemosaicISOFront:I

    .line 430
    sget v0, Lcom/transsion/camera/R$integer;->isphidl_remosaic_iso_wide:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIspHidlRemosaicISOWide:I

    .line 431
    sget v0, Lcom/transsion/camera/R$integer;->isphidl_remosaic_iso_long_focus:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIspHidlRemosaicISOLongFocus:I

    .line 432
    sget v0, Lcom/transsion/camera/R$bool;->isphidl_hdr_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIspHidlHDRSupport:Z

    .line 433
    sget v0, Lcom/transsion/camera/R$bool;->isphidl_mfnr_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIspHidlMFNRSupport:Z

    .line 434
    sget v0, Lcom/transsion/camera/R$bool;->isphidl_arc_mfnr_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIspHidlArcMFNRSupport:Z

    .line 435
    sget v0, Lcom/transsion/camera/R$integer;->isphidl_airaw_lite_mem_limit:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAiRawLiteMemLimit:I

    .line 436
    sget v0, Lcom/transsion/camera/R$integer;->isphidl_airaw_lite_asd_mode_bv:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAiRawLiteAsdModeBv:I

    .line 437
    sget v0, Lcom/transsion/camera/R$bool;->airaw_lite_support_portrait_enhance:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAIRawLiteSupportPortraitEnhance:Z

    .line 438
    sget v0, Lcom/transsion/camera/R$bool;->process_raw_mode_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportProcessRawMode:Z

    .line 439
    sget v0, Lcom/transsion/camera/R$integer;->isphidl_capture_escape_bv:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIspHidlCaptureEscapeBV:I

    .line 440
    sget v0, Lcom/transsion/camera/R$integer;->isphidl_capture_night_limit_bv:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIspHidlCaptureNightLimitBV:I

    .line 441
    sget v0, Lcom/transsion/camera/R$integer;->zoom_2x_remosaic_iso:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoom2XRemosaicISO:I

    .line 442
    sget v0, Lcom/transsion/camera/R$integer;->isphidl_memory_limit_type:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIspHidlMemLimitType:I

    .line 443
    sget v0, Lcom/transsion/camera/R$bool;->platform_mfnr_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mPlatformMfnrSupport:Z

    .line 444
    sget v0, Lcom/transsion/camera/R$bool;->ai_super_resolution_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAISuperResolutionSupport:Z

    .line 445
    sget v0, Lcom/transsion/camera/R$bool;->postalgo_stream_id_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mPostAlgoStreamIdSupport:Z

    .line 446
    sget v0, Lcom/transsion/camera/R$bool;->postalgo_quad_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mPostAlgoQuadSupport:Z

    .line 447
    sget v0, Lcom/transsion/camera/R$bool;->airaw_sprd_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAiRawSprdSupport:Z

    .line 448
    sget v0, Lcom/transsion/camera/R$bool;->auto_color_level_default_open:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAutoColorLevelDefaultOpen:Z

    .line 449
    sget v0, Lcom/transsion/camera/R$bool;->ai_super_definition_algo_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAISuperDefinitionAlgoSupport:Z

    .line 450
    sget v0, Lcom/transsion/camera/R$bool;->filter_support_mfnr:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mFilterSupportMfnr:Z

    .line 451
    sget v0, Lcom/transsion/camera/R$bool;->support_transsion_filter:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportTranssionFilter:Z

    .line 452
    sget v0, Lcom/transsion/camera/R$bool;->support_holiday_filter:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsSupportHolidayFilter:Z

    .line 453
    sget v0, Lcom/transsion/camera/R$bool;->photo_filter_restrict_image_style:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsPhotoFilterRestrictImageStyle:Z

    .line 454
    sget v0, Lcom/transsion/camera/R$bool;->filter_support_asd:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mFilterSupportAsd:Z

    .line 455
    sget v0, Lcom/transsion/camera/R$bool;->supernight_lite_suport_front:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->misFrontSupportNightLite:Z

    .line 456
    sget v0, Lcom/transsion/camera/R$bool;->asd_enhance_light:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAsdEnhanceLight:Z

    .line 457
    sget v0, Lcom/transsion/camera/R$integer;->shot2shot_policy_platform:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mShot2ShotPolicyPlatform:I

    .line 458
    sget v0, Lcom/transsion/camera/R$integer;->shot2shot_policy_Ext_count:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mShot2ShotPolicyExtCount:I

    .line 459
    sget v0, Lcom/transsion/camera/R$integer;->shot2shot_offline_limit_count:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mShot2ShotOfflineLimitCount:I

    .line 460
    sget v0, Lcom/transsion/camera/R$bool;->shot2shot_policy_108M_10x_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mShot2ShotPolicy108M10xsupport:Z

    .line 461
    sget v0, Lcom/transsion/camera/R$bool;->shot2shot_policy_use_decrease:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mShot2ShotPolicyUseDecrease:Z

    .line 462
    sget v0, Lcom/transsion/camera/R$array;->shot2shot_policy_low_mem_overlay:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mShot2ShotPolicyLowMemOverlay:[I

    .line 463
    sget v0, Lcom/transsion/camera/R$bool;->enable_shot_to_shot_tf_mfll:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mShot2ShotTFToMFLL:Z

    .line 464
    sget v0, Lcom/transsion/camera/R$bool;->enable_shot_to_shot_airaw_mfll:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mShot2ShotAiRawToMFLL:Z

    .line 465
    sget v0, Lcom/transsion/camera/R$bool;->enable_shot_to_shot_skin_opti_bypass:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mShot2ShotSkinOptiBypass:Z

    .line 466
    sget v0, Lcom/transsion/camera/R$bool;->aggressive_skip_policy:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAggressiveSkipPolicy:Z

    .line 467
    sget v0, Lcom/transsion/camera/R$bool;->airaw_mfnr_replace_remosaic:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAirawMfnrReplaceRemosaic:Z

    .line 468
    sget v0, Lcom/transsion/camera/R$array;->zoom_range:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomRangeList:[I

    .line 469
    sget v0, Lcom/transsion/camera/R$integer;->tf_aishutter_limit_iso:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mTFAishutterLimitISO:I

    .line 470
    sget v0, Lcom/transsion/camera/R$integer;->airaw_remosaic_limit_iso:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAiRawRemosaicLimitISO:I

    .line 471
    sget v0, Lcom/transsion/camera/R$integer;->fusion_mode_bv_limit_value:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mFusionModeBvLimitValue:I

    .line 472
    sget v0, Lcom/transsion/camera/R$bool;->transsion_ainr_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mTranssionAINRSupport:Z

    .line 473
    sget v0, Lcom/transsion/camera/R$integer;->transsion_ainr_limit_iso:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mTranssionAINRLimitISO:I

    .line 474
    sget v0, Lcom/transsion/camera/R$integer;->transsion_ainr_max_iso:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mTranssionAINRMaxISO:I

    .line 475
    sget v0, Lcom/transsion/camera/R$integer;->transsion_ainr_limit_bv:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mTranssionAINRLimitBV:I

    .line 476
    sget v0, Lcom/transsion/camera/R$integer;->transsion_ainr_max_bv:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mTranssionAINRMaxBV:I

    .line 479
    sget v0, Lcom/transsion/camera/R$bool;->def_smart_denoise_on:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSmartDenoiseDefaultOn:Z

    .line 482
    sget v0, Lcom/transsion/camera/R$string;->video_portrait_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mMaxSupportVPSize:Ljava/lang/String;

    .line 483
    sget v0, Lcom/transsion/camera/R$bool;->video_portrait_switch_use_global_store:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mVideoPortraitUseGlobalStore:Z

    .line 485
    sget v0, Lcom/transsion/camera/R$bool;->video_mode_support_sat:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mVideoModeSupportSat:Z

    .line 486
    sget v0, Lcom/transsion/camera/R$bool;->asd_mode_support_sat:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAsdModeSupportSat:Z

    .line 489
    sget v0, Lcom/transsion/camera/R$bool;->reduce_high_fps_video_bit_rate:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mReduceBitRateForHighFps:Z

    .line 490
    sget v0, Lcom/transsion/camera/R$bool;->reduce_video_bit_rate_for_D8400:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mReduceBitRateForD8400:Z

    .line 491
    sget v0, Lcom/transsion/camera/R$array;->video_quality_support_anti_video:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportAntiVideoQuality:[Ljava/lang/String;

    .line 492
    sget v0, Lcom/transsion/camera/R$array;->video_quality_support_super_anti_video:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportSuperAntiVideoQuality:[Ljava/lang/String;

    .line 494
    sget v0, Lcom/transsion/camera/R$array;->facebeauty_support_video_quality:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mFaceBeautySupportVideoQuality:[Ljava/lang/String;

    .line 496
    sget v0, Lcom/transsion/camera/R$array;->portrait_support_video_quality:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mPortraitSupportVideoQuality:[Ljava/lang/String;

    .line 497
    const-string v0, "spot_support_video_quality"

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSpotSupportVideoQuality:[Ljava/lang/String;

    .line 498
    const-string v0, "enhance_support_video_quality"

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mEnhanceSupportVideoQuality:[Ljava/lang/String;

    .line 499
    const-string v0, "enhance_yuv_support_video_quality"

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mEnhanceYUVSupportVideoQuality:[Ljava/lang/String;

    .line 501
    sget v0, Lcom/transsion/camera/app/common/R$integer;->video_enhance_type:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mVideoEnHanceType:I

    .line 503
    const-string/jumbo v0, "video_filter_support_video_quality"

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mVideoFilterSupportVideoQuality:[Ljava/lang/String;

    .line 505
    sget v0, Lcom/transsion/camera/R$bool;->create_video_surface_in_photo_mode:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mCreateVideoSurfaceInPhotoMode:Z

    .line 507
    const-string v0, "preIsp_support_video_quality"

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mPreispSupportVideoQuality:[Ljava/lang/String;

    .line 509
    sget v0, Lcom/transsion/camera/R$array;->support_60fps_ai_focus_video_quality:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupport60fpsAiFocusVideoQuality:[Ljava/lang/String;

    .line 511
    sget v0, Lcom/transsion/camera/R$array;->video_makeup_support_video_quality:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mVideoMakeUpSupportVideoQuality:[Ljava/lang/String;

    .line 513
    const-string/jumbo v0, "video_asd_support_video_quality"

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mVideoAsdSupportVideoQuality:[Ljava/lang/String;

    .line 515
    sget v0, Lcom/transsion/camera/R$array;->video_quality_setting_entry_values:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mVideoQualitySettingEntryValues:[Ljava/lang/String;

    .line 519
    sget v0, Lcom/transsion/camera/R$bool;->support_lite_face_beauty:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsSupportLiteFaceBeauty:Z

    .line 522
    sget v0, Lcom/transsion/camera/R$bool;->antivideo_default_on:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAntiVideoDefaultOn:Z

    .line 523
    sget v0, Lcom/transsion/camera/R$bool;->customize_anti_switch:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mCustomizedAntiSwitch:Z

    .line 524
    sget v0, Lcom/transsion/camera/R$integer;->support_antivideo_type:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportAntiVideoType:I

    .line 525
    sget v0, Lcom/transsion/camera/R$bool;->antivideo_support_video_filter:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAntiVideoSupportVideoFilter:Z

    .line 526
    sget v0, Lcom/transsion/camera/R$bool;->antivideo_support_dol_video_hdr:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAntiVideoSupportDolVideoHDR:Z

    .line 527
    sget v0, Lcom/transsion/camera/R$bool;->is_widecam_force_open_anti_video:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mWidecamForceOpenAntiVideo:Z

    .line 530
    sget v0, Lcom/transsion/camera/R$bool;->is_distortion_correction_need_show:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsDistortionNeedShow:Z

    .line 531
    sget v0, Lcom/transsion/camera/R$bool;->is_support_full_size:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mFullSizeSupport:Z

    .line 532
    sget v0, Lcom/transsion/camera/R$bool;->pmaster_mode_support_full_size:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mPmasterModeSupportFullSize:Z

    .line 533
    sget v0, Lcom/transsion/camera/R$bool;->is_support_16_9:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsSupport_16_9:Z

    .line 536
    sget v0, Lcom/transsion/camera/R$bool;->is_macro_support_zoom:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsMacroSupportZoom:Z

    .line 537
    sget v0, Lcom/transsion/camera/R$bool;->is_macro_support_zoom_for_maincam:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsMacroSupportZoomForMainCam:Z

    .line 538
    sget v0, Lcom/transsion/camera/R$bool;->zoom_limit_30x_for_super_definition:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomLimit30xForSuperDefinition:Z

    .line 540
    sget v0, Lcom/transsion/camera/R$bool;->zoom_limit_60x_for_super_definition:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomLimit60xForSuperDefinition:Z

    .line 542
    sget v0, Lcom/transsion/camera/R$integer;->zoom_style_type:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomStyleType:I

    .line 543
    sget v0, Lcom/transsion/camera/R$bool;->is_widecam_item_ui_support_in_widecam:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsWideCamUISupport:Z

    .line 544
    sget v0, Lcom/transsion/camera/R$bool;->is_widecam_support_video_portrait:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsWideCamSupportVideoPortrait:Z

    .line 545
    sget v0, Lcom/transsion/camera/R$bool;->is_widecam_support_video_spot:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsWideCamSupportVideoSpot:Z

    .line 546
    sget v0, Lcom/transsion/camera/R$bool;->is_widecam_support_video_portrait_spot:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsWideCamSupportVideoPortraitSpot:Z

    .line 549
    sget v0, Lcom/transsion/camera/R$integer;->video_super_night_bv:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mVideoSuperNightBvLimit:I

    .line 550
    sget v0, Lcom/transsion/camera/R$integer;->video_super_night_bv_out:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mVideoSuperNightOutBvLimit:I

    .line 551
    sget v0, Lcom/transsion/camera/R$integer;->super_anti_low_light_bv:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSuperAntiLowLightBvLimit:I

    .line 552
    sget v0, Lcom/transsion/camera/R$bool;->super_anti_low_light_hint_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsLowlightHintSupport:Z

    .line 553
    sget v0, Lcom/transsion/camera/R$bool;->dolhdr_raw_supernight_both_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mDHdrAndRawSuperNightBothSupport:Z

    .line 556
    sget v0, Lcom/transsion/camera/R$bool;->video_mode_backwide_support_360hdr:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mBackWideSupport360Hdr:Z

    .line 557
    sget v0, Lcom/transsion/camera/R$bool;->video_mode_backlongfocus_support_360hdr:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mBackLongFocusSupport360Hdr:Z

    .line 558
    sget v0, Lcom/transsion/camera/R$bool;->video_mode_backlongfocus_support_dolhdr:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mBackLongFocusSupportDolHdr:Z

    .line 559
    sget v0, Lcom/transsion/camera/R$bool;->video_asd_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mVideoAsdSupport:Z

    .line 562
    sget v0, Lcom/transsion/camera/R$bool;->video_mode_support_back_360hdr:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mVideoModeSupportBack360hdr:Z

    .line 563
    sget v0, Lcom/transsion/camera/R$bool;->video_mode_support_front_360hdr:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mVideoModeSupportFront360hdr:Z

    .line 566
    sget v0, Lcom/transsion/camera/R$bool;->asd_enhance_default_on:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAsdEnhanceDefaultOn:Z

    .line 569
    sget v0, Lcom/transsion/camera/R$bool;->super_resolution_support_portrait_mode:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSuperResolutionSupportPortraitMode:Z

    .line 570
    sget v0, Lcom/transsion/camera/R$bool;->portrait_mode_enhance_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mPortraitModeEnhanceSupport:Z

    .line 573
    sget v0, Lcom/transsion/camera/R$bool;->billion_pixel_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mBillionPixelSupport:Z

    .line 574
    sget v0, Lcom/transsion/camera/R$bool;->high_definition_mode:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mHighDefinitionModeSupport:Z

    .line 575
    sget v0, Lcom/transsion/camera/R$bool;->ultrahd_mode:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mUltraHDModeSupport:Z

    .line 576
    sget v0, Lcom/transsion/camera/R$bool;->doc_high_definition_mode:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mDocHDSupport:Z

    .line 577
    sget v0, Lcom/transsion/camera/R$bool;->doc_mode_sprd_support_3dnr:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mDocSupport3dnr:Z

    .line 578
    sget v0, Lcom/transsion/camera/R$string;->front_cam_mode_default:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mFrontModeDefault:Ljava/lang/String;

    .line 579
    sget v0, Lcom/transsion/camera/R$bool;->superdefinition_108m_in_low_platform:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSuperdefinition108mInLowPlatform:Z

    .line 581
    sget v0, Lcom/transsion/camera/R$bool;->superdefinition_200m_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSuperDefinition200mSupport:Z

    .line 582
    sget v0, Lcom/transsion/camera/R$bool;->superdefinition_escape_night:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSuperDefinitionEscapeNight:Z

    .line 585
    sget v0, Lcom/transsion/camera/R$bool;->super_antivideo_default_on:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsSuperAntiVideoDefaultOn:Z

    .line 586
    sget v0, Lcom/transsion/camera/R$integer;->super_anti_video_restriction_type:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSuperAntiVideoRestrictionType:I

    .line 588
    sget v0, Lcom/transsion/camera/R$bool;->anti_video_restrict_4k30fps:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAntiVideoRestrict4K30FPS:Z

    .line 589
    sget v0, Lcom/transsion/camera/R$bool;->support_super_anti_video_v2:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportSuperAntiVideoV2:Z

    .line 590
    sget v0, Lcom/transsion/camera/R$bool;->support_hfps_anti_video:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportHFPSAntiVideo:Z

    .line 591
    sget v0, Lcom/transsion/camera/R$bool;->super_antivideo_support_wide:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSuperAntivideoSupportWide:Z

    .line 594
    const-string/jumbo v0, "video_facebeauty_common_values"

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mVideoBeautyCommonValues:[Ljava/lang/String;

    .line 595
    const-string/jumbo v0, "video_facebeauty_switch_use_global_store"

    .line 596
    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mVideoFBUseGlobalStore:Z

    .line 599
    sget v0, Lcom/transsion/camera/app/common/R$bool;->video_preIsp_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsVideoPreIspSupport:Z

    .line 601
    sget v0, Lcom/transsion/camera/R$bool;->video_preIsp_default_on:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsVideoPreIspDefaultOn:Z

    .line 602
    sget v0, Lcom/transsion/camera/R$bool;->video_pre_isp_support_front_camera:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mPreIspSupportFrontCamera:Z

    .line 603
    sget v0, Lcom/transsion/camera/R$bool;->video_mode_support_wide_camera:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mVideoSupportWide:Z

    .line 604
    sget v0, Lcom/transsion/camera/R$bool;->enable_video_preIsp_hint:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsPreIspHintEnabled:Z

    .line 607
    sget v0, Lcom/transsion/camera/R$bool;->close_quick_preview:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mNeedCloseQuickPreview:Z

    .line 610
    sget v0, Lcom/transsion/camera/R$bool;->pro_iso_double:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mProIsoDouble:Z

    .line 613
    sget v0, Lcom/transsion/camera/R$bool;->google_lens_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mGoogleLensSupport:Z

    .line 614
    sget v0, Lcom/transsion/camera/R$bool;->google_lens_use_new_api:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mGoogleLensUseNewApi:Z

    .line 617
    const-string v0, "stblur_level_support"

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSTblurModeSupportLevel:Z

    .line 618
    sget v0, Lcom/transsion/camera/R$string;->stblur_default_value:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSTblurDefaultValue:Ljava/lang/String;

    .line 619
    const-string v0, "stblur_fake_dual_lens_type"

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSTblurFakeDualLensType:I

    .line 620
    const-string v0, "is_stblur_cheat_zoom"

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsSTblurCheatZoom:Z

    .line 623
    const-string v0, "is_algo_support_for_back_camera"

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAlgoSupportForBackCamera:Z

    .line 627
    sget v0, Lcom/transsion/camera/R$bool;->show_laser_focus_view:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mLaserFocusSupport:Z

    .line 628
    sget v0, Lcom/transsion/camera/R$bool;->effect_by_otp:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mEffectByOtp:Z

    .line 631
    sget v0, Lcom/transsion/camera/R$integer;->auto_focus_default_type:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mDefaultAutoFocusType:I

    .line 634
    sget v0, Lcom/transsion/camera/R$integer;->gold_watermark_default_style_index:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mGoldWatermarkDefaultStyleValue:I

    .line 636
    sget v0, Lcom/transsion/camera/R$bool;->gold_watermark_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mGoldWatermarkSupport:Z

    .line 637
    sget v0, Lcom/transsion/camera/R$bool;->pro_watermark_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mProWatermarkSupport:Z

    .line 638
    sget v0, Lcom/transsion/camera/R$bool;->gold_watermark_default_value_on:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mGoldWatermarkDefaultValueOn:Z

    .line 639
    sget v0, Lcom/transsion/camera/R$bool;->watermark_default_value_on:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mWatermarkDefaultValueOn:Z

    .line 640
    sget v0, Lcom/transsion/camera/R$bool;->edit_watermark_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mEditWatermarkSupport:Z

    .line 641
    sget v0, Lcom/transsion/camera/R$dimen;->edit_watermark_brand_height:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getDimen(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mEditWatermarkBrandHeight:I

    .line 642
    sget v0, Lcom/transsion/camera/R$bool;->edit_watermark_brand_preview:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mEditWatermarkBrandPreview:Z

    .line 643
    sget v0, Lcom/transsion/camera/R$dimen;->default_edit_watermark_height:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getDimen(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mEditWatermarkDefaultHeight:I

    .line 644
    sget v0, Lcom/transsion/camera/R$dimen;->edit_watermark_brand_height_1:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getDimen(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mEditWatermarkSingleLineBrandHeight:I

    .line 645
    sget v0, Lcom/transsion/camera/R$bool;->edit_watermark_brand_customize:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mEditWatermarkBrandCustomize:Z

    .line 646
    sget v0, Lcom/transsion/camera/R$bool;->pro_watermark_brand_customize:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mProWatermarkBrandCustomize:Z

    .line 647
    sget v0, Lcom/transsion/camera/R$bool;->pro_watermark_styles_customize:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mProWatermarkStylesCustomize:Z

    .line 648
    sget v0, Lcom/transsion/camera/R$bool;->video_watermark_brand_customize:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mVideoWatermarkBrandCustomize:Z

    .line 649
    sget v0, Lcom/transsion/camera/R$bool;->customize_by_market:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mCustomizeByMarket:Z

    .line 650
    sget v0, Lcom/transsion/camera/R$bool;->customize_by_market_prop_name:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mCustomizeByMarketPropName:Z

    .line 651
    sget v0, Lcom/transsion/camera/R$string;->customize_market_prop_name:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mMarketPropName:Ljava/lang/String;

    .line 652
    sget v0, Lcom/transsion/camera/R$bool;->customize_by_region:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mCustomizeByRegion:Z

    .line 653
    sget v0, Lcom/transsion/camera/R$array;->pro_watermark_customize_by_region:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mWatermarkCustomizeRegionsStringArray:[Ljava/lang/String;

    .line 654
    invoke-static {v0}, Lcom/transsion/camera/app/ConfigFlow;->initWatermarkCustomizeMap([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mWatermarkCustomizeRegionsMap:Ljava/util/Map;

    .line 656
    sget v0, Lcom/transsion/camera/R$bool;->customize_by_country:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mCustomizeByCountry:Z

    .line 657
    sget v0, Lcom/transsion/camera/R$bool;->customize_by_memory:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mCustomizeByMemory:Z

    .line 658
    sget v0, Lcom/transsion/camera/R$bool;->wm_res_bind_with_sys_prop:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mWMResBindWithSysProp:Z

    .line 659
    sget v0, Lcom/transsion/camera/R$string;->wm_res_bind_with_sys_prop_name:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mWmResBingWithSysPropName:Ljava/lang/String;

    .line 660
    sget v0, Lcom/transsion/camera/R$array;->pro_watermark_items:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mProWatermarkConfigItems:[Ljava/lang/String;

    .line 661
    sget v0, Lcom/transsion/camera/R$bool;->default_watermark_on:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mDefaultWatermarkOn:Z

    .line 662
    sget v0, Lcom/transsion/camera/R$bool;->gold_wm_size_32_aligned:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mGoldWMSize32Aligned:Z

    .line 663
    sget v0, Lcom/transsion/camera/R$array;->wm_config_prop_values:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mWMConfigPropValues:[Ljava/lang/String;

    .line 664
    invoke-static {v0}, Lcom/transsion/camera/app/ConfigFlow;->initWatermarkCustomizeMap([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mWatermarkCustomizePropValuesMap:Ljava/util/Map;

    .line 667
    sget v0, Lcom/transsion/camera/R$bool;->hdr_default_value_with_market:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mHdrDefaultValueWithMarket:Z

    .line 670
    sget v0, Lcom/transsion/camera/R$bool;->firebase_gender_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mFirebaseGenderSupport:Z

    .line 673
    sget v0, Lcom/transsion/camera/R$bool;->mirror_setting_default_off:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mMirrorSettingDefaultOff:Z

    .line 674
    sget v0, Lcom/transsion/camera/R$array;->default_off_country:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mDefaultMirrorOffCountry:[Ljava/lang/String;

    .line 677
    sget v0, Lcom/transsion/camera/R$integer;->qrcode_recognize_interval:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mQrCodeRecognizeInterval:I

    .line 678
    sget v0, Lcom/transsion/camera/R$bool;->qrcode_default_open:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsQrCodeDefaultOpen:Z

    .line 679
    sget v0, Lcom/transsion/camera/R$bool;->interrupt_recognize_qrcode_when_preview:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsInterruptRecognizeWhenPreview:Z

    .line 683
    sget v0, Lcom/transsion/camera/R$bool;->mood_light_v2_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mMoodLightV2Support:Z

    const/4 v2, 0x0

    if-nez v0, :cond_958

    .line 684
    sget v0, Lcom/transsion/camera/R$bool;->mood_light_ui_support:I

    .line 685
    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_958

    move v0, v1

    goto :goto_959

    :cond_958
    move v0, v2

    :goto_959
    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mMoodLightUiSupport:Z

    if-eqz v0, :cond_964

    .line 686
    const-string v0, "mood_light_setting_default"

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Ljava/lang/String;)I

    move-result v0

    goto :goto_965

    :cond_964
    move v0, v1

    :goto_965
    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mMoodLightDefaultValue:I

    .line 689
    sget v0, Lcom/transsion/camera/R$bool;->use_new_luminance_interaction:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mUseNewLuminanceInteraction:Z

    .line 690
    sget v0, Lcom/transsion/camera/R$bool;->screen_flash_force_use_one_stage:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mUseOneStageForScreenFlash:Z

    .line 691
    sget v0, Lcom/transsion/camera/R$bool;->force_close_af_trigger:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mForceCloseAfTrigger:Z

    .line 692
    sget v0, Lcom/transsion/camera/R$integer;->front_dual_flash_strength_mode:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mDefaultFlashStrengthMode:I

    .line 693
    sget v0, Lcom/transsion/camera/R$integer;->video_front_dual_flash_strength_mode:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mVideoDefaultFlashStrengthMode:I

    .line 695
    sget v0, Lcom/transsion/camera/R$array;->nonsupport_dual_color_modes:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mNonsupportDualColorModes:[Ljava/lang/String;

    .line 696
    sget v0, Lcom/transsion/camera/R$array;->real_video_mode_category:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mVideoModesCategory:[Ljava/lang/String;

    .line 697
    sget v0, Lcom/transsion/camera/R$integer;->flash_facade_auto_front_low_mem_limit_brightness_value:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAutoFrontLowMemLimitBv:I

    .line 699
    sget v0, Lcom/transsion/camera/R$integer;->flash_facade_auto_back_limit_brightness_value:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAutoBackLimitBV:I

    .line 701
    sget v0, Lcom/transsion/camera/R$integer;->flash_facade_auto_front_limit_brightness_value:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAutoFrontLimitBV:I

    .line 703
    sget v0, Lcom/transsion/camera/R$integer;->flash_facade_auto_back_low_mem_limit_brightness_value:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAutoBackLowMemLimitBV:I

    .line 705
    sget v0, Lcom/transsion/camera/R$integer;->flash_facade_auto_back_tele_low_mem_limit_brightness_value:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAutoBackTeleLowMemLimitBV:I

    .line 707
    sget v0, Lcom/transsion/camera/R$integer;->flash_facade_auto_back_wide_low_mem_limit_brightness_value:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAutoBackWideLowMemLimitBV:I

    .line 711
    sget v0, Lcom/transsion/camera/R$bool;->asd_mode_support_tele_camera:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mConfigTeleCam:Z

    .line 714
    sget v0, Lcom/transsion/camera/R$bool;->is_limit_video_FPS:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsLimitVideoFps:Z

    .line 717
    sget v0, Lcom/transsion/camera/R$bool;->screen_flash_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mScreenFlashSupport:Z

    .line 720
    sget v0, Lcom/transsion/camera/R$bool;->volume_key_default_shutter:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mVolumeKeyDefaultShutter:Z

    .line 723
    sget v0, Lcom/transsion/camera/R$bool;->is_telecam_support_30x_for_pro:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsTeleCamSupport30XForPro:Z

    .line 724
    sget v0, Lcom/transsion/camera/R$bool;->is_telecam_support_60x_for_pro:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsTeleCamSupport60XForPro:Z

    .line 725
    sget v0, Lcom/transsion/camera/R$bool;->enable_face_detection_v2:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mEnableFaceDetectionV2:Z

    .line 726
    sget v0, Lcom/transsion/camera/app/common/R$bool;->video_flashlight_on_when_ring_screenlight_on:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mVideoFlashlightOnWhenRingScreenlightOn:Z

    .line 729
    sget v0, Lcom/transsion/camera/R$bool;->is_asd_mode_shutter_delay_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAsdModeShutterDelaySupport:Z

    .line 730
    sget v0, Lcom/transsion/camera/R$bool;->capturing_add_processing:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mCapturingAddProcessing:Z

    .line 731
    sget v0, Lcom/transsion/camera/R$bool;->lite_face_beauty_portrait_enhance_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mLiteFaceBeautyPortraitEnhanceSupport:Z

    .line 732
    sget v0, Lcom/transsion/camera/R$bool;->stblur_mode_hdr_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mStblurModeHDRSupport:Z

    .line 733
    sget v0, Lcom/transsion/camera/R$bool;->pmaster_mode_iso_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mPmasterModeISOSupport:Z

    .line 734
    sget v0, Lcom/transsion/camera/R$integer;->pmaster_mode_iso_support_type:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mPmasterModeISOSupportType:I

    .line 735
    sget v0, Lcom/transsion/camera/R$integer;->low_memory_limit_click_time:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mLowMemoryLimitClickTime:I

    .line 736
    sget v0, Lcom/transsion/camera/R$bool;->is_hdr_portrait_enhance_mutually_exclusive:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mHDRPortraitEnhance:Z

    .line 737
    sget v0, Lcom/transsion/camera/R$integer;->quick_view_photos_bitmap_quality:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mQuickViewPhotosBitmapQuality:I

    .line 739
    sget v0, Lcom/transsion/camera/R$integer;->thermal_throttle_warning_value:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mThermalThrottleWarningValue:I

    .line 740
    sget v0, Lcom/transsion/camera/R$integer;->thermal_throttle_exit_value:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mThermalThrottleExitValue:I

    .line 741
    sget v0, Lcom/transsion/camera/R$integer;->thermal_throttle_video_warning_value:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mThermalThrottleVideoWarningValue:I

    .line 743
    sget v0, Lcom/transsion/camera/R$integer;->thermal_throttle_timelapse_warning_value:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mThermalThrottleTimelapseWarningValue:I

    .line 745
    sget v0, Lcom/transsion/camera/R$bool;->video_thermal_waring_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mVideoThermalWaringSupport:Z

    .line 746
    sget v0, Lcom/transsion/camera/R$bool;->timelapse_thermal_waring_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mTimelapseThermalWaringSupport:Z

    .line 747
    sget v0, Lcom/transsion/camera/R$integer;->thermal_throttle_video_reduce_fps_value:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mThermalThrottleVideoReduceFpsValue:I

    .line 749
    sget v0, Lcom/transsion/camera/R$string;->sprd_thermal_path:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSprdThermalPath:Ljava/lang/String;

    .line 750
    sget v0, Lcom/transsion/camera/R$integer;->sprd_thermal_throttle_warning_value:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mThermalThrottleSprdWarningValue:I

    .line 752
    sget v0, Lcom/transsion/camera/R$integer;->sprd_thermal_throttle_exit_value:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mThermalThrottleSprdExitValue:I

    .line 754
    sget v0, Lcom/transsion/camera/R$integer;->initial_modes_number_in_tab:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mInitModesNumberInTab:I

    .line 755
    sget v0, Lcom/transsion/camera/R$integer;->max_zoom_ratio:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mMaxZoomRatio:I

    .line 756
    sget v0, Lcom/transsion/camera/R$bool;->zoom_ratio_for_13M:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomRatioFor13M:Z

    .line 757
    sget v0, Lcom/transsion/camera/R$bool;->zoom_ratio_for_8M:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomRatioFor8M:Z

    .line 760
    sget v0, Lcom/transsion/camera/R$bool;->support_ui_4_animator:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    .line 761
    sget v0, Lcom/transsion/camera/R$bool;->support_ui_4_fade_out_animator:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4FadeOutAnimator:Z

    .line 762
    sget v0, Lcom/transsion/camera/R$bool;->support_ui_4_go_to_gallery_share_back_animator:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4GoToGalleryShareBackAnimator:Z

    .line 764
    sget v0, Lcom/transsion/camera/R$bool;->support_renderscript_toolkit:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportRenderscriptToolkit:Z

    .line 765
    sget v0, Lcom/transsion/camera/R$integer;->use_renderscript_toolkit_prefer_factor:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mUseRenderscriptToolkitPreferFactor:I

    .line 767
    sget v0, Lcom/transsion/camera/R$bool;->recording_ui_respond_immediately:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mRecordingUIRespondImmediately:Z

    .line 772
    sget v0, Lcom/transsion/camera/app/common/R$bool;->support_ui_5_live_layout:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5LiveLayout:Z

    .line 774
    sget v0, Lcom/transsion/camera/R$bool;->support_ui_5_privacy_mode:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5PrivacyMode:Z

    .line 775
    sget v0, Lcom/transsion/camera/app/common/R$bool;->support_ui_5_more_mode_style:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5MoreModeStyle:Z

    .line 777
    sget v0, Lcom/transsion/camera/app/common/R$bool;->selling_point_guide_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_b1f

    .line 778
    invoke-static {}, Lcom/transsion/camera/app/ConfigFlow;->isSMTVersion()Z

    move-result v0

    if-nez v0, :cond_b1f

    move v0, v1

    goto :goto_b20

    :cond_b1f
    move v0, v2

    :goto_b20
    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportSellingPointGuide:Z

    .line 779
    sget v0, Lcom/transsion/camera/app/common/R$bool;->selling_point_video_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_b32

    .line 780
    invoke-static {}, Lcom/transsion/camera/app/ConfigFlow;->isSMTVersion()Z

    move-result v0

    if-nez v0, :cond_b32

    move v0, v1

    goto :goto_b33

    :cond_b32
    move v0, v2

    :goto_b33
    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportSellingPointVideo:Z

    .line 781
    sget v0, Lcom/transsion/camera/R$bool;->support_pause_immediately:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportPauseImmediately:Z

    .line 782
    sget v0, Lcom/transsion/camera/app/common/R$bool;->imagery_guide_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsSupportImageryGuide:Z

    .line 787
    sget v0, Lcom/transsion/camera/R$bool;->support_background_shot2shot:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportBackgroundShot2shot:Z

    .line 788
    sget v0, Lcom/transsion/camera/R$bool;->support_background_shot2shot_skip_policy:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportBackgroundShot2shotSkipPolicy:Z

    .line 790
    sget v0, Lcom/transsion/camera/R$bool;->support_low_quality_picture_public:I

    .line 791
    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportLowQualityPicturePublic:Z

    .line 792
    sget v0, Lcom/transsion/camera/R$bool;->support_defer_system:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportDeferSystem:Z

    .line 796
    sget v0, Lcom/transsion/camera/R$bool;->default_start_street_photo:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mDefaultStartStreetPhoto:Z

    .line 800
    sget v0, Lcom/transsion/camera/R$bool;->use_horizontal_popup_style:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mUseHorizontalPopupStyle:Z

    .line 801
    sget v0, Lcom/transsion/camera/R$integer;->support_fold_ui_type:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportFoldUiType:I

    .line 802
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportFoldUI()Z

    move-result v0

    if-eqz v0, :cond_b8b

    .line 803
    const-string v0, "aod_flip_funny_shot_support"

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAodFlipFunnyShotSupport:Z

    .line 807
    :cond_b8b
    sget v0, Lcom/transsion/camera/R$bool;->finish_secure_camera_on_pause:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mFinishSecureCameraOnPause:Z

    .line 808
    sget v0, Lcom/transsion/camera/R$bool;->ai_focus_v2_ui_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAiFocusV2UiSupport:Z

    .line 809
    sget v0, Lcom/transsion/camera/R$bool;->close_all_for_final_monkey_test:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mCloseAllForMonkeyTest:Z

    .line 810
    sget v0, Lcom/transsion/camera/R$bool;->supernight_mode_hdr_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSuperNightModeHDRSupport:Z

    .line 811
    sget v0, Lcom/transsion/camera/R$bool;->gl_preview_cover_rectangle:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mPreviewCoverRectangle:Z

    .line 812
    sget v0, Lcom/transsion/camera/R$bool;->video_wide_support_high_quality:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mVideoWideSupportHighQuality:Z

    .line 814
    sget v0, Lcom/transsion/camera/R$bool;->replace_50m_to_48m_icon:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mReplace50MTo48MIcon:Z

    .line 815
    sget v0, Lcom/transsion/camera/R$bool;->support_ai_button_to_shutter:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportAiButtonToShutter:Z

    .line 816
    sget v0, Lcom/transsion/camera/R$bool;->video_zoom_only_support_4x:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mVideoZoomOnlySupport4X:Z

    .line 818
    sget v0, Lcom/transsion/camera/R$integer;->ring_screen_light_opentime:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mRingScreenLightOpentime:I

    .line 819
    sget v0, Lcom/transsion/camera/R$array;->build_in_features_back_mode_order:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 820
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string v5, "com.transsion.camera.feature.mode.motioncapture.MotionCaptureModeEntry"

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsMotionCaptureModeSupported:Z

    .line 822
    sget v4, Lcom/transsion/camera/R$integer;->ring_screen_light_out_bv:I

    invoke-static {v4}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mRingScreenLightOutBv:I

    .line 823
    sget v4, Lcom/transsion/camera/R$bool;->force_af_trigger:I

    invoke-static {v4}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mForceAFTrigger:Z

    .line 824
    sget v4, Lcom/transsion/camera/R$bool;->turbo_fusion_enable:I

    invoke-static {v4}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mTurboFusionEnable:Z

    .line 825
    sget v4, Lcom/transsion/camera/R$bool;->multicam_capture_fast_night_conflict:I

    invoke-static {v4}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mMulticamCaptureFusionFastNightConflictSupport:Z

    .line 827
    sget v4, Lcom/transsion/camera/R$bool;->super_AiRaw_enable:I

    invoke-static {v4}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSuperAiRawEnable:Z

    .line 828
    sget v4, Lcom/transsion/camera/R$bool;->macro_support_super_airaw:I

    invoke-static {v4}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mMacroSupportSuperAiRaw:Z

    .line 829
    sget v4, Lcom/transsion/camera/R$bool;->super_night_countdown:I

    invoke-static {v4}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSuperNightCountdown:Z

    .line 830
    sget v4, Lcom/transsion/camera/R$bool;->dual_video_support_anti_video:I

    invoke-static {v4}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mDualVideoSupportAntiVideo:Z

    .line 832
    sget v4, Lcom/transsion/camera/R$integer;->motion_capture_type:I

    invoke-static {v4}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mMotionCaptureType:I

    .line 833
    sget v4, Lcom/transsion/camera/R$integer;->motion_capture_shot2shot_maxCountForMFNR:I

    invoke-static {v4}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mMotionCaptureShot2ShotMaxCountForMFNR:I

    .line 835
    sget v4, Lcom/transsion/camera/R$bool;->auto_focus_human_detect_new:I

    invoke-static {v4}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsHumanDetectNew:Z

    .line 836
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v4, "com.transsion.camera.feature.mode.streetphoto.StreetPhotoModeEntry"

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsStreetSnapModeSupported:Z

    .line 838
    sget v0, Lcom/transsion/camera/R$bool;->is_project_support_lens_correction:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsProjectSupportLensCorrection:Z

    .line 840
    sget v0, Lcom/transsion/camera/R$bool;->is_support_hide_cover_animation:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsSupportHideCoverAnimation:Z

    .line 843
    sget v0, Lcom/transsion/camera/R$array;->video_quality_custom_item:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mCustomVideoQuality:[Ljava/lang/String;

    .line 845
    sget v0, Lcom/transsion/camera/app/common/R$bool;->flare_capture_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_c84

    .line 847
    invoke-static {}, Lcom/transsion/camera/utils/CameraUtil;->getRam()I

    move-result v0

    sget v4, Lcom/transsion/camera/R$bool;->enable_flare_capture_support_for_6G:I

    invoke-static {v4}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_c7e

    goto :goto_c80

    :cond_c7e
    const/16 v3, 0x68

    :goto_c80
    if-lt v0, v3, :cond_c84

    move v0, v1

    goto :goto_c85

    :cond_c84
    move v0, v2

    .line 849
    :goto_c85
    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsFlareCaptureSupport:Z

    .line 851
    sget v0, Lcom/transsion/camera/app/common/R$bool;->group_capture_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_c99

    sget-object v0, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    .line 853
    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->isRepairMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_c99

    move v0, v1

    goto :goto_c9a

    :cond_c99
    move v0, v2

    :goto_c9a
    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsGroupCaptureSupport:Z

    .line 854
    sget v0, Lcom/transsion/camera/R$bool;->group_capture_waiting_pre_jpeg:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mGroupCaptureWaitingPreJpeg:Z

    .line 855
    sget v0, Lcom/transsion/camera/R$bool;->group_capture_enable_zsl:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsGroupCaptureEnableZSL:Z

    .line 856
    sget v0, Lcom/transsion/camera/R$integer;->group_capture_zsl_diff_mills:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mGroupCaptureZslDiffMills:I

    .line 857
    sget v0, Lcom/transsion/camera/R$bool;->group_capture_zoom_limited:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsGroupCaptureZoomLimited:Z

    .line 858
    sget v0, Lcom/transsion/camera/R$bool;->support_video_night_filter:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportVideoNightFilter:Z

    .line 859
    sget v0, Lcom/transsion/camera/R$bool;->super_definition_filter_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSuperDefinitionFilterSupport:Z

    .line 860
    sget v0, Lcom/transsion/camera/R$bool;->support_pending_thumbnail_click:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mPendingThumbnailClick:Z

    .line 861
    sget v0, Lcom/transsion/camera/R$bool;->goto_gallery_on_thumbnail_touch_down:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportThumbnailTouchDown:Z

    .line 862
    sget v0, Lcom/transsion/camera/R$bool;->enable_time_lapse_video_anti_on_cam_mode:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mEnableTimelapseVideoAntiOnCamMode:Z

    .line 863
    sget v0, Lcom/transsion/camera/R$bool;->video_makeup_support_wide_camera:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mVideoMakeUpSupportWideCamera:Z

    .line 864
    sget v0, Lcom/transsion/camera/R$bool;->raw_sr_mem_limit:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mRawSRMemLimit:Z

    .line 865
    sget v0, Lcom/transsion/camera/app/common/R$integer;->second_item_zoom_value:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    .line 867
    iget-boolean v3, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz v3, :cond_d00

    mul-int/lit8 v0, v0, 0x64

    .line 868
    :cond_d00
    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSecondItemZoomValue:I

    .line 869
    sget v0, Lcom/transsion/camera/R$integer;->super_resolution_hdr_limit_zoom:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    .line 870
    iget-boolean v3, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz v3, :cond_d0e

    mul-int/lit8 v0, v0, 0x64

    .line 871
    :cond_d0e
    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSuperResolutionHDRLimitZoom:I

    .line 872
    sget v0, Lcom/transsion/camera/R$integer;->hdr_max_zoom_ratio:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    .line 873
    iget-boolean v3, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz v3, :cond_d1c

    mul-int/lit8 v0, v0, 0x64

    :cond_d1c
    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mHdrMaxZoomRatio:I

    .line 874
    sget v0, Lcom/transsion/camera/R$bool;->async_process_storage_volumes:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAsyncProcessStorageVolumes:Z

    .line 875
    sget v0, Lcom/transsion/camera/R$bool;->master_guide_ui_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsMasterGuideUISupport:Z

    .line 877
    sget v0, Lcom/transsion/camera/R$string;->front_crop_fov_value:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 878
    iget-boolean v3, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    const/16 v4, 0x2710

    if-eqz v3, :cond_d4a

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ge v3, v4, :cond_d4a

    .line 879
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :cond_d4a
    iput-object v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mFovCropValue:Ljava/lang/String;

    .line 880
    sget v0, Lcom/transsion/camera/R$bool;->sat_replace_wide:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSatReplaceWide:Z

    .line 881
    sget v0, Lcom/transsion/camera/R$bool;->macro_zoom_customized:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mMacroZoomCustomized:Z

    .line 882
    sget v0, Lcom/transsion/camera/R$integer;->customized_tele_value:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    .line 883
    iget-boolean v3, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz v3, :cond_d6a

    if-ge v0, v4, :cond_d6a

    mul-int/lit8 v0, v0, 0x64

    :cond_d6a
    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mCustomizedTeleValue:I

    .line 884
    sget v0, Lcom/transsion/camera/R$bool;->slow_motion_zoom_limited:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSlowMotionZoomLimited:Z

    .line 885
    sget v0, Lcom/transsion/camera/R$integer;->pmaster_back_camera_focal_distance:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mFocalDistance:I

    .line 887
    sget v0, Lcom/transsion/camera/R$bool;->pmaster_mode_focal_len:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mFocalLengthSupport:Z

    .line 888
    sget v0, Lcom/transsion/camera/R$bool;->customized_focal_len_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mCustomizedFocalLengthSupport:Z

    .line 889
    sget v0, Lcom/transsion/camera/R$array;->wide_range_converter_value_list:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mWideRangeConverterValueList:[I

    .line 890
    sget v0, Lcom/transsion/camera/R$array;->wide_range_converter_progress_list:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mWideRangeConverterProgressList:[I

    .line 892
    sget v0, Lcom/transsion/camera/R$bool;->is_rotor_motor:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsRotorMotor:Z

    .line 893
    sget v0, Lcom/transsion/camera/R$bool;->main_zoom_3x_supported:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsMainZoom3XSupported:Z

    .line 896
    sget v0, Lcom/transsion/camera/R$array;->click_zoom_supported_entry_values:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_de3

    .line 898
    array-length v4, v0

    if-lez v4, :cond_de3

    .line 899
    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v4, Lcom/transsion/camera/app/ConfigFlow$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/transsion/camera/app/ConfigFlow$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v4}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v4, Lcom/transsion/camera/app/ConfigFlow$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/transsion/camera/app/ConfigFlow$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/utils/CustomConfigUtil;)V

    .line 900
    invoke-interface {v0, v4}, Ljava/util/stream/IntStream;->map(Ljava/util/function/IntUnaryOperator;)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v4, Lcom/transsion/camera/app/ConfigFlow$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Lcom/transsion/camera/app/ConfigFlow$$ExternalSyntheticLambda2;-><init>()V

    .line 901
    invoke-interface {v0, v4}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v4, Lcom/transsion/camera/app/ConfigFlow$$ExternalSyntheticLambda3;

    invoke-direct {v4}, Lcom/transsion/camera/app/ConfigFlow$$ExternalSyntheticLambda3;-><init>()V

    .line 902
    invoke-interface {v0, v4}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_de4

    :cond_de3
    move-object v0, v3

    :goto_de4
    iput-object v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mClickZoomSupportedEntryValues:[Ljava/lang/String;

    .line 903
    sget v0, Lcom/transsion/camera/R$bool;->click_zoom_default_zoom_out:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mClickZoomDefaultZoomOut:Z

    .line 905
    sget v0, Lcom/transsion/camera/R$bool;->down_start_video_record:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mDownStartVideoRecord:Z

    .line 908
    sget v0, Lcom/transsion/camera/R$array;->ainr_zoom_range:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getIntArray(I)[I

    move-result-object v0

    if-eqz v0, :cond_e12

    .line 909
    array-length v4, v0

    if-lez v4, :cond_e12

    .line 910
    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v3, Lcom/transsion/camera/app/ConfigFlow$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lcom/transsion/camera/app/ConfigFlow$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/utils/CustomConfigUtil;)V

    .line 911
    invoke-interface {v0, v3}, Ljava/util/stream/IntStream;->map(Ljava/util/function/IntUnaryOperator;)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 912
    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v3

    :cond_e12
    iput-object v3, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAINRZoomRange:[I

    .line 913
    sget v0, Lcom/transsion/camera/R$array;->portrait_enhance_default:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mPortraitEnhanceDefault:[Ljava/lang/String;

    .line 914
    sget v0, Lcom/transsion/camera/R$integer;->curved_screen_limit_distance:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mEdgeDistance:I

    .line 915
    sget v0, Lcom/transsion/camera/R$bool;->close_back_camera_skin_optimization:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mCloseBackCameraSkinOptimization:Z

    .line 917
    sget v0, Lcom/transsion/camera/R$bool;->limit_front_camera_skin_optimization:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mLimitFrontCameraSkinOptimization:Z

    .line 919
    sget v0, Lcom/transsion/camera/R$integer;->limit_skin_optimization_bv_threshold:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mLimitSkinOptimizationBVThreshold:I

    .line 921
    sget v0, Lcom/transsion/camera/R$integer;->privacy_mode_max_frame_number:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mPrivacyModeMaxFrameNumber:I

    .line 922
    sget v0, Lcom/transsion/camera/R$bool;->magic_sky_multi_frame:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportMagicSkyMultiFrame:Z

    .line 923
    sget v0, Lcom/transsion/camera/R$bool;->dual_video_support_front_and_wide:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mDualVideoSupportFrontAndWide:Z

    .line 924
    sget v0, Lcom/transsion/camera/R$bool;->dual_video_sync_audio_and_video:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mDualVideoSyncAudioAndVideo:Z

    .line 925
    sget v0, Lcom/transsion/camera/R$bool;->force_hide_device_info:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mForceHideDeviceInfo:Z

    .line 926
    sget v0, Lcom/transsion/camera/R$bool;->gender_indentification_default_on:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mGenderIdentificationDefaultOn:Z

    .line 927
    sget v0, Lcom/transsion/camera/R$integer;->video_auto_fps_support_type:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mVideoAutoFpsSupportType:I

    .line 929
    sget v0, Lcom/transsion/camera/R$bool;->support_super_night_zoom_eis:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportSuperNightZoomEis:Z

    .line 930
    sget v0, Lcom/transsion/camera/R$bool;->update_ring_screen_light_out_bv_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mUpdateRingScreenLightOutBvSupport:Z

    .line 934
    sget v0, Lcom/transsion/camera/app/common/R$bool;->hdr_10_plus_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportHdr10Plus:Z

    .line 936
    sget v0, Lcom/transsion/camera/app/common/R$bool;->ai_frame_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsAIFrameSupport:Z

    .line 938
    sget v0, Lcom/transsion/camera/app/common/R$bool;->ai_zoom_sr_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsAIZoomSRSupport:Z

    .line 941
    sget v0, Lcom/transsion/camera/R$bool;->support_new_capture_animation:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportNewCaptureAnimation:Z

    .line 942
    sget v0, Lcom/transsion/camera/R$bool;->continuous_hide_save_animation:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mContinuousHideSaveAnimation:Z

    .line 943
    sget v0, Lcom/transsion/camera/R$bool;->super_night_lite_not_support_for_6G:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSuperNightLiteNotSupportFor6G:Z

    .line 945
    sget v0, Lcom/transsion/camera/R$integer;->shoulder_button_click_switch_default_value:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mShoulderButtonClickSwitchDefaultValue:I

    .line 947
    sget v0, Lcom/transsion/camera/R$integer;->shoulder_button_long_press_switch_default_value:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mShoulderButtonLongPressSwitchDefaultValue:I

    .line 949
    sget v0, Lcom/transsion/camera/R$bool;->continue_shot_need_abort_captures:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mContinuousShotNeedAbortCaptures:Z

    .line 951
    sget v0, Lcom/transsion/camera/R$bool;->macro_mode_skip_policy_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mMacroModeSkipPolicySupport:Z

    .line 952
    sget v0, Lcom/transsion/camera/R$bool;->super_night_light_replace_super_night_for_low_memory:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSuperNightLightReplaceSuperNight:Z

    .line 953
    sget v0, Lcom/transsion/camera/R$bool;->is_hdr_limited_by_memory:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsHdrLimitedByMemory:Z

    .line 954
    sget v0, Lcom/transsion/camera/R$bool;->force_super_resolution_on:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mForceSuperResolution:Z

    .line 955
    sget v0, Lcom/transsion/camera/R$bool;->ultra_hd_pop_tips_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mUltraHdPopTipsSupport:Z

    .line 956
    sget v0, Lcom/transsion/camera/R$bool;->ai_frame_pop_tips_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAiFramePopTipsSupport:Z

    .line 958
    sget v0, Lcom/transsion/camera/R$bool;->enable_vip_when_pause:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mEnableVipWhenPause:Z

    .line 960
    sget v0, Lcom/transsion/camera/R$bool;->enable_start_blur:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_f16

    const-string v0, "debug.camera.blur.start.enable"

    .line 961
    invoke-static {v0, v2}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_f15

    goto :goto_f16

    :cond_f15
    move v1, v2

    :cond_f16
    :goto_f16
    iput-boolean v1, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mEnableStartBlur:Z

    .line 963
    sget v0, Lcom/transsion/camera/R$bool;->zoom_eis_support_super_definition:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomEisSupportSuperDefinition:Z

    .line 964
    invoke-static {}, Lcom/transsion/camera/app/ConfigFlow;->updateKOMDebugInfo()V

    return-void
.end method

.method public static initFlashConfigInSubThread(Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;)V
    .registers 5

    .line 123
    sget v0, Lcom/transsion/camera/R$bool;->flash_facade_screen_flash_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mScreenFlashSupport:Z

    .line 125
    sget v0, Lcom/transsion/camera/R$bool;->flash_facade_ring_screen_light_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mRingScreenLightSupport:Z

    .line 126
    sget v0, Lcom/transsion/camera/R$bool;->rear_camera_super_flash_support:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mRearCameraSuperFlashSupport:Z

    .line 127
    sget v0, Lcom/transsion/camera/R$bool;->led_flash_low_light:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mLedFlashLowLight:Z

    .line 128
    sget v0, Lcom/transsion/camera/R$bool;->led_flash_style_one_stage:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mFlashStyleOneStage:Z

    .line 129
    sget v0, Lcom/transsion/camera/R$string;->flash_default_value:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mFlashDefaultValue:Ljava/lang/String;

    .line 130
    sget v0, Lcom/transsion/camera/R$integer;->flash_default_luminance_value:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mDefaultLuminanceValue:I

    .line 132
    sget v0, Lcom/transsion/camera/R$integer;->front_dual_flash_color_temp:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mDefaultFrontDualFlashColorTemp:I

    .line 133
    sget v0, Lcom/transsion/camera/R$integer;->front_dual_flash_strength_mode:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mDefaultPhotoFrontDualFlashStrengthMode:I

    .line 135
    sget v0, Lcom/transsion/camera/R$integer;->video_front_dual_flash_strength_mode:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mDefaultVideoFrontDualFlashStrengthMode:I

    .line 137
    sget v0, Lcom/transsion/camera/R$integer;->flash_facade_limit_brightness_value:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mLimitBV:I

    .line 138
    sget v0, Lcom/transsion/camera/R$integer;->flash_facade_auto_front_limit_brightness_value:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mAutoFrontLimitBV:I

    .line 140
    sget v0, Lcom/transsion/camera/R$integer;->flash_facade_auto_back_limit_brightness_value:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mAutoBackLimitBV:I

    .line 142
    sget v0, Lcom/transsion/camera/R$integer;->flash_facade_auto_back_tele_limit_brightness_value:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mAutoBackTeleLimitBV:I

    .line 144
    sget v0, Lcom/transsion/camera/R$integer;->flash_facade_auto_back_wide_limit_brightness_value:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mAutoBackWideLimitBV:I

    const/4 v0, -0x1

    .line 146
    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->getFlashLimitDebug(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mLimitDebugBV:I

    .line 148
    sget v0, Lcom/transsion/camera/R$array;->unsupport_flash_style_one_stage_modes:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mUnSupportOneStageModes:[Ljava/lang/String;

    .line 151
    sget v0, Lcom/transsion/camera/R$array;->flash_facade_off_supported_features:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mOffSupportedFeatures:[Ljava/lang/String;

    .line 153
    sget v0, Lcom/transsion/camera/R$array;->flash_facade_on_supported_features:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mOnSupportedFeatures:[Ljava/lang/String;

    .line 155
    sget v0, Lcom/transsion/camera/R$array;->flash_facade_auto_supported_features:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mAutoSupportedFeatures:[Ljava/lang/String;

    .line 157
    sget v0, Lcom/transsion/camera/R$array;->flash_facade_auto_supported_features_led_flash_low_light:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mLowLightAutoSupportedFeatures:[Ljava/lang/String;

    .line 159
    sget v0, Lcom/transsion/camera/R$array;->flash_facade_torch_supported_features:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mTorchSupportedFeatures:[Ljava/lang/String;

    .line 161
    sget v0, Lcom/transsion/camera/R$array;->flash_facade_ring_screen_light_supported_features:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mRingScreenLightSupportedFeatures:[Ljava/lang/String;

    .line 163
    sget v0, Lcom/transsion/camera/R$array;->flash_facade_screen_flash_supported_features:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mScreenFlashSupportedFeatures:[Ljava/lang/String;

    .line 165
    sget v0, Lcom/transsion/camera/R$bool;->flash_reset_brightness_monitor_when_display_change:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mResetBrightnessMonitorWhenDisplayChange:Z

    .line 167
    sget v0, Lcom/transsion/camera/R$bool;->facing_back_supported_sfl:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mFacingBackSupportedSFL:Z

    .line 168
    sget v0, Lcom/transsion/camera/R$bool;->facing_front_supported_sfl:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mFacingFrontSupportedSFL:Z

    .line 169
    sget v0, Lcom/transsion/camera/R$bool;->use_new_luminance_interaction:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mUseNewLuminanceInteraction:Z

    .line 170
    sget v0, Lcom/transsion/camera/R$bool;->use_platform_screen_flash:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mUsePlatformScreenFlash:Z

    .line 171
    sget v0, Lcom/transsion/camera/R$bool;->wide_back_unsupported_sfl:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mBackWideUnSupportSFL:Z

    .line 172
    sget v0, Lcom/transsion/camera/R$bool;->tele_back_unsupported_sfl:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mBackTeleUnSupportSFL:Z

    .line 175
    sget v0, Lcom/transsion/camera/R$integer;->thr_level_luminance_adjust_support_type:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    .line 178
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mLuminanceAdjustSupportForCamera:[I

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mLuminanceAdjustSupportForCamera:[I

    const/4 v1, 0x0

    .line 179
    aget v2, v0, v1

    const/4 v3, 0x1

    if-gtz v2, :cond_111

    aget v0, v0, v3

    if-lez v0, :cond_10f

    goto :goto_111

    :cond_10f
    move v0, v1

    goto :goto_112

    :cond_111
    :goto_111
    move v0, v3

    :goto_112
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mFrontDualFlashSupport:Z

    if-lez v2, :cond_117

    move v1, v3

    .line 181
    :cond_117
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mBackCamThrLevelSupport:Z

    .line 182
    sget v0, Lcom/transsion/camera/R$bool;->flash_facade_movie_front_no_flash:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mFlashFacadeMovieFrontNoFlash:Z

    .line 183
    sget v0, Lcom/transsion/camera/R$bool;->force_remove_auto_for_back_video:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mForceRemoveVideoBackAuto:Z

    .line 184
    sget v0, Lcom/transsion/camera/R$bool;->flash_facade_auto_support_led_flash_in_video_mode:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mFlashFacadeAutoSupportLedFlashInVideoMode:Z

    .line 186
    sget-object v0, Lcom/transsion/camera/app/ConfigFlow;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FlashConfig mAutoFrontLimitBV: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mAutoFrontLimitBV:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mAutoBackLimitBV: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mAutoBackLimitBV:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mLimitDebugBV: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mLimitDebugBV:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private static initLuminanceAdjustSupportForCamera(Lcom/transsion/camera/utils/CustomConfigUtil;)V
    .registers 5

    .line 230
    sget v0, Lcom/transsion/camera/R$integer;->thr_level_luminance_adjust_support_type:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mThrLevelLuminanceAdjustSupportType:I

    .line 232
    sget v0, Lcom/transsion/camera/R$integer;->luminance_adjust_support_type_for_front:I

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v0

    .line 234
    sget v1, Lcom/transsion/camera/R$integer;->luminance_adjust_support_type_for_back:I

    invoke-static {v1}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(I)I

    move-result v1

    if-nez v0, :cond_3f

    if-nez v1, :cond_3f

    .line 242
    iget v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mThrLevelLuminanceAdjustSupportType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_38

    if-eq v0, v2, :cond_31

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2a

    .line 253
    filled-new-array {v1, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mLuminanceAdjustSupportForCamera:[I

    return-void

    .line 250
    :cond_2a
    filled-new-array {v2, v2}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mLuminanceAdjustSupportForCamera:[I

    return-void

    .line 247
    :cond_31
    filled-new-array {v1, v2}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mLuminanceAdjustSupportForCamera:[I

    return-void

    .line 244
    :cond_38
    filled-new-array {v2, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mLuminanceAdjustSupportForCamera:[I

    return-void

    .line 239
    :cond_3f
    filled-new-array {v1, v0}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mLuminanceAdjustSupportForCamera:[I

    return-void
.end method

.method private static initWatermarkCustomizeMap([Ljava/lang/String;)Ljava/util/Map;
    .registers 8

    .line 997
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_45

    .line 998
    array-length v1, p0

    if-nez v1, :cond_b

    goto :goto_45

    .line 1001
    :cond_b
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_e
    if-ge v3, v1, :cond_45

    aget-object v4, p0, v3

    if-eqz v4, :cond_42

    .line 1002
    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1d

    goto :goto_42

    .line 1005
    :cond_1d
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1006
    array-length v5, v4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_26

    goto :goto_42

    .line 1010
    :cond_26
    aget-object v5, v4, v2

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    .line 1011
    aget-object v4, v4, v6

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 1012
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_42

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_42

    .line 1014
    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_42
    :goto_42
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_45
    :goto_45
    return-object v0
.end method

.method private static isSMTVersion()Z
    .registers 6

    const/4 v0, 0x0

    .line 974
    :try_start_1
    const-string v1, "android.os.Build"

    invoke-static {v1}, Lcom/transsion/camera/utils/ReflectionUtils;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 975
    const-string v2, "TRAN_EXTEND_PARTITION_SUPPORT"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12} :catch_2b

    .line 976
    :try_start_12
    sget-object v2, Lcom/transsion/camera/app/ConfigFlow;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[isSMTVersion] tranExtendPartitionSupport "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_28} :catch_29

    goto :goto_47

    :catch_29
    move-exception v2

    goto :goto_2d

    :catch_2b
    move-exception v2

    move v1, v0

    .line 978
    :goto_2d
    sget-object v3, Lcom/transsion/camera/app/ConfigFlow;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[isSMTVersion] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 980
    :goto_47
    const-string v2, "SMT"

    if-eqz v1, :cond_53

    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5f

    :cond_53
    const-string v1, "ro.product.transsion.smt.version"

    invoke-static {v1}, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_60

    :cond_5f
    const/4 v0, 0x1

    :cond_60
    return v0
.end method

.method private static splitAsdConfig([Ljava/lang/String;)[[I
    .registers 8

    .line 984
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_2e

    .line 986
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    if-ge v3, v1, :cond_2e

    aget-object v4, p0, v3

    .line 987
    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 988
    array-length v5, v4

    const/4 v6, 0x1

    if-le v5, v6, :cond_2b

    .line 989
    aget-object v5, v4, v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aget-object v4, v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    filled-new-array {v5, v4}, [I

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 993
    :cond_2e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [[I

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[I

    return-object p0
.end method

.method private static updateKOMDebugInfo()V
    .registers 1

    .line 968
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportSysKOMEnable()Z

    move-result v0

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->setKOMCameraDebugEnable(Z)V

    return-void
.end method
