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

.field postAlgoFpsRange:Landroid/util/Range;


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

    .line 148
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

    .line 149
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
    .registers 9

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

    .line 150
    sget v3, Lcom/transsion/camera/adapter/CameraParameters;->MIN_ZOOM_RATIO:I

    iput v3, p0, Lcom/transsion/camera/adapter/CameraParameters;->mZoomRatio:I

    .line 151
    iput v3, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRealZoomRatio:I

    .line 153
    iput-boolean v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFovWideCrop:Z

    .line 154
    iput-boolean v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMirrorEnable:Z

    .line 155
    iput-boolean v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBWPortraitEnable:Z

    .line 156
    iput-boolean v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBWConvertEnable:Z

    .line 157
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mQuickPreviewEnable:Z

    .line 158
    iput-boolean v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mProfessionalModeEnable:Z

    .line 159
    iput-boolean v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mModeUltrazoomEnable:Z

    .line 160
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranssionPluginEnable:I

    .line 161
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoInterpolationEnable:I

    .line 176
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/transsion/camera/adapter/CameraParameters;->mWaterMarkParameterList:Ljava/util/List;

    .line 181
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMeteringAreas:Ljava/util/List;

    .line 182
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFocusAreas:Ljava/util/List;

    .line 186
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mISOValue:I

    const-wide/16 v3, -0x1

    .line 187
    iput-wide v3, p0, Lcom/transsion/camera/adapter/CameraParameters;->mExposureTime:J

    const/4 v3, 0x0

    .line 188
    iput v3, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFocusDistance:F

    .line 189
    iput v3, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFocusLength:F

    .line 190
    const-string v4, "auto"

    iput-object v4, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMeteringMode:Ljava/lang/String;

    .line 192
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mJpegQuality:I

    .line 195
    iput-boolean v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mZSLEnable:Z

    .line 196
    iput-boolean v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIsWideCamera:Z

    .line 197
    iput-boolean v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIsLongFocusCamera:Z

    .line 199
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPortraitMode:I

    .line 204
    const-string v4, "None"

    iput-object v4, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperNightAlgoType:Ljava/lang/String;

    .line 205
    iput-object v4, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperNightAlgoTypeToHal:Ljava/lang/String;

    .line 207
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRTDofEnable:Z

    .line 211
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mShot2ShotMode:I

    .line 212
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mDistortionCorrectionMode:I

    .line 216
    iput-boolean v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAWBLockStatus:Z

    .line 232
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSTBlurMode:I

    .line 233
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSTBlurLevel:I

    .line 238
    iput-boolean v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBGServiceEnable:Z

    .line 239
    iput-boolean v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTZServiceEnable:Z

    .line 240
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBGImageReaderId:I

    const/4 v4, 0x0

    .line 243
    iput-object v4, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLocation:Landroid/location/Location;

    .line 246
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranssionCameraMode:I

    .line 248
    iput-object v4, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSMVRRequestParams:[I

    .line 250
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSessionType:I

    .line 251
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoPortraitMode:I

    .line 258
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHeavyCapturingBV:I

    .line 260
    new-instance v5, Landroid/util/Range;

    const/4 v6, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0x18

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v5, p0, Lcom/transsion/camera/adapter/CameraParameters;->postAlgoFpsRange:Landroid/util/Range;

    .line 263
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPostAlgoType:I

    .line 267
    new-array v5, v1, [I

    iput-object v5, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPostAlgoFrameInfo:[I

    .line 268
    new-array v5, v1, [I

    iput-object v5, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHDRAeExpoInfo:[I

    .line 269
    new-array v5, v1, [I

    iput-object v5, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMFNRAeExpoInfo:[I

    .line 270
    new-array v5, v1, [I

    iput-object v5, p0, Lcom/transsion/camera/adapter/CameraParameters;->mNightAeExpoInfo:[I

    .line 271
    new-array v5, v1, [I

    iput-object v5, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLlsInfo:[I

    .line 272
    new-array v5, v1, [I

    iput-object v5, p0, Lcom/transsion/camera/adapter/CameraParameters;->mEVList:[I

    .line 289
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHighLightMode:I

    .line 326
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSmoothZoomValue:I

    .line 333
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAutoFpsModeForISP:I

    .line 337
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFocalLength:I

    .line 339
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPreviewStreamEnable:Z

    .line 344
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBestMomentDetectMode:I

    .line 345
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBestMomentRawHDRMode:I

    .line 346
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFlashSnapAutoCaptureMode:I

    .line 347
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->bmLowLightMode:I

    const/4 v0, 0x3

    .line 348
    iput v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->bmMultiFrameNum:I

    .line 349
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBMCustomZslBufSize:I

    .line 350
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTAPSCaptureNeedYuvSize:I

    .line 351
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHALBMLowLightMode:I

    .line 352
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMotionCaptureMode:I

    .line 353
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMTKProcessRawEnable:I

    .line 354
    iput v3, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFaceProportion:F

    .line 357
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mExtraCaptureCount:I

    .line 358
    iput-boolean v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIsExtraCaptureEnableZSL:Z

    .line 359
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mCaptureTag:I

    .line 360
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mGroupCaptureEnable:I

    .line 361
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFlareCaptureEnable:I

    .line 363
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBmDebandingMode:I

    .line 364
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mCaptureISPTunning:I

    .line 366
    iput-boolean v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIsCurrentAppModeRequiredOnContinuousShot:Z

    .line 367
    iput-object v4, p0, Lcom/transsion/camera/adapter/CameraParameters;->mCaptureZSLTimestamps:[J

    .line 369
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIncreaseFreqEnable:I

    .line 370
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mCurrentFaces:I

    .line 373
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLivePhotoMode:I

    .line 375
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mInSensorZoomEnable:I

    .line 376
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mViUllEnable:I

    .line 391
    iput-boolean v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIsBurstCapturing:Z

    .line 392
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIszScene:I

    .line 393
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHdr10PlusMode:I

    .line 396
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFeature2Mode:I

    .line 397
    iput-boolean v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mEnableLowConfig:Z

    return-void
.end method


# virtual methods
.method public algorithmMigrate()Z
    .registers 1

    .line 956
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAlgorithmMigrate:Z

    return p0
.end method

.method public aodMode()Z
    .registers 1

    .line 2755
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAodMode:Z

    return p0
.end method

.method public asdEffectColorCard()Z
    .registers 1

    .line 1407
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mDXOAsdEffectColorCard:Z

    return p0
.end method

.method public clearAll()V
    .registers 8

    const/4 v0, 0x1

    .line 400
    iput v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mDataFlowType:I

    const/4 v1, 0x0

    .line 401
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSlimBodyLevels:[I

    const/4 v2, 0x0

    .line 402
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSlimBodyMode:I

    .line 403
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSlimBodySkip:I

    .line 404
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMakeUpMode:I

    .line 405
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMakeUpIntensitys:[F

    .line 406
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMakeUpVideoMode:I

    .line 407
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMakeUpVideoIntensitys:[F

    .line 408
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mExcludeVideoMakeupBeauty:I

    .line 409
    sput v0, Lcom/transsion/camera/adapter/CameraParameters;->MAX_IMAGE_NUMBER:I

    .line 410
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPreviewSize:Landroid/util/Size;

    .line 411
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPictureSize:Landroid/util/Size;

    .line 412
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSupportRawSize:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 413
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPostViewSize:Landroid/util/Size;

    .line 414
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mThumbnailSize:Landroid/util/Size;

    .line 415
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoSize:Landroid/util/Size;

    .line 416
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFlashMode:Ljava/lang/String;

    .line 417
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMagicSkyMode:Ljava/lang/String;

    .line 418
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMagicSkyType:Ljava/lang/String;

    .line 419
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFocusMode:Ljava/lang/String;

    .line 420
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPhotoHDRMode:Ljava/lang/String;

    .line 421
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoHDRMode:Ljava/lang/String;

    .line 422
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->m360VideoHDRMode:I

    .line 423
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->m360VideoHDRInitMode:I

    .line 424
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFaceBeautyMode:Ljava/lang/String;

    .line 425
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMultiFaceBeautyMode:Ljava/lang/String;

    .line 426
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFaceBeautyLevel:Ljava/lang/String;

    .line 427
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFaceBeautyFeaturesLevel:[I

    .line 428
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLuminanceValue:I

    .line 429
    const-string v3, "4"

    iput-object v3, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVsdofLevel:Ljava/lang/String;

    .line 430
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAsdMode:I

    .line 431
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAsdVersion:I

    .line 432
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mDxoSceneDetection:Ljava/lang/String;

    .line 433
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mDXOAsdEffectColorCard:Z

    .line 434
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mDXOHasValidFace:Z

    .line 435
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mDXOTripodMode:Z

    .line 436
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSkipMultCapture:Z

    const/4 v3, -0x1

    .line 437
    iput v3, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranssionHDR:I

    .line 438
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mDenoiseMode:I

    .line 439
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mNightMode:I

    .line 440
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLowLightMode:I

    .line 441
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMiddleNightMode:I

    .line 442
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mNight3dnrAlgo:I

    .line 443
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mNightMorHdsScene:I

    .line 444
    sget v4, Lcom/transsion/camera/adapter/CameraParameters;->MIN_ZOOM_RATIO:I

    iput v4, p0, Lcom/transsion/camera/adapter/CameraParameters;->mZoomRatio:I

    .line 445
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMirrorEnable:Z

    .line 446
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBWPortraitEnable:Z

    .line 447
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBWConvertEnable:Z

    .line 448
    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMeteringAreas:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 449
    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFocusAreas:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 450
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mJpegQuality:I

    .line 451
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mJpegOrientation:I

    .line 452
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mZSLEnable:Z

    .line 453
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIsWideCamera:Z

    .line 454
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIsLongFocusCamera:Z

    .line 455
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mExposureCompensation:I

    .line 456
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAeLock:Z

    .line 457
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPreviewFPSRange:Landroid/util/Range;

    .line 458
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLimitFpsRange:Landroid/util/Range;

    .line 459
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSceneMode:Ljava/lang/String;

    .line 460
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mShot2ShotMode:I

    .line 461
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAutoWatermarkMode:Ljava/lang/String;

    .line 462
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mEditWatermarkMode:Ljava/lang/String;

    .line 463
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mEditWatermarkSupport:Z

    .line 464
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mGoldWatermarkMode:Ljava/lang/String;

    .line 465
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mGoldWatermarkSupport:Z

    .line 466
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mGoldWatermarkType:Ljava/lang/String;

    .line 467
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mGoldWaterMarkSize:[I

    .line 468
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPreviewGoldWaterMarkSize:[I

    .line 469
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mProWatermarkSupport:Z

    .line 470
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mProWatermarkType:I

    .line 471
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPlainLocationText:Ljava/lang/String;

    .line 472
    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraParameters;->mWaterMarkParameterList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 473
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAntiVideo:Ljava/lang/String;

    .line 474
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperAntiVideo:Ljava/lang/String;

    .line 475
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mScreenFlashMode:Ljava/lang/String;

    .line 476
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mYuvCaptureFlipMode:Ljava/lang/String;

    .line 477
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranssionPluginEnable:I

    .line 478
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRecordingHint:Z

    .line 479
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mArcFilterId:I

    .line 480
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranssionFilterId:I

    .line 481
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mStreetPhotoFilterId:I

    .line 482
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperNightFilterId:I

    .line 483
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranssionSuperNightFilterId:I

    .line 484
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperNightHdrCheckerModeEnable:I

    .line 485
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoFilterSkinType:I

    .line 486
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoFilterId:I

    const/16 v4, 0x64

    .line 487
    iput v4, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoFilterLevel:I

    .line 488
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoEffectId:I

    .line 489
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoFrameId:I

    .line 490
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/transsion/camera/adapter/CameraParameters;->mOverrideSensorRect:Landroid/graphics/Rect;

    .line 491
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPortraitMode:I

    .line 492
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHdMode:Ljava/lang/String;

    .line 493
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHighFpsMode:Ljava/lang/String;

    .line 494
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFusionMode:Ljava/lang/String;

    .line 495
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperNightMode:Ljava/lang/String;

    .line 496
    const-string v4, "None"

    iput-object v4, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperNightAlgoType:Ljava/lang/String;

    .line 497
    iput-object v4, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperNightAlgoTypeToHal:Ljava/lang/String;

    .line 498
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSTBlurMode:I

    .line 499
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSTBlurLevel:I

    .line 500
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSTBlurStrengths:[F

    const/4 v4, 0x0

    .line 501
    iput v4, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSTBlurLightStrength:F

    .line 502
    iput v4, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSTBlurReaRatio:F

    .line 503
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBGServiceEnable:Z

    .line 504
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTZServiceEnable:Z

    .line 505
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBGImageReaderId:I

    .line 506
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFakeDualLensMode:I

    .line 507
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLocation:Landroid/location/Location;

    .line 508
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mDistortionCorrectionMode:I

    .line 509
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperDefinitionMode:I

    .line 510
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHighPixelMode:I

    .line 511
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperResolutionMode:I

    .line 512
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRawSuperResolutionMode:I

    .line 513
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mP2RawCropResizeEnable:I

    .line 514
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mP2CropRegionCustomize:[I

    .line 515
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mP2ResizerSizeCustomize:[I

    .line 516
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSupportedRawSR:Z

    .line 517
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRemosaicMode:Ljava/lang/String;

    .line 518
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mNightHawkMode:I

    .line 519
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMoonDetectionMode:I

    .line 520
    iput v4, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMoonDetectPitch:F

    .line 521
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAiMoonMode:I

    .line 522
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMoonDetectResult:I

    .line 523
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoInterpolationEnable:I

    .line 524
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mEyeDetection:Ljava/lang/String;

    .line 525
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAnimalEyeDetection:Ljava/lang/String;

    .line 526
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAutoMacroSwitch:Ljava/lang/String;

    .line 527
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAutoMacroSwitchSetting:Ljava/lang/String;

    .line 528
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHumanDetection:I

    .line 529
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranFaceDetectMode:I

    .line 530
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranssionCameraMode:I

    .line 531
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mQuickPreviewEnable:Z

    .line 532
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mProfessionalModeEnable:Z

    .line 533
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mModeUltrazoomEnable:Z

    .line 534
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSMVRRequestParams:[I

    .line 535
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoPortraitMode:I

    .line 536
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoPortraitLevel:I

    .line 537
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoSpotMode:I

    .line 538
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAlgorithmMigrate:Z

    .line 539
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMacroLampValue:I

    .line 540
    iput v3, p0, Lcom/transsion/camera/adapter/CameraParameters;->mISOValue:I

    const-wide/16 v5, -0x1

    .line 541
    iput-wide v5, p0, Lcom/transsion/camera/adapter/CameraParameters;->mExposureTime:J

    .line 542
    iput v4, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFocusDistance:F

    .line 543
    iput v4, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFocusLength:F

    .line 544
    const-string v5, "auto"

    iput-object v5, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMeteringMode:Ljava/lang/String;

    .line 545
    iput-object v5, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAWBMode:Ljava/lang/String;

    .line 546
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPortraitModeEnhanceMode:Ljava/lang/String;

    .line 547
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mGenderAttributeValue:Ljava/lang/String;

    .line 548
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSkinColor:I

    .line 549
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRace:I

    .line 550
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAsdIsp:[I

    .line 551
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHumanEffectMode:Ljava/lang/String;

    .line 552
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mNeedLockAe:Z

    .line 553
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mNeedFocusModeAuto:Z

    .line 554
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFaceDetectionEnable:Z

    .line 555
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mCapturing:Z

    .line 556
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFaceAttributeInfo:[I

    .line 557
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSatPictureSize:Landroid/util/Size;

    .line 558
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHighLightMode:I

    .line 559
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAppModeId:Ljava/lang/String;

    .line 560
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFlashFacade:Ljava/lang/String;

    .line 561
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperFlash:Ljava/lang/String;

    .line 562
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFlashStyle:Ljava/lang/String;

    .line 563
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRingScreenLight:Ljava/lang/String;

    .line 564
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mScreenTorchStatus:Ljava/lang/String;

    .line 565
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mScreenFlashStatus:Ljava/lang/String;

    const/4 v5, 0x3

    .line 566
    iput v5, p0, Lcom/transsion/camera/adapter/CameraParameters;->mContrastValue:I

    .line 567
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mActivityOrientation:I

    .line 568
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPipDeviceValue:Ljava/lang/String;

    .line 569
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mCaptureCustomTuning:Ljava/lang/String;

    .line 570
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoSuperNightMode:I

    .line 571
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoSuperNightResolution:I

    .line 572
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoSuperNightAlgoScene:I

    .line 573
    const-string v5, "0"

    iput-object v5, p0, Lcom/transsion/camera/adapter/CameraParameters;->mStreamingCustomTuning:Ljava/lang/String;

    .line 574
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLiveResultMode:I

    .line 575
    iput v3, p0, Lcom/transsion/camera/adapter/CameraParameters;->mEffect:I

    .line 576
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mColorLevel:Ljava/lang/String;

    .line 577
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLongExposureScene:Ljava/lang/String;

    .line 578
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLongExposureTripod:Ljava/lang/String;

    .line 579
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLongExposureCaptureState:Ljava/lang/String;

    .line 580
    iput v3, p0, Lcom/transsion/camera/adapter/CameraParameters;->mExifModeInfo:I

    .line 581
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRingFlashLightMode:I

    .line 582
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAisMode:I

    .line 583
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAisMorpho:I

    .line 584
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoSuperNightYUVMode:I

    .line 585
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoNightTranYUVMode:I

    .line 586
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPhotoNightTranYUVMode:I

    .line 587
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAodMode:Z

    .line 588
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mStreamFlip:Z

    .line 589
    iput v3, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFrontDualFlashColorTemp:I

    .line 590
    iput v3, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFrontDualFlashStrengthMode:I

    .line 591
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoPreIspMode:I

    .line 592
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mExternalIspMode:I

    .line 593
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->m360HDRMode:I

    .line 594
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideo360HDRAlgoScene:I

    .line 595
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperNightEnable:Z

    .line 596
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAutoFpsModeForISP:I

    .line 597
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPMasterFlareMode:I

    .line 598
    iput v3, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFocalLength:I

    .line 599
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSmoothZoomValue:I

    .line 600
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperResolutinSupportPortraitMode:Z

    .line 601
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSupportYUVPreviewDataWhenRecording:Z

    .line 602
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPMasterFlareLocation:[F

    .line 603
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mISPTuningEnable:I

    .line 604
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFaceBeautyPreviewInApp:Z

    .line 605
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPreviewStreamEnable:Z

    .line 606
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->m2kSize:Landroid/util/Size;

    .line 607
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranssionTurboFusionMode:I

    .line 608
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperAIRaw:I

    .line 609
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTfPortraitMode:I

    .line 610
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAirawSN2SRMode:I

    .line 611
    iput v4, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAdrcGainValue:F

    .line 612
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mZoomEisMode:I

    .line 613
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mExtraCaptureCount:I

    .line 614
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIsExtraCaptureEnableZSL:Z

    .line 615
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mCaptureTag:I

    .line 616
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mGroupCaptureEnable:I

    .line 617
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIsCurrentAppModeRequiredOnContinuousShot:Z

    .line 618
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBestMomentRawHDRMode:I

    .line 619
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFlashSnapAutoCaptureMode:I

    .line 620
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBestMomentDetectMode:I

    .line 621
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mCaptureZSLTimestamps:[J

    .line 622
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAbeHdrCheckMode:I

    .line 623
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBrightnessValue:I

    .line 624
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIncreaseFreqEnable:I

    .line 625
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mCurrentFaces:I

    .line 626
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIsAiRawLiteSupport:Z

    .line 627
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranssionAINRMode:I

    .line 628
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLivePhotoMode:I

    .line 629
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mInSensorZoomEnable:I

    .line 630
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mEVList:[I

    .line 631
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAecSensitivity:[F

    const/high16 v5, -0x40800000    # -1.0f

    .line 632
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iput-object v6, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAecFrameControlLuxIndex:Ljava/lang/Float;

    .line 633
    iput-object v6, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAecFrameDarkBoostGain:Ljava/lang/Float;

    .line 634
    iput-object v6, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAecFrameAdrcGain:Ljava/lang/Float;

    .line 635
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->awbGains:[F

    .line 636
    iput v5, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAwbFrameControlCCT:F

    .line 637
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAwbDecisionAfterTC:[F

    .line 638
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoHDRFormat:Ljava/lang/String;

    .line 639
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIsBurstCapturing:Z

    .line 640
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mOpenAutoFps:Z

    .line 641
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRegularFpsRange:Landroid/util/Range;

    .line 642
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHeavyCapturing:Z

    .line 643
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHeavyCapturingBV:I

    .line 644
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHumanBox:[I

    .line 645
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRTDofEnable:Z

    .line 646
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLastShotNotSkip:Z

    .line 647
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPostAlgoFrameInfo:[I

    .line 648
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHDRAeExpoInfo:[I

    .line 649
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMFNRAeExpoInfo:[I

    .line 650
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mNightAeExpoInfo:[I

    .line 651
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLlsInfo:[I

    .line 652
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSkinOptimizationValue:I

    .line 653
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mImageStyleId:I

    .line 654
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLensCorrectionMode:I

    .line 655
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTFEVCheckerEnable:I

    .line 656
    const-string v0, "off"

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mDistortionCorrectionPreviewEnable:Ljava/lang/String;

    .line 657
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mProWatermarkStyle:I

    .line 658
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIs24HourFormat:I

    .line 659
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAfFfMode:I

    .line 660
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mManualAWBValue:Ljava/lang/String;

    .line 661
    iput v4, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLongFocusBaseZoomRatio:F

    .line 662
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMagicSkyResult:I

    .line 663
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAIRawMode:I

    .line 664
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAIRawLiteSupportPortraitEnhance:Z

    .line 665
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->bmLowLightMode:I

    .line 666
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBMCustomZslBufSize:I

    .line 667
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTAPSCaptureNeedYuvSize:I

    .line 668
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFlareCaptureEnable:I

    .line 669
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBmDebandingMode:I

    .line 670
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mCaptureISPTunning:I

    .line 671
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHALBMLowLightMode:I

    .line 672
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mViUllEnable:I

    .line 673
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMotionCaptureMode:I

    .line 674
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMTKProcessRawEnable:I

    .line 675
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mCelebritySceneMode:I

    .line 676
    iput v3, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIszScene:I

    .line 677
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHdr10PlusMode:I

    .line 678
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFeature2Mode:I

    .line 679
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mEnableLowConfig:Z

    return-void
.end method

.method public enableBGServiceMode(Z)V
    .registers 2

    .line 2190
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBGServiceEnable:Z

    return-void
.end method

.method public enableBWConvert(Z)V
    .registers 2

    .line 1282
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBWConvertEnable:Z

    return-void
.end method

.method public enableMirror(Z)V
    .registers 2

    .line 1266
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMirrorEnable:Z

    return-void
.end method

.method public enablePreviewStream(Z)V
    .registers 2

    .line 2856
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPreviewStreamEnable:Z

    return-void
.end method

.method public enableTZServiceMode(Z)V
    .registers 2

    .line 2198
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTZServiceEnable:Z

    return-void
.end method

.method public abstract get2XRemosaicMode()Z
.end method

.method public get360VideoHDRInitMode()I
    .registers 1

    .line 1353
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->m360VideoHDRInitMode:I

    return p0
.end method

.method public get360VideoHDRMode()I
    .registers 1

    .line 1344
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->m360VideoHDRMode:I

    return p0
.end method

.method public get360VideoHDRScene()I
    .registers 1

    .line 2378
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideo360HDRAlgoScene:I

    return p0
.end method

.method public getAIRawLiteMotionDetection()I
    .registers 1

    .line 1129
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAIRawLiteMotionDetection:I

    return p0
.end method

.method public getAIRawLiteSupportPortraitEnhance()Z
    .registers 1

    .line 2683
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAIRawLiteSupportPortraitEnhance:Z

    return p0
.end method

.method public getAIRawMode()I
    .registers 1

    .line 2675
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAIRawMode:I

    return p0
.end method

.method public getAWBLockStatus()Z
    .registers 1

    .line 2053
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAWBLockStatus:Z

    return p0
.end method

.method public getAWBMode()Ljava/lang/String;
    .registers 1

    .line 2029
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAWBMode:Ljava/lang/String;

    return-object p0
.end method

.method public getAbeHdrCheckMode()I
    .registers 2

    .line 2659
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

    .line 2615
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mActivityOrientation:I

    return p0
.end method

.method public getAdrcgainValue()F
    .registers 1

    .line 1775
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAdrcGainValue:F

    return p0
.end method

.method public getAeLock()Z
    .registers 1

    .line 896
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAeLock:Z

    return p0
.end method

.method public getAeState()I
    .registers 1

    .line 1012
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAeStateValue:I

    return p0
.end method

.method public getAecFrameAdrcGain()F
    .registers 1

    .line 3091
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAecFrameAdrcGain:Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public getAecFrameControlLuxIndex()F
    .registers 1

    .line 3083
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAecFrameControlLuxIndex:Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public getAecFrameDarkBoostGain()F
    .registers 1

    .line 3087
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAecFrameDarkBoostGain:Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public getAecSensitivity()[F
    .registers 1

    .line 3079
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAecSensitivity:[F

    return-object p0
.end method

.method public getAfFfMode()I
    .registers 1

    .line 1981
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAfFfMode:I

    return p0
.end method

.method public getAiMoonMode()I
    .registers 1

    .line 2426
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAiMoonMode:I

    return p0
.end method

.method public getAiRawScene()I
    .registers 1

    .line 1077
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAiRawScene:I

    return p0
.end method

.method public getAirawSN2SRMode()I
    .registers 1

    .line 1803
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAirawSN2SRMode:I

    return p0
.end method

.method public getAisMode()I
    .registers 2

    .line 2723
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

    .line 2731
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

    .line 1965
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAntiVideo:Ljava/lang/String;

    return-object p0
.end method

.method public getAppModeId()Ljava/lang/String;
    .registers 1

    .line 2547
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAppModeId:Ljava/lang/String;

    return-object p0
.end method

.method public getArcFilterId()I
    .registers 1

    .line 1432
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mArcFilterId:I

    return p0
.end method

.method public getAutoFpsModeForISP()I
    .registers 1

    .line 2787
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAutoFpsModeForISP:I

    return p0
.end method

.method public getAutoWatermarkMode()Ljava/lang/String;
    .registers 4

    .line 1927
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

    .line 1934
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mProWatermarkSupport:Z

    if-eqz v0, :cond_69

    .line 1935
    iget v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mProWatermarkType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_60

    .line 1936
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mEditWatermarkMode:Ljava/lang/String;

    return-object p0

    :cond_60
    const/4 v1, 0x2

    if-ne v0, v1, :cond_66

    .line 1938
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mGoldWatermarkMode:Ljava/lang/String;

    return-object p0

    .line 1940
    :cond_66
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAutoWatermarkMode:Ljava/lang/String;

    return-object p0

    .line 1943
    :cond_69
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mGoldWatermarkSupport:Z

    if-eqz v0, :cond_70

    .line 1944
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mGoldWatermarkMode:Ljava/lang/String;

    return-object p0

    .line 1945
    :cond_70
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mEditWatermarkSupport:Z

    if-eqz v0, :cond_77

    .line 1946
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mEditWatermarkMode:Ljava/lang/String;

    return-object p0

    .line 1948
    :cond_77
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAutoWatermarkMode:Ljava/lang/String;

    return-object p0
.end method

.method public getAwbDecisionAfterTC()[F
    .registers 1

    .line 3103
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAwbDecisionAfterTC:[F

    return-object p0
.end method

.method public getAwbFrameControlCCT()F
    .registers 1

    .line 3099
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAwbFrameControlCCT:F

    return p0
.end method

.method public getAwbGains()[F
    .registers 1

    .line 3095
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->awbGains:[F

    return-object p0
.end method

.method public getBGImageReaderId()I
    .registers 1

    .line 2210
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBGImageReaderId:I

    return p0
.end method

.method public getBMLowLightMode()I
    .registers 1

    .line 2876
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->bmLowLightMode:I

    return p0
.end method

.method public getBMMultiFrameNum()I
    .registers 1

    .line 2884
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->bmMultiFrameNum:I

    return p0
.end method

.method public getBestMomentDetectMode()I
    .registers 1

    .line 2836
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBestMomentDetectMode:I

    return p0
.end method

.method public getBestMomentRawHDRMode()I
    .registers 1

    .line 2852
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBestMomentRawHDRMode:I

    return p0
.end method

.method public getBodySlimMode()I
    .registers 1

    .line 1540
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSlimBodyMode:I

    return p0
.end method

.method public getBodySlimSkip()I
    .registers 1

    .line 1544
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSlimBodySkip:I

    return p0
.end method

.method public getBrightnessValue()I
    .registers 1

    .line 1016
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBrightnessValue:I

    return p0
.end method

.method public getCaptureCustomTuning()Ljava/lang/String;
    .registers 4

    .line 2631
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

    .line 2633
    iget v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mCelebritySceneMode:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_34

    .line 2634
    const-string p0, "14"

    return-object p0

    :cond_34
    const/4 v2, 0x1

    if-ne v2, v0, :cond_3a

    .line 2636
    const-string p0, "16"

    return-object p0

    :cond_3a
    const/4 v2, 0x3

    if-ne v2, v0, :cond_40

    .line 2638
    const-string p0, "17"

    return-object p0

    .line 2639
    :cond_40
    iget v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mEffect:I

    if-ne v2, v1, :cond_49

    if-nez v0, :cond_49

    .line 2640
    const-string p0, "18"

    return-object p0

    .line 2642
    :cond_49
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mCaptureCustomTuning:Ljava/lang/String;

    return-object p0
.end method

.method public getCaptureISPTunning()I
    .registers 1

    .line 2964
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mCaptureISPTunning:I

    return p0
.end method

.method public getCaptureId()I
    .registers 1

    .line 972
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mCaptureId:I

    return p0
.end method

.method public getCaptureTag()I
    .registers 1

    .line 2931
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mCaptureTag:I

    return p0
.end method

.method public getCaptureTime()J
    .registers 3

    .line 3141
    iget-wide v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mCaptureTime:J

    return-wide v0
.end method

.method public getCaptureZSLTimestamps()[J
    .registers 1

    .line 2980
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mCaptureZSLTimestamps:[J

    return-object p0
.end method

.method public getCelebritySceneMode()I
    .registers 1

    .line 3044
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mCelebritySceneMode:I

    return p0
.end method

.method public getColorLevel()Ljava/lang/String;
    .registers 1

    .line 2667
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mColorLevel:Ljava/lang/String;

    return-object p0
.end method

.method public getCurrentFaces()I
    .registers 1

    .line 2996
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mCurrentFaces:I

    return p0
.end method

.method public getCustomZslBufSize()I
    .registers 1

    .line 2891
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBMCustomZslBufSize:I

    return p0
.end method

.method public getDataFlowType()I
    .registers 1

    .line 747
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mDataFlowType:I

    return p0
.end method

.method public getDeBandingMode()I
    .registers 1

    .line 2956
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBmDebandingMode:I

    return p0
.end method

.method public abstract getDeviceID()Ljava/lang/String;
.end method

.method public getDistortionCorrectionMode()I
    .registers 1

    .line 1841
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mDistortionCorrectionMode:I

    return p0
.end method

.method public getDistortionCorrectionPreviewEnablet()Ljava/lang/String;
    .registers 1

    .line 1849
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mDistortionCorrectionPreviewEnable:Ljava/lang/String;

    return-object p0
.end method

.method public getDxoSceneDetection()Ljava/lang/String;
    .registers 1

    .line 1399
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mDxoSceneDetection:Ljava/lang/String;

    return-object p0
.end method

.method public getEVList()[I
    .registers 1

    .line 1137
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mEVList:[I

    return-object p0
.end method

.method public getExcludeVideoMakeupBeauty()I
    .registers 1

    .line 1592
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mExcludeVideoMakeupBeauty:I

    return p0
.end method

.method public getExifModeInfo()I
    .registers 1

    .line 2715
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mExifModeInfo:I

    return p0
.end method

.method public getExposureCompensation()I
    .registers 1

    .line 888
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mExposureCompensation:I

    return p0
.end method

.method public getExposureTime()J
    .registers 3

    .line 1175
    iget-wide v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mExposureTime:J

    return-wide v0
.end method

.method public getExternalIspMode()I
    .registers 1

    .line 2747
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mExternalIspMode:I

    return p0
.end method

.method public getExtraCaptureCount()I
    .registers 1

    .line 2915
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mExtraCaptureCount:I

    return p0
.end method

.method public getFaceAttributeInfo()[I
    .registers 1

    .line 2495
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFaceAttributeInfo:[I

    return-object p0
.end method

.method public getFaceBeautyFeaturesLevel()[I
    .registers 1

    .line 1237
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFaceBeautyFeaturesLevel:[I

    return-object p0
.end method

.method public getFaceBeautyLevel()Ljava/lang/String;
    .registers 1

    .line 1229
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFaceBeautyLevel:Ljava/lang/String;

    return-object p0
.end method

.method public getFaceBeautyMode()Ljava/lang/String;
    .registers 1

    .line 1221
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFaceBeautyMode:Ljava/lang/String;

    return-object p0
.end method

.method public getFaceProportion()F
    .registers 1

    .line 3066
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFaceProportion:F

    return p0
.end method

.method public getFakeDualLensMode()I
    .registers 1

    .line 2218
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFakeDualLensMode:I

    return p0
.end method

.method public getFeature2Mode()I
    .registers 1

    .line 3145
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFeature2Mode:I

    return p0
.end method

.method public getFlareCaptureEnable()I
    .registers 1

    .line 2947
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFlareCaptureEnable:I

    return p0
.end method

.method public getFlareLocation()[F
    .registers 1

    .line 2803
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPMasterFlareLocation:[F

    return-object p0
.end method

.method public getFlashFacade()Ljava/lang/String;
    .registers 1

    .line 2559
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFlashFacade:Ljava/lang/String;

    return-object p0
.end method

.method public getFlashMode()Ljava/lang/String;
    .registers 1

    .line 827
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFlashMode:Ljava/lang/String;

    return-object p0
.end method

.method public getFlashSnapAutoCaptureMode()I
    .registers 1

    .line 2848
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFlashSnapAutoCaptureMode:I

    return p0
.end method

.method public getFlashStyle()Ljava/lang/String;
    .registers 1

    .line 2583
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFlashStyle:Ljava/lang/String;

    return-object p0
.end method

.method public getFocalLength()I
    .registers 1

    .line 2819
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFocalLength:I

    return p0
.end method

.method public getFocusAreas()Ljava/util/List;
    .registers 2

    .line 807
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFocusAreas:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getFocusDistance()F
    .registers 1

    .line 1187
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFocusDistance:F

    return p0
.end method

.method public getFocusLength()F
    .registers 1

    .line 1195
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFocusLength:F

    return p0
.end method

.method public getFocusMode()Ljava/lang/String;
    .registers 1

    .line 796
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFocusMode:Ljava/lang/String;

    return-object p0
.end method

.method public getFovWideCrop()Z
    .registers 1

    .line 863
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFovWideCrop:Z

    return p0
.end method

.method public getFrameNumFromEVList()I
    .registers 4

    .line 1150
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTFEVCheckerEnable()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_15

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionTurboFusionMode()I

    move-result v0

    if-lez v0, :cond_15

    .line 1151
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getEVList()[I

    move-result-object p0

    aget p0, p0, v1

    goto :goto_2c

    .line 1152
    :cond_15
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getMiddleNightMode()I

    move-result v0

    if-lez v0, :cond_2b

    .line 1153
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

    .line 1157
    sget-object p0, Lcom/transsion/camera/adapter/CameraParameters;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "getFrameNumFromEVList: error return 1"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v2

    :cond_36
    return p0
.end method

.method public getFrontDualFlashColorTemp()I
    .registers 1

    .line 2021
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFrontDualFlashColorTemp:I

    return p0
.end method

.method public getFrontDualFlashStrengthMode()I
    .registers 1

    .line 2013
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFrontDualFlashStrengthMode:I

    return p0
.end method

.method public getFusionMode()Ljava/lang/String;
    .registers 1

    .line 2085
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFusionMode:Ljava/lang/String;

    return-object p0
.end method

.method public getGenderAttributeValue()Ljava/lang/String;
    .registers 1

    .line 2447
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mGenderAttributeValue:Ljava/lang/String;

    return-object p0
.end method

.method public getGoldWaterMarkSize()[I
    .registers 1

    .line 1907
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mGoldWaterMarkSize:[I

    return-object p0
.end method

.method public getGoldWatermarkType()Ljava/lang/String;
    .registers 1

    .line 1899
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mGoldWatermarkType:Ljava/lang/String;

    return-object p0
.end method

.method public getGroupCaptureEnable()I
    .registers 1

    .line 2939
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mGroupCaptureEnable:I

    return p0
.end method

.method public getHALBMLowLightMode()I
    .registers 1

    .line 3012
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHALBMLowLightMode:I

    return p0
.end method

.method public getHDRAeExpoInfo()[I
    .registers 1

    .line 1097
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHDRAeExpoInfo:[I

    return-object p0
.end method

.method public getHdMode()Ljava/lang/String;
    .registers 1

    .line 2069
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHdMode:Ljava/lang/String;

    return-object p0
.end method

.method public getHdr10PlusMode()I
    .registers 1

    .line 3133
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHdr10PlusMode:I

    return p0
.end method

.method public getHeavyCapturingBV()I
    .registers 1

    .line 1000
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHeavyCapturingBV:I

    return p0
.end method

.method public getHighFpsMode()Ljava/lang/String;
    .registers 1

    .line 2081
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHighFpsMode:Ljava/lang/String;

    return-object p0
.end method

.method public getHighLightMode()I
    .registers 1

    .line 2519
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHighLightMode:I

    return p0
.end method

.method public getHumanBox()[I
    .registers 1

    .line 3125
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHumanBox:[I

    return-object p0
.end method

.method public getHumanEffectMode()Ljava/lang/String;
    .registers 1

    .line 2471
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHumanEffectMode:Ljava/lang/String;

    return-object p0
.end method

.method public getISOValue()I
    .registers 1

    .line 1167
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mISOValue:I

    return p0
.end method

.method public getISPTuningEnable()I
    .registers 1

    .line 2775
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mISPTuningEnable:I

    return p0
.end method

.method public getImageStyleId()I
    .registers 1

    .line 1456
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mImageStyleId:I

    return p0
.end method

.method public getInSensorZoomEnable()I
    .registers 1

    .line 3028
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mInSensorZoomEnable:I

    return p0
.end method

.method public getIncreaseFrequencyEnable()I
    .registers 1

    .line 2988
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIncreaseFreqEnable:I

    return p0
.end method

.method public getInsensorScene()I
    .registers 1

    .line 1763
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIszScene:I

    return p0
.end method

.method public getIs24HourFormat()I
    .registers 1

    .line 1891
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIs24HourFormat:I

    return p0
.end method

.method public getJpegGPSLocation()Landroid/location/Location;
    .registers 1

    .line 787
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLocation:Landroid/location/Location;

    return-object p0
.end method

.method public getJpegOrientation()I
    .registers 1

    .line 775
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mJpegOrientation:I

    return p0
.end method

.method public getJpegQuality()I
    .registers 1

    .line 763
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mJpegQuality:I

    return p0
.end method

.method public getLensCorrectionMode()I
    .registers 1

    .line 1564
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLensCorrectionMode:I

    return p0
.end method

.method public getLimitFpsRange()Landroid/util/Range;
    .registers 1

    .line 917
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLimitFpsRange:Landroid/util/Range;

    return-object p0
.end method

.method public getLivePhotoMode()I
    .registers 1

    .line 3020
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLivePhotoMode:I

    return p0
.end method

.method public getLiveResultMode()I
    .registers 1

    .line 2647
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLiveResultMode:I

    return p0
.end method

.method public getLongExposureCaptureState()Ljava/lang/String;
    .registers 1

    .line 2707
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLongExposureCaptureState:Ljava/lang/String;

    return-object p0
.end method

.method public getLongExposureScene()Ljava/lang/String;
    .registers 1

    .line 2691
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLongExposureScene:Ljava/lang/String;

    return-object p0
.end method

.method public getLongExposureTripod()Ljava/lang/String;
    .registers 1

    .line 2699
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLongExposureTripod:Ljava/lang/String;

    return-object p0
.end method

.method public getLongFocusBaseZoomRatio()F
    .registers 1

    .line 2109
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLongFocusBaseZoomRatio:F

    return p0
.end method

.method public getLuminanceValue()I
    .registers 1

    .line 2005
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLuminanceValue:I

    return p0
.end method

.method public getMFNRAeExpoInfo()[I
    .registers 1

    .line 1105
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMFNRAeExpoInfo:[I

    return-object p0
.end method

.method public getMTKProcessRawEnable()I
    .registers 1

    .line 3060
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMTKProcessRawEnable:I

    return p0
.end method

.method public getMacroLampValue()I
    .registers 1

    .line 2394
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMacroLampValue:I

    return p0
.end method

.method public getMagicSkyMode()Ljava/lang/String;
    .registers 1

    .line 2527
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMagicSkyMode:Ljava/lang/String;

    return-object p0
.end method

.method public getMagicSkyResult()I
    .registers 1

    .line 2543
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMagicSkyResult:I

    return p0
.end method

.method public getMagicSkyType()Ljava/lang/String;
    .registers 1

    .line 2535
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMagicSkyType:Ljava/lang/String;

    return-object p0
.end method

.method public getMakeUpIntensitys()[F
    .registers 1

    .line 1568
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMakeUpIntensitys:[F

    return-object p0
.end method

.method public getMakeUpMode()I
    .registers 1

    .line 1556
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMakeUpMode:I

    return p0
.end method

.method public getMakeUpVideoIntensitys()[F
    .registers 1

    .line 1584
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMakeUpVideoIntensitys:[F

    return-object p0
.end method

.method public getMakeUpVideoMode()I
    .registers 1

    .line 1580
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMakeUpVideoMode:I

    return p0
.end method

.method public getManualAWBValue()Ljava/lang/String;
    .registers 1

    .line 2037
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mManualAWBValue:Ljava/lang/String;

    return-object p0
.end method

.method public getMegSuperNight()I
    .registers 2

    .line 2146
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

    .line 818
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMeteringAreas:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getMeteringMode()Ljava/lang/String;
    .registers 1

    .line 1205
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMeteringMode:Ljava/lang/String;

    return-object p0
.end method

.method public getMiddleNightMode()I
    .registers 1

    .line 1624
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMiddleNightMode:I

    return p0
.end method

.method public getMoonDetectPitch()F
    .registers 1

    .line 2418
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMoonDetectPitch:F

    return p0
.end method

.method public getMoonDetection()I
    .registers 1

    .line 2410
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMoonDetectionMode:I

    return p0
.end method

.method public getMotionCaptureMode()I
    .registers 1

    .line 3052
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMotionCaptureMode:I

    return p0
.end method

.method public getMultiFaceBeautyMode()Ljava/lang/String;
    .registers 1

    .line 1225
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMultiFaceBeautyMode:Ljava/lang/String;

    return-object p0
.end method

.method public getNight3dnrAlgo()I
    .registers 1

    .line 1632
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mNight3dnrAlgo:I

    return p0
.end method

.method public getNightAeExpoInfo()[I
    .registers 1

    .line 1113
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mNightAeExpoInfo:[I

    return-object p0
.end method

.method public getNightHawkMode()I
    .registers 1

    .line 2402
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mNightHawkMode:I

    return p0
.end method

.method public getNightMorHdsScene()I
    .registers 1

    .line 1640
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mNightMorHdsScene:I

    return p0
.end method

.method public getNvsSuperNightFilterId()I
    .registers 1

    .line 1464
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperNightFilterId:I

    return p0
.end method

.method public getOpenAutoFps()Z
    .registers 1

    .line 2779
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mOpenAutoFps:Z

    return p0
.end method

.method public getOverrideSensorRect()Landroid/graphics/Rect;
    .registers 1

    .line 952
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mOverrideSensorRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getP2CropRegionCustomize()[I
    .registers 1

    .line 1717
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mP2CropRegionCustomize:[I

    return-object p0
.end method

.method public getP2RawCropResizeEnable()I
    .registers 1

    .line 1709
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mP2RawCropResizeEnable:I

    return p0
.end method

.method public getP2ResizerSizeCustomize()[I
    .registers 1

    .line 1725
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mP2ResizerSizeCustomize:[I

    return-object p0
.end method

.method public getPMasterFlareMode()I
    .registers 1

    .line 2795
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPMasterFlareMode:I

    return p0
.end method

.method public getPhotoHDRMode()Ljava/lang/String;
    .registers 1

    .line 1331
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPhotoHDRMode:Ljava/lang/String;

    return-object p0
.end method

.method public getPhotoNightTranYUVMode()I
    .registers 2

    .line 2326
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

    .line 715
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPictureSize:Landroid/util/Size;

    return-object p0
.end method

.method public getPipDeviceValue()Ljava/lang/String;
    .registers 1

    .line 2623
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPipDeviceValue:Ljava/lang/String;

    return-object p0
.end method

.method public getPlainLocationText()Ljava/lang/String;
    .registers 1

    .line 1876
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPlainLocationText:Ljava/lang/String;

    return-object p0
.end method

.method public getPortraitMode()I
    .registers 1

    .line 2061
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPortraitMode:I

    return p0
.end method

.method public getPortraitModeEnhanceMode()Ljava/lang/String;
    .registers 2

    .line 2438
    iget v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperResolutionMode:I

    if-gtz v0, :cond_8

    iget v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRawSuperResolutionMode:I

    if-lez v0, :cond_f

    :cond_8
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperResolutinSupportPortraitMode:Z

    if-nez v0, :cond_f

    .line 2439
    const-string p0, "off"

    return-object p0

    :cond_f
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPortraitModeEnhanceMode:Ljava/lang/String;

    return-object p0
.end method

.method public getPostAlgoFrameInfo()[I
    .registers 1

    .line 1089
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPostAlgoFrameInfo:[I

    return-object p0
.end method

.method public getPostAlgoType()I
    .registers 1

    .line 980
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPostAlgoType:I

    return p0
.end method

.method public getPostViewSize()Landroid/util/Size;
    .registers 1

    .line 727
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPostViewSize:Landroid/util/Size;

    return-object p0
.end method

.method public getPreviewFPSRange()Landroid/util/Range;
    .registers 4

    const/4 v0, 0x6

    .line 907
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 904
    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->closeAllForFinalMonkeyTest()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 905
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

    .line 906
    :cond_1e
    iget-boolean v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mEnableLowConfig:Z

    if-eqz v1, :cond_29

    .line 907
    new-instance v1, Landroid/util/Range;

    invoke-direct {v1, v0, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPreviewFPSRange:Landroid/util/Range;

    .line 909
    :cond_29
    :goto_29
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPreviewFPSRange:Landroid/util/Range;

    return-object p0
.end method

.method public getPreviewGoldWaterMarkSize()[I
    .registers 1

    .line 1915
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPreviewGoldWaterMarkSize:[I

    return-object p0
.end method

.method public getPreviewSize()Landroid/util/Size;
    .registers 1

    .line 699
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPreviewSize:Landroid/util/Size;

    return-object p0
.end method

.method public getProWatermarkStyle()I
    .registers 1

    .line 1883
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mProWatermarkStyle:I

    return p0
.end method

.method public getRace()I
    .registers 1

    .line 2459
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRace:I

    return p0
.end method

.method public getRawPictureSize()Ljava/util/List;
    .registers 1

    .line 707
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSupportRawSize:Ljava/util/List;

    return-object p0
.end method

.method public getRawScene()I
    .registers 8

    .line 1020
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isAIRawLiteClose()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 1023
    :cond_8
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionHDR()I

    move-result v0

    .line 1024
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionLowLightMode()I

    move-result v2

    .line 1025
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSuperNightAlgoType()Ljava/lang/String;

    move-result-object v3

    .line 1026
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionNightMode()I

    move-result v4

    .line 1027
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getMiddleNightMode()I

    move-result p0

    .line 1029
    const-string v5, "None_icon_close"

    const/4 v6, 0x1

    if-eq v4, v6, :cond_50

    if-ne p0, v6, :cond_24

    goto :goto_50

    :cond_24
    if-eq v0, v6, :cond_3d

    if-ne v2, v6, :cond_29

    goto :goto_3d

    .line 1043
    :cond_29
    const-string p0, "Night_Light"

    invoke-static {v3, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_33

    const/4 v1, 0x3

    goto :goto_62

    .line 1045
    :cond_33
    const-string p0, "Night"

    invoke-static {v3, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_62

    const/4 v1, 0x4

    goto :goto_62

    .line 1037
    :cond_3d
    :goto_3d
    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4e

    .line 1038
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAiRawSprdSupport:Z

    if-nez p0, :cond_4e

    const/16 v1, 0x14

    goto :goto_62

    :cond_4e
    const/4 v1, 0x2

    goto :goto_62

    .line 1030
    :cond_50
    :goto_50
    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_61

    .line 1031
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAiRawSprdSupport:Z

    if-nez p0, :cond_61

    const/16 v1, 0xa

    goto :goto_62

    :cond_61
    move v1, v6

    .line 1048
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

    .line 1697
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRawSuperResolutionMode:I

    return p0
.end method

.method public getRealZoomRatio()I
    .registers 1

    .line 855
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRealZoomRatio:I

    return p0
.end method

.method public getRegularRange()Landroid/util/Range;
    .registers 1

    .line 925
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRegularFpsRange:Landroid/util/Range;

    return-object p0
.end method

.method public getRemosaicMode()Ljava/lang/String;
    .registers 1

    .line 1676
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRemosaicMode:Ljava/lang/String;

    return-object p0
.end method

.method public getRingScreenLight()Ljava/lang/String;
    .registers 1

    .line 2591
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRingScreenLight:Ljava/lang/String;

    return-object p0
.end method

.method public getSMVRRequestParams()[I
    .registers 1

    .line 2251
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSMVRRequestParams:[I

    return-object p0
.end method

.method public getSTBlurLevel()I
    .registers 1

    .line 2186
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSTBlurLevel:I

    return p0
.end method

.method public getSTBlurLightStrength()F
    .registers 1

    .line 2166
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSTBlurLightStrength:F

    return p0
.end method

.method public getSTBlurMode()I
    .registers 1

    .line 2154
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSTBlurMode:I

    return p0
.end method

.method public getSTBlurReaRatio()F
    .registers 1

    .line 2174
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSTBlurReaRatio:F

    return p0
.end method

.method public getSTBlurStrengths()[F
    .registers 1

    .line 2158
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSTBlurStrengths:[F

    return-object p0
.end method

.method public getSatPictureSize()Landroid/util/Size;
    .registers 1

    .line 723
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSatPictureSize:Landroid/util/Size;

    return-object p0
.end method

.method public getSceneMode()Ljava/lang/String;
    .registers 1

    .line 933
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSceneMode:Ljava/lang/String;

    return-object p0
.end method

.method public getScreenFlashMode()Ljava/lang/String;
    .registers 1

    .line 1989
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mScreenFlashMode:Ljava/lang/String;

    return-object p0
.end method

.method public getScreenFlashStatus()Ljava/lang/String;
    .registers 1

    .line 2607
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mScreenFlashStatus:Ljava/lang/String;

    return-object p0
.end method

.method public getScreenTorchStatus()Ljava/lang/String;
    .registers 1

    .line 2599
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mScreenTorchStatus:Ljava/lang/String;

    return-object p0
.end method

.method public getShot2ShotMode()I
    .registers 1

    .line 1833
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mShot2ShotMode:I

    return p0
.end method

.method public getSkinColor()I
    .registers 1

    .line 2451
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSkinColor:I

    return p0
.end method

.method public getSkinOptimization()I
    .registers 1

    .line 1302
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSkinOptimizationValue:I

    return p0
.end method

.method public getSkipMultCapture()Z
    .registers 1

    .line 1819
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSkipMultCapture:Z

    return p0
.end method

.method public getSlimBodyLevels()[I
    .registers 1

    .line 1536
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSlimBodyLevels:[I

    return-object p0
.end method

.method public getSmoothZoomValue()I
    .registers 1

    .line 2811
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSmoothZoomValue:I

    return p0
.end method

.method public getStreamFlip()Z
    .registers 1

    .line 2763
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mStreamFlip:Z

    return p0
.end method

.method public getStreamingCustomTuning()I
    .registers 4

    .line 2358
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

    .line 2360
    iget v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mCelebritySceneMode:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_38

    .line 2361
    const-string p0, "14"

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_38
    const/4 v2, 0x1

    if-ne v2, v0, :cond_42

    .line 2363
    const-string p0, "16"

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_42
    const/4 v2, 0x3

    if-ne v2, v0, :cond_4c

    .line 2365
    const-string p0, "17"

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 2366
    :cond_4c
    iget v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mEffect:I

    if-ne v2, v1, :cond_59

    if-nez v0, :cond_59

    .line 2367
    const-string p0, "18"

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 2369
    :cond_59
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mStreamingCustomTuning:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getStreetPhotoFilterId()I
    .registers 1

    .line 1448
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mStreetPhotoFilterId:I

    return p0
.end method

.method public getSuperAIRawMode()I
    .registers 1

    .line 1767
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperAIRaw:I

    return p0
.end method

.method public getSuperAntiVideoMode()Ljava/lang/String;
    .registers 1

    .line 1973
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperAntiVideo:Ljava/lang/String;

    return-object p0
.end method

.method public getSuperDefinitionMode()I
    .registers 1

    .line 1656
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperDefinitionMode:I

    return p0
.end method

.method public getSuperFlashValue()Ljava/lang/String;
    .registers 1

    .line 2575
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperFlash:Ljava/lang/String;

    return-object p0
.end method

.method public getSuperNightAlgoType()Ljava/lang/String;
    .registers 4

    .line 2137
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

    .line 2138
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperFlash:Ljava/lang/String;

    const-string v1, "on"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperNightEnable:Z

    if-eqz v0, :cond_32

    .line 2139
    const-string v0, "Night_Light"

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperNightAlgoType:Ljava/lang/String;

    .line 2140
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setSuperNightLightValue(I)V

    .line 2142
    :cond_32
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperNightAlgoType:Ljava/lang/String;

    return-object p0
.end method

.method public getSuperNightMode()Ljava/lang/String;
    .registers 1

    .line 2117
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperNightMode:Ljava/lang/String;

    return-object p0
.end method

.method public getSuperResolutionMode()I
    .registers 1

    .line 1701
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperResolutionMode:I

    return p0
.end method

.method public getSystemUserID()I
    .registers 1

    .line 3111
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSystemUserID:I

    return p0
.end method

.method public getTAPSCaptureNeedYuvSize()I
    .registers 1

    .line 2899
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTAPSCaptureNeedYuvSize:I

    return p0
.end method

.method public getTFEVCheckerEnable()I
    .registers 1

    .line 1811
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTFEVCheckerEnable:I

    return p0
.end method

.method public getTfPortraitMode()I
    .registers 1

    .line 1795
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTfPortraitMode:I

    return p0
.end method

.method public getThumbnailSize()Landroid/util/Size;
    .registers 1

    .line 731
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mThumbnailSize:Landroid/util/Size;

    return-object p0
.end method

.method public getTranFaceDetectMode()I
    .registers 2

    .line 2234
    sget-boolean v0, Lcom/transsion/camera/utils/FeatureSupport;->sEnableFaceInfoDetect:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 2235
    :cond_6
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranFaceDetectMode:I

    return p0
.end method

.method public getTranssionAINRMode()I
    .registers 1

    .line 3004
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranssionAINRMode:I

    return p0
.end method

.method public getTranssionAnimalEyeDetection()Ljava/lang/String;
    .registers 1

    .line 2275
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAnimalEyeDetection:Ljava/lang/String;

    return-object p0
.end method

.method public getTranssionAsdMode()I
    .registers 2

    .line 1365
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

    .line 1382
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAsdVersion:I

    return p0
.end method

.method public getTranssionAutoMacroSwitch()Ljava/lang/String;
    .registers 1

    .line 2283
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAutoMacroSwitch:Ljava/lang/String;

    return-object p0
.end method

.method public getTranssionAutoMacroSwitchSetting()Ljava/lang/String;
    .registers 1

    .line 2290
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAutoMacroSwitchSetting:Ljava/lang/String;

    return-object p0
.end method

.method public getTranssionCameraMode()I
    .registers 1

    .line 2243
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranssionCameraMode:I

    return p0
.end method

.method public getTranssionCusIspAsd()[I
    .registers 1

    .line 1390
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAsdIsp:[I

    return-object p0
.end method

.method public getTranssionEyeDetection()Ljava/lang/String;
    .registers 1

    .line 2259
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mEyeDetection:Ljava/lang/String;

    return-object p0
.end method

.method public getTranssionFilterId()I
    .registers 1

    .line 1440
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranssionFilterId:I

    return p0
.end method

.method public getTranssionHDR()I
    .registers 1

    .line 1751
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranssionHDR:I

    return p0
.end method

.method public getTranssionHumanDetection()I
    .registers 1

    .line 2267
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHumanDetection:I

    return p0
.end method

.method public getTranssionLowLightMode()I
    .registers 1

    .line 1612
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLowLightMode:I

    return p0
.end method

.method public getTranssionNightMode()I
    .registers 1

    .line 1604
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mNightMode:I

    return p0
.end method

.method public getTranssionPluginEnable()I
    .registers 1

    .line 1997
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranssionPluginEnable:I

    return p0
.end method

.method public getTranssionSmartDenoise()I
    .registers 1

    .line 1648
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mDenoiseMode:I

    return p0
.end method

.method public getTranssionSuperNightFilterId()I
    .registers 1

    .line 1472
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranssionSuperNightFilterId:I

    return p0
.end method

.method public getTranssionTurboFusionMode()I
    .registers 3

    .line 1783
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->getDebugTurboFusionMode()I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_8

    return v0

    .line 1787
    :cond_8
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranssionTurboFusionMode:I

    return p0
.end method

.method public getTranssionVideoEffectId()I
    .registers 1

    .line 1512
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoEffectId:I

    return p0
.end method

.method public getTranssionVideoFilterId()I
    .registers 1

    .line 1488
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoFilterId:I

    return p0
.end method

.method public getTranssionVideoFilterSkinType()I
    .registers 1

    .line 1496
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoFilterSkinType:I

    return p0
.end method

.method public getTranssionVideoFrameId()I
    .registers 1

    .line 1520
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoFrameId:I

    return p0
.end method

.method public getViUllEnable()I
    .registers 1

    .line 3036
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mViUllEnable:I

    return p0
.end method

.method public getVideo2kCapSize()Landroid/util/Size;
    .registers 1

    .line 2868
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->m2kSize:Landroid/util/Size;

    return-object p0
.end method

.method public getVideoFilterLevel()I
    .registers 1

    .line 1504
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoFilterLevel:I

    return p0
.end method

.method public getVideoHDRMode()Ljava/lang/String;
    .registers 1

    .line 1340
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoHDRMode:Ljava/lang/String;

    return-object p0
.end method

.method public getVideoHdrFormat()Ljava/lang/String;
    .registers 1

    .line 3118
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoHDRFormat:Ljava/lang/String;

    return-object p0
.end method

.method public getVideoInterpolationEnable()I
    .registers 1

    .line 2226
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoInterpolationEnable:I

    return p0
.end method

.method public getVideoNightTranYUVMode()I
    .registers 1

    .line 2318
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoNightTranYUVMode:I

    return p0
.end method

.method public getVideoOrientation()I
    .registers 1

    .line 779
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoOrientation:I

    return p0
.end method

.method public getVideoPortraitLevel()I
    .registers 1

    .line 1254
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoPortraitLevel:I

    return p0
.end method

.method public getVideoPortraitMode()I
    .registers 1

    .line 2298
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoPortraitMode:I

    return p0
.end method

.method public getVideoPreIspMode()I
    .registers 1

    .line 2739
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoPreIspMode:I

    return p0
.end method

.method public getVideoSpotLevel()I
    .registers 1

    .line 1262
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoSpotLevel:I

    return p0
.end method

.method public getVideoSpotMode()I
    .registers 1

    .line 2306
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoSpotMode:I

    return p0
.end method

.method public getVideoSuperNightMode()I
    .registers 1

    .line 2314
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoSuperNightMode:I

    return p0
.end method

.method public getVideoSuperNightResolution()I
    .registers 1

    .line 2338
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoSuperNightResolution:I

    return p0
.end method

.method public getVideoSuperNightScene()I
    .registers 1

    .line 2386
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoSuperNightAlgoScene:I

    return p0
.end method

.method public getVideoSuperNightYUVMode()I
    .registers 1

    .line 2346
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoSuperNightYUVMode:I

    return p0
.end method

.method public getVsdofLevel()Ljava/lang/String;
    .registers 1

    .line 1246
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVsdofLevel:Ljava/lang/String;

    return-object p0
.end method

.method public getYuvCaptureFlipMode()Ljava/lang/String;
    .registers 1

    .line 1923
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mYuvCaptureFlipMode:Ljava/lang/String;

    return-object p0
.end method

.method public getZoomEisMode()I
    .registers 1

    .line 2907
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mZoomEisMode:I

    return p0
.end method

.method public getZoomRatio()I
    .registers 1

    .line 851
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mZoomRatio:I

    return p0
.end method

.method public hasValidFace(Z)V
    .registers 2

    .line 1411
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mDXOHasValidFace:Z

    return-void
.end method

.method public hasValidFace()Z
    .registers 1

    .line 1415
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mDXOHasValidFace:Z

    return p0
.end method

.method public isAIRawLiteClose()Z
    .registers 3

    .line 1053
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAIRawMode()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_f

    .line 1054
    sget-object p0, Lcom/transsion/camera/adapter/CameraParameters;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "isAIRawLiteClose: aiRawScene getAIRawMode = 0"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 1057
    :cond_f
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAisMode()I

    move-result v0

    if-ne v0, v1, :cond_1d

    .line 1058
    sget-object p0, Lcom/transsion/camera/adapter/CameraParameters;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "isAIRawLiteClose: return 0 for AisMode on"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 1061
    :cond_1d
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getLivePhotoMode()I

    move-result v0

    if-ne v0, v1, :cond_2b

    .line 1062
    sget-object p0, Lcom/transsion/camera/adapter/CameraParameters;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "isAIRawLiteClose: return 0 for LivePhoto on"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 1065
    :cond_2b
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIsDetectedMoon:Z

    if-eqz v0, :cond_3d

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAiMoonMode()I

    move-result p0

    if-ne p0, v1, :cond_3d

    .line 1066
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

    .line 2125
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIsAiRawLiteSupport:Z

    return p0
.end method

.method public isBWConvertEnable()Z
    .registers 1

    .line 1286
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBWConvertEnable:Z

    return p0
.end method

.method public isBWPortraitEnable()Z
    .registers 1

    .line 1278
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBWPortraitEnable:Z

    return p0
.end method

.method public isBgServiceEnable()Z
    .registers 1

    .line 2194
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBGServiceEnable:Z

    return p0
.end method

.method public isCapturing()Z
    .registers 1

    .line 2503
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mCapturing:Z

    return p0
.end method

.method public isCurrentAppModeRequiredOnContinuousShot()Z
    .registers 1

    .line 2972
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIsCurrentAppModeRequiredOnContinuousShot:Z

    return p0
.end method

.method public isEVListValid()Z
    .registers 2

    .line 1145
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

    .line 2923
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIsExtraCaptureEnableZSL:Z

    return p0
.end method

.method public isFaceDetectionEnable()Z
    .registers 1

    .line 2483
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFaceDetectionEnable:Z

    return p0
.end method

.method public isHeavyCapturing()Z
    .registers 1

    .line 988
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHeavyCapturing:Z

    return p0
.end method

.method public isLongFocusCamera()Z
    .registers 1

    .line 2101
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIsLongFocusCamera:Z

    return p0
.end method

.method public isMirrorEnable()Z
    .registers 1

    .line 1270
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMirrorEnable:Z

    return p0
.end method

.method public isModeUltrazoomEnable()Z
    .registers 1

    .line 1314
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mModeUltrazoomEnable:Z

    return p0
.end method

.method public isPreviewStreamEnabled()Z
    .registers 1

    .line 2860
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPreviewStreamEnable:Z

    return p0
.end method

.method public isProfessionModeEnable()Z
    .registers 1

    .line 1306
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mProfessionalModeEnable:Z

    return p0
.end method

.method public isQuickPreviewEnable()Z
    .registers 1

    .line 1290
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mQuickPreviewEnable:Z

    return p0
.end method

.method public isRTDofEnable()Z
    .registers 1

    .line 880
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRTDofEnable:Z

    return p0
.end method

.method public isRecordingHint()Z
    .registers 1

    .line 944
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRecordingHint:Z

    return p0
.end method

.method public isSupportedRawSR()Z
    .registers 1

    .line 1733
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSupportedRawSR:Z

    return p0
.end method

.method public isTZServiceEnable()Z
    .registers 1

    .line 2202
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTZServiceEnable:Z

    return p0
.end method

.method public isWideCamera()Z
    .registers 1

    .line 2093
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIsWideCamera:Z

    return p0
.end method

.method public isZSLEnable()Z
    .registers 1

    .line 871
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mZSLEnable:Z

    return p0
.end method

.method public needFocusModeAuto()Z
    .registers 1

    .line 2479
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mNeedFocusModeAuto:Z

    return p0
.end method

.method public needLockAe(Z)V
    .registers 2

    .line 2507
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mNeedLockAe:Z

    return-void
.end method

.method public needLockAe()Z
    .registers 1

    .line 2511
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mNeedLockAe:Z

    return p0
.end method

.method public openYUVDataWhenRecording(Z)V
    .registers 2

    .line 2823
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSupportYUVPreviewDataWhenRecording:Z

    return-void
.end method

.method public overrideSensorRect(Landroid/graphics/Rect;)V
    .registers 2

    .line 948
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mOverrideSensorRect:Landroid/graphics/Rect;

    return-void
.end method

.method public postAlgoOn()Z
    .registers 1

    .line 964
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIsPostAlgoOn:Z

    return p0
.end method

.method public set360VideoHDRInitMode(I)V
    .registers 2

    .line 1357
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->m360VideoHDRInitMode:I

    return-void
.end method

.method public set360VideoHDRMode(I)V
    .registers 3

    .line 1348
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->m360VideoHDRMode:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    .line 1349
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

    .line 2382
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideo360HDRAlgoScene:I

    return-void
.end method

.method public setAIRawLiteMotionDetection(I)V
    .registers 2

    .line 1133
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAIRawLiteMotionDetection:I

    return-void
.end method

.method public setAIRawLiteSupportPortraitEnhance(Z)V
    .registers 2

    .line 2679
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAIRawLiteSupportPortraitEnhance:Z

    return-void
.end method

.method public setAIRawMode(I)V
    .registers 2

    .line 2671
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAIRawMode:I

    return-void
.end method

.method public setAWBLockStatus(Z)V
    .registers 2

    .line 2049
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAWBLockStatus:Z

    return-void
.end method

.method public setAWBMode(Ljava/lang/String;)V
    .registers 2

    .line 2025
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAWBMode:Ljava/lang/String;

    return-void
.end method

.method public setAbeHdrCheckMode(I)V
    .registers 2

    .line 2655
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAbeHdrCheckMode:I

    return-void
.end method

.method public setAdrcgainValue(F)V
    .registers 2

    .line 1771
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAdrcGainValue:F

    return-void
.end method

.method public setAeLock(Z)V
    .registers 2

    .line 892
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAeLock:Z

    return-void
.end method

.method public setAeState(I)V
    .registers 2

    .line 1008
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAeStateValue:I

    return-void
.end method

.method public setAfFfMode(I)V
    .registers 2

    .line 1977
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAfFfMode:I

    return-void
.end method

.method public setAiMoonMode(I)V
    .registers 2

    .line 2422
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAiMoonMode:I

    return-void
.end method

.method public setAiRawLiteSupport(Z)V
    .registers 2

    .line 2121
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIsAiRawLiteSupport:Z

    return-void
.end method

.method public setAiRawScene(I)V
    .registers 2

    .line 1073
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAiRawScene:I

    return-void
.end method

.method public setAirawSN2SRMode(I)V
    .registers 2

    .line 1799
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAirawSN2SRMode:I

    return-void
.end method

.method public setAisMode(I)V
    .registers 2

    .line 2719
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAisMode:I

    return-void
.end method

.method public setAisMorpho(I)V
    .registers 2

    .line 2727
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAisMorpho:I

    return-void
.end method

.method public setAntiVideoMode(Ljava/lang/String;)V
    .registers 2

    .line 1961
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAntiVideo:Ljava/lang/String;

    return-void
.end method

.method public setAppModeId(Ljava/lang/String;)V
    .registers 2

    .line 2551
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAppModeId:Ljava/lang/String;

    return-void
.end method

.method public setArcFilterId(I)V
    .registers 2

    .line 1428
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mArcFilterId:I

    return-void
.end method

.method public setAsdEffect(I)V
    .registers 2

    .line 2350
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mEffect:I

    return-void
.end method

.method public setAutoFpsModeForISP(I)V
    .registers 2

    .line 2783
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAutoFpsModeForISP:I

    return-void
.end method

.method public setAutoWatermarkMode(Ljava/lang/String;)V
    .registers 2

    .line 1853
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAutoWatermarkMode:Ljava/lang/String;

    return-void
.end method

.method public setBGImageReaderId(I)V
    .registers 2

    .line 2206
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBGImageReaderId:I

    return-void
.end method

.method public setBMCustomZSLBufSize(I)V
    .registers 2

    .line 2888
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBMCustomZslBufSize:I

    return-void
.end method

.method public setBMLowLightMode(I)V
    .registers 2

    .line 2872
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->bmLowLightMode:I

    return-void
.end method

.method public setBMMultiFrameNum(I)V
    .registers 2

    .line 2880
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->bmMultiFrameNum:I

    return-void
.end method

.method public setBestMomentDetectMode(I)V
    .registers 2

    .line 2832
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBestMomentDetectMode:I

    return-void
.end method

.method public setBestMomentRawHDRMode(I)V
    .registers 2

    .line 2840
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBestMomentRawHDRMode:I

    return-void
.end method

.method public setBrightnessValue(I)V
    .registers 2

    .line 1004
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBrightnessValue:I

    return-void
.end method

.method public setCaptureCustomTuning(Ljava/lang/String;)V
    .registers 2

    .line 2627
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mCaptureCustomTuning:Ljava/lang/String;

    return-void
.end method

.method public setCaptureISPTunning(I)V
    .registers 2

    .line 2960
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mCaptureISPTunning:I

    return-void
.end method

.method public setCaptureId(I)V
    .registers 2

    .line 976
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mCaptureId:I

    return-void
.end method

.method public setCaptureTag(I)V
    .registers 2

    .line 2927
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mCaptureTag:I

    return-void
.end method

.method public setCaptureTime(J)V
    .registers 3

    .line 3137
    iput-wide p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mCaptureTime:J

    return-void
.end method

.method public setCaptureZSLTimestamps([J)V
    .registers 2

    .line 2976
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mCaptureZSLTimestamps:[J

    return-void
.end method

.method public setCapturing(Z)V
    .registers 2

    .line 2499
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mCapturing:Z

    return-void
.end method

.method public setCelebritySceneMode(I)V
    .registers 2

    .line 3040
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mCelebritySceneMode:I

    return-void
.end method

.method public setColorLevel(Ljava/lang/String;)V
    .registers 2

    .line 2663
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mColorLevel:Ljava/lang/String;

    return-void
.end method

.method public setCurrentAppModeRequiredOnContinuousShot(Z)V
    .registers 2

    .line 2968
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIsCurrentAppModeRequiredOnContinuousShot:Z

    return-void
.end method

.method public setCurrentFaces(I)V
    .registers 2

    .line 2992
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mCurrentFaces:I

    return-void
.end method

.method public setDataFlowType(I)V
    .registers 2

    .line 743
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mDataFlowType:I

    return-void
.end method

.method public setDeBandingMode(I)V
    .registers 2

    .line 2952
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBmDebandingMode:I

    return-void
.end method

.method public setDistortionCorrectionMode(I)V
    .registers 2

    .line 1837
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mDistortionCorrectionMode:I

    return-void
.end method

.method public setDistortionCorrectionPreviewEnable(Ljava/lang/String;)V
    .registers 2

    .line 1845
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mDistortionCorrectionPreviewEnable:Ljava/lang/String;

    return-void
.end method

.method public setEVList([I)V
    .registers 2

    .line 1141
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mEVList:[I

    return-void
.end method

.method public setEditWatermarkMode(ZLjava/lang/String;)V
    .registers 3

    .line 1857
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mEditWatermarkSupport:Z

    .line 1858
    iput-object p2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mEditWatermarkMode:Ljava/lang/String;

    return-void
.end method

.method public setExcludeVideoMakeupBeauty(I)V
    .registers 2

    .line 1588
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mExcludeVideoMakeupBeauty:I

    return-void
.end method

.method public setExifModeInfo(I)V
    .registers 2

    .line 2711
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mExifModeInfo:I

    return-void
.end method

.method public setExposureCompensation(I)V
    .registers 2

    .line 884
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mExposureCompensation:I

    return-void
.end method

.method public setExposureTime(J)V
    .registers 3

    .line 1171
    iput-wide p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mExposureTime:J

    return-void
.end method

.method public setExternalIspMode(I)V
    .registers 2

    .line 2743
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mExternalIspMode:I

    return-void
.end method

.method public setExtraCaptureCount(I)V
    .registers 2

    .line 2911
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mExtraCaptureCount:I

    return-void
.end method

.method public setExtraCaptureEnableZSL(Z)V
    .registers 2

    .line 2919
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIsExtraCaptureEnableZSL:Z

    return-void
.end method

.method public setFaceAttributeInfo([I)V
    .registers 2

    .line 2491
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFaceAttributeInfo:[I

    return-void
.end method

.method public setFaceBeautyFeaturesLevel([I)V
    .registers 2

    .line 1233
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFaceBeautyFeaturesLevel:[I

    return-void
.end method

.method public setFaceBeautyLevel(Ljava/lang/String;)V
    .registers 2

    .line 1217
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFaceBeautyLevel:Ljava/lang/String;

    return-void
.end method

.method public setFaceBeautyMode(Ljava/lang/String;)V
    .registers 2

    .line 1209
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFaceBeautyMode:Ljava/lang/String;

    return-void
.end method

.method public setFaceDetectionEnable(Z)V
    .registers 2

    .line 2487
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFaceDetectionEnable:Z

    return-void
.end method

.method public setFaceProportion(F)V
    .registers 2

    .line 3063
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFaceProportion:F

    return-void
.end method

.method public setFakeDualLensMode(I)V
    .registers 2

    .line 2214
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFakeDualLensMode:I

    return-void
.end method

.method public setFlareCaptureEnable(I)V
    .registers 2

    .line 2943
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFlareCaptureEnable:I

    return-void
.end method

.method public setFlareLocation([F)V
    .registers 2

    .line 2799
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPMasterFlareLocation:[F

    return-void
.end method

.method public setFlashFacade(Ljava/lang/String;)V
    .registers 2

    .line 2555
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFlashFacade:Ljava/lang/String;

    return-void
.end method

.method public setFlashMode(Ljava/lang/String;)V
    .registers 2

    .line 822
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFlashMode:Ljava/lang/String;

    return-void
.end method

.method public setFlashSnapAutoCaptureMode(I)V
    .registers 2

    .line 2844
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFlashSnapAutoCaptureMode:I

    return-void
.end method

.method public setFlashStyle(Ljava/lang/String;)V
    .registers 2

    .line 2579
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFlashStyle:Ljava/lang/String;

    return-void
.end method

.method public setFocalLength(I)V
    .registers 2

    .line 2815
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFocalLength:I

    return-void
.end method

.method public setFocusAreas(Ljava/util/List;)V
    .registers 3

    .line 800
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFocusAreas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_c

    .line 802
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFocusAreas:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_c
    return-void
.end method

.method public setFocusDistance(F)V
    .registers 2

    .line 1183
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFocusDistance:F

    return-void
.end method

.method public setFocusLength(F)V
    .registers 2

    .line 1191
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFocusLength:F

    return-void
.end method

.method public setFocusMode(Ljava/lang/String;)V
    .registers 2

    .line 791
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFocusMode:Ljava/lang/String;

    return-void
.end method

.method public setFocusModeAuto(Z)V
    .registers 2

    .line 2475
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mNeedFocusModeAuto:Z

    return-void
.end method

.method public setFovWideCrop(Z)V
    .registers 2

    .line 859
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFovWideCrop:Z

    return-void
.end method

.method public setFrontDualFlashColorTemp(I)V
    .registers 2

    .line 2009
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFrontDualFlashColorTemp:I

    return-void
.end method

.method public setFrontDualFlashStrengthMode(I)V
    .registers 2

    .line 2017
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFrontDualFlashStrengthMode:I

    return-void
.end method

.method public setFusionMode(Ljava/lang/String;)V
    .registers 2

    .line 2077
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFusionMode:Ljava/lang/String;

    return-void
.end method

.method public setGenderAttributeValue(Ljava/lang/String;)V
    .registers 2

    .line 2443
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mGenderAttributeValue:Ljava/lang/String;

    return-void
.end method

.method public setGoldWaterMarkSize([I)V
    .registers 2

    .line 1903
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mGoldWaterMarkSize:[I

    return-void
.end method

.method public setGoldWatermarkMode(ZLjava/lang/String;)V
    .registers 3

    .line 1862
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mGoldWatermarkSupport:Z

    .line 1863
    iput-object p2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mGoldWatermarkMode:Ljava/lang/String;

    return-void
.end method

.method public setGoldWatermarkType(Ljava/lang/String;)V
    .registers 2

    .line 1895
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mGoldWatermarkType:Ljava/lang/String;

    return-void
.end method

.method public setGroupCaptureEnable(I)V
    .registers 2

    .line 2935
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mGroupCaptureEnable:I

    return-void
.end method

.method public setHALBMLowLightMode(I)V
    .registers 2

    .line 3008
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHALBMLowLightMode:I

    return-void
.end method

.method public setHDRAeExpoInfo([I)V
    .registers 2

    .line 1101
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHDRAeExpoInfo:[I

    return-void
.end method

.method public setHdr10PlusMode(I)V
    .registers 5

    .line 3128
    sget-object v0, Lcom/transsion/camera/adapter/CameraParameters;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setHdr10PlusMode enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3129
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHdr10PlusMode:I

    return-void
.end method

.method public setHeavyCapturing(Z)V
    .registers 2

    .line 992
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHeavyCapturing:Z

    return-void
.end method

.method public setHeavyCapturingBV(I)V
    .registers 2

    .line 996
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHeavyCapturingBV:I

    return-void
.end method

.method public setHighFpsMode(Ljava/lang/String;)V
    .registers 2

    .line 2073
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHighFpsMode:Ljava/lang/String;

    return-void
.end method

.method public setHighLightMode(I)V
    .registers 2

    .line 2515
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHighLightMode:I

    return-void
.end method

.method public setHighPixelMode(I)V
    .registers 2

    .line 1660
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHighPixelMode:I

    return-void
.end method

.method public setHumanBox([I)V
    .registers 2

    .line 3122
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHumanBox:[I

    return-void
.end method

.method public setISOValue(I)V
    .registers 2

    .line 1163
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mISOValue:I

    return-void
.end method

.method public setISPTuningEnable(I)V
    .registers 2

    .line 2771
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mISPTuningEnable:I

    return-void
.end method

.method public setImageStyleId(I)V
    .registers 2

    .line 1452
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mImageStyleId:I

    return-void
.end method

.method public setIncreaseFrequencyEnable(I)V
    .registers 2

    .line 2984
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIncreaseFreqEnable:I

    return-void
.end method

.method public setIs24HourFormat(I)V
    .registers 2

    .line 1887
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIs24HourFormat:I

    return-void
.end method

.method public setIsBurstCapturing(Z)V
    .registers 2

    .line 1370
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIsBurstCapturing:Z

    return-void
.end method

.method public setJpegGPSLocation(Landroid/location/Location;)V
    .registers 2

    .line 783
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLocation:Landroid/location/Location;

    return-void
.end method

.method public setJpegOrientation(I)V
    .registers 2

    .line 767
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mJpegOrientation:I

    return-void
.end method

.method public setLastShotNotSkip(Z)V
    .registers 2

    .line 1081
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLastShotNotSkip:Z

    return-void
.end method

.method public setLensCorrectionMode(I)V
    .registers 2

    .line 1560
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLensCorrectionMode:I

    return-void
.end method

.method public setLimitFpsRange(Landroid/util/Range;)V
    .registers 2

    .line 913
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLimitFpsRange:Landroid/util/Range;

    return-void
.end method

.method public setLivePhotoMode(I)V
    .registers 2

    .line 3016
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLivePhotoMode:I

    return-void
.end method

.method public setLiveResultMode(I)V
    .registers 2

    .line 2651
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLiveResultMode:I

    return-void
.end method

.method public setLlsInfo([I)V
    .registers 2

    .line 1125
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLlsInfo:[I

    return-void
.end method

.method public setLongExposureCaptureState(Ljava/lang/String;)V
    .registers 2

    .line 2703
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLongExposureCaptureState:Ljava/lang/String;

    return-void
.end method

.method public setLongExposureScene(Ljava/lang/String;)V
    .registers 2

    .line 2687
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLongExposureScene:Ljava/lang/String;

    return-void
.end method

.method public setLongExposureTripod(Ljava/lang/String;)V
    .registers 2

    .line 2695
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLongExposureTripod:Ljava/lang/String;

    return-void
.end method

.method public setLongFocusBaseZoomRatio(F)V
    .registers 2

    .line 2105
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLongFocusBaseZoomRatio:F

    return-void
.end method

.method public setLongFocusCamera(Z)V
    .registers 2

    .line 2097
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIsLongFocusCamera:Z

    return-void
.end method

.method public setLuminanceValue(I)V
    .registers 2

    .line 2001
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLuminanceValue:I

    return-void
.end method

.method public setMFNRAeExpoInfo([I)V
    .registers 2

    .line 1109
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMFNRAeExpoInfo:[I

    return-void
.end method

.method public setMTKProcessRawEnable(I)V
    .registers 2

    .line 3056
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMTKProcessRawEnable:I

    return-void
.end method

.method public setMagicSkyResult(I)V
    .registers 2

    .line 2539
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMagicSkyResult:I

    return-void
.end method

.method public setMagicSkyType(Ljava/lang/String;)V
    .registers 2

    .line 2531
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMagicSkyType:Ljava/lang/String;

    return-void
.end method

.method public setMakeUpIntensitys([F)V
    .registers 2

    .line 1552
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMakeUpIntensitys:[F

    return-void
.end method

.method public setMakeUpMode(I)V
    .registers 2

    .line 1548
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMakeUpMode:I

    return-void
.end method

.method public setMakeUpVideoIntensitys([F)V
    .registers 2

    .line 1576
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMakeUpVideoIntensitys:[F

    return-void
.end method

.method public setMakeUpVideoMode(I)V
    .registers 2

    .line 1572
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMakeUpVideoMode:I

    return-void
.end method

.method public setManualAWBValue(Ljava/lang/String;)V
    .registers 2

    .line 2033
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mManualAWBValue:Ljava/lang/String;

    return-void
.end method

.method public setMeteringAreas(Ljava/util/List;)V
    .registers 3

    .line 811
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMeteringAreas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_c

    .line 813
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMeteringAreas:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_c
    return-void
.end method

.method public setMeteringMode(Ljava/lang/String;)V
    .registers 2

    .line 1200
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMeteringMode:Ljava/lang/String;

    return-void
.end method

.method public setMiddleNightMode(I)V
    .registers 3

    .line 1616
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMiddleNightMode:I

    .line 1617
    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->disableAlgoPolicy()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 1618
    sget-object p1, Lcom/transsion/camera/adapter/CameraParameters;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "It\'s a project under 4G,close MiddleNight in Monkey scenarios."

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1619
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMiddleNightMode:I

    :cond_12
    return-void
.end method

.method public setMoonDetectPitch(F)V
    .registers 2

    .line 2414
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMoonDetectPitch:F

    return-void
.end method

.method public setMoonDetectResult(I)V
    .registers 2

    .line 1179
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMoonDetectResult:I

    return-void
.end method

.method public setMoonDetection(I)V
    .registers 2

    .line 2406
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMoonDetectionMode:I

    return-void
.end method

.method public setMotionCaptureMode(I)V
    .registers 2

    .line 3048
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMotionCaptureMode:I

    return-void
.end method

.method public setMultiFaceBeautyMode(Ljava/lang/String;)V
    .registers 2

    .line 1213
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMultiFaceBeautyMode:Ljava/lang/String;

    return-void
.end method

.method public setNightAeExpoInfo([I)V
    .registers 2

    .line 1117
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mNightAeExpoInfo:[I

    return-void
.end method

.method public setNightHawkMode(I)V
    .registers 2

    .line 2398
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mNightHawkMode:I

    return-void
.end method

.method public setNvsSuperNightFilterId(I)V
    .registers 2

    .line 1460
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperNightFilterId:I

    return-void
.end method

.method public setOpenAutoFps(Z)V
    .registers 2

    .line 2767
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mOpenAutoFps:Z

    return-void
.end method

.method public setP2CropRegionCustomize([I)V
    .registers 2

    .line 1713
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mP2CropRegionCustomize:[I

    return-void
.end method

.method public setP2RawCropResizeEnable(I)V
    .registers 2

    .line 1705
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mP2RawCropResizeEnable:I

    return-void
.end method

.method public setP2ResizerSizeCustomize([I)V
    .registers 2

    .line 1721
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mP2ResizerSizeCustomize:[I

    return-void
.end method

.method public setPMasterFlareMode(I)V
    .registers 2

    .line 2791
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPMasterFlareMode:I

    return-void
.end method

.method public setPhotoHDRMode(Ljava/lang/String;)V
    .registers 5

    .line 1322
    sget-object v0, Lcom/transsion/camera/adapter/CameraParameters;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setPhotoHDRMode], hdrMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1323
    const-string v0, "on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1324
    const-string v0, "hdr"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setSceneMode(Ljava/lang/String;)V

    .line 1326
    :cond_23
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPhotoHDRMode:Ljava/lang/String;

    return-void
.end method

.method public setPhotoNightTranYUVMode(I)V
    .registers 2

    .line 2330
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPhotoNightTranYUVMode:I

    return-void
.end method

.method public setPictureSize(Landroid/util/Size;)V
    .registers 2

    .line 711
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPictureSize:Landroid/util/Size;

    return-void
.end method

.method public setPipDeviceValue(Ljava/lang/String;)V
    .registers 2

    .line 2619
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPipDeviceValue:Ljava/lang/String;

    return-void
.end method

.method public setPlainLocationText(Ljava/lang/String;)V
    .registers 2

    .line 1872
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPlainLocationText:Ljava/lang/String;

    return-void
.end method

.method public setPortraitModeEnhanceMode(Ljava/lang/String;)V
    .registers 2

    .line 2430
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPortraitModeEnhanceMode:Ljava/lang/String;

    return-void
.end method

.method public setPostAlgoFrameInfo([I)V
    .registers 2

    .line 1093
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPostAlgoFrameInfo:[I

    return-void
.end method

.method public setPostAlgoOn(Z)V
    .registers 2

    .line 968
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIsPostAlgoOn:Z

    return-void
.end method

.method public setPostAlgoType(I)V
    .registers 2

    .line 984
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPostAlgoType:I

    return-void
.end method

.method public setPostViewSize(Landroid/util/Size;)V
    .registers 2

    .line 735
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPostViewSize:Landroid/util/Size;

    return-void
.end method

.method public setPreviewFPSRange(Landroid/util/Range;)V
    .registers 2

    .line 900
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPreviewFPSRange:Landroid/util/Range;

    return-void
.end method

.method public setPreviewGoldWaterMarkSize([I)V
    .registers 2

    .line 1911
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPreviewGoldWaterMarkSize:[I

    return-void
.end method

.method public setPreviewSize(Landroid/util/Size;)V
    .registers 2

    .line 687
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPreviewSize:Landroid/util/Size;

    return-void
.end method

.method public setProWatermarMode(ZLjava/lang/String;)V
    .registers 3

    .line 1867
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mProWatermarkSupport:Z

    .line 1868
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mProWatermarkType:I

    return-void
.end method

.method public setProWatermarkStyle(I)V
    .registers 2

    .line 1880
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mProWatermarkStyle:I

    return-void
.end method

.method public setProfessionMode(Z)V
    .registers 2

    .line 1310
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mProfessionalModeEnable:Z

    return-void
.end method

.method public setQuickPreview(Z)V
    .registers 2

    .line 1294
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mQuickPreviewEnable:Z

    return-void
.end method

.method public setRTDofEnable(Z)V
    .registers 2

    .line 876
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRTDofEnable:Z

    return-void
.end method

.method public setRace(I)V
    .registers 2

    .line 2463
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRace:I

    return-void
.end method

.method public setRawPictureSize(Ljava/util/List;)V
    .registers 2

    .line 703
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSupportRawSize:Ljava/util/List;

    return-void
.end method

.method public setRealZoomRatio(I)V
    .registers 2

    .line 847
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRealZoomRatio:I

    return-void
.end method

.method public setRecordingHint(Z)V
    .registers 2

    .line 940
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRecordingHint:Z

    return-void
.end method

.method public setRegularRange(Landroid/util/Range;)V
    .registers 2

    .line 921
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRegularFpsRange:Landroid/util/Range;

    return-void
.end method

.method public setRemosaicMode(Ljava/lang/String;)V
    .registers 3

    .line 1668
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRemosaicMode:Ljava/lang/String;

    .line 1669
    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->specialMonkeySupported()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 1670
    sget-object p1, Lcom/transsion/camera/adapter/CameraParameters;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "It\'s a project under 4G,close remosaicMode in Monkey scenarios."

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1671
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRemosaicMode:Ljava/lang/String;

    :cond_12
    return-void
.end method

.method public setRingScreenLight(Ljava/lang/String;)V
    .registers 2

    .line 2587
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRingScreenLight:Ljava/lang/String;

    return-void
.end method

.method public setSMVRRequestParams([I)V
    .registers 2

    .line 2247
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSMVRRequestParams:[I

    return-void
.end method

.method public setSTBlurLightStrength(F)V
    .registers 2

    .line 2170
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSTBlurLightStrength:F

    return-void
.end method

.method public setSTBlurMode(I)V
    .registers 2

    .line 2150
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSTBlurMode:I

    return-void
.end method

.method public setSTBlurReaRatio(F)V
    .registers 2

    .line 2178
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSTBlurReaRatio:F

    return-void
.end method

.method public setSTBlurStrengths([F)V
    .registers 2

    .line 2162
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSTBlurStrengths:[F

    return-void
.end method

.method public setSatPictureSize(Landroid/util/Size;)V
    .registers 2

    .line 719
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSatPictureSize:Landroid/util/Size;

    return-void
.end method

.method public setSceneMode(Ljava/lang/String;)V
    .registers 2

    .line 929
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSceneMode:Ljava/lang/String;

    return-void
.end method

.method public setScreenFlashMode(Ljava/lang/String;)V
    .registers 2

    .line 1985
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mScreenFlashMode:Ljava/lang/String;

    return-void
.end method

.method public setScreenFlashStatus(Ljava/lang/String;)V
    .registers 2

    .line 2603
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mScreenFlashStatus:Ljava/lang/String;

    return-void
.end method

.method public setScreenTorchStatus(Ljava/lang/String;)V
    .registers 2

    .line 2595
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mScreenTorchStatus:Ljava/lang/String;

    return-void
.end method

.method public setShot2ShotMode(I)V
    .registers 2

    .line 1829
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mShot2ShotMode:I

    return-void
.end method

.method public setSingleBlurLevel(I)V
    .registers 2

    .line 2182
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSTBlurLevel:I

    return-void
.end method

.method public setSkinColor(I)V
    .registers 2

    .line 2455
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSkinColor:I

    return-void
.end method

.method public setSkinOptimization(I)V
    .registers 2

    .line 1298
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSkinOptimizationValue:I

    return-void
.end method

.method public setSkipMultCapture(Z)V
    .registers 2

    .line 1815
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSkipMultCapture:Z

    return-void
.end method

.method public setSlimBodyLevels([I)V
    .registers 2

    .line 1524
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSlimBodyLevels:[I

    return-void
.end method

.method public setSlimBodyMode(I)V
    .registers 2

    .line 1528
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSlimBodyMode:I

    return-void
.end method

.method public setSlimBodySkip(I)V
    .registers 2

    .line 1532
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSlimBodySkip:I

    return-void
.end method

.method public setSmoothZoomValue(I)V
    .registers 2

    .line 2807
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSmoothZoomValue:I

    return-void
.end method

.method public setStreamingCustomTuning(Ljava/lang/String;)V
    .registers 2

    .line 2354
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mStreamingCustomTuning:Ljava/lang/String;

    return-void
.end method

.method public setStreetPhotoFilterId(I)V
    .registers 2

    .line 1444
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mStreetPhotoFilterId:I

    return-void
.end method

.method public setSuperAIRawMode(I)V
    .registers 2

    .line 1755
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperAIRaw:I

    return-void
.end method

.method public setSuperAntiVideoMode(Ljava/lang/String;)V
    .registers 2

    .line 1969
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperAntiVideo:Ljava/lang/String;

    return-void
.end method

.method public setSuperDefinitionMode(I)V
    .registers 2

    .line 1652
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperDefinitionMode:I

    return-void
.end method

.method public setSuperFlashValue(Ljava/lang/String;)V
    .registers 2

    .line 2563
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperFlash:Ljava/lang/String;

    return-void
.end method

.method public setSuperNightAlgoType(Ljava/lang/String;)V
    .registers 3

    .line 2129
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperNightAlgoType:Ljava/lang/String;

    .line 2130
    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->disableAlgoPolicy()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 2131
    sget-object p1, Lcom/transsion/camera/adapter/CameraParameters;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "It\'s a project under 4G,close superNight in Monkey scenarios."

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2132
    const-string p1, "None"

    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperNightAlgoType:Ljava/lang/String;

    :cond_13
    return-void
.end method

.method public setSuperNightHdrCheckerMode(I)V
    .registers 2

    .line 1476
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperNightHdrCheckerModeEnable:I

    return-void
.end method

.method public setSuperNightMode(Ljava/lang/String;)V
    .registers 2

    .line 2113
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperNightMode:Ljava/lang/String;

    return-void
.end method

.method public setSuperResolutionMode(I)V
    .registers 3

    .line 1684
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSupportedRawSR:Z

    if-eqz v0, :cond_7

    .line 1685
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRawSuperResolutionMode:I

    goto :goto_9

    .line 1687
    :cond_7
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperResolutionMode:I

    .line 1689
    :goto_9
    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->specialMonkeySupported()Z

    move-result p1

    if-eqz p1, :cond_24

    .line 1690
    sget-object p1, Lcom/transsion/camera/adapter/CameraParameters;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "It\'s a project under 4G,close superResolution in Monkey scenarios."

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1691
    const-string p1, "0"

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRawSuperResolutionMode:I

    .line 1692
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperResolutionMode:I

    :cond_24
    return-void
.end method

.method public setSuperResolutionSupportPortraitMode(Z)V
    .registers 2

    .line 2434
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperResolutinSupportPortraitMode:Z

    return-void
.end method

.method public setSupportedRawSR(Z)V
    .registers 2

    .line 1729
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSupportedRawSR:Z

    return-void
.end method

.method public setSystemUserID(I)V
    .registers 2

    .line 3107
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSystemUserID:I

    return-void
.end method

.method public setTAPSCaptureNeedYuvSize(I)V
    .registers 2

    .line 2895
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTAPSCaptureNeedYuvSize:I

    return-void
.end method

.method public setTfPortraitMode(I)V
    .registers 2

    .line 1791
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTfPortraitMode:I

    return-void
.end method

.method public setThumbnailSize(Landroid/util/Size;)V
    .registers 2

    .line 739
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mThumbnailSize:Landroid/util/Size;

    return-void
.end method

.method public setTranFaceDetectMode(I)V
    .registers 2

    .line 2230
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranFaceDetectMode:I

    return-void
.end method

.method public setTranssionAINRMode(I)V
    .registers 2

    .line 3000
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranssionAINRMode:I

    return-void
.end method

.method public setTranssionAnimalEyeDetection(Ljava/lang/String;)V
    .registers 2

    .line 2271
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAnimalEyeDetection:Ljava/lang/String;

    return-void
.end method

.method public setTranssionAsdMode(I)V
    .registers 2

    .line 1361
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAsdMode:I

    return-void
.end method

.method public setTranssionAsdVersion(I)V
    .registers 2

    .line 1378
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAsdVersion:I

    return-void
.end method

.method public setTranssionAutoMacroSwitch(Ljava/lang/String;)V
    .registers 2

    .line 2279
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAutoMacroSwitch:Ljava/lang/String;

    return-void
.end method

.method public setTranssionAutoMacroSwitchSetting(Ljava/lang/String;)V
    .registers 2

    .line 2286
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAutoMacroSwitchSetting:Ljava/lang/String;

    return-void
.end method

.method public setTranssionCameraMode(I)V
    .registers 2

    .line 2239
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranssionCameraMode:I

    return-void
.end method

.method public setTranssionCusIspAsd([I)V
    .registers 2

    .line 1386
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAsdIsp:[I

    return-void
.end method

.method public setTranssionEyeDetection(Ljava/lang/String;)V
    .registers 2

    .line 2255
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mEyeDetection:Ljava/lang/String;

    return-void
.end method

.method public setTranssionFilterId(I)V
    .registers 2

    .line 1436
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranssionFilterId:I

    return-void
.end method

.method public setTranssionHDR(I)V
    .registers 5

    .line 1737
    sget-object v0, Lcom/transsion/camera/adapter/CameraParameters;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setTranssionHDR], value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1738
    const-string v1, "1"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1739
    const-string v1, "hdr"

    invoke-virtual {p0, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setSceneMode(Ljava/lang/String;)V

    goto :goto_2d

    .line 1741
    :cond_28
    const-string v1, "auto"

    invoke-virtual {p0, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setSceneMode(Ljava/lang/String;)V

    .line 1743
    :goto_2d
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranssionHDR:I

    .line 1744
    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->disableAlgoPolicy()Z

    move-result p1

    if-eqz p1, :cond_3d

    .line 1745
    const-string p1, "It\'s a project under 4G,close Hdr in Monkey scenarios."

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 1746
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranssionHDR:I

    :cond_3d
    return-void
.end method

.method public setTranssionHumanDetection(I)V
    .registers 2

    .line 2263
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHumanDetection:I

    return-void
.end method

.method public setTranssionLowLightMode(I)V
    .registers 2

    .line 1608
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLowLightMode:I

    return-void
.end method

.method public setTranssionNightMode(I)V
    .registers 3

    .line 1596
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mNightMode:I

    .line 1597
    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->disableAlgoPolicy()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 1598
    sget-object p1, Lcom/transsion/camera/adapter/CameraParameters;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "It\'s a project under 4G,close TranssionNightMode in Monkey scenarios."

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1599
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mNightMode:I

    :cond_12
    return-void
.end method

.method public setTranssionPluginEnable(I)V
    .registers 2

    .line 1993
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranssionPluginEnable:I

    return-void
.end method

.method public setTranssionSmartDenoise(I)V
    .registers 2

    .line 1644
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mDenoiseMode:I

    return-void
.end method

.method public setTranssionSuperNightFilterId(I)V
    .registers 2

    .line 1468
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranssionSuperNightFilterId:I

    return-void
.end method

.method public setTranssionTurboFusionMode(I)V
    .registers 2

    .line 1779
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranssionTurboFusionMode:I

    return-void
.end method

.method public setVideo2kSize(Z)V
    .registers 4

    if-eqz p1, :cond_c

    .line 2864
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

    .line 1335
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoHDRMode:Ljava/lang/String;

    return-void
.end method

.method public setVideoHdrFormat(Ljava/lang/String;)V
    .registers 2

    .line 3114
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoHDRFormat:Ljava/lang/String;

    return-void
.end method

.method public setVideoNightTranYUVMode(I)V
    .registers 2

    .line 2322
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoNightTranYUVMode:I

    return-void
.end method

.method public setVideoOrientation(I)V
    .registers 2

    .line 771
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoOrientation:I

    return-void
.end method

.method public setVideoPortraitLevel(I)V
    .registers 2

    .line 1250
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoPortraitLevel:I

    return-void
.end method

.method public setVideoPortraitMode(I)V
    .registers 2

    .line 2294
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoPortraitMode:I

    return-void
.end method

.method public setVideoPreIspMode(I)V
    .registers 2

    .line 2735
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoPreIspMode:I

    return-void
.end method

.method public setVideoSpotLevel(I)V
    .registers 2

    .line 1258
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoSpotLevel:I

    return-void
.end method

.method public setVideoSpotMode(I)V
    .registers 2

    .line 2302
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoSpotMode:I

    return-void
.end method

.method public setVideoSuperNightMode(I)V
    .registers 2

    .line 2310
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoSuperNightMode:I

    return-void
.end method

.method public setVideoSuperNightResolution(I)V
    .registers 2

    .line 2334
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoSuperNightResolution:I

    return-void
.end method

.method public setVideoSuperNightScene(I)V
    .registers 2

    .line 2374
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoSuperNightAlgoScene:I

    return-void
.end method

.method public setVideoSuperNightYUVMode(I)V
    .registers 2

    .line 2342
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoSuperNightYUVMode:I

    return-void
.end method

.method public setVsdofModeLevel(Ljava/lang/String;)V
    .registers 5

    .line 1241
    sget-object v0, Lcom/transsion/camera/adapter/CameraParameters;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVsdofModeLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1242
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVsdofLevel:Ljava/lang/String;

    return-void
.end method

.method public setWideCamera(Z)V
    .registers 2

    .line 2089
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIsWideCamera:Z

    return-void
.end method

.method public setYuvCaptureFlipMode(Ljava/lang/String;)V
    .registers 2

    .line 1919
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mYuvCaptureFlipMode:Ljava/lang/String;

    return-void
.end method

.method public setZSLEnable(Z)V
    .registers 2

    .line 867
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mZSLEnable:Z

    return-void
.end method

.method public setZoomEisMode(I)V
    .registers 2

    .line 2903
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mZoomEisMode:I

    return-void
.end method

.method public setZoomRatio(I)V
    .registers 2

    .line 843
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mZoomRatio:I

    return-void
.end method

.method public setZoomRatio(IZ)V
    .registers 4

    .line 835
    sget v0, Lcom/transsion/camera/adapter/CameraParameters;->MIN_ZOOM_RATIO:I

    if-ge p1, v0, :cond_1d

    if-nez p2, :cond_1d

    .line 836
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

    .line 839
    :cond_1d
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mZoomRatio:I

    return-void
.end method

.method public supportYUVDataWhenRecording()Z
    .registers 1

    .line 2827
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSupportYUVPreviewDataWhenRecording:Z

    return p0
.end method

.method public tripodMode(Z)V
    .registers 2

    .line 1419
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mDXOTripodMode:Z

    return-void
.end method

.method public tripodMode()Z
    .registers 1

    .line 1423
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mDXOTripodMode:Z

    return p0
.end method
