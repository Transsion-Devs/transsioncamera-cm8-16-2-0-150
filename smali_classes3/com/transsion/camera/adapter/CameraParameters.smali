.class public abstract Lcom/transsion/camera/adapter/CameraParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static MAX_IMAGE_NUMBER:I

.field static MAX_THUMBNAIL_NUMBER:I

.field static final MIN_ZOOM_RATIO:I

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field static final ZOOM_RATIO_DENOMINATOR:F


# instance fields
.field private awbGains:[F

.field private bmLowLightMode:I

.field private bmMultiFrameNum:I

.field private m2kSize:Landroid/util/Size;

.field private m360HDRMode:I

.field private m360VideoHDRInitMode:I

.field private m360VideoHDRMode:I

.field protected mAIRawLiteMotionDetection:I

.field private mAIRawLiteSupportPortraitEnhance:Z

.field private mAIRawMode:I

.field private mAWBLockStatus:Z

.field private mAWBMode:Ljava/lang/String;

.field private mAbeHdrCheckMode:I

.field private mActivityOrientation:I

.field private mAdrcGainValue:F

.field private mAeLock:Z

.field private mAeStateValue:I

.field private mAecFrameAdrcGain:Ljava/lang/Float;

.field private mAecFrameControlLuxIndex:Ljava/lang/Float;

.field private mAecFrameDarkBoostGain:Ljava/lang/Float;

.field private mAecSensitivity:[F

.field private mAfFfMode:I

.field private mAiMoonMode:I

.field private mAiRawScene:I

.field private mAirawSN2SRMode:I

.field private mAisMode:I

.field private mAisMorpho:I

.field private mAlgorithmMigrate:Z

.field private mAnimalEyeDetection:Ljava/lang/String;

.field private mAntiVideo:Ljava/lang/String;

.field private mAodMode:Z

.field private mAppModeId:Ljava/lang/String;

.field private mArcFilterId:I

.field private mAsdIsp:[I

.field private mAsdMode:I

.field private mAsdVersion:I

.field private mAutoFocusSwitch:Ljava/lang/String;

.field private mAutoFpsModeForISP:I

.field private mAutoMacroSwitch:Ljava/lang/String;

.field private mAutoMacroSwitchSetting:Ljava/lang/String;

.field private mAutoWatermarkMode:Ljava/lang/String;

.field private mAwbDecisionAfterTC:[F

.field private mAwbFrameControlCCT:F

.field private mBGImageReaderId:I

.field private mBGServiceEnable:Z

.field private mBMCustomZslBufSize:I

.field private mBWConvertEnable:Z

.field private mBWPortraitEnable:Z

.field private mBestMomentDetectMode:I

.field private mBestMomentRawHDRMode:I

.field private mBmDebandingMode:I

.field private mBrightnessValue:I

.field private mCaptureCustomTuning:Ljava/lang/String;

.field private mCaptureISPTunning:I

.field private mCaptureId:I

.field private mCaptureTag:I

.field private mCaptureTime:J

.field private mCaptureZSLTimestamps:[J

.field private mCapturing:Z

.field private mCelebritySceneMode:I

.field private mClickDownZoomRatio:I

.field private mClickUpZoomRatio:I

.field private mColorLevel:Ljava/lang/String;

.field private mContrastValue:I

.field private mCurrentFaces:I

.field private mDXOAsdEffectColorCard:Z

.field private mDXOHasValidFace:Z

.field private mDXOTripodMode:Z

.field private mDataFlowType:I

.field private mDenoiseMode:I

.field private mDistortionCorrectionMode:I

.field private mDistortionCorrectionPreviewEnable:Ljava/lang/String;

.field private mDxoSceneDetection:Ljava/lang/String;

.field protected mEVList:[I

.field private mEditWatermarkMode:Ljava/lang/String;

.field private mEditWatermarkSupport:Z

.field private mEffect:I

.field public mEnableLowConfig:Z

.field private mExcludeVideoMakeupBeauty:I

.field private mExifModeInfo:I

.field private mExposureCompensation:I

.field private mExposureTime:J

.field private mExternalIspMode:I

.field private mExtraCaptureCount:I

.field private mEyeDetection:Ljava/lang/String;

.field private mFaceAttributeInfo:[I

.field private mFaceBeautyFeaturesLevel:[I

.field private mFaceBeautyLevel:Ljava/lang/String;

.field private mFaceBeautyMode:Ljava/lang/String;

.field public mFaceBeautyPreviewInApp:Z

.field private mFaceDetectionEnable:Z

.field private mFaceProportion:F

.field private mFakeDualLensMode:I

.field private mFeature2Mode:I

.field private mFlareCaptureEnable:I

.field private mFlashFacade:Ljava/lang/String;

.field private mFlashMode:Ljava/lang/String;

.field private mFlashSnapAutoCaptureMode:I

.field private mFlashStyle:Ljava/lang/String;

.field private mFocalLength:I

.field private mFocusAreas:Ljava/util/List;

.field private mFocusDistance:F

.field private mFocusLength:F

.field private mFocusMode:Ljava/lang/String;

.field private mFovWideCrop:Z

.field private mFrontDualFlashColorTemp:I

.field private mFrontDualFlashStrengthMode:I

.field private mFusionMode:Ljava/lang/String;

.field private mGenderAttributeValue:Ljava/lang/String;

.field private mGoldWaterMarkSize:[I

.field private mGoldWatermarkMode:Ljava/lang/String;

.field protected mGoldWatermarkSupport:Z

.field private mGoldWatermarkType:Ljava/lang/String;

.field private mGroupCaptureEnable:I

.field private mHALBMLowLightMode:I

.field protected mHDRAeExpoInfo:[I

.field private mHdMode:Ljava/lang/String;

.field private mHdr10PlusMode:I

.field private mHeavyCapturing:Z

.field private mHeavyCapturingBV:I

.field private mHighFpsMode:Ljava/lang/String;

.field private mHighLightMode:I

.field private mHighPixelMode:I

.field private mHumanBox:[I

.field private mHumanDetection:I

.field private mHumanEffectMode:Ljava/lang/String;

.field private mISOValue:I

.field private mISPTuningEnable:I

.field private mImageStyleId:I

.field private mInSensorZoomEnable:I

.field private mIncreaseFreqEnable:I

.field private mIs24HourFormat:I

.field private mIsAiRawLiteSupport:Z

.field private mIsBurstCapturing:Z

.field private mIsCurrentAppModeRequiredOnContinuousShot:Z

.field protected mIsDetectedMoon:Z

.field private mIsExtraCaptureEnableZSL:Z

.field private mIsLongFocusCamera:Z

.field private mIsPostAlgoOn:Z

.field private mIsWideCamera:Z

.field private mIszScene:I

.field private mJpegOrientation:I

.field private mJpegQuality:I

.field private mLastShotNotSkip:Z

.field private mLensCorrectionMode:I

.field private mLimitFpsRange:Landroid/util/Range;

.field private mLivePhotoMode:I

.field private mLiveResultMode:I

.field protected mLlsInfo:[I

.field private mLocation:Landroid/location/Location;

.field private mLongExposureCaptureState:Ljava/lang/String;

.field private mLongExposureScene:Ljava/lang/String;

.field private mLongExposureTripod:Ljava/lang/String;

.field private mLongFocusBaseZoomRatio:F

.field private mLowLightMode:I

.field private mLuminanceValue:I

.field protected mMFNRAeExpoInfo:[I

.field private mMTKProcessRawEnable:I

.field private mMacroLampValue:I

.field private mMagicSkyMode:Ljava/lang/String;

.field private mMagicSkyResult:I

.field private mMagicSkyType:Ljava/lang/String;

.field private mMakeUpIntensitys:[F

.field private mMakeUpMode:I

.field private mMakeUpVideoIntensitys:[F

.field private mMakeUpVideoMode:I

.field private mManualAWBValue:Ljava/lang/String;

.field private mMeteringAreas:Ljava/util/List;

.field private mMeteringMode:Ljava/lang/String;

.field private mMiddleNightMode:I

.field private mMirrorEnable:Z

.field private mModeUltrazoomEnable:Z

.field private mMoonDetectPitch:F

.field protected mMoonDetectResult:I

.field private mMoonDetectionMode:I

.field private mMotionCaptureMode:I

.field private mMultiFaceBeautyMode:Ljava/lang/String;

.field private mNeedFocusModeAuto:Z

.field private mNeedLockAe:Z

.field private mNight3dnrAlgo:I

.field protected mNightAeExpoInfo:[I

.field private mNightHawkMode:I

.field private mNightMode:I

.field private mNightMorHdsScene:I

.field private mOpenAutoFps:Z

.field private mOverrideSensorRect:Landroid/graphics/Rect;

.field private mP2CropRegionCustomize:[I

.field private mP2RawCropResizeEnable:I

.field private mP2ResizerSizeCustomize:[I

.field private mPMasterFlareLocation:[F

.field private mPMasterFlareMode:I

.field private mPhotoHDRMode:Ljava/lang/String;

.field private mPhotoNightTranYUVMode:I

.field private mPictureSize:Landroid/util/Size;

.field private mPipDeviceValue:Ljava/lang/String;

.field private mPlainLocationText:Ljava/lang/String;

.field private mPortraitMode:I

.field private mPortraitModeEnhanceMode:Ljava/lang/String;

.field mPostAlgoFpsRange:Landroid/util/Range;

.field protected mPostAlgoFrameInfo:[I

.field private mPostAlgoType:I

.field private mPostViewSize:Landroid/util/Size;

.field private mPreviewFPSRange:Landroid/util/Range;

.field private mPreviewGoldWaterMarkSize:[I

.field private mPreviewSize:Landroid/util/Size;

.field private mPreviewStreamEnable:Z

.field private mProWatermarkStyle:I

.field private mProWatermarkSupport:Z

.field private mProWatermarkType:I

.field private mProfessionalModeEnable:Z

.field private mQuickPreviewEnable:Z

.field private mRTDofEnable:Z

.field private mRace:I

.field private mRawSuperResolutionMode:I

.field private mRealZoomRatio:I

.field private mRecordingHint:Z

.field private mRegularFpsRange:Landroid/util/Range;

.field private mRemosaicMode:Ljava/lang/String;

.field private mRingFlashLightMode:I

.field private mRingScreenLight:Ljava/lang/String;

.field private mSMVRRequestParams:[I

.field private mSTBlurLevel:I

.field private mSTBlurLightStrength:F

.field private mSTBlurMode:I

.field private mSTBlurReaRatio:F

.field private mSTBlurStrengths:[F

.field private mSatPictureSize:Landroid/util/Size;

.field private mSceneMode:Ljava/lang/String;

.field private mScreenFlashMode:Ljava/lang/String;

.field private mScreenFlashStatus:Ljava/lang/String;

.field private mScreenTorchStatus:Ljava/lang/String;

.field protected mSessionType:I

.field private mShot2ShotMode:I

.field private mSkinColor:I

.field private mSkinOptimizationValue:I

.field private mSkipMultCapture:Z

.field private mSlimBodyLevels:[I

.field private mSlimBodyMode:I

.field private mSlimBodySkip:I

.field private mSmoothZoomValue:I

.field private mStreamFlip:Z

.field private mStreamingCustomTuning:Ljava/lang/String;

.field private mStreetPhotoFilterId:I

.field private mSuperAIRaw:I

.field private mSuperAntiVideo:Ljava/lang/String;

.field private mSuperDefinitionMode:I

.field private mSuperFlash:Ljava/lang/String;

.field private mSuperNightAlgoType:Ljava/lang/String;

.field protected mSuperNightAlgoTypeToHal:Ljava/lang/String;

.field private mSuperNightEnable:Z

.field private mSuperNightFilterId:I

.field private mSuperNightHdrCheckerModeEnable:I

.field private mSuperNightMode:Ljava/lang/String;

.field private mSuperResolutinSupportPortraitMode:Z

.field private mSuperResolutionMode:I

.field private mSupportRawSize:Ljava/util/List;

.field private mSupportYUVPreviewDataWhenRecording:Z

.field private mSupportedRawSR:Z

.field private mSystemUserID:I

.field private mTAPSCaptureNeedYuvSize:I

.field private mTFEVCheckerEnable:I

.field private mTZServiceEnable:Z

.field private mTfPortraitMode:I

.field mThumbnailFormat:I

.field private mThumbnailSize:Landroid/util/Size;

.field private mTranFaceDetectMode:I

.field private mTranssionAINRMode:I

.field private mTranssionCameraMode:I

.field private mTranssionFilterId:I

.field private mTranssionHDR:I

.field private mTranssionPluginEnable:I

.field private mTranssionSuperNightFilterId:I

.field private mTranssionTurboFusionMode:I

.field private mUseAutoFocusSwitch:Z

.field private mViUllEnable:I

.field private mVideo360HDRAlgoScene:I

.field private mVideoEffectId:I

.field private mVideoFilterId:I

.field private mVideoFilterLevel:I

.field private mVideoFilterSkinType:I

.field private mVideoFrameId:I

.field private mVideoHDRFormat:Ljava/lang/String;

.field private mVideoHDRMode:Ljava/lang/String;

.field private mVideoInterpolationEnable:I

.field private mVideoNightTranYUVMode:I

.field private mVideoOrientation:I

.field private mVideoPortraitLevel:I

.field private mVideoPortraitMode:I

.field private mVideoPreIspMode:I

.field private mVideoSize:Landroid/util/Size;

.field private mVideoSpotLevel:I

.field private mVideoSpotMode:I

.field private mVideoSuperNightAlgoScene:I

.field private mVideoSuperNightMode:I

.field private mVideoSuperNightResolution:I

.field private mVideoSuperNightYUVMode:I

.field private mVsdofLevel:Ljava/lang/String;

.field private mWaterMarkParameterList:Ljava/util/List;

.field private mYuvCaptureFlipMode:Ljava/lang/String;

.field private mZSLEnable:Z

.field private mZoomEisMode:I

.field private mZoomRatio:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 45
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "CameraParameters"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/adapter/CameraParameters;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x1

    .line 56
    sput v0, Lcom/transsion/camera/adapter/CameraParameters;->MAX_IMAGE_NUMBER:I

    const/4 v0, 0x5

    .line 58
    sput v0, Lcom/transsion/camera/adapter/CameraParameters;->MAX_THUMBNAIL_NUMBER:I

    .line 150
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz v0, :cond_1a

    const/16 v0, 0x2710

    goto :goto_1c

    :cond_1a
    const/16 v0, 0x64

    :goto_1c
    sput v0, Lcom/transsion/camera/adapter/CameraParameters;->MIN_ZOOM_RATIO:I

    .line 151
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz v0, :cond_2a

    const v0, 0x461c4000    # 10000.0f

    goto :goto_2c

    :cond_2a
    const/high16 v0, 0x42c80000    # 100.0f

    :goto_2c
    sput v0, Lcom/transsion/camera/adapter/CameraParameters;->ZOOM_RATIO_DENOMINATOR:F

    return-void
.end method

.method public constructor <init>()V
    .registers 10

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 47
    iput v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mDataFlowType:I

    const/16 v1, 0x23

    .line 57
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mThumbnailFormat:I

    .line 61
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSupportRawSize:Ljava/util/List;

    const/4 v1, 0x0

    .line 84
    iput-boolean v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRecordingHint:Z

    .line 89
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mOverrideSensorRect:Landroid/graphics/Rect;

    .line 90
    iput-boolean v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mNeedLockAe:Z

    .line 91
    iput-boolean v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mNeedFocusModeAuto:Z

    .line 92
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFaceDetectionEnable:Z

    const/4 v2, -0x1

    .line 98
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFrontDualFlashColorTemp:I

    .line 99
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFrontDualFlashStrengthMode:I

    .line 102
    const-string v3, "4"

    iput-object v3, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVsdofLevel:Ljava/lang/String;

    .line 109
    iput-boolean v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mDXOAsdEffectColorCard:Z

    .line 110
    iput-boolean v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mDXOHasValidFace:Z

    .line 111
    iput-boolean v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mDXOTripodMode:Z

    .line 120
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranssionHDR:I

    .line 152
    sget v3, Lcom/transsion/camera/adapter/CameraParameters;->MIN_ZOOM_RATIO:I

    iput v3, p0, Lcom/transsion/camera/adapter/CameraParameters;->mZoomRatio:I

    .line 153
    iput v3, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRealZoomRatio:I

    .line 154
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mClickUpZoomRatio:I

    .line 155
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mClickDownZoomRatio:I

    .line 157
    iput-boolean v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFovWideCrop:Z

    .line 158
    iput-boolean v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMirrorEnable:Z

    .line 159
    iput-boolean v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBWPortraitEnable:Z

    .line 160
    iput-boolean v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBWConvertEnable:Z

    .line 161
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mQuickPreviewEnable:Z

    .line 162
    iput-boolean v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mProfessionalModeEnable:Z

    .line 163
    iput-boolean v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mModeUltrazoomEnable:Z

    .line 164
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranssionPluginEnable:I

    .line 165
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoInterpolationEnable:I

    .line 180
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/transsion/camera/adapter/CameraParameters;->mWaterMarkParameterList:Ljava/util/List;

    .line 185
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMeteringAreas:Ljava/util/List;

    .line 186
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFocusAreas:Ljava/util/List;

    .line 190
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mISOValue:I

    const-wide/16 v3, -0x1

    .line 191
    iput-wide v3, p0, Lcom/transsion/camera/adapter/CameraParameters;->mExposureTime:J

    const/4 v3, 0x0

    .line 192
    iput v3, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFocusDistance:F

    .line 193
    iput v3, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFocusLength:F

    .line 194
    const-string v4, "auto"

    iput-object v4, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMeteringMode:Ljava/lang/String;

    .line 196
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mJpegQuality:I

    .line 199
    iput-boolean v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mZSLEnable:Z

    .line 200
    iput-boolean v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIsWideCamera:Z

    .line 201
    iput-boolean v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIsLongFocusCamera:Z

    .line 203
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPortraitMode:I

    .line 208
    const-string v4, "None"

    iput-object v4, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperNightAlgoType:Ljava/lang/String;

    .line 209
    iput-object v4, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperNightAlgoTypeToHal:Ljava/lang/String;

    .line 211
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRTDofEnable:Z

    .line 215
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mShot2ShotMode:I

    .line 216
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mDistortionCorrectionMode:I

    .line 220
    iput-boolean v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAWBLockStatus:Z

    .line 236
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSTBlurMode:I

    .line 237
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSTBlurLevel:I

    .line 242
    iput-boolean v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBGServiceEnable:Z

    .line 243
    iput-boolean v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTZServiceEnable:Z

    .line 244
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBGImageReaderId:I

    const/4 v4, 0x0

    .line 247
    iput-object v4, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLocation:Landroid/location/Location;

    .line 250
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranssionCameraMode:I

    .line 252
    iput-object v4, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSMVRRequestParams:[I

    .line 254
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSessionType:I

    .line 255
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoPortraitMode:I

    .line 262
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHeavyCapturingBV:I

    .line 264
    new-instance v5, Landroid/util/Range;

    const/4 v6, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v7

    iget v7, v7, Lcom/transsion/camera/utils/CustomConfigUtil;->mIspHidlCaptureFPS:I

    const/16 v8, 0x18

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v5, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPostAlgoFpsRange:Landroid/util/Range;

    .line 267
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPostAlgoType:I

    .line 271
    new-array v5, v1, [I

    iput-object v5, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPostAlgoFrameInfo:[I

    .line 272
    new-array v5, v1, [I

    iput-object v5, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHDRAeExpoInfo:[I

    .line 273
    new-array v5, v1, [I

    iput-object v5, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMFNRAeExpoInfo:[I

    .line 274
    new-array v5, v1, [I

    iput-object v5, p0, Lcom/transsion/camera/adapter/CameraParameters;->mNightAeExpoInfo:[I

    .line 275
    new-array v5, v1, [I

    iput-object v5, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLlsInfo:[I

    .line 276
    new-array v5, v1, [I

    iput-object v5, p0, Lcom/transsion/camera/adapter/CameraParameters;->mEVList:[I

    .line 293
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHighLightMode:I

    .line 330
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSmoothZoomValue:I

    .line 337
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAutoFpsModeForISP:I

    .line 341
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFocalLength:I

    .line 343
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPreviewStreamEnable:Z

    .line 348
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBestMomentDetectMode:I

    .line 349
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBestMomentRawHDRMode:I

    .line 350
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFlashSnapAutoCaptureMode:I

    .line 351
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->bmLowLightMode:I

    const/4 v0, 0x3

    .line 352
    iput v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->bmMultiFrameNum:I

    .line 353
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBMCustomZslBufSize:I

    .line 354
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTAPSCaptureNeedYuvSize:I

    .line 355
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHALBMLowLightMode:I

    .line 356
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMotionCaptureMode:I

    .line 357
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMTKProcessRawEnable:I

    .line 358
    iput v3, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFaceProportion:F

    .line 361
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mExtraCaptureCount:I

    .line 362
    iput-boolean v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIsExtraCaptureEnableZSL:Z

    .line 363
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mCaptureTag:I

    .line 364
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mGroupCaptureEnable:I

    .line 365
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFlareCaptureEnable:I

    .line 367
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBmDebandingMode:I

    .line 368
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mCaptureISPTunning:I

    .line 370
    iput-boolean v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIsCurrentAppModeRequiredOnContinuousShot:Z

    .line 371
    iput-object v4, p0, Lcom/transsion/camera/adapter/CameraParameters;->mCaptureZSLTimestamps:[J

    .line 373
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIncreaseFreqEnable:I

    .line 374
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mCurrentFaces:I

    .line 377
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLivePhotoMode:I

    .line 379
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mInSensorZoomEnable:I

    .line 380
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mViUllEnable:I

    .line 395
    iput-boolean v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIsBurstCapturing:Z

    .line 396
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIszScene:I

    .line 397
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHdr10PlusMode:I

    .line 400
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFeature2Mode:I

    .line 401
    iput-boolean v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mEnableLowConfig:Z

    return-void
.end method


# virtual methods
.method public algorithmMigrate()Z
    .registers 1

    .line 978
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAlgorithmMigrate:Z

    return p0
.end method

.method public aodMode()Z
    .registers 1

    .line 2790
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAodMode:Z

    return p0
.end method

.method public asdEffectColorCard()Z
    .registers 1

    .line 1429
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mDXOAsdEffectColorCard:Z

    return p0
.end method

.method public clearAll()V
    .registers 8

    const/4 v0, 0x1

    .line 404
    iput v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mDataFlowType:I

    const/4 v1, 0x0

    .line 405
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSlimBodyLevels:[I

    const/4 v2, 0x0

    .line 406
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSlimBodyMode:I

    .line 407
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSlimBodySkip:I

    .line 408
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMakeUpMode:I

    .line 409
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMakeUpIntensitys:[F

    .line 410
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMakeUpVideoMode:I

    .line 411
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMakeUpVideoIntensitys:[F

    .line 412
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mExcludeVideoMakeupBeauty:I

    .line 413
    sput v0, Lcom/transsion/camera/adapter/CameraParameters;->MAX_IMAGE_NUMBER:I

    .line 414
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPreviewSize:Landroid/util/Size;

    .line 415
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPictureSize:Landroid/util/Size;

    .line 416
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSupportRawSize:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 417
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPostViewSize:Landroid/util/Size;

    .line 418
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mThumbnailSize:Landroid/util/Size;

    .line 419
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoSize:Landroid/util/Size;

    .line 420
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFlashMode:Ljava/lang/String;

    .line 421
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMagicSkyMode:Ljava/lang/String;

    .line 422
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMagicSkyType:Ljava/lang/String;

    .line 423
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFocusMode:Ljava/lang/String;

    .line 424
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPhotoHDRMode:Ljava/lang/String;

    .line 425
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoHDRMode:Ljava/lang/String;

    .line 426
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->m360VideoHDRMode:I

    .line 427
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->m360VideoHDRInitMode:I

    .line 428
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFaceBeautyMode:Ljava/lang/String;

    .line 429
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMultiFaceBeautyMode:Ljava/lang/String;

    .line 430
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFaceBeautyLevel:Ljava/lang/String;

    .line 431
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFaceBeautyFeaturesLevel:[I

    .line 432
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLuminanceValue:I

    .line 433
    const-string v3, "4"

    iput-object v3, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVsdofLevel:Ljava/lang/String;

    .line 434
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAsdMode:I

    .line 435
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAsdVersion:I

    .line 436
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mDxoSceneDetection:Ljava/lang/String;

    .line 437
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mDXOAsdEffectColorCard:Z

    .line 438
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mDXOHasValidFace:Z

    .line 439
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mDXOTripodMode:Z

    .line 440
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSkipMultCapture:Z

    const/4 v3, -0x1

    .line 441
    iput v3, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranssionHDR:I

    .line 442
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mDenoiseMode:I

    .line 443
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mNightMode:I

    .line 444
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLowLightMode:I

    .line 445
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMiddleNightMode:I

    .line 446
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mNight3dnrAlgo:I

    .line 447
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mNightMorHdsScene:I

    .line 448
    sget v4, Lcom/transsion/camera/adapter/CameraParameters;->MIN_ZOOM_RATIO:I

    iput v4, p0, Lcom/transsion/camera/adapter/CameraParameters;->mZoomRatio:I

    .line 449
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMirrorEnable:Z

    .line 450
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBWPortraitEnable:Z

    .line 451
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBWConvertEnable:Z

    .line 452
    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMeteringAreas:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 453
    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFocusAreas:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 454
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mJpegQuality:I

    .line 455
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mJpegOrientation:I

    .line 456
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mZSLEnable:Z

    .line 457
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIsWideCamera:Z

    .line 458
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIsLongFocusCamera:Z

    .line 459
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mExposureCompensation:I

    .line 460
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAeLock:Z

    .line 461
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPreviewFPSRange:Landroid/util/Range;

    .line 462
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLimitFpsRange:Landroid/util/Range;

    .line 463
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSceneMode:Ljava/lang/String;

    .line 464
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mShot2ShotMode:I

    .line 465
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAutoWatermarkMode:Ljava/lang/String;

    .line 466
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mEditWatermarkMode:Ljava/lang/String;

    .line 467
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mEditWatermarkSupport:Z

    .line 468
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mGoldWatermarkMode:Ljava/lang/String;

    .line 469
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mGoldWatermarkSupport:Z

    .line 470
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mGoldWatermarkType:Ljava/lang/String;

    .line 471
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mGoldWaterMarkSize:[I

    .line 472
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPreviewGoldWaterMarkSize:[I

    .line 473
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mProWatermarkSupport:Z

    .line 474
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mProWatermarkType:I

    .line 475
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPlainLocationText:Ljava/lang/String;

    .line 476
    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraParameters;->mWaterMarkParameterList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 477
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAntiVideo:Ljava/lang/String;

    .line 478
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperAntiVideo:Ljava/lang/String;

    .line 479
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mScreenFlashMode:Ljava/lang/String;

    .line 480
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mYuvCaptureFlipMode:Ljava/lang/String;

    .line 481
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranssionPluginEnable:I

    .line 482
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRecordingHint:Z

    .line 483
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mArcFilterId:I

    .line 484
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranssionFilterId:I

    .line 485
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mStreetPhotoFilterId:I

    .line 486
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperNightFilterId:I

    .line 487
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranssionSuperNightFilterId:I

    .line 488
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperNightHdrCheckerModeEnable:I

    .line 489
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoFilterSkinType:I

    .line 490
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoFilterId:I

    const/16 v4, 0x64

    .line 491
    iput v4, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoFilterLevel:I

    .line 492
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoEffectId:I

    .line 493
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoFrameId:I

    .line 494
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/transsion/camera/adapter/CameraParameters;->mOverrideSensorRect:Landroid/graphics/Rect;

    .line 495
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPortraitMode:I

    .line 496
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHdMode:Ljava/lang/String;

    .line 497
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHighFpsMode:Ljava/lang/String;

    .line 498
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFusionMode:Ljava/lang/String;

    .line 499
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperNightMode:Ljava/lang/String;

    .line 500
    const-string v4, "None"

    iput-object v4, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperNightAlgoType:Ljava/lang/String;

    .line 501
    iput-object v4, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperNightAlgoTypeToHal:Ljava/lang/String;

    .line 502
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSTBlurMode:I

    .line 503
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSTBlurLevel:I

    .line 504
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSTBlurStrengths:[F

    const/4 v4, 0x0

    .line 505
    iput v4, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSTBlurLightStrength:F

    .line 506
    iput v4, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSTBlurReaRatio:F

    .line 507
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBGServiceEnable:Z

    .line 508
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTZServiceEnable:Z

    .line 509
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBGImageReaderId:I

    .line 510
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFakeDualLensMode:I

    .line 511
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLocation:Landroid/location/Location;

    .line 512
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mDistortionCorrectionMode:I

    .line 513
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperDefinitionMode:I

    .line 514
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHighPixelMode:I

    .line 515
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperResolutionMode:I

    .line 516
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRawSuperResolutionMode:I

    .line 517
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mP2RawCropResizeEnable:I

    .line 518
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mP2CropRegionCustomize:[I

    .line 519
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mP2ResizerSizeCustomize:[I

    .line 520
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSupportedRawSR:Z

    .line 521
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRemosaicMode:Ljava/lang/String;

    .line 522
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mNightHawkMode:I

    .line 523
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMoonDetectionMode:I

    .line 524
    iput v4, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMoonDetectPitch:F

    .line 525
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAiMoonMode:I

    .line 526
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMoonDetectResult:I

    .line 527
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoInterpolationEnable:I

    .line 528
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mEyeDetection:Ljava/lang/String;

    .line 529
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAnimalEyeDetection:Ljava/lang/String;

    .line 530
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAutoFocusSwitch:Ljava/lang/String;

    .line 531
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mUseAutoFocusSwitch:Z

    .line 532
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAutoMacroSwitch:Ljava/lang/String;

    .line 533
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAutoMacroSwitchSetting:Ljava/lang/String;

    .line 534
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHumanDetection:I

    .line 535
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranFaceDetectMode:I

    .line 536
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranssionCameraMode:I

    .line 537
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mQuickPreviewEnable:Z

    .line 538
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mProfessionalModeEnable:Z

    .line 539
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mModeUltrazoomEnable:Z

    .line 540
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSMVRRequestParams:[I

    .line 541
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoPortraitMode:I

    .line 542
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoPortraitLevel:I

    .line 543
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoSpotMode:I

    .line 544
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAlgorithmMigrate:Z

    .line 545
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMacroLampValue:I

    .line 546
    iput v3, p0, Lcom/transsion/camera/adapter/CameraParameters;->mISOValue:I

    const-wide/16 v5, -0x1

    .line 547
    iput-wide v5, p0, Lcom/transsion/camera/adapter/CameraParameters;->mExposureTime:J

    .line 548
    iput v4, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFocusDistance:F

    .line 549
    iput v4, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFocusLength:F

    .line 550
    const-string v5, "auto"

    iput-object v5, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMeteringMode:Ljava/lang/String;

    .line 551
    iput-object v5, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAWBMode:Ljava/lang/String;

    .line 552
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPortraitModeEnhanceMode:Ljava/lang/String;

    .line 553
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mGenderAttributeValue:Ljava/lang/String;

    .line 554
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSkinColor:I

    .line 555
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRace:I

    .line 556
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAsdIsp:[I

    .line 557
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHumanEffectMode:Ljava/lang/String;

    .line 558
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mNeedLockAe:Z

    .line 559
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mNeedFocusModeAuto:Z

    .line 560
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFaceDetectionEnable:Z

    .line 561
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mCapturing:Z

    .line 562
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFaceAttributeInfo:[I

    .line 563
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSatPictureSize:Landroid/util/Size;

    .line 564
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHighLightMode:I

    .line 565
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAppModeId:Ljava/lang/String;

    .line 566
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFlashFacade:Ljava/lang/String;

    .line 567
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperFlash:Ljava/lang/String;

    .line 568
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFlashStyle:Ljava/lang/String;

    .line 569
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRingScreenLight:Ljava/lang/String;

    .line 570
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mScreenTorchStatus:Ljava/lang/String;

    .line 571
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mScreenFlashStatus:Ljava/lang/String;

    const/4 v5, 0x3

    .line 572
    iput v5, p0, Lcom/transsion/camera/adapter/CameraParameters;->mContrastValue:I

    .line 573
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mActivityOrientation:I

    .line 574
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPipDeviceValue:Ljava/lang/String;

    .line 575
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mCaptureCustomTuning:Ljava/lang/String;

    .line 576
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoSuperNightMode:I

    .line 577
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoSuperNightResolution:I

    .line 578
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoSuperNightAlgoScene:I

    .line 579
    const-string v5, "0"

    iput-object v5, p0, Lcom/transsion/camera/adapter/CameraParameters;->mStreamingCustomTuning:Ljava/lang/String;

    .line 580
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLiveResultMode:I

    .line 581
    iput v3, p0, Lcom/transsion/camera/adapter/CameraParameters;->mEffect:I

    .line 582
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mColorLevel:Ljava/lang/String;

    .line 583
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLongExposureScene:Ljava/lang/String;

    .line 584
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLongExposureTripod:Ljava/lang/String;

    .line 585
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLongExposureCaptureState:Ljava/lang/String;

    .line 586
    iput v3, p0, Lcom/transsion/camera/adapter/CameraParameters;->mExifModeInfo:I

    .line 587
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRingFlashLightMode:I

    .line 588
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAisMode:I

    .line 589
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAisMorpho:I

    .line 590
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoSuperNightYUVMode:I

    .line 591
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoNightTranYUVMode:I

    .line 592
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPhotoNightTranYUVMode:I

    .line 593
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAodMode:Z

    .line 594
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mStreamFlip:Z

    .line 595
    iput v3, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFrontDualFlashColorTemp:I

    .line 596
    iput v3, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFrontDualFlashStrengthMode:I

    .line 597
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoPreIspMode:I

    .line 598
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mExternalIspMode:I

    .line 599
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->m360HDRMode:I

    .line 600
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideo360HDRAlgoScene:I

    .line 601
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperNightEnable:Z

    .line 602
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAutoFpsModeForISP:I

    .line 603
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPMasterFlareMode:I

    .line 604
    iput v3, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFocalLength:I

    .line 605
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSmoothZoomValue:I

    .line 606
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperResolutinSupportPortraitMode:Z

    .line 607
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSupportYUVPreviewDataWhenRecording:Z

    .line 608
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPMasterFlareLocation:[F

    .line 609
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mISPTuningEnable:I

    .line 610
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFaceBeautyPreviewInApp:Z

    .line 611
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPreviewStreamEnable:Z

    .line 612
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->m2kSize:Landroid/util/Size;

    .line 613
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranssionTurboFusionMode:I

    .line 614
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperAIRaw:I

    .line 615
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTfPortraitMode:I

    .line 616
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAirawSN2SRMode:I

    .line 617
    iput v4, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAdrcGainValue:F

    .line 618
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mZoomEisMode:I

    .line 619
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mExtraCaptureCount:I

    .line 620
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIsExtraCaptureEnableZSL:Z

    .line 621
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mCaptureTag:I

    .line 622
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mGroupCaptureEnable:I

    .line 623
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIsCurrentAppModeRequiredOnContinuousShot:Z

    .line 624
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBestMomentRawHDRMode:I

    .line 625
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFlashSnapAutoCaptureMode:I

    .line 626
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBestMomentDetectMode:I

    .line 627
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mCaptureZSLTimestamps:[J

    .line 628
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAbeHdrCheckMode:I

    .line 629
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBrightnessValue:I

    .line 630
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIncreaseFreqEnable:I

    .line 631
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mCurrentFaces:I

    .line 632
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIsAiRawLiteSupport:Z

    .line 633
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranssionAINRMode:I

    .line 634
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLivePhotoMode:I

    .line 635
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mInSensorZoomEnable:I

    .line 636
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mEVList:[I

    .line 637
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAecSensitivity:[F

    const/high16 v5, -0x40800000    # -1.0f

    .line 638
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iput-object v6, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAecFrameControlLuxIndex:Ljava/lang/Float;

    .line 639
    iput-object v6, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAecFrameDarkBoostGain:Ljava/lang/Float;

    .line 640
    iput-object v6, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAecFrameAdrcGain:Ljava/lang/Float;

    .line 641
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->awbGains:[F

    .line 642
    iput v5, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAwbFrameControlCCT:F

    .line 643
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAwbDecisionAfterTC:[F

    .line 644
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoHDRFormat:Ljava/lang/String;

    .line 645
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIsBurstCapturing:Z

    .line 646
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mOpenAutoFps:Z

    .line 647
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRegularFpsRange:Landroid/util/Range;

    .line 648
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHeavyCapturing:Z

    .line 649
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHeavyCapturingBV:I

    .line 650
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHumanBox:[I

    .line 651
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRTDofEnable:Z

    .line 652
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLastShotNotSkip:Z

    .line 653
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPostAlgoFrameInfo:[I

    .line 654
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHDRAeExpoInfo:[I

    .line 655
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMFNRAeExpoInfo:[I

    .line 656
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mNightAeExpoInfo:[I

    .line 657
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLlsInfo:[I

    .line 658
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSkinOptimizationValue:I

    .line 659
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mImageStyleId:I

    .line 660
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLensCorrectionMode:I

    .line 661
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTFEVCheckerEnable:I

    .line 662
    const-string v0, "off"

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mDistortionCorrectionPreviewEnable:Ljava/lang/String;

    .line 663
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mProWatermarkStyle:I

    .line 664
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIs24HourFormat:I

    .line 665
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAfFfMode:I

    .line 666
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mManualAWBValue:Ljava/lang/String;

    .line 667
    iput v4, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLongFocusBaseZoomRatio:F

    .line 668
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMagicSkyResult:I

    .line 669
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAIRawMode:I

    .line 670
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAIRawLiteSupportPortraitEnhance:Z

    .line 671
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->bmLowLightMode:I

    .line 672
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBMCustomZslBufSize:I

    .line 673
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTAPSCaptureNeedYuvSize:I

    .line 674
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFlareCaptureEnable:I

    .line 675
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBmDebandingMode:I

    .line 676
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mCaptureISPTunning:I

    .line 677
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHALBMLowLightMode:I

    .line 678
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mViUllEnable:I

    .line 679
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMotionCaptureMode:I

    .line 680
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMTKProcessRawEnable:I

    .line 681
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mCelebritySceneMode:I

    .line 682
    iput v3, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIszScene:I

    .line 683
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHdr10PlusMode:I

    .line 684
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFeature2Mode:I

    .line 685
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mEnableLowConfig:Z

    return-void
.end method

.method public enableBGServiceMode(Z)V
    .registers 2

    .line 2212
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBGServiceEnable:Z

    return-void
.end method

.method public enableBWConvert(Z)V
    .registers 2

    .line 1304
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBWConvertEnable:Z

    return-void
.end method

.method public enableMirror(Z)V
    .registers 2

    .line 1288
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMirrorEnable:Z

    return-void
.end method

.method public enablePreviewStream(Z)V
    .registers 2

    .line 2891
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPreviewStreamEnable:Z

    return-void
.end method

.method public enableTZServiceMode(Z)V
    .registers 2

    .line 2220
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTZServiceEnable:Z

    return-void
.end method

.method public abstract get2XRemosaicMode()Z
.end method

.method public get360VideoHDRInitMode()I
    .registers 1

    .line 1375
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->m360VideoHDRInitMode:I

    return p0
.end method

.method public get360VideoHDRMode()I
    .registers 1

    .line 1366
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->m360VideoHDRMode:I

    return p0
.end method

.method public get360VideoHDRScene()I
    .registers 1

    .line 2413
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideo360HDRAlgoScene:I

    return p0
.end method

.method public getAIRawLiteMotionDetection()I
    .registers 1

    .line 1151
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAIRawLiteMotionDetection:I

    return p0
.end method

.method public getAIRawLiteSupportPortraitEnhance()Z
    .registers 1

    .line 2718
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAIRawLiteSupportPortraitEnhance:Z

    return p0
.end method

.method public getAIRawMode()I
    .registers 1

    .line 2710
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAIRawMode:I

    return p0
.end method

.method public getAWBLockStatus()Z
    .registers 1

    .line 2075
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAWBLockStatus:Z

    return p0
.end method

.method public getAWBMode()Ljava/lang/String;
    .registers 1

    .line 2051
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAWBMode:Ljava/lang/String;

    return-object p0
.end method

.method public getAbeHdrCheckMode()I
    .registers 2

    .line 2694
    iget v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAbeHdrCheckMode:I

    if-lez v0, :cond_11

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isHeavyCapturing()Z

    move-result v0

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIsBurstCapturing:Z

    if-eqz v0, :cond_11

    :cond_e
    const/16 p0, 0x100

    return p0

    :cond_11
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAbeHdrCheckMode:I

    return p0
.end method

.method public getActivityOrientation()I
    .registers 1

    .line 2650
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mActivityOrientation:I

    return p0
.end method

.method public getAdrcgainValue()F
    .registers 1

    .line 1797
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAdrcGainValue:F

    return p0
.end method

.method public getAeLock()Z
    .registers 1

    .line 918
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAeLock:Z

    return p0
.end method

.method public getAeState()I
    .registers 1

    .line 1034
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAeStateValue:I

    return p0
.end method

.method public getAecFrameAdrcGain()F
    .registers 1

    .line 3126
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAecFrameAdrcGain:Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public getAecFrameControlLuxIndex()F
    .registers 1

    .line 3118
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAecFrameControlLuxIndex:Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public getAecFrameDarkBoostGain()F
    .registers 1

    .line 3122
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAecFrameDarkBoostGain:Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public getAecSensitivity()[F
    .registers 1

    .line 3114
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAecSensitivity:[F

    return-object p0
.end method

.method public getAfFfMode()I
    .registers 1

    .line 2003
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAfFfMode:I

    return p0
.end method

.method public getAiMoonMode()I
    .registers 1

    .line 2461
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAiMoonMode:I

    return p0
.end method

.method public getAiRawScene()I
    .registers 1

    .line 1099
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAiRawScene:I

    return p0
.end method

.method public getAirawSN2SRMode()I
    .registers 1

    .line 1825
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAirawSN2SRMode:I

    return p0
.end method

.method public getAisMode()I
    .registers 2

    .line 2758
    iget v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAisMode:I

    if-lez v0, :cond_11

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isHeavyCapturing()Z

    move-result v0

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIsBurstCapturing:Z

    if-eqz v0, :cond_11

    :cond_e
    const/16 p0, 0x100

    return p0

    :cond_11
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAisMode:I

    return p0
.end method

.method public getAisMorpho()I
    .registers 2

    .line 2766
    iget v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAisMorpho:I

    if-lez v0, :cond_11

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isHeavyCapturing()Z

    move-result v0

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIsBurstCapturing:Z

    if-eqz v0, :cond_11

    :cond_e
    const/16 p0, 0x100

    return p0

    :cond_11
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAisMorpho:I

    return p0
.end method

.method public getAntiVideoMode()Ljava/lang/String;
    .registers 1

    .line 1987
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAntiVideo:Ljava/lang/String;

    return-object p0
.end method

.method public getAppModeId()Ljava/lang/String;
    .registers 1

    .line 2582
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAppModeId:Ljava/lang/String;

    return-object p0
.end method

.method public getArcFilterId()I
    .registers 1

    .line 1454
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mArcFilterId:I

    return p0
.end method

.method public getAutoFpsModeForISP()I
    .registers 1

    .line 2822
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAutoFpsModeForISP:I

    return p0
.end method

.method public getAutoWatermarkMode()Ljava/lang/String;
    .registers 4

    .line 1949
    sget-object v0, Lcom/transsion/camera/adapter/CameraParameters;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAutoWatermarkMode: mProWatermarkSupport: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mProWatermarkSupport:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mGoldWatermarkSupport: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mGoldWatermarkSupport:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mEditWatermarkSupport: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mEditWatermarkSupport:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mProWatermarkType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mProWatermarkType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mEditWatermarkMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mEditWatermarkMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mGoldWatermarkMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mGoldWatermarkMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mAutoWatermarkMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAutoWatermarkMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1956
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mProWatermarkSupport:Z

    if-eqz v0, :cond_69

    .line 1957
    iget v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mProWatermarkType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_60

    .line 1958
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mEditWatermarkMode:Ljava/lang/String;

    return-object p0

    :cond_60
    const/4 v1, 0x2

    if-ne v0, v1, :cond_66

    .line 1960
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mGoldWatermarkMode:Ljava/lang/String;

    return-object p0

    .line 1962
    :cond_66
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAutoWatermarkMode:Ljava/lang/String;

    return-object p0

    .line 1965
    :cond_69
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mGoldWatermarkSupport:Z

    if-eqz v0, :cond_70

    .line 1966
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mGoldWatermarkMode:Ljava/lang/String;

    return-object p0

    .line 1967
    :cond_70
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mEditWatermarkSupport:Z

    if-eqz v0, :cond_77

    .line 1968
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mEditWatermarkMode:Ljava/lang/String;

    return-object p0

    .line 1970
    :cond_77
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAutoWatermarkMode:Ljava/lang/String;

    return-object p0
.end method

.method public getAwbDecisionAfterTC()[F
    .registers 1

    .line 3138
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAwbDecisionAfterTC:[F

    return-object p0
.end method

.method public getAwbFrameControlCCT()F
    .registers 1

    .line 3134
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAwbFrameControlCCT:F

    return p0
.end method

.method public getAwbGains()[F
    .registers 1

    .line 3130
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->awbGains:[F

    return-object p0
.end method

.method public getBGImageReaderId()I
    .registers 1

    .line 2232
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBGImageReaderId:I

    return p0
.end method

.method public getBMLowLightMode()I
    .registers 1

    .line 2911
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->bmLowLightMode:I

    return p0
.end method

.method public getBMMultiFrameNum()I
    .registers 1

    .line 2919
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->bmMultiFrameNum:I

    return p0
.end method

.method public getBestMomentDetectMode()I
    .registers 1

    .line 2871
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBestMomentDetectMode:I

    return p0
.end method

.method public getBestMomentRawHDRMode()I
    .registers 1

    .line 2887
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBestMomentRawHDRMode:I

    return p0
.end method

.method public getBodySlimMode()I
    .registers 1

    .line 1562
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSlimBodyMode:I

    return p0
.end method

.method public getBodySlimSkip()I
    .registers 1

    .line 1566
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSlimBodySkip:I

    return p0
.end method

.method public getBrightnessValue()I
    .registers 1

    .line 1038
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBrightnessValue:I

    return p0
.end method

.method public getCaptureCustomTuning()Ljava/lang/String;
    .registers 4

    .line 2666
    sget-object v0, Lcom/transsion/camera/adapter/CameraParameters;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCaptureCustomTuning:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mCaptureCustomTuning:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",mEffect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mEffect:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,mCelebritySceneMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mCelebritySceneMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2668
    iget v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mCelebritySceneMode:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_34

    .line 2669
    const-string p0, "14"

    return-object p0

    :cond_34
    const/4 v2, 0x1

    if-ne v2, v0, :cond_3a

    .line 2671
    const-string p0, "16"

    return-object p0

    :cond_3a
    const/4 v2, 0x3

    if-ne v2, v0, :cond_40

    .line 2673
    const-string p0, "17"

    return-object p0

    .line 2674
    :cond_40
    iget v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mEffect:I

    if-ne v2, v1, :cond_49

    if-nez v0, :cond_49

    .line 2675
    const-string p0, "18"

    return-object p0

    .line 2677
    :cond_49
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mCaptureCustomTuning:Ljava/lang/String;

    return-object p0
.end method

.method public getCaptureISPTunning()I
    .registers 1

    .line 2999
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mCaptureISPTunning:I

    return p0
.end method

.method public getCaptureId()I
    .registers 1

    .line 994
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mCaptureId:I

    return p0
.end method

.method public getCaptureTag()I
    .registers 1

    .line 2966
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mCaptureTag:I

    return p0
.end method

.method public getCaptureTime()J
    .registers 3

    .line 3176
    iget-wide v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mCaptureTime:J

    return-wide v0
.end method

.method public getCaptureZSLTimestamps()[J
    .registers 1

    .line 3015
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mCaptureZSLTimestamps:[J

    return-object p0
.end method

.method public getCelebritySceneMode()I
    .registers 1

    .line 3079
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mCelebritySceneMode:I

    return p0
.end method

.method public getClickDownZoomRatio()I
    .registers 1

    .line 877
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mClickDownZoomRatio:I

    return p0
.end method

.method public getClickUpZoomRatio()I
    .registers 1

    .line 869
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mClickUpZoomRatio:I

    return p0
.end method

.method public getColorLevel()Ljava/lang/String;
    .registers 1

    .line 2702
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mColorLevel:Ljava/lang/String;

    return-object p0
.end method

.method public getCurrentFaces()I
    .registers 1

    .line 3031
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mCurrentFaces:I

    return p0
.end method

.method public getCustomZslBufSize()I
    .registers 1

    .line 2926
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBMCustomZslBufSize:I

    return p0
.end method

.method public getDataFlowType()I
    .registers 1

    .line 753
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mDataFlowType:I

    return p0
.end method

.method public getDeBandingMode()I
    .registers 1

    .line 2991
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBmDebandingMode:I

    return p0
.end method

.method public abstract getDeviceID()Ljava/lang/String;
.end method

.method public getDistortionCorrectionMode()I
    .registers 1

    .line 1863
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mDistortionCorrectionMode:I

    return p0
.end method

.method public getDistortionCorrectionPreviewEnablet()Ljava/lang/String;
    .registers 1

    .line 1871
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mDistortionCorrectionPreviewEnable:Ljava/lang/String;

    return-object p0
.end method

.method public getDxoSceneDetection()Ljava/lang/String;
    .registers 1

    .line 1421
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mDxoSceneDetection:Ljava/lang/String;

    return-object p0
.end method

.method public getEVList()[I
    .registers 1

    .line 1159
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mEVList:[I

    return-object p0
.end method

.method public getExcludeVideoMakeupBeauty()I
    .registers 1

    .line 1614
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mExcludeVideoMakeupBeauty:I

    return p0
.end method

.method public getExifModeInfo()I
    .registers 1

    .line 2750
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mExifModeInfo:I

    return p0
.end method

.method public getExposureCompensation()I
    .registers 1

    .line 910
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mExposureCompensation:I

    return p0
.end method

.method public getExposureTime()J
    .registers 3

    .line 1197
    iget-wide v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mExposureTime:J

    return-wide v0
.end method

.method public getExternalIspMode()I
    .registers 1

    .line 2782
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mExternalIspMode:I

    return p0
.end method

.method public getExtraCaptureCount()I
    .registers 1

    .line 2950
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mExtraCaptureCount:I

    return p0
.end method

.method public getFaceAttributeInfo()[I
    .registers 1

    .line 2530
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFaceAttributeInfo:[I

    return-object p0
.end method

.method public getFaceBeautyFeaturesLevel()[I
    .registers 1

    .line 1259
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFaceBeautyFeaturesLevel:[I

    return-object p0
.end method

.method public getFaceBeautyLevel()Ljava/lang/String;
    .registers 1

    .line 1251
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFaceBeautyLevel:Ljava/lang/String;

    return-object p0
.end method

.method public getFaceBeautyMode()Ljava/lang/String;
    .registers 1

    .line 1243
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFaceBeautyMode:Ljava/lang/String;

    return-object p0
.end method

.method public getFaceProportion()F
    .registers 1

    .line 3101
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFaceProportion:F

    return p0
.end method

.method public getFakeDualLensMode()I
    .registers 1

    .line 2240
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFakeDualLensMode:I

    return p0
.end method

.method public getFeature2Mode()I
    .registers 1

    .line 3180
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFeature2Mode:I

    return p0
.end method

.method public getFlareCaptureEnable()I
    .registers 1

    .line 2982
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFlareCaptureEnable:I

    return p0
.end method

.method public getFlareLocation()[F
    .registers 1

    .line 2838
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPMasterFlareLocation:[F

    return-object p0
.end method

.method public getFlashFacade()Ljava/lang/String;
    .registers 1

    .line 2594
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFlashFacade:Ljava/lang/String;

    return-object p0
.end method

.method public getFlashMode()Ljava/lang/String;
    .registers 1

    .line 833
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFlashMode:Ljava/lang/String;

    return-object p0
.end method

.method public getFlashSnapAutoCaptureMode()I
    .registers 1

    .line 2883
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFlashSnapAutoCaptureMode:I

    return p0
.end method

.method public getFlashStyle()Ljava/lang/String;
    .registers 1

    .line 2618
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFlashStyle:Ljava/lang/String;

    return-object p0
.end method

.method public getFocalLength()I
    .registers 1

    .line 2854
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFocalLength:I

    return p0
.end method

.method public getFocusAreas()Ljava/util/List;
    .registers 2

    .line 813
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFocusAreas:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getFocusDistance()F
    .registers 1

    .line 1209
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFocusDistance:F

    return p0
.end method

.method public getFocusLength()F
    .registers 1

    .line 1217
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFocusLength:F

    return p0
.end method

.method public getFocusMode()Ljava/lang/String;
    .registers 1

    .line 802
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFocusMode:Ljava/lang/String;

    return-object p0
.end method

.method public getFovWideCrop()Z
    .registers 1

    .line 885
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFovWideCrop:Z

    return p0
.end method

.method public getFrameNumFromEVList()I
    .registers 4

    .line 1172
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTFEVCheckerEnable()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_15

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionTurboFusionMode()I

    move-result v0

    if-lez v0, :cond_15

    .line 1173
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getEVList()[I

    move-result-object p0

    aget p0, p0, v1

    goto :goto_2c

    .line 1174
    :cond_15
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getMiddleNightMode()I

    move-result v0

    if-lez v0, :cond_2b

    .line 1175
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getEVList()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getEVList()[I

    move-result-object p0

    aget p0, p0, v1

    mul-int/lit8 p0, p0, 0x2

    add-int/2addr p0, v2

    aget p0, v0, p0

    goto :goto_2c

    :cond_2b
    move p0, v2

    :goto_2c
    if-gtz p0, :cond_36

    .line 1179
    sget-object p0, Lcom/transsion/camera/adapter/CameraParameters;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "getFrameNumFromEVList: error return 1"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v2

    :cond_36
    return p0
.end method

.method public getFrontDualFlashColorTemp()I
    .registers 1

    .line 2043
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFrontDualFlashColorTemp:I

    return p0
.end method

.method public getFrontDualFlashStrengthMode()I
    .registers 1

    .line 2035
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFrontDualFlashStrengthMode:I

    return p0
.end method

.method public getFusionMode()Ljava/lang/String;
    .registers 1

    .line 2107
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFusionMode:Ljava/lang/String;

    return-object p0
.end method

.method public getGenderAttributeValue()Ljava/lang/String;
    .registers 1

    .line 2482
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mGenderAttributeValue:Ljava/lang/String;

    return-object p0
.end method

.method public getGoldWaterMarkSize()[I
    .registers 1

    .line 1929
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mGoldWaterMarkSize:[I

    return-object p0
.end method

.method public getGoldWatermarkType()Ljava/lang/String;
    .registers 1

    .line 1921
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mGoldWatermarkType:Ljava/lang/String;

    return-object p0
.end method

.method public getGroupCaptureEnable()I
    .registers 1

    .line 2974
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mGroupCaptureEnable:I

    return p0
.end method

.method public getHALBMLowLightMode()I
    .registers 1

    .line 3047
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHALBMLowLightMode:I

    return p0
.end method

.method public getHDRAeExpoInfo()[I
    .registers 1

    .line 1119
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHDRAeExpoInfo:[I

    return-object p0
.end method

.method public getHdMode()Ljava/lang/String;
    .registers 1

    .line 2091
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHdMode:Ljava/lang/String;

    return-object p0
.end method

.method public getHdr10PlusMode()I
    .registers 1

    .line 3168
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHdr10PlusMode:I

    return p0
.end method

.method public getHeavyCapturingBV()I
    .registers 1

    .line 1022
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHeavyCapturingBV:I

    return p0
.end method

.method public getHighFpsMode()Ljava/lang/String;
    .registers 1

    .line 2103
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHighFpsMode:Ljava/lang/String;

    return-object p0
.end method

.method public getHighLightMode()I
    .registers 1

    .line 2554
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHighLightMode:I

    return p0
.end method

.method public getHumanBox()[I
    .registers 1

    .line 3160
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHumanBox:[I

    return-object p0
.end method

.method public getHumanEffectMode()Ljava/lang/String;
    .registers 1

    .line 2506
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHumanEffectMode:Ljava/lang/String;

    return-object p0
.end method

.method public getISOValue()I
    .registers 1

    .line 1189
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mISOValue:I

    return p0
.end method

.method public getISPTuningEnable()I
    .registers 1

    .line 2810
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mISPTuningEnable:I

    return p0
.end method

.method public getImageStyleId()I
    .registers 1

    .line 1478
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mImageStyleId:I

    return p0
.end method

.method public getInSensorZoomEnable()I
    .registers 1

    .line 3063
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mInSensorZoomEnable:I

    return p0
.end method

.method public getIncreaseFrequencyEnable()I
    .registers 1

    .line 3023
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIncreaseFreqEnable:I

    return p0
.end method

.method public getInsensorScene()I
    .registers 1

    .line 1785
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIszScene:I

    return p0
.end method

.method public getIs24HourFormat()I
    .registers 1

    .line 1913
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIs24HourFormat:I

    return p0
.end method

.method public getJpegGPSLocation()Landroid/location/Location;
    .registers 1

    .line 793
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLocation:Landroid/location/Location;

    return-object p0
.end method

.method public getJpegOrientation()I
    .registers 1

    .line 781
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mJpegOrientation:I

    return p0
.end method

.method public getJpegQuality()I
    .registers 1

    .line 769
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mJpegQuality:I

    return p0
.end method

.method public getLensCorrectionMode()I
    .registers 1

    .line 1586
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLensCorrectionMode:I

    return p0
.end method

.method public getLimitFpsRange()Landroid/util/Range;
    .registers 1

    .line 939
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLimitFpsRange:Landroid/util/Range;

    return-object p0
.end method

.method public getLivePhotoMode()I
    .registers 1

    .line 3055
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLivePhotoMode:I

    return p0
.end method

.method public getLiveResultMode()I
    .registers 1

    .line 2682
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLiveResultMode:I

    return p0
.end method

.method public getLongExposureCaptureState()Ljava/lang/String;
    .registers 1

    .line 2742
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLongExposureCaptureState:Ljava/lang/String;

    return-object p0
.end method

.method public getLongExposureScene()Ljava/lang/String;
    .registers 1

    .line 2726
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLongExposureScene:Ljava/lang/String;

    return-object p0
.end method

.method public getLongExposureTripod()Ljava/lang/String;
    .registers 1

    .line 2734
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLongExposureTripod:Ljava/lang/String;

    return-object p0
.end method

.method public getLongFocusBaseZoomRatio()F
    .registers 1

    .line 2131
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLongFocusBaseZoomRatio:F

    return p0
.end method

.method public getLuminanceValue()I
    .registers 1

    .line 2027
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLuminanceValue:I

    return p0
.end method

.method public getMFNRAeExpoInfo()[I
    .registers 1

    .line 1127
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMFNRAeExpoInfo:[I

    return-object p0
.end method

.method public getMTKProcessRawEnable()I
    .registers 1

    .line 3095
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMTKProcessRawEnable:I

    return p0
.end method

.method public getMacroLampValue()I
    .registers 1

    .line 2429
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMacroLampValue:I

    return p0
.end method

.method public getMagicSkyMode()Ljava/lang/String;
    .registers 1

    .line 2562
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMagicSkyMode:Ljava/lang/String;

    return-object p0
.end method

.method public getMagicSkyResult()I
    .registers 1

    .line 2578
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMagicSkyResult:I

    return p0
.end method

.method public getMagicSkyType()Ljava/lang/String;
    .registers 1

    .line 2570
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMagicSkyType:Ljava/lang/String;

    return-object p0
.end method

.method public getMakeUpIntensitys()[F
    .registers 1

    .line 1590
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMakeUpIntensitys:[F

    return-object p0
.end method

.method public getMakeUpMode()I
    .registers 1

    .line 1578
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMakeUpMode:I

    return p0
.end method

.method public getMakeUpVideoIntensitys()[F
    .registers 1

    .line 1606
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMakeUpVideoIntensitys:[F

    return-object p0
.end method

.method public getMakeUpVideoMode()I
    .registers 1

    .line 1602
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMakeUpVideoMode:I

    return p0
.end method

.method public getManualAWBValue()Ljava/lang/String;
    .registers 1

    .line 2059
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mManualAWBValue:Ljava/lang/String;

    return-object p0
.end method

.method public getMegSuperNight()I
    .registers 2

    .line 2168
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperNightAlgoTypeToHal:Ljava/lang/String;

    const-string v0, "Night_Light"

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public getMeteringAreas()Ljava/util/List;
    .registers 2

    .line 824
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMeteringAreas:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getMeteringMode()Ljava/lang/String;
    .registers 1

    .line 1227
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMeteringMode:Ljava/lang/String;

    return-object p0
.end method

.method public getMiddleNightMode()I
    .registers 1

    .line 1646
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMiddleNightMode:I

    return p0
.end method

.method public getMoonDetectPitch()F
    .registers 1

    .line 2453
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMoonDetectPitch:F

    return p0
.end method

.method public getMoonDetection()I
    .registers 1

    .line 2445
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMoonDetectionMode:I

    return p0
.end method

.method public getMotionCaptureMode()I
    .registers 1

    .line 3087
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMotionCaptureMode:I

    return p0
.end method

.method public getMultiFaceBeautyMode()Ljava/lang/String;
    .registers 1

    .line 1247
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMultiFaceBeautyMode:Ljava/lang/String;

    return-object p0
.end method

.method public getNight3dnrAlgo()I
    .registers 1

    .line 1654
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mNight3dnrAlgo:I

    return p0
.end method

.method public getNightAeExpoInfo()[I
    .registers 1

    .line 1135
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mNightAeExpoInfo:[I

    return-object p0
.end method

.method public getNightHawkMode()I
    .registers 1

    .line 2437
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mNightHawkMode:I

    return p0
.end method

.method public getNightMorHdsScene()I
    .registers 1

    .line 1662
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mNightMorHdsScene:I

    return p0
.end method

.method public getNvsSuperNightFilterId()I
    .registers 1

    .line 1486
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperNightFilterId:I

    return p0
.end method

.method public getOpenAutoFps()Z
    .registers 1

    .line 2814
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mOpenAutoFps:Z

    return p0
.end method

.method public getOverrideSensorRect()Landroid/graphics/Rect;
    .registers 1

    .line 974
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mOverrideSensorRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getP2CropRegionCustomize()[I
    .registers 1

    .line 1739
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mP2CropRegionCustomize:[I

    return-object p0
.end method

.method public getP2RawCropResizeEnable()I
    .registers 1

    .line 1731
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mP2RawCropResizeEnable:I

    return p0
.end method

.method public getP2ResizerSizeCustomize()[I
    .registers 1

    .line 1747
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mP2ResizerSizeCustomize:[I

    return-object p0
.end method

.method public getPMasterFlareMode()I
    .registers 1

    .line 2830
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPMasterFlareMode:I

    return p0
.end method

.method public getPhotoHDRMode()Ljava/lang/String;
    .registers 1

    .line 1353
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPhotoHDRMode:Ljava/lang/String;

    return-object p0
.end method

.method public getPhotoNightTranYUVMode()I
    .registers 2

    .line 2361
    iget v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPhotoNightTranYUVMode:I

    if-lez v0, :cond_d

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isHeavyCapturing()Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 p0, 0x100

    return p0

    :cond_d
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPhotoNightTranYUVMode:I

    return p0
.end method

.method public getPictureSize()Landroid/util/Size;
    .registers 1

    .line 721
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPictureSize:Landroid/util/Size;

    return-object p0
.end method

.method public getPipDeviceValue()Ljava/lang/String;
    .registers 1

    .line 2658
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPipDeviceValue:Ljava/lang/String;

    return-object p0
.end method

.method public getPlainLocationText()Ljava/lang/String;
    .registers 1

    .line 1898
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPlainLocationText:Ljava/lang/String;

    return-object p0
.end method

.method public getPortraitMode()I
    .registers 1

    .line 2083
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPortraitMode:I

    return p0
.end method

.method public getPortraitModeEnhanceMode()Ljava/lang/String;
    .registers 2

    .line 2473
    iget v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperResolutionMode:I

    if-gtz v0, :cond_8

    iget v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRawSuperResolutionMode:I

    if-lez v0, :cond_f

    :cond_8
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperResolutinSupportPortraitMode:Z

    if-nez v0, :cond_f

    .line 2474
    const-string p0, "off"

    return-object p0

    :cond_f
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPortraitModeEnhanceMode:Ljava/lang/String;

    return-object p0
.end method

.method public getPostAlgoFrameInfo()[I
    .registers 1

    .line 1111
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPostAlgoFrameInfo:[I

    return-object p0
.end method

.method public getPostAlgoType()I
    .registers 1

    .line 1002
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPostAlgoType:I

    return p0
.end method

.method public getPostViewSize()Landroid/util/Size;
    .registers 1

    .line 733
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPostViewSize:Landroid/util/Size;

    return-object p0
.end method

.method public getPreviewFPSRange()Landroid/util/Range;
    .registers 4

    const/4 v0, 0x6

    .line 929
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 926
    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->closeAllForFinalMonkeyTest()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 927
    new-instance v0, Landroid/util/Range;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPreviewFPSRange:Landroid/util/Range;

    goto :goto_29

    .line 928
    :cond_1e
    iget-boolean v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mEnableLowConfig:Z

    if-eqz v1, :cond_29

    .line 929
    new-instance v1, Landroid/util/Range;

    invoke-direct {v1, v0, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPreviewFPSRange:Landroid/util/Range;

    .line 931
    :cond_29
    :goto_29
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPreviewFPSRange:Landroid/util/Range;

    return-object p0
.end method

.method public getPreviewGoldWaterMarkSize()[I
    .registers 1

    .line 1937
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPreviewGoldWaterMarkSize:[I

    return-object p0
.end method

.method public getPreviewSize()Landroid/util/Size;
    .registers 1

    .line 705
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPreviewSize:Landroid/util/Size;

    return-object p0
.end method

.method public getProWatermarkStyle()I
    .registers 1

    .line 1905
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mProWatermarkStyle:I

    return p0
.end method

.method public getRace()I
    .registers 1

    .line 2494
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRace:I

    return p0
.end method

.method public getRawPictureSize()Ljava/util/List;
    .registers 1

    .line 713
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSupportRawSize:Ljava/util/List;

    return-object p0
.end method

.method public getRawScene()I
    .registers 8

    .line 1042
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isAIRawLiteClose()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 1045
    :cond_8
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionHDR()I

    move-result v0

    .line 1046
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionLowLightMode()I

    move-result v2

    .line 1047
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSuperNightAlgoType()Ljava/lang/String;

    move-result-object v3

    .line 1048
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionNightMode()I

    move-result v4

    .line 1049
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getMiddleNightMode()I

    move-result p0

    .line 1051
    const-string v5, "None_icon_close"

    const/4 v6, 0x1

    if-eq v4, v6, :cond_50

    if-ne p0, v6, :cond_24

    goto :goto_50

    :cond_24
    if-eq v0, v6, :cond_3d

    if-ne v2, v6, :cond_29

    goto :goto_3d

    .line 1065
    :cond_29
    const-string p0, "Night_Light"

    invoke-static {v3, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_33

    const/4 v1, 0x3

    goto :goto_62

    .line 1067
    :cond_33
    const-string p0, "Night"

    invoke-static {v3, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_62

    const/4 v1, 0x4

    goto :goto_62

    .line 1059
    :cond_3d
    :goto_3d
    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4e

    .line 1060
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAiRawSprdSupport:Z

    if-nez p0, :cond_4e

    const/16 v1, 0x14

    goto :goto_62

    :cond_4e
    const/4 v1, 0x2

    goto :goto_62

    .line 1052
    :cond_50
    :goto_50
    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_61

    .line 1053
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAiRawSprdSupport:Z

    if-nez p0, :cond_61

    const/16 v1, 0xa

    goto :goto_62

    :cond_61
    move v1, v6

    .line 1070
    :cond_62
    :goto_62
    sget-object p0, Lcom/transsion/camera/adapter/CameraParameters;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAiRAwScene: aiRawScene = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1
.end method

.method public getRawSuperResolutionMode()I
    .registers 1

    .line 1719
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRawSuperResolutionMode:I

    return p0
.end method

.method public getRealZoomRatio()I
    .registers 1

    .line 861
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRealZoomRatio:I

    return p0
.end method

.method public getRegularRange()Landroid/util/Range;
    .registers 1

    .line 947
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRegularFpsRange:Landroid/util/Range;

    return-object p0
.end method

.method public getRemosaicMode()Ljava/lang/String;
    .registers 1

    .line 1698
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRemosaicMode:Ljava/lang/String;

    return-object p0
.end method

.method public getRingScreenLight()Ljava/lang/String;
    .registers 1

    .line 2626
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRingScreenLight:Ljava/lang/String;

    return-object p0
.end method

.method public getSMVRRequestParams()[I
    .registers 1

    .line 2273
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSMVRRequestParams:[I

    return-object p0
.end method

.method public getSTBlurLevel()I
    .registers 1

    .line 2208
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSTBlurLevel:I

    return p0
.end method

.method public getSTBlurLightStrength()F
    .registers 1

    .line 2188
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSTBlurLightStrength:F

    return p0
.end method

.method public getSTBlurMode()I
    .registers 1

    .line 2176
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSTBlurMode:I

    return p0
.end method

.method public getSTBlurReaRatio()F
    .registers 1

    .line 2196
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSTBlurReaRatio:F

    return p0
.end method

.method public getSTBlurStrengths()[F
    .registers 1

    .line 2180
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSTBlurStrengths:[F

    return-object p0
.end method

.method public getSatPictureSize()Landroid/util/Size;
    .registers 1

    .line 729
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSatPictureSize:Landroid/util/Size;

    return-object p0
.end method

.method public getSceneMode()Ljava/lang/String;
    .registers 1

    .line 955
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSceneMode:Ljava/lang/String;

    return-object p0
.end method

.method public getScreenFlashMode()Ljava/lang/String;
    .registers 1

    .line 2011
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mScreenFlashMode:Ljava/lang/String;

    return-object p0
.end method

.method public getScreenFlashStatus()Ljava/lang/String;
    .registers 1

    .line 2642
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mScreenFlashStatus:Ljava/lang/String;

    return-object p0
.end method

.method public getScreenTorchStatus()Ljava/lang/String;
    .registers 1

    .line 2634
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mScreenTorchStatus:Ljava/lang/String;

    return-object p0
.end method

.method public getShot2ShotMode()I
    .registers 1

    .line 1855
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mShot2ShotMode:I

    return p0
.end method

.method public getSkinColor()I
    .registers 1

    .line 2486
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSkinColor:I

    return p0
.end method

.method public getSkinOptimization()I
    .registers 1

    .line 1324
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSkinOptimizationValue:I

    return p0
.end method

.method public getSkipMultCapture()Z
    .registers 1

    .line 1841
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSkipMultCapture:Z

    return p0
.end method

.method public getSlimBodyLevels()[I
    .registers 1

    .line 1558
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSlimBodyLevels:[I

    return-object p0
.end method

.method public getSmoothZoomValue()I
    .registers 1

    .line 2846
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSmoothZoomValue:I

    return p0
.end method

.method public getStreamFlip()Z
    .registers 1

    .line 2798
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mStreamFlip:Z

    return p0
.end method

.method public getStreamingCustomTuning()I
    .registers 4

    .line 2393
    sget-object v0, Lcom/transsion/camera/adapter/CameraParameters;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getStreamingCustomTuning:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mStreamingCustomTuning:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ,mEffect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mEffect:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,mCelebritySceneMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mCelebritySceneMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2395
    iget v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mCelebritySceneMode:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_38

    .line 2396
    const-string p0, "14"

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_38
    const/4 v2, 0x1

    if-ne v2, v0, :cond_42

    .line 2398
    const-string p0, "16"

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_42
    const/4 v2, 0x3

    if-ne v2, v0, :cond_4c

    .line 2400
    const-string p0, "17"

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 2401
    :cond_4c
    iget v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mEffect:I

    if-ne v2, v1, :cond_59

    if-nez v0, :cond_59

    .line 2402
    const-string p0, "18"

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 2404
    :cond_59
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mStreamingCustomTuning:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getStreetPhotoFilterId()I
    .registers 1

    .line 1470
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mStreetPhotoFilterId:I

    return p0
.end method

.method public getSuperAIRawMode()I
    .registers 1

    .line 1789
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperAIRaw:I

    return p0
.end method

.method public getSuperAntiVideoMode()Ljava/lang/String;
    .registers 1

    .line 1995
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperAntiVideo:Ljava/lang/String;

    return-object p0
.end method

.method public getSuperDefinitionMode()I
    .registers 1

    .line 1678
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperDefinitionMode:I

    return p0
.end method

.method public getSuperFlashValue()Ljava/lang/String;
    .registers 1

    .line 2610
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperFlash:Ljava/lang/String;

    return-object p0
.end method

.method public getSuperNightAlgoType()Ljava/lang/String;
    .registers 4

    .line 2159
    sget-object v0, Lcom/transsion/camera/adapter/CameraParameters;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSuperNightEnable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperNightEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2160
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperFlash:Ljava/lang/String;

    const-string v1, "on"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperNightEnable:Z

    if-eqz v0, :cond_32

    .line 2161
    const-string v0, "Night_Light"

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperNightAlgoType:Ljava/lang/String;

    .line 2162
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setSuperNightLightValue(I)V

    .line 2164
    :cond_32
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperNightAlgoType:Ljava/lang/String;

    return-object p0
.end method

.method public getSuperNightMode()Ljava/lang/String;
    .registers 1

    .line 2139
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperNightMode:Ljava/lang/String;

    return-object p0
.end method

.method public getSuperResolutionMode()I
    .registers 1

    .line 1723
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperResolutionMode:I

    return p0
.end method

.method public getSystemUserID()I
    .registers 1

    .line 3146
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSystemUserID:I

    return p0
.end method

.method public getTAPSCaptureNeedYuvSize()I
    .registers 1

    .line 2934
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTAPSCaptureNeedYuvSize:I

    return p0
.end method

.method public getTFEVCheckerEnable()I
    .registers 1

    .line 1833
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTFEVCheckerEnable:I

    return p0
.end method

.method public getTfPortraitMode()I
    .registers 1

    .line 1817
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTfPortraitMode:I

    return p0
.end method

.method public getThumbnailSize()Landroid/util/Size;
    .registers 1

    .line 737
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mThumbnailSize:Landroid/util/Size;

    return-object p0
.end method

.method public getTranFaceDetectMode()I
    .registers 2

    .line 2256
    sget-boolean v0, Lcom/transsion/camera/utils/FeatureSupport;->sEnableFaceInfoDetect:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 2257
    :cond_6
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranFaceDetectMode:I

    return p0
.end method

.method public getTranssionAINRMode()I
    .registers 1

    .line 3039
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranssionAINRMode:I

    return p0
.end method

.method public getTranssionAnimalEyeDetection()Ljava/lang/String;
    .registers 1

    .line 2297
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAnimalEyeDetection:Ljava/lang/String;

    return-object p0
.end method

.method public getTranssionAsdMode()I
    .registers 2

    .line 1387
    iget v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAsdMode:I

    if-lez v0, :cond_11

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isHeavyCapturing()Z

    move-result v0

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIsBurstCapturing:Z

    if-eqz v0, :cond_11

    :cond_e
    const/16 p0, 0x100

    return p0

    :cond_11
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAsdMode:I

    return p0
.end method

.method public getTranssionAsdVersion()I
    .registers 1

    .line 1404
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAsdVersion:I

    return p0
.end method

.method public getTranssionAutoFocusSwitch()Ljava/lang/String;
    .registers 1

    .line 2306
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAutoFocusSwitch:Ljava/lang/String;

    return-object p0
.end method

.method public getTranssionAutoMacroSwitch()Ljava/lang/String;
    .registers 1

    .line 2318
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAutoMacroSwitch:Ljava/lang/String;

    return-object p0
.end method

.method public getTranssionAutoMacroSwitchSetting()Ljava/lang/String;
    .registers 1

    .line 2325
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAutoMacroSwitchSetting:Ljava/lang/String;

    return-object p0
.end method

.method public getTranssionCameraMode()I
    .registers 1

    .line 2265
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranssionCameraMode:I

    return p0
.end method

.method public getTranssionCusIspAsd()[I
    .registers 1

    .line 1412
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAsdIsp:[I

    return-object p0
.end method

.method public getTranssionEyeDetection()Ljava/lang/String;
    .registers 1

    .line 2281
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mEyeDetection:Ljava/lang/String;

    return-object p0
.end method

.method public getTranssionFilterId()I
    .registers 1

    .line 1462
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranssionFilterId:I

    return p0
.end method

.method public getTranssionHDR()I
    .registers 1

    .line 1773
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranssionHDR:I

    return p0
.end method

.method public getTranssionHumanDetection()I
    .registers 1

    .line 2289
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHumanDetection:I

    return p0
.end method

.method public getTranssionLowLightMode()I
    .registers 1

    .line 1634
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLowLightMode:I

    return p0
.end method

.method public getTranssionNightMode()I
    .registers 1

    .line 1626
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mNightMode:I

    return p0
.end method

.method public getTranssionPluginEnable()I
    .registers 1

    .line 2019
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranssionPluginEnable:I

    return p0
.end method

.method public getTranssionSmartDenoise()I
    .registers 1

    .line 1670
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mDenoiseMode:I

    return p0
.end method

.method public getTranssionSuperNightFilterId()I
    .registers 1

    .line 1494
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranssionSuperNightFilterId:I

    return p0
.end method

.method public getTranssionTurboFusionMode()I
    .registers 3

    .line 1805
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->getDebugTurboFusionMode()I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_8

    return v0

    .line 1809
    :cond_8
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranssionTurboFusionMode:I

    return p0
.end method

.method public getTranssionUseAutoFocusSwitch()Z
    .registers 1

    .line 2310
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mUseAutoFocusSwitch:Z

    return p0
.end method

.method public getTranssionVideoEffectId()I
    .registers 1

    .line 1534
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoEffectId:I

    return p0
.end method

.method public getTranssionVideoFilterId()I
    .registers 1

    .line 1510
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoFilterId:I

    return p0
.end method

.method public getTranssionVideoFilterSkinType()I
    .registers 1

    .line 1518
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoFilterSkinType:I

    return p0
.end method

.method public getTranssionVideoFrameId()I
    .registers 1

    .line 1542
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoFrameId:I

    return p0
.end method

.method public getViUllEnable()I
    .registers 1

    .line 3071
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mViUllEnable:I

    return p0
.end method

.method public getVideo2kCapSize()Landroid/util/Size;
    .registers 1

    .line 2903
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->m2kSize:Landroid/util/Size;

    return-object p0
.end method

.method public getVideoFilterLevel()I
    .registers 1

    .line 1526
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoFilterLevel:I

    return p0
.end method

.method public getVideoHDRMode()Ljava/lang/String;
    .registers 1

    .line 1362
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoHDRMode:Ljava/lang/String;

    return-object p0
.end method

.method public getVideoHdrFormat()Ljava/lang/String;
    .registers 1

    .line 3153
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoHDRFormat:Ljava/lang/String;

    return-object p0
.end method

.method public getVideoInterpolationEnable()I
    .registers 1

    .line 2248
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoInterpolationEnable:I

    return p0
.end method

.method public getVideoNightTranYUVMode()I
    .registers 1

    .line 2353
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoNightTranYUVMode:I

    return p0
.end method

.method public getVideoOrientation()I
    .registers 1

    .line 785
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoOrientation:I

    return p0
.end method

.method public getVideoPortraitLevel()I
    .registers 1

    .line 1276
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoPortraitLevel:I

    return p0
.end method

.method public getVideoPortraitMode()I
    .registers 1

    .line 2333
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoPortraitMode:I

    return p0
.end method

.method public getVideoPreIspMode()I
    .registers 1

    .line 2774
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoPreIspMode:I

    return p0
.end method

.method public getVideoSpotLevel()I
    .registers 1

    .line 1284
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoSpotLevel:I

    return p0
.end method

.method public getVideoSpotMode()I
    .registers 1

    .line 2341
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoSpotMode:I

    return p0
.end method

.method public getVideoSuperNightMode()I
    .registers 1

    .line 2349
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoSuperNightMode:I

    return p0
.end method

.method public getVideoSuperNightResolution()I
    .registers 1

    .line 2373
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoSuperNightResolution:I

    return p0
.end method

.method public getVideoSuperNightScene()I
    .registers 1

    .line 2421
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoSuperNightAlgoScene:I

    return p0
.end method

.method public getVideoSuperNightYUVMode()I
    .registers 1

    .line 2381
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoSuperNightYUVMode:I

    return p0
.end method

.method public getVsdofLevel()Ljava/lang/String;
    .registers 1

    .line 1268
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVsdofLevel:Ljava/lang/String;

    return-object p0
.end method

.method public getYuvCaptureFlipMode()Ljava/lang/String;
    .registers 1

    .line 1945
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mYuvCaptureFlipMode:Ljava/lang/String;

    return-object p0
.end method

.method public getZoomEisMode()I
    .registers 1

    .line 2942
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mZoomEisMode:I

    return p0
.end method

.method public getZoomRatio()I
    .registers 1

    .line 857
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mZoomRatio:I

    return p0
.end method

.method public hasValidFace(Z)V
    .registers 2

    .line 1433
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mDXOHasValidFace:Z

    return-void
.end method

.method public hasValidFace()Z
    .registers 1

    .line 1437
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mDXOHasValidFace:Z

    return p0
.end method

.method public isAIRawLiteClose()Z
    .registers 3

    .line 1075
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAIRawMode()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_f

    .line 1076
    sget-object p0, Lcom/transsion/camera/adapter/CameraParameters;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "isAIRawLiteClose: aiRawScene getAIRawMode = 0"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 1079
    :cond_f
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAisMode()I

    move-result v0

    if-ne v0, v1, :cond_1d

    .line 1080
    sget-object p0, Lcom/transsion/camera/adapter/CameraParameters;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "isAIRawLiteClose: return 0 for AisMode on"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 1083
    :cond_1d
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getLivePhotoMode()I

    move-result v0

    if-ne v0, v1, :cond_2b

    .line 1084
    sget-object p0, Lcom/transsion/camera/adapter/CameraParameters;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "isAIRawLiteClose: return 0 for LivePhoto on"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 1087
    :cond_2b
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIsDetectedMoon:Z

    if-eqz v0, :cond_3d

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAiMoonMode()I

    move-result p0

    if-ne p0, v1, :cond_3d

    .line 1088
    sget-object p0, Lcom/transsion/camera/adapter/CameraParameters;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "isAIRawLiteClose: return 0 for AiMoon on"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    :cond_3d
    const/4 p0, 0x0

    return p0
.end method

.method public isAiRawLiteSupport()Z
    .registers 1

    .line 2147
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIsAiRawLiteSupport:Z

    return p0
.end method

.method public isBWConvertEnable()Z
    .registers 1

    .line 1308
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBWConvertEnable:Z

    return p0
.end method

.method public isBWPortraitEnable()Z
    .registers 1

    .line 1300
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBWPortraitEnable:Z

    return p0
.end method

.method public isBgServiceEnable()Z
    .registers 1

    .line 2216
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBGServiceEnable:Z

    return p0
.end method

.method public isCapturing()Z
    .registers 1

    .line 2538
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mCapturing:Z

    return p0
.end method

.method public isCurrentAppModeRequiredOnContinuousShot()Z
    .registers 1

    .line 3007
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIsCurrentAppModeRequiredOnContinuousShot:Z

    return p0
.end method

.method public isEVListValid()Z
    .registers 2

    .line 1167
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getEVList()[I

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getEVList()[I

    move-result-object p0

    array-length p0, p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_15

    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->getOfflineBurstCaptureNumber()I

    move-result p0

    if-gt p0, v0, :cond_15

    return v0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public isExtraCaptureEnableZSL()Z
    .registers 1

    .line 2958
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIsExtraCaptureEnableZSL:Z

    return p0
.end method

.method public isFaceDetectionEnable()Z
    .registers 1

    .line 2518
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFaceDetectionEnable:Z

    return p0
.end method

.method public isHeavyCapturing()Z
    .registers 1

    .line 1010
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHeavyCapturing:Z

    return p0
.end method

.method public isLongFocusCamera()Z
    .registers 1

    .line 2123
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIsLongFocusCamera:Z

    return p0
.end method

.method public isMirrorEnable()Z
    .registers 1

    .line 1292
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMirrorEnable:Z

    return p0
.end method

.method public isModeUltrazoomEnable()Z
    .registers 1

    .line 1336
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mModeUltrazoomEnable:Z

    return p0
.end method

.method public isPreviewStreamEnabled()Z
    .registers 1

    .line 2895
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPreviewStreamEnable:Z

    return p0
.end method

.method public isProfessionModeEnable()Z
    .registers 1

    .line 1328
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mProfessionalModeEnable:Z

    return p0
.end method

.method public isQuickPreviewEnable()Z
    .registers 1

    .line 1312
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mQuickPreviewEnable:Z

    return p0
.end method

.method public isRTDofEnable()Z
    .registers 1

    .line 902
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRTDofEnable:Z

    return p0
.end method

.method public isRecordingHint()Z
    .registers 1

    .line 966
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRecordingHint:Z

    return p0
.end method

.method public isSupportedRawSR()Z
    .registers 1

    .line 1755
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSupportedRawSR:Z

    return p0
.end method

.method public isTZServiceEnable()Z
    .registers 1

    .line 2224
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTZServiceEnable:Z

    return p0
.end method

.method public isWideCamera()Z
    .registers 1

    .line 2115
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIsWideCamera:Z

    return p0
.end method

.method public isZSLEnable()Z
    .registers 1

    .line 893
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mZSLEnable:Z

    return p0
.end method

.method public needFocusModeAuto()Z
    .registers 1

    .line 2514
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mNeedFocusModeAuto:Z

    return p0
.end method

.method public needLockAe(Z)V
    .registers 2

    .line 2542
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mNeedLockAe:Z

    return-void
.end method

.method public needLockAe()Z
    .registers 1

    .line 2546
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mNeedLockAe:Z

    return p0
.end method

.method public openYUVDataWhenRecording(Z)V
    .registers 2

    .line 2858
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSupportYUVPreviewDataWhenRecording:Z

    return-void
.end method

.method public overrideSensorRect(Landroid/graphics/Rect;)V
    .registers 2

    .line 970
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mOverrideSensorRect:Landroid/graphics/Rect;

    return-void
.end method

.method public postAlgoOn()Z
    .registers 1

    .line 986
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIsPostAlgoOn:Z

    return p0
.end method

.method public set360VideoHDRInitMode(I)V
    .registers 2

    .line 1379
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->m360VideoHDRInitMode:I

    return-void
.end method

.method public set360VideoHDRMode(I)V
    .registers 3

    .line 1370
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->m360VideoHDRMode:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    .line 1371
    const-string p1, "mtk_360hdr"

    goto :goto_a

    :cond_8
    const-string p1, "auto"

    :goto_a
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters;->setSceneMode(Ljava/lang/String;)V

    return-void
.end method

.method public set360VideoHDRScene(I)V
    .registers 2

    .line 2417
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideo360HDRAlgoScene:I

    return-void
.end method

.method public setAIRawLiteMotionDetection(I)V
    .registers 2

    .line 1155
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAIRawLiteMotionDetection:I

    return-void
.end method

.method public setAIRawLiteSupportPortraitEnhance(Z)V
    .registers 2

    .line 2714
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAIRawLiteSupportPortraitEnhance:Z

    return-void
.end method

.method public setAIRawMode(I)V
    .registers 2

    .line 2706
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAIRawMode:I

    return-void
.end method

.method public setAWBLockStatus(Z)V
    .registers 2

    .line 2071
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAWBLockStatus:Z

    return-void
.end method

.method public setAWBMode(Ljava/lang/String;)V
    .registers 2

    .line 2047
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAWBMode:Ljava/lang/String;

    return-void
.end method

.method public setAbeHdrCheckMode(I)V
    .registers 2

    .line 2690
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAbeHdrCheckMode:I

    return-void
.end method

.method public setAdrcgainValue(F)V
    .registers 2

    .line 1793
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAdrcGainValue:F

    return-void
.end method

.method public setAeLock(Z)V
    .registers 2

    .line 914
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAeLock:Z

    return-void
.end method

.method public setAeState(I)V
    .registers 2

    .line 1030
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAeStateValue:I

    return-void
.end method

.method public setAfFfMode(I)V
    .registers 2

    .line 1999
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAfFfMode:I

    return-void
.end method

.method public setAiMoonMode(I)V
    .registers 2

    .line 2457
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAiMoonMode:I

    return-void
.end method

.method public setAiRawLiteSupport(Z)V
    .registers 2

    .line 2143
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIsAiRawLiteSupport:Z

    return-void
.end method

.method public setAiRawScene(I)V
    .registers 2

    .line 1095
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAiRawScene:I

    return-void
.end method

.method public setAirawSN2SRMode(I)V
    .registers 2

    .line 1821
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAirawSN2SRMode:I

    return-void
.end method

.method public setAisMode(I)V
    .registers 2

    .line 2754
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAisMode:I

    return-void
.end method

.method public setAisMorpho(I)V
    .registers 2

    .line 2762
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAisMorpho:I

    return-void
.end method

.method public setAntiVideoMode(Ljava/lang/String;)V
    .registers 2

    .line 1983
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAntiVideo:Ljava/lang/String;

    return-void
.end method

.method public setAppModeId(Ljava/lang/String;)V
    .registers 2

    .line 2586
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAppModeId:Ljava/lang/String;

    return-void
.end method

.method public setArcFilterId(I)V
    .registers 2

    .line 1450
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mArcFilterId:I

    return-void
.end method

.method public setAsdEffect(I)V
    .registers 2

    .line 2385
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mEffect:I

    return-void
.end method

.method public setAutoFpsModeForISP(I)V
    .registers 2

    .line 2818
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAutoFpsModeForISP:I

    return-void
.end method

.method public setAutoWatermarkMode(Ljava/lang/String;)V
    .registers 2

    .line 1875
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAutoWatermarkMode:Ljava/lang/String;

    return-void
.end method

.method public setBGImageReaderId(I)V
    .registers 2

    .line 2228
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBGImageReaderId:I

    return-void
.end method

.method public setBMCustomZSLBufSize(I)V
    .registers 2

    .line 2923
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBMCustomZslBufSize:I

    return-void
.end method

.method public setBMLowLightMode(I)V
    .registers 2

    .line 2907
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->bmLowLightMode:I

    return-void
.end method

.method public setBMMultiFrameNum(I)V
    .registers 2

    .line 2915
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->bmMultiFrameNum:I

    return-void
.end method

.method public setBestMomentDetectMode(I)V
    .registers 2

    .line 2867
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBestMomentDetectMode:I

    return-void
.end method

.method public setBestMomentRawHDRMode(I)V
    .registers 2

    .line 2875
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBestMomentRawHDRMode:I

    return-void
.end method

.method public setBrightnessValue(I)V
    .registers 2

    .line 1026
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBrightnessValue:I

    return-void
.end method

.method public setCaptureCustomTuning(Ljava/lang/String;)V
    .registers 2

    .line 2662
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mCaptureCustomTuning:Ljava/lang/String;

    return-void
.end method

.method public setCaptureISPTunning(I)V
    .registers 2

    .line 2995
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mCaptureISPTunning:I

    return-void
.end method

.method public setCaptureId(I)V
    .registers 2

    .line 998
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mCaptureId:I

    return-void
.end method

.method public setCaptureTag(I)V
    .registers 2

    .line 2962
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mCaptureTag:I

    return-void
.end method

.method public setCaptureTime(J)V
    .registers 3

    .line 3172
    iput-wide p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mCaptureTime:J

    return-void
.end method

.method public setCaptureZSLTimestamps([J)V
    .registers 2

    .line 3011
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mCaptureZSLTimestamps:[J

    return-void
.end method

.method public setCapturing(Z)V
    .registers 2

    .line 2534
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mCapturing:Z

    return-void
.end method

.method public setCelebritySceneMode(I)V
    .registers 2

    .line 3075
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mCelebritySceneMode:I

    return-void
.end method

.method public setClickDownZoomRatio(I)V
    .registers 2

    .line 873
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mClickDownZoomRatio:I

    return-void
.end method

.method public setClickUpZoomRatio(I)V
    .registers 2

    .line 865
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mClickUpZoomRatio:I

    return-void
.end method

.method public setColorLevel(Ljava/lang/String;)V
    .registers 2

    .line 2698
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mColorLevel:Ljava/lang/String;

    return-void
.end method

.method public setCurrentAppModeRequiredOnContinuousShot(Z)V
    .registers 2

    .line 3003
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIsCurrentAppModeRequiredOnContinuousShot:Z

    return-void
.end method

.method public setCurrentFaces(I)V
    .registers 2

    .line 3027
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mCurrentFaces:I

    return-void
.end method

.method public setDataFlowType(I)V
    .registers 2

    .line 749
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mDataFlowType:I

    return-void
.end method

.method public setDeBandingMode(I)V
    .registers 2

    .line 2987
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBmDebandingMode:I

    return-void
.end method

.method public setDistortionCorrectionMode(I)V
    .registers 2

    .line 1859
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mDistortionCorrectionMode:I

    return-void
.end method

.method public setDistortionCorrectionPreviewEnable(Ljava/lang/String;)V
    .registers 2

    .line 1867
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mDistortionCorrectionPreviewEnable:Ljava/lang/String;

    return-void
.end method

.method public setEVList([I)V
    .registers 2

    .line 1163
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mEVList:[I

    return-void
.end method

.method public setEditWatermarkMode(ZLjava/lang/String;)V
    .registers 3

    .line 1879
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mEditWatermarkSupport:Z

    .line 1880
    iput-object p2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mEditWatermarkMode:Ljava/lang/String;

    return-void
.end method

.method public setExcludeVideoMakeupBeauty(I)V
    .registers 2

    .line 1610
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mExcludeVideoMakeupBeauty:I

    return-void
.end method

.method public setExifModeInfo(I)V
    .registers 2

    .line 2746
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mExifModeInfo:I

    return-void
.end method

.method public setExposureCompensation(I)V
    .registers 2

    .line 906
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mExposureCompensation:I

    return-void
.end method

.method public setExposureTime(J)V
    .registers 3

    .line 1193
    iput-wide p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mExposureTime:J

    return-void
.end method

.method public setExternalIspMode(I)V
    .registers 2

    .line 2778
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mExternalIspMode:I

    return-void
.end method

.method public setExtraCaptureCount(I)V
    .registers 2

    .line 2946
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mExtraCaptureCount:I

    return-void
.end method

.method public setExtraCaptureEnableZSL(Z)V
    .registers 2

    .line 2954
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIsExtraCaptureEnableZSL:Z

    return-void
.end method

.method public setFaceAttributeInfo([I)V
    .registers 2

    .line 2526
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFaceAttributeInfo:[I

    return-void
.end method

.method public setFaceBeautyFeaturesLevel([I)V
    .registers 2

    .line 1255
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFaceBeautyFeaturesLevel:[I

    return-void
.end method

.method public setFaceBeautyLevel(Ljava/lang/String;)V
    .registers 2

    .line 1239
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFaceBeautyLevel:Ljava/lang/String;

    return-void
.end method

.method public setFaceBeautyMode(Ljava/lang/String;)V
    .registers 2

    .line 1231
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFaceBeautyMode:Ljava/lang/String;

    return-void
.end method

.method public setFaceDetectionEnable(Z)V
    .registers 2

    .line 2522
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFaceDetectionEnable:Z

    return-void
.end method

.method public setFaceProportion(F)V
    .registers 2

    .line 3098
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFaceProportion:F

    return-void
.end method

.method public setFakeDualLensMode(I)V
    .registers 2

    .line 2236
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFakeDualLensMode:I

    return-void
.end method

.method public setFlareCaptureEnable(I)V
    .registers 2

    .line 2978
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFlareCaptureEnable:I

    return-void
.end method

.method public setFlareLocation([F)V
    .registers 2

    .line 2834
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPMasterFlareLocation:[F

    return-void
.end method

.method public setFlashFacade(Ljava/lang/String;)V
    .registers 2

    .line 2590
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFlashFacade:Ljava/lang/String;

    return-void
.end method

.method public setFlashMode(Ljava/lang/String;)V
    .registers 2

    .line 828
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFlashMode:Ljava/lang/String;

    return-void
.end method

.method public setFlashSnapAutoCaptureMode(I)V
    .registers 2

    .line 2879
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFlashSnapAutoCaptureMode:I

    return-void
.end method

.method public setFlashStyle(Ljava/lang/String;)V
    .registers 2

    .line 2614
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFlashStyle:Ljava/lang/String;

    return-void
.end method

.method public setFocalLength(I)V
    .registers 2

    .line 2850
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFocalLength:I

    return-void
.end method

.method public setFocusAreas(Ljava/util/List;)V
    .registers 3

    .line 806
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFocusAreas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_c

    .line 808
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFocusAreas:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_c
    return-void
.end method

.method public setFocusDistance(F)V
    .registers 2

    .line 1205
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFocusDistance:F

    return-void
.end method

.method public setFocusLength(F)V
    .registers 2

    .line 1213
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFocusLength:F

    return-void
.end method

.method public setFocusMode(Ljava/lang/String;)V
    .registers 2

    .line 797
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFocusMode:Ljava/lang/String;

    return-void
.end method

.method public setFocusModeAuto(Z)V
    .registers 2

    .line 2510
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mNeedFocusModeAuto:Z

    return-void
.end method

.method public setFovWideCrop(Z)V
    .registers 2

    .line 881
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFovWideCrop:Z

    return-void
.end method

.method public setFrontDualFlashColorTemp(I)V
    .registers 2

    .line 2031
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFrontDualFlashColorTemp:I

    return-void
.end method

.method public setFrontDualFlashStrengthMode(I)V
    .registers 2

    .line 2039
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFrontDualFlashStrengthMode:I

    return-void
.end method

.method public setFusionMode(Ljava/lang/String;)V
    .registers 2

    .line 2099
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFusionMode:Ljava/lang/String;

    return-void
.end method

.method public setGenderAttributeValue(Ljava/lang/String;)V
    .registers 2

    .line 2478
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mGenderAttributeValue:Ljava/lang/String;

    return-void
.end method

.method public setGoldWaterMarkSize([I)V
    .registers 2

    .line 1925
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mGoldWaterMarkSize:[I

    return-void
.end method

.method public setGoldWatermarkMode(ZLjava/lang/String;)V
    .registers 3

    .line 1884
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mGoldWatermarkSupport:Z

    .line 1885
    iput-object p2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mGoldWatermarkMode:Ljava/lang/String;

    return-void
.end method

.method public setGoldWatermarkType(Ljava/lang/String;)V
    .registers 2

    .line 1917
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mGoldWatermarkType:Ljava/lang/String;

    return-void
.end method

.method public setGroupCaptureEnable(I)V
    .registers 2

    .line 2970
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mGroupCaptureEnable:I

    return-void
.end method

.method public setHALBMLowLightMode(I)V
    .registers 2

    .line 3043
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHALBMLowLightMode:I

    return-void
.end method

.method public setHDRAeExpoInfo([I)V
    .registers 2

    .line 1123
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHDRAeExpoInfo:[I

    return-void
.end method

.method public setHdr10PlusMode(I)V
    .registers 5

    .line 3163
    sget-object v0, Lcom/transsion/camera/adapter/CameraParameters;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setHdr10PlusMode enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3164
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHdr10PlusMode:I

    return-void
.end method

.method public setHeavyCapturing(Z)V
    .registers 2

    .line 1014
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHeavyCapturing:Z

    return-void
.end method

.method public setHeavyCapturingBV(I)V
    .registers 2

    .line 1018
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHeavyCapturingBV:I

    return-void
.end method

.method public setHighFpsMode(Ljava/lang/String;)V
    .registers 2

    .line 2095
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHighFpsMode:Ljava/lang/String;

    return-void
.end method

.method public setHighLightMode(I)V
    .registers 2

    .line 2550
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHighLightMode:I

    return-void
.end method

.method public setHighPixelMode(I)V
    .registers 2

    .line 1682
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHighPixelMode:I

    return-void
.end method

.method public setHumanBox([I)V
    .registers 2

    .line 3157
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHumanBox:[I

    return-void
.end method

.method public setISOValue(I)V
    .registers 2

    .line 1185
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mISOValue:I

    return-void
.end method

.method public setISPTuningEnable(I)V
    .registers 2

    .line 2806
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mISPTuningEnable:I

    return-void
.end method

.method public setImageStyleId(I)V
    .registers 2

    .line 1474
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mImageStyleId:I

    return-void
.end method

.method public setIncreaseFrequencyEnable(I)V
    .registers 2

    .line 3019
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIncreaseFreqEnable:I

    return-void
.end method

.method public setIs24HourFormat(I)V
    .registers 2

    .line 1909
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIs24HourFormat:I

    return-void
.end method

.method public setIsBurstCapturing(Z)V
    .registers 2

    .line 1392
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIsBurstCapturing:Z

    return-void
.end method

.method public setJpegGPSLocation(Landroid/location/Location;)V
    .registers 2

    .line 789
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLocation:Landroid/location/Location;

    return-void
.end method

.method public setJpegOrientation(I)V
    .registers 2

    .line 773
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mJpegOrientation:I

    return-void
.end method

.method public setLastShotNotSkip(Z)V
    .registers 2

    .line 1103
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLastShotNotSkip:Z

    return-void
.end method

.method public setLensCorrectionMode(I)V
    .registers 2

    .line 1582
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLensCorrectionMode:I

    return-void
.end method

.method public setLimitFpsRange(Landroid/util/Range;)V
    .registers 2

    .line 935
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLimitFpsRange:Landroid/util/Range;

    return-void
.end method

.method public setLivePhotoMode(I)V
    .registers 2

    .line 3051
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLivePhotoMode:I

    return-void
.end method

.method public setLiveResultMode(I)V
    .registers 2

    .line 2686
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLiveResultMode:I

    return-void
.end method

.method public setLlsInfo([I)V
    .registers 2

    .line 1147
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLlsInfo:[I

    return-void
.end method

.method public setLongExposureCaptureState(Ljava/lang/String;)V
    .registers 2

    .line 2738
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLongExposureCaptureState:Ljava/lang/String;

    return-void
.end method

.method public setLongExposureScene(Ljava/lang/String;)V
    .registers 2

    .line 2722
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLongExposureScene:Ljava/lang/String;

    return-void
.end method

.method public setLongExposureTripod(Ljava/lang/String;)V
    .registers 2

    .line 2730
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLongExposureTripod:Ljava/lang/String;

    return-void
.end method

.method public setLongFocusBaseZoomRatio(F)V
    .registers 2

    .line 2127
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLongFocusBaseZoomRatio:F

    return-void
.end method

.method public setLongFocusCamera(Z)V
    .registers 2

    .line 2119
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIsLongFocusCamera:Z

    return-void
.end method

.method public setLuminanceValue(I)V
    .registers 2

    .line 2023
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLuminanceValue:I

    return-void
.end method

.method public setMFNRAeExpoInfo([I)V
    .registers 2

    .line 1131
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMFNRAeExpoInfo:[I

    return-void
.end method

.method public setMTKProcessRawEnable(I)V
    .registers 2

    .line 3091
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMTKProcessRawEnable:I

    return-void
.end method

.method public setMagicSkyResult(I)V
    .registers 2

    .line 2574
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMagicSkyResult:I

    return-void
.end method

.method public setMagicSkyType(Ljava/lang/String;)V
    .registers 2

    .line 2566
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMagicSkyType:Ljava/lang/String;

    return-void
.end method

.method public setMakeUpIntensitys([F)V
    .registers 2

    .line 1574
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMakeUpIntensitys:[F

    return-void
.end method

.method public setMakeUpMode(I)V
    .registers 2

    .line 1570
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMakeUpMode:I

    return-void
.end method

.method public setMakeUpVideoIntensitys([F)V
    .registers 2

    .line 1598
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMakeUpVideoIntensitys:[F

    return-void
.end method

.method public setMakeUpVideoMode(I)V
    .registers 2

    .line 1594
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMakeUpVideoMode:I

    return-void
.end method

.method public setManualAWBValue(Ljava/lang/String;)V
    .registers 2

    .line 2055
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mManualAWBValue:Ljava/lang/String;

    return-void
.end method

.method public setMeteringAreas(Ljava/util/List;)V
    .registers 3

    .line 817
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMeteringAreas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_c

    .line 819
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMeteringAreas:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_c
    return-void
.end method

.method public setMeteringMode(Ljava/lang/String;)V
    .registers 2

    .line 1222
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMeteringMode:Ljava/lang/String;

    return-void
.end method

.method public setMiddleNightMode(I)V
    .registers 3

    .line 1638
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMiddleNightMode:I

    .line 1639
    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->disableAlgoPolicy()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 1640
    sget-object p1, Lcom/transsion/camera/adapter/CameraParameters;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "It\'s a project under 4G,close MiddleNight in Monkey scenarios."

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1641
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMiddleNightMode:I

    :cond_12
    return-void
.end method

.method public setMoonDetectPitch(F)V
    .registers 2

    .line 2449
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMoonDetectPitch:F

    return-void
.end method

.method public setMoonDetectResult(I)V
    .registers 2

    .line 1201
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMoonDetectResult:I

    return-void
.end method

.method public setMoonDetection(I)V
    .registers 2

    .line 2441
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMoonDetectionMode:I

    return-void
.end method

.method public setMotionCaptureMode(I)V
    .registers 2

    .line 3083
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMotionCaptureMode:I

    return-void
.end method

.method public setMultiFaceBeautyMode(Ljava/lang/String;)V
    .registers 2

    .line 1235
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMultiFaceBeautyMode:Ljava/lang/String;

    return-void
.end method

.method public setNightAeExpoInfo([I)V
    .registers 2

    .line 1139
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mNightAeExpoInfo:[I

    return-void
.end method

.method public setNightHawkMode(I)V
    .registers 2

    .line 2433
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mNightHawkMode:I

    return-void
.end method

.method public setNvsSuperNightFilterId(I)V
    .registers 2

    .line 1482
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperNightFilterId:I

    return-void
.end method

.method public setOpenAutoFps(Z)V
    .registers 2

    .line 2802
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mOpenAutoFps:Z

    return-void
.end method

.method public setP2CropRegionCustomize([I)V
    .registers 2

    .line 1735
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mP2CropRegionCustomize:[I

    return-void
.end method

.method public setP2RawCropResizeEnable(I)V
    .registers 2

    .line 1727
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mP2RawCropResizeEnable:I

    return-void
.end method

.method public setP2ResizerSizeCustomize([I)V
    .registers 2

    .line 1743
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mP2ResizerSizeCustomize:[I

    return-void
.end method

.method public setPMasterFlareMode(I)V
    .registers 2

    .line 2826
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPMasterFlareMode:I

    return-void
.end method

.method public setPhotoHDRMode(Ljava/lang/String;)V
    .registers 5

    .line 1344
    sget-object v0, Lcom/transsion/camera/adapter/CameraParameters;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setPhotoHDRMode], hdrMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1345
    const-string v0, "on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1346
    const-string v0, "hdr"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setSceneMode(Ljava/lang/String;)V

    .line 1348
    :cond_23
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPhotoHDRMode:Ljava/lang/String;

    return-void
.end method

.method public setPhotoNightTranYUVMode(I)V
    .registers 2

    .line 2365
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPhotoNightTranYUVMode:I

    return-void
.end method

.method public setPictureSize(Landroid/util/Size;)V
    .registers 2

    .line 717
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPictureSize:Landroid/util/Size;

    return-void
.end method

.method public setPipDeviceValue(Ljava/lang/String;)V
    .registers 2

    .line 2654
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPipDeviceValue:Ljava/lang/String;

    return-void
.end method

.method public setPlainLocationText(Ljava/lang/String;)V
    .registers 2

    .line 1894
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPlainLocationText:Ljava/lang/String;

    return-void
.end method

.method public setPortraitModeEnhanceMode(Ljava/lang/String;)V
    .registers 2

    .line 2465
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPortraitModeEnhanceMode:Ljava/lang/String;

    return-void
.end method

.method public setPostAlgoFrameInfo([I)V
    .registers 2

    .line 1115
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPostAlgoFrameInfo:[I

    return-void
.end method

.method public setPostAlgoOn(Z)V
    .registers 2

    .line 990
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIsPostAlgoOn:Z

    return-void
.end method

.method public setPostAlgoType(I)V
    .registers 2

    .line 1006
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPostAlgoType:I

    return-void
.end method

.method public setPostViewSize(Landroid/util/Size;)V
    .registers 2

    .line 741
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPostViewSize:Landroid/util/Size;

    return-void
.end method

.method public setPreviewFPSRange(Landroid/util/Range;)V
    .registers 2

    .line 922
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPreviewFPSRange:Landroid/util/Range;

    return-void
.end method

.method public setPreviewGoldWaterMarkSize([I)V
    .registers 2

    .line 1933
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPreviewGoldWaterMarkSize:[I

    return-void
.end method

.method public setPreviewSize(Landroid/util/Size;)V
    .registers 2

    .line 693
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPreviewSize:Landroid/util/Size;

    return-void
.end method

.method public setProWatermarMode(ZLjava/lang/String;)V
    .registers 3

    .line 1889
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mProWatermarkSupport:Z

    .line 1890
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mProWatermarkType:I

    return-void
.end method

.method public setProWatermarkStyle(I)V
    .registers 2

    .line 1902
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mProWatermarkStyle:I

    return-void
.end method

.method public setProfessionMode(Z)V
    .registers 2

    .line 1332
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mProfessionalModeEnable:Z

    return-void
.end method

.method public setQuickPreview(Z)V
    .registers 2

    .line 1316
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mQuickPreviewEnable:Z

    return-void
.end method

.method public setRTDofEnable(Z)V
    .registers 2

    .line 898
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRTDofEnable:Z

    return-void
.end method

.method public setRace(I)V
    .registers 2

    .line 2498
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRace:I

    return-void
.end method

.method public setRawPictureSize(Ljava/util/List;)V
    .registers 2

    .line 709
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSupportRawSize:Ljava/util/List;

    return-void
.end method

.method public setRealZoomRatio(I)V
    .registers 2

    .line 853
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRealZoomRatio:I

    return-void
.end method

.method public setRecordingHint(Z)V
    .registers 2

    .line 962
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRecordingHint:Z

    return-void
.end method

.method public setRegularRange(Landroid/util/Range;)V
    .registers 2

    .line 943
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRegularFpsRange:Landroid/util/Range;

    return-void
.end method

.method public setRemosaicMode(Ljava/lang/String;)V
    .registers 3

    .line 1690
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRemosaicMode:Ljava/lang/String;

    .line 1691
    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->specialMonkeySupported()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 1692
    sget-object p1, Lcom/transsion/camera/adapter/CameraParameters;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "It\'s a project under 4G,close remosaicMode in Monkey scenarios."

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1693
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRemosaicMode:Ljava/lang/String;

    :cond_12
    return-void
.end method

.method public setRingScreenLight(Ljava/lang/String;)V
    .registers 2

    .line 2622
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRingScreenLight:Ljava/lang/String;

    return-void
.end method

.method public setSMVRRequestParams([I)V
    .registers 2

    .line 2269
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSMVRRequestParams:[I

    return-void
.end method

.method public setSTBlurLightStrength(F)V
    .registers 2

    .line 2192
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSTBlurLightStrength:F

    return-void
.end method

.method public setSTBlurMode(I)V
    .registers 2

    .line 2172
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSTBlurMode:I

    return-void
.end method

.method public setSTBlurReaRatio(F)V
    .registers 2

    .line 2200
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSTBlurReaRatio:F

    return-void
.end method

.method public setSTBlurStrengths([F)V
    .registers 2

    .line 2184
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSTBlurStrengths:[F

    return-void
.end method

.method public setSatPictureSize(Landroid/util/Size;)V
    .registers 2

    .line 725
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSatPictureSize:Landroid/util/Size;

    return-void
.end method

.method public setSceneMode(Ljava/lang/String;)V
    .registers 2

    .line 951
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSceneMode:Ljava/lang/String;

    return-void
.end method

.method public setScreenFlashMode(Ljava/lang/String;)V
    .registers 2

    .line 2007
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mScreenFlashMode:Ljava/lang/String;

    return-void
.end method

.method public setScreenFlashStatus(Ljava/lang/String;)V
    .registers 2

    .line 2638
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mScreenFlashStatus:Ljava/lang/String;

    return-void
.end method

.method public setScreenTorchStatus(Ljava/lang/String;)V
    .registers 2

    .line 2630
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mScreenTorchStatus:Ljava/lang/String;

    return-void
.end method

.method public setShot2ShotMode(I)V
    .registers 2

    .line 1851
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mShot2ShotMode:I

    return-void
.end method

.method public setSingleBlurLevel(I)V
    .registers 2

    .line 2204
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSTBlurLevel:I

    return-void
.end method

.method public setSkinColor(I)V
    .registers 2

    .line 2490
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSkinColor:I

    return-void
.end method

.method public setSkinOptimization(I)V
    .registers 2

    .line 1320
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSkinOptimizationValue:I

    return-void
.end method

.method public setSkipMultCapture(Z)V
    .registers 2

    .line 1837
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSkipMultCapture:Z

    return-void
.end method

.method public setSlimBodyLevels([I)V
    .registers 2

    .line 1546
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSlimBodyLevels:[I

    return-void
.end method

.method public setSlimBodyMode(I)V
    .registers 2

    .line 1550
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSlimBodyMode:I

    return-void
.end method

.method public setSlimBodySkip(I)V
    .registers 2

    .line 1554
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSlimBodySkip:I

    return-void
.end method

.method public setSmoothZoomValue(I)V
    .registers 2

    .line 2842
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSmoothZoomValue:I

    return-void
.end method

.method public setStreamingCustomTuning(Ljava/lang/String;)V
    .registers 2

    .line 2389
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mStreamingCustomTuning:Ljava/lang/String;

    return-void
.end method

.method public setStreetPhotoFilterId(I)V
    .registers 2

    .line 1466
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mStreetPhotoFilterId:I

    return-void
.end method

.method public setSuperAIRawMode(I)V
    .registers 2

    .line 1777
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperAIRaw:I

    return-void
.end method

.method public setSuperAntiVideoMode(Ljava/lang/String;)V
    .registers 2

    .line 1991
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperAntiVideo:Ljava/lang/String;

    return-void
.end method

.method public setSuperDefinitionMode(I)V
    .registers 2

    .line 1674
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperDefinitionMode:I

    return-void
.end method

.method public setSuperFlashValue(Ljava/lang/String;)V
    .registers 2

    .line 2598
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperFlash:Ljava/lang/String;

    return-void
.end method

.method public setSuperNightAlgoType(Ljava/lang/String;)V
    .registers 3

    .line 2151
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperNightAlgoType:Ljava/lang/String;

    .line 2152
    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->disableAlgoPolicy()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 2153
    sget-object p1, Lcom/transsion/camera/adapter/CameraParameters;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "It\'s a project under 4G,close superNight in Monkey scenarios."

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2154
    const-string p1, "None"

    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperNightAlgoType:Ljava/lang/String;

    :cond_13
    return-void
.end method

.method public setSuperNightHdrCheckerMode(I)V
    .registers 2

    .line 1498
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperNightHdrCheckerModeEnable:I

    return-void
.end method

.method public setSuperNightMode(Ljava/lang/String;)V
    .registers 2

    .line 2135
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperNightMode:Ljava/lang/String;

    return-void
.end method

.method public setSuperResolutionMode(I)V
    .registers 3

    .line 1706
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSupportedRawSR:Z

    if-eqz v0, :cond_7

    .line 1707
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRawSuperResolutionMode:I

    goto :goto_9

    .line 1709
    :cond_7
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperResolutionMode:I

    .line 1711
    :goto_9
    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->specialMonkeySupported()Z

    move-result p1

    if-eqz p1, :cond_24

    .line 1712
    sget-object p1, Lcom/transsion/camera/adapter/CameraParameters;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "It\'s a project under 4G,close superResolution in Monkey scenarios."

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1713
    const-string p1, "0"

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRawSuperResolutionMode:I

    .line 1714
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperResolutionMode:I

    :cond_24
    return-void
.end method

.method public setSuperResolutionSupportPortraitMode(Z)V
    .registers 2

    .line 2469
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperResolutinSupportPortraitMode:Z

    return-void
.end method

.method public setSupportedRawSR(Z)V
    .registers 2

    .line 1751
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSupportedRawSR:Z

    return-void
.end method

.method public setSystemUserID(I)V
    .registers 2

    .line 3142
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSystemUserID:I

    return-void
.end method

.method public setTAPSCaptureNeedYuvSize(I)V
    .registers 2

    .line 2930
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTAPSCaptureNeedYuvSize:I

    return-void
.end method

.method public setTfPortraitMode(I)V
    .registers 2

    .line 1813
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTfPortraitMode:I

    return-void
.end method

.method public setThumbnailSize(Landroid/util/Size;)V
    .registers 2

    .line 745
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mThumbnailSize:Landroid/util/Size;

    return-void
.end method

.method public setTranFaceDetectMode(I)V
    .registers 2

    .line 2252
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranFaceDetectMode:I

    return-void
.end method

.method public setTranssionAINRMode(I)V
    .registers 2

    .line 3035
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranssionAINRMode:I

    return-void
.end method

.method public setTranssionAnimalEyeDetection(Ljava/lang/String;)V
    .registers 2

    .line 2293
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAnimalEyeDetection:Ljava/lang/String;

    return-void
.end method

.method public setTranssionAsdMode(I)V
    .registers 2

    .line 1383
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAsdMode:I

    return-void
.end method

.method public setTranssionAsdVersion(I)V
    .registers 2

    .line 1400
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAsdVersion:I

    return-void
.end method

.method public setTranssionAutoFocusSwitch(Ljava/lang/String;Z)V
    .registers 3

    .line 2301
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAutoFocusSwitch:Ljava/lang/String;

    .line 2302
    iput-boolean p2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mUseAutoFocusSwitch:Z

    return-void
.end method

.method public setTranssionAutoMacroSwitch(Ljava/lang/String;)V
    .registers 2

    .line 2314
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAutoMacroSwitch:Ljava/lang/String;

    return-void
.end method

.method public setTranssionAutoMacroSwitchSetting(Ljava/lang/String;)V
    .registers 2

    .line 2321
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAutoMacroSwitchSetting:Ljava/lang/String;

    return-void
.end method

.method public setTranssionCameraMode(I)V
    .registers 2

    .line 2261
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranssionCameraMode:I

    return-void
.end method

.method public setTranssionCusIspAsd([I)V
    .registers 2

    .line 1408
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAsdIsp:[I

    return-void
.end method

.method public setTranssionEyeDetection(Ljava/lang/String;)V
    .registers 2

    .line 2277
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mEyeDetection:Ljava/lang/String;

    return-void
.end method

.method public setTranssionFilterId(I)V
    .registers 2

    .line 1458
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranssionFilterId:I

    return-void
.end method

.method public setTranssionHDR(I)V
    .registers 5

    .line 1759
    sget-object v0, Lcom/transsion/camera/adapter/CameraParameters;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setTranssionHDR], value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1760
    const-string v1, "1"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1761
    const-string v1, "hdr"

    invoke-virtual {p0, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setSceneMode(Ljava/lang/String;)V

    goto :goto_2d

    .line 1763
    :cond_28
    const-string v1, "auto"

    invoke-virtual {p0, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setSceneMode(Ljava/lang/String;)V

    .line 1765
    :goto_2d
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranssionHDR:I

    .line 1766
    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->disableAlgoPolicy()Z

    move-result p1

    if-eqz p1, :cond_3d

    .line 1767
    const-string p1, "It\'s a project under 4G,close Hdr in Monkey scenarios."

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 1768
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranssionHDR:I

    :cond_3d
    return-void
.end method

.method public setTranssionHumanDetection(I)V
    .registers 2

    .line 2285
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHumanDetection:I

    return-void
.end method

.method public setTranssionLowLightMode(I)V
    .registers 2

    .line 1630
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLowLightMode:I

    return-void
.end method

.method public setTranssionNightMode(I)V
    .registers 3

    .line 1618
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mNightMode:I

    .line 1619
    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->disableAlgoPolicy()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 1620
    sget-object p1, Lcom/transsion/camera/adapter/CameraParameters;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "It\'s a project under 4G,close TranssionNightMode in Monkey scenarios."

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1621
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mNightMode:I

    :cond_12
    return-void
.end method

.method public setTranssionPluginEnable(I)V
    .registers 2

    .line 2015
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranssionPluginEnable:I

    return-void
.end method

.method public setTranssionSmartDenoise(I)V
    .registers 2

    .line 1666
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mDenoiseMode:I

    return-void
.end method

.method public setTranssionSuperNightFilterId(I)V
    .registers 2

    .line 1490
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranssionSuperNightFilterId:I

    return-void
.end method

.method public setTranssionTurboFusionMode(I)V
    .registers 2

    .line 1801
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranssionTurboFusionMode:I

    return-void
.end method

.method public setVideo2kSize(Z)V
    .registers 4

    if-eqz p1, :cond_c

    .line 2899
    new-instance p1, Landroid/util/Size;

    const/16 v0, 0x5a0

    const/16 v1, 0xa00

    invoke-direct {p1, v0, v1}, Landroid/util/Size;-><init>(II)V

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->m2kSize:Landroid/util/Size;

    return-void
.end method

.method public setVideoHDRMode(Ljava/lang/String;)V
    .registers 2

    .line 1357
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoHDRMode:Ljava/lang/String;

    return-void
.end method

.method public setVideoHdrFormat(Ljava/lang/String;)V
    .registers 2

    .line 3149
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoHDRFormat:Ljava/lang/String;

    return-void
.end method

.method public setVideoNightTranYUVMode(I)V
    .registers 2

    .line 2357
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoNightTranYUVMode:I

    return-void
.end method

.method public setVideoOrientation(I)V
    .registers 2

    .line 777
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoOrientation:I

    return-void
.end method

.method public setVideoPortraitLevel(I)V
    .registers 2

    .line 1272
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoPortraitLevel:I

    return-void
.end method

.method public setVideoPortraitMode(I)V
    .registers 2

    .line 2329
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoPortraitMode:I

    return-void
.end method

.method public setVideoPreIspMode(I)V
    .registers 2

    .line 2770
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoPreIspMode:I

    return-void
.end method

.method public setVideoSpotLevel(I)V
    .registers 2

    .line 1280
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoSpotLevel:I

    return-void
.end method

.method public setVideoSpotMode(I)V
    .registers 2

    .line 2337
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoSpotMode:I

    return-void
.end method

.method public setVideoSuperNightMode(I)V
    .registers 2

    .line 2345
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoSuperNightMode:I

    return-void
.end method

.method public setVideoSuperNightResolution(I)V
    .registers 2

    .line 2369
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoSuperNightResolution:I

    return-void
.end method

.method public setVideoSuperNightScene(I)V
    .registers 2

    .line 2409
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoSuperNightAlgoScene:I

    return-void
.end method

.method public setVideoSuperNightYUVMode(I)V
    .registers 2

    .line 2377
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoSuperNightYUVMode:I

    return-void
.end method

.method public setVsdofModeLevel(Ljava/lang/String;)V
    .registers 5

    .line 1263
    sget-object v0, Lcom/transsion/camera/adapter/CameraParameters;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVsdofModeLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1264
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVsdofLevel:Ljava/lang/String;

    return-void
.end method

.method public setWideCamera(Z)V
    .registers 2

    .line 2111
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIsWideCamera:Z

    return-void
.end method

.method public setYuvCaptureFlipMode(Ljava/lang/String;)V
    .registers 2

    .line 1941
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mYuvCaptureFlipMode:Ljava/lang/String;

    return-void
.end method

.method public setZSLEnable(Z)V
    .registers 2

    .line 889
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mZSLEnable:Z

    return-void
.end method

.method public setZoomEisMode(I)V
    .registers 2

    .line 2938
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mZoomEisMode:I

    return-void
.end method

.method public setZoomRatio(I)V
    .registers 2

    .line 849
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mZoomRatio:I

    return-void
.end method

.method public setZoomRatio(IZ)V
    .registers 4

    .line 841
    sget v0, Lcom/transsion/camera/adapter/CameraParameters;->MIN_ZOOM_RATIO:I

    if-ge p1, v0, :cond_1d

    if-nez p2, :cond_1d

    .line 842
    sget-object p0, Lcom/transsion/camera/adapter/CameraParameters;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "set invalid value in setZoomRatio: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 845
    :cond_1d
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mZoomRatio:I

    return-void
.end method

.method public supportYUVDataWhenRecording()Z
    .registers 1

    .line 2862
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSupportYUVPreviewDataWhenRecording:Z

    return p0
.end method

.method public tripodMode(Z)V
    .registers 2

    .line 1441
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mDXOTripodMode:Z

    return-void
.end method

.method public tripodMode()Z
    .registers 1

    .line 1445
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mDXOTripodMode:Z

    return p0
.end method
