.class public abstract Lcom/transsion/camera/adapter/CameraCapabilities;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/adapter/ICameraCapabilities;


# static fields
.field static final ZOOM_RATIO_UNIT:F


# instance fields
.field private m360HDRModeSupport:Z

.field private m4CellInOneSize:Ljava/util/List;

.field private mAnimalEyeDetectSupport:Z

.field private mBaseZoomRatio:F

.field private mCameraFoldedFlagSupport:Z

.field private mCaptureCoverSupport:Z

.field private mColorLevelSupport:Z

.field private mDspSupport:Z

.field private mDualCamCalibrationSize:Landroid/util/Size;

.field private mExposureCompensationStep:Landroid/util/Rational;

.field private mFakeRAW_RAW_Support:Z

.field private mFakeRAW_YUV_Support:Z

.field private mFlashStyleSupport:Z

.field private mFovCropRegion:Landroid/graphics/Rect;

.field private mFrontDualFlashSupport:Z

.field private mHighFpsResolutions:Ljava/util/List;

.field private mHighSpeedVideoSupport:Z

.field private mHumanDetectSupport:Z

.field private mIsAutoExposureLockSupported:Z

.field private mIsBGServiceModeSupport:Z

.field private mIsDynamic10BitEncodeSupport:Z

.field private mIsHLGProfileSupport:Z

.field private mIsSatModeSupport:Z

.field private mIsSupportAiRawLite:Z

.field private mIsSupportFastSuperNight:Z

.field private mIsSupportMicroCamera:Z

.field private mIsSupportNightHawkMode:Z

.field private mIsSupportPortraitEnhance:Z

.field private mIsSupportSlimBodyMode:Z

.field private mIsSupportStableSuperNight:Z

.field private mIsSupportedAIRemosaic:Z

.field private mIsSupportedZoom2xRemosaic:Z

.field private mIsVideoPreIspSupport:Z

.field private mIspVersion:I

.field private mLogicId:Ljava/lang/String;

.field private mLogicalCameraSupport:Z

.field private mMacroTorchSupport:Z

.field private mMaxExposureCompensation:I

.field private mMaxNumOfFocusAreas:I

.field private mMaxNumOfMeteringAreas:I

.field private mMicroPanTiltSupport:Z

.field private mMinExposureCompensation:I

.field private mMultiDualCamLogicalSupport:Z

.field private mMultiDualCamTeleSupport:Z

.field private mOffLineSessionSupport:Z

.field private mOfflineJniSupport:Z

.field private mPeriscopeLensSupport:Z

.field private mPhysicalCameraIds:Ljava/util/Set;

.field private mPortrait8M2xZoomRatio:I

.field private mPreIspFakeIdAndModes:Ljava/util/List;

.field protected mSMVRMetaDatas:[Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;

.field private mScreenFlashFireSupport:Z

.field private mSensorColorFilterArrange:I

.field private mSensorRect:Landroid/graphics/Rect;

.field private mSlimBodyFeatureSize:I

.field private mStereoSensorCropRegion:Landroid/graphics/Rect;

.field private mSuperDefinitionType:I

.field private mSuperFlashSupport:Z

.field private mSupport4Cell:Z

.field private mSupportAiShutter:Z

.field private mSupportArcFilterIds:Ljava/util/List;

.field private mSupportAsdMode:Ljava/util/List;

.field private mSupportAsdVersion:Ljava/util/List;

.field private mSupportAutoMacroSwitch:Ljava/util/List;

.field private mSupportEyeDetection:Ljava/util/List;

.field private mSupportFaceBeautyFeatures:Ljava/util/List;

.field private mSupportFaceBeautyFeaturesLevelScope:Ljava/util/List;

.field private mSupportFaceBeautyLevels:Ljava/util/List;

.field private mSupportFaceBeautyModes:Ljava/util/List;

.field private mSupportHdModes:Ljava/util/List;

.field private mSupportHdr10Plus:Z

.field private mSupportHumanEffectModes:Ljava/util/List;

.field private mSupportLuminanceValues:Ljava/util/List;

.field private mSupportMacroValue:Ljava/util/List;

.field private mSupportMagicSkyType:Ljava/util/List;

.field private mSupportManualWBRangeValue:Ljava/util/List;

.field private mSupportMultiZoomSteps:[F

.field private mSupportPortraitFlare:Z

.field private mSupportRawSR:Z

.field private mSupportSTBlurModes:Ljava/util/List;

.field private mSupportScreenTorchStatus:Ljava/util/List;

.field private mSupportShot2Shot:Ljava/util/List;

.field private mSupportSingleBlurLevels:Ljava/util/List;

.field private mSupportSprdVideo2k:Z

.field private mSupportSuperDefinition:Z

.field private mSupportSuperNightModes:Ljava/util/List;

.field private mSupportSuperResolution:Z

.field private mSupportTranFaceDetectMode:Ljava/util/List;

.field private mSupportTranssionFilterIds:Ljava/util/List;

.field private mSupportTranssionHDR:Ljava/util/List;

.field private mSupportVideoEffectIds:Ljava/util/List;

.field private mSupportVideoFilterIds:Ljava/util/List;

.field private mSupportVideoFrameIds:Ljava/util/List;

.field private mSupportVideoPortraitLevel:Ljava/util/List;

.field private mSupportVsdofLevel:Ljava/util/List;

.field private mSupportYuvCaptureFlipMode:Ljava/util/List;

.field private mSupportZoomEis:Z

.field private mSupportedAWBModes:Ljava/util/List;

.field private mSupportedContinuousVideoFocus:Z

.field private mSupportedContrastValues:Ljava/util/List;

.field private mSupportedDistortionCorrection:Ljava/util/List;

.field private mSupportedDualCamPictureSizes:Ljava/util/List;

.field private mSupportedExposureTimes:Ljava/util/List;

.field private mSupportedFlashModes:Ljava/util/List;

.field private mSupportedFocusDistanceRange:Landroid/util/Range;

.field private mSupportedFocusModes:Ljava/util/List;

.field private mSupportedHDThumbnailSizes:Ljava/util/List;

.field private mSupportedHighPreviewFPSRange:Ljava/util/List;

.field protected mSupportedHighSpeedSizesAndFPS:Ljava/util/List;

.field private mSupportedISOValues:Ljava/util/List;

.field private mSupportedISPMetaSizesForRaw:Ljava/util/List;

.field private mSupportedISPMetaSizesForYuv:Ljava/util/List;

.field private mSupportedLongExposureScene:Ljava/util/List;

.field private mSupportedMeteringModes:Ljava/util/List;

.field private mSupportedPhotoHDRModes:Ljava/util/List;

.field private mSupportedPictureSizes:Ljava/util/List;

.field private mSupportedPostViewSizes:Ljava/util/List;

.field private mSupportedPreviewFPSRange:Ljava/util/List;

.field private mSupportedPreviewSizes:Ljava/util/List;

.field private mSupportedRawPictureSizes:Ljava/util/List;

.field private mSupportedSTBurPictureSizes:Ljava/util/List;

.field private mSupportedScreenFlashModes:Ljava/util/List;

.field private mSupportedStaggerHDRModes:Ljava/util/List;

.field private mSupportedThumbnailSizes:Ljava/util/List;

.field private mSupportedVideoHDRModes:Ljava/util/List;

.field private mSupportedVideoSizes:Ljava/util/List;

.field private mSupportedVideoSpotLevel:Ljava/util/List;

.field private mSupportedZoomRatios:Ljava/util/List;

.field private mTeleCameraSupport:Z

.field private mUsePreAECaptureFlow:Z

.field private mVideoCameraSupport:Z

.field private mWideCameraSupport:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 116
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz v0, :cond_c

    const v0, 0x461c4000    # 10000.0f

    goto :goto_e

    :cond_c
    const/high16 v0, 0x42c80000    # 100.0f

    :goto_e
    sput v0, Lcom/transsion/camera/adapter/CameraCapabilities;->ZOOM_RATIO_UNIT:F

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 122
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mWideCameraSupport:Z

    .line 124
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mTeleCameraSupport:Z

    .line 126
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mLogicalCameraSupport:Z

    .line 127
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mMultiDualCamLogicalSupport:Z

    .line 128
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mMultiDualCamTeleSupport:Z

    const/4 v1, 0x0

    .line 130
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportMacroValue:Ljava/util/List;

    .line 136
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mHighSpeedVideoSupport:Z

    .line 142
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mFakeRAW_RAW_Support:Z

    .line 143
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mFakeRAW_YUV_Support:Z

    .line 144
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportTranFaceDetectMode:Ljava/util/List;

    .line 147
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mVideoCameraSupport:Z

    .line 148
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mCameraFoldedFlagSupport:Z

    .line 149
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mDspSupport:Z

    .line 158
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mMacroTorchSupport:Z

    .line 177
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mPeriscopeLensSupport:Z

    .line 208
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->m360HDRModeSupport:Z

    return-void
.end method


# virtual methods
.method abstract buildAiShutterSupport(Ljava/lang/Object;)Z
.end method

.method buildAllCapabilities(Ljava/lang/Object;)V
    .registers 3

    .line 227
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportSlimBodyMode(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mIsSupportSlimBodyMode:Z

    .line 228
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportSlimBodyFeatureSize(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSlimBodyFeatureSize:I

    .line 229
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedPreviewSizes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedPreviewSizes:Ljava/util/List;

    .line 230
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedPictureSizes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedPictureSizes:Ljava/util/List;

    .line 231
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedRawPictureSizes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedRawPictureSizes:Ljava/util/List;

    .line 232
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedDualCamPictureSizes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedDualCamPictureSizes:Ljava/util/List;

    .line 233
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedSTBlurPictureSizes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedSTBurPictureSizes:Ljava/util/List;

    .line 234
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedVideoSizes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedVideoSizes:Ljava/util/List;

    .line 235
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedFlashModes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedFlashModes:Ljava/util/List;

    .line 236
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedPhotoHDRModes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedPhotoHDRModes:Ljava/util/List;

    .line 237
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedVideoHDRModes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedVideoHDRModes:Ljava/util/List;

    .line 238
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedDolHdrModes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedStaggerHDRModes:Ljava/util/List;

    .line 239
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedFocusModes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedFocusModes:Ljava/util/List;

    .line 240
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedContinuousVideoFocus()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedContinuousVideoFocus:Z

    .line 241
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedScreenFlashModes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedScreenFlashModes:Ljava/util/List;

    .line 242
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildMaxNumOfSupportedFocusAreas(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mMaxNumOfFocusAreas:I

    .line 243
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildMaxNumOfSupportedMeteringAreas(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mMaxNumOfMeteringAreas:I

    .line 244
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedZoomRatios(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedZoomRatios:Ljava/util/List;

    .line 245
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedFaceBeautyModes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportFaceBeautyModes:Ljava/util/List;

    .line 246
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedFaceBeautyLevels(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportFaceBeautyLevels:Ljava/util/List;

    .line 247
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedFaceBeautyFeatures(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportFaceBeautyFeatures:Ljava/util/List;

    .line 248
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedFaceBeautyFeaturesLevelScope(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportFaceBeautyFeaturesLevelScope:Ljava/util/List;

    .line 249
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedArcFilterIds(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportArcFilterIds:Ljava/util/List;

    .line 250
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedTranssionFilterIds(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportTranssionFilterIds:Ljava/util/List;

    .line 251
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedVideoFilterIds(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportVideoFilterIds:Ljava/util/List;

    .line 252
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedVideoEffectIds(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportVideoEffectIds:Ljava/util/List;

    .line 253
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedVideoFrameIds(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportVideoFrameIds:Ljava/util/List;

    .line 254
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedAsdMode(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportAsdMode:Ljava/util/List;

    .line 255
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedAsdVersion(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportAsdVersion:Ljava/util/List;

    .line 256
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedTranssionHDR(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportTranssionHDR:Ljava/util/List;

    .line 257
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedSuperDefinition(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportSuperDefinition:Z

    .line 258
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupported4Cell(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupport4Cell:Z

    .line 259
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedRawSR(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportRawSR:Z

    .line 260
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSuperDefinitionType(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSuperDefinitionType:I

    .line 261
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedSuperResolution(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportSuperResolution:Z

    .line 262
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedVsdofLevel(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportVsdofLevel:Ljava/util/List;

    .line 263
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedManualWBRangeValue(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportManualWBRangeValue:Ljava/util/List;

    .line 264
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildDualCamCalibrationSize(Ljava/lang/Object;)Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mDualCamCalibrationSize:Landroid/util/Size;

    .line 265
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildStereoSensorCropRegion(Ljava/lang/Object;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mStereoSensorCropRegion:Landroid/graphics/Rect;

    .line 266
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildFovCropRegion(Ljava/lang/Object;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mFovCropRegion:Landroid/graphics/Rect;

    .line 267
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildIsAutoExposureLockSupported(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mIsAutoExposureLockSupported:Z

    .line 268
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildMaxExposureCompensation(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mMaxExposureCompensation:I

    .line 269
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildMinExposureCompensation(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mMinExposureCompensation:I

    .line 270
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildExposureCompensationStep(Ljava/lang/Object;)Landroid/util/Rational;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mExposureCompensationStep:Landroid/util/Rational;

    .line 271
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedPreviewFPSRanges(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedPreviewFPSRange:Ljava/util/List;

    .line 272
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedPostViewSizes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedPostViewSizes:Ljava/util/List;

    .line 273
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedHDThumbnailSizes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedHDThumbnailSizes:Ljava/util/List;

    .line 274
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedThumbnailSizes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedThumbnailSizes:Ljava/util/List;

    .line 275
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedISPMetaSizesForRaw(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedISPMetaSizesForRaw:Ljava/util/List;

    .line 276
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedISPMetaSizesForYuv(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedISPMetaSizesForYuv:Ljava/util/List;

    .line 277
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildIsWideCameraSupported(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mWideCameraSupport:Z

    .line 278
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildIsTeleCameraSupported(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mTeleCameraSupport:Z

    .line 279
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildIsMultiDualCamLogicalSupported(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mMultiDualCamLogicalSupport:Z

    .line 280
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildIsMultiDualCamTeleSupported(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mMultiDualCamTeleSupport:Z

    .line 281
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildIsLogicalCameraSupported(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mLogicalCameraSupport:Z

    .line 282
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildIsFakeRAWRAWCameraSupport(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mFakeRAW_RAW_Support:Z

    .line 283
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildIsFakeRAWYUVCameraSupport(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mFakeRAW_YUV_Support:Z

    .line 284
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedLuminanceValues(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportLuminanceValues:Ljava/util/List;

    .line 285
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedShot2Shot(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportShot2Shot:Ljava/util/List;

    .line 286
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedHdModes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportHdModes:Ljava/util/List;

    .line 287
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildIsAIRemosaicSupported(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mIsSupportedAIRemosaic:Z

    .line 288
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildZoom2XRemosaicSupported(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mIsSupportedZoom2xRemosaic:Z

    .line 289
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedSuperNightModes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportSuperNightModes:Ljava/util/List;

    .line 290
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedStableSuperNight(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mIsSupportStableSuperNight:Z

    .line 291
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedFastSuperNight(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mIsSupportFastSuperNight:Z

    .line 292
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedAiRawLite(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mIsSupportAiRawLite:Z

    .line 293
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedAWBModes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedAWBModes:Ljava/util/List;

    .line 294
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedSTBlurModes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportSTBlurModes:Ljava/util/List;

    .line 295
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedSingleBlurLevels(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportSingleBlurLevels:Ljava/util/List;

    .line 296
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildIsBGServiceModeSupport(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mIsBGServiceModeSupport:Z

    .line 297
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildOffLineSessionSupport(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mOffLineSessionSupport:Z

    .line 298
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildOfflineJniSupport(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mOfflineJniSupport:Z

    .line 299
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedDistortionCorrection(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedDistortionCorrection:Ljava/util/List;

    .line 300
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedMacro(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportMacroValue:Ljava/util/List;

    .line 301
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupport4CellInOneSize(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->m4CellInOneSize:Ljava/util/List;

    .line 302
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildIsVideoCameraSupported(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mVideoCameraSupport:Z

    .line 303
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildIsCameraFoldedFlagSupported(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mCameraFoldedFlagSupport:Z

    .line 304
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildIsDspSupported(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mDspSupport:Z

    .line 305
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildIsMacroTorchSupported(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mMacroTorchSupport:Z

    .line 306
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildScreenFlashFireSupport(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mScreenFlashFireSupport:Z

    .line 307
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportTranFaceDetect(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportTranFaceDetectMode:Ljava/util/List;

    .line 308
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildHumanDetectionSupported(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mHumanDetectSupport:Z

    .line 309
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildMicroPanTiltSupported(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mMicroPanTiltSupport:Z

    .line 310
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildAnimalEyeDetectionSupported(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mAnimalEyeDetectSupport:Z

    .line 311
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildAutoMacroSwitchSupported(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportAutoMacroSwitch:Ljava/util/List;

    .line 312
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSensorRect(Ljava/lang/Object;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSensorRect:Landroid/graphics/Rect;

    .line 313
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSensorColorFilterArrange(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSensorColorFilterArrange:I

    .line 314
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildIsHighSpeedVideoSupported(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mHighSpeedVideoSupport:Z

    if-eqz v0, :cond_228

    .line 316
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedSMVRMetaDatas(Ljava/lang/Object;)[Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSMVRMetaDatas:[Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;

    .line 317
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedHighPreviewFPSRanges(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedHighPreviewFPSRange:Ljava/util/List;

    .line 318
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedHighSpeedSizesAndFPS(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedHighSpeedSizesAndFPS:Ljava/util/List;

    .line 320
    :cond_228
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedHighFpsResolutions(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mHighFpsResolutions:Ljava/util/List;

    .line 321
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedEyeDecetion(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportEyeDetection:Ljava/util/List;

    .line 322
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedVideoPortraitLevel(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportVideoPortraitLevel:Ljava/util/List;

    .line 323
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedVideoSpotLevel(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedVideoSpotLevel:Ljava/util/List;

    .line 324
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedExposureTimes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedExposureTimes:Ljava/util/List;

    .line 325
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedISOValues(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedISOValues:Ljava/util/List;

    .line 326
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedContrastValues(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedContrastValues:Ljava/util/List;

    .line 327
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedFocusDistanceRange(Ljava/lang/Object;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedFocusDistanceRange:Landroid/util/Range;

    .line 328
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedMeteringModes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedMeteringModes:Ljava/util/List;

    .line 329
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildAiShutterSupport(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportAiShutter:Z

    .line 330
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildIsNightHawkSupport(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mIsSupportNightHawkMode:Z

    .line 331
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildIsPortraitEnhanceSupport(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mIsSupportPortraitEnhance:Z

    .line 332
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedHumanEffectModes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportHumanEffectModes:Ljava/util/List;

    .line 333
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildYuvCaptureFlipModeSupported(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportYuvCaptureFlipMode:Ljava/util/List;

    .line 334
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportSatModeSupport(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mIsSatModeSupport:Z

    .line 335
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportMultiZoomSteps(Ljava/lang/Object;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportMultiZoomSteps:[F

    .line 336
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildPeriscopeCamSupport(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mPeriscopeLensSupport:Z

    .line 337
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->usePreAECaptureFlow(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mUsePreAECaptureFlow:Z

    .line 338
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedMagicSkyType(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportMagicSkyType:Ljava/util/List;

    .line 339
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildPhysicalCameraIds(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mPhysicalCameraIds:Ljava/util/Set;

    .line 340
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildLogicId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mLogicId:Ljava/lang/String;

    .line 341
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSuperFlashSupported(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSuperFlashSupport:Z

    .line 342
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildFrontDualFlashSupported(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mFrontDualFlashSupport:Z

    .line 343
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildFlashStyleSupported(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mFlashStyleSupport:Z

    .line 344
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedScreenTorchStatus(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportScreenTorchStatus:Ljava/util/List;

    .line 345
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildCameraBaseZoomRatio(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mBaseZoomRatio:F

    .line 346
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildColorLevelSupport(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mColorLevelSupport:Z

    .line 347
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildMicroCameraSupport(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mIsSupportMicroCamera:Z

    .line 348
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildVideoPreIspSupport(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mIsVideoPreIspSupport:Z

    .line 349
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildVideoPreIspFakeIdAndModes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mPreIspFakeIdAndModes:Ljava/util/List;

    .line 350
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildIs360HDRModeSupported(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->m360HDRModeSupport:Z

    .line 351
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildIsPortraitFlareSupport(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportPortraitFlare:Z

    .line 352
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedLongExposureScene(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedLongExposureScene:Ljava/util/List;

    .line 353
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildIsSprdVideo2kSupport(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportSprdVideo2k:Z

    .line 354
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildIspVersion(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mIspVersion:I

    .line 355
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildIsZoomEisSupport(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportZoomEis:Z

    .line 356
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildCaptureCoverSupport(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mCaptureCoverSupport:Z

    .line 357
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildPortrait8M2xZoomRatio(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mPortrait8M2xZoomRatio:I

    .line 358
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildHLGProfileSupport(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mIsHLGProfileSupport:Z

    .line 359
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildDynamic10BitEncodeSupport(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mIsDynamic10BitEncodeSupport:Z

    .line 360
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildIsHdr10PlusSupport(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportHdr10Plus:Z

    return-void
.end method

.method abstract buildAnimalEyeDetectionSupported(Ljava/lang/Object;)Z
.end method

.method abstract buildAutoMacroSwitchSupported(Ljava/lang/Object;)Ljava/util/List;
.end method

.method abstract buildCameraBaseZoomRatio(Ljava/lang/Object;)F
.end method

.method abstract buildCaptureCoverSupport(Ljava/lang/Object;)Z
.end method

.method abstract buildColorLevelSupport(Ljava/lang/Object;)Z
.end method

.method abstract buildDualCamCalibrationSize(Ljava/lang/Object;)Landroid/util/Size;
.end method

.method abstract buildDynamic10BitEncodeSupport(Ljava/lang/Object;)Z
.end method

.method abstract buildExposureCompensationStep(Ljava/lang/Object;)Landroid/util/Rational;
.end method

.method abstract buildFlashStyleSupported(Ljava/lang/Object;)Z
.end method

.method abstract buildFovCropRegion(Ljava/lang/Object;)Landroid/graphics/Rect;
.end method

.method abstract buildFrontDualFlashSupported(Ljava/lang/Object;)Z
.end method

.method abstract buildHLGProfileSupport(Ljava/lang/Object;)Z
.end method

.method abstract buildHumanDetectionSupported(Ljava/lang/Object;)Z
.end method

.method abstract buildIs360HDRModeSupported(Ljava/lang/Object;)Z
.end method

.method abstract buildIsAIRemosaicSupported(Ljava/lang/Object;)Z
.end method

.method abstract buildIsAutoExposureLockSupported(Ljava/lang/Object;)Z
.end method

.method abstract buildIsBGServiceModeSupport(Ljava/lang/Object;)Z
.end method

.method abstract buildIsCameraFoldedFlagSupported(Ljava/lang/Object;)Z
.end method

.method abstract buildIsDspSupported(Ljava/lang/Object;)Z
.end method

.method abstract buildIsFakeRAWRAWCameraSupport(Ljava/lang/Object;)Z
.end method

.method abstract buildIsFakeRAWYUVCameraSupport(Ljava/lang/Object;)Z
.end method

.method abstract buildIsHdr10PlusSupport(Ljava/lang/Object;)Z
.end method

.method abstract buildIsHighSpeedVideoSupported(Ljava/lang/Object;)Z
.end method

.method abstract buildIsLogicalCameraSupported(Ljava/lang/Object;)Z
.end method

.method abstract buildIsMacroTorchSupported(Ljava/lang/Object;)Z
.end method

.method abstract buildIsMultiDualCamLogicalSupported(Ljava/lang/Object;)Z
.end method

.method abstract buildIsMultiDualCamTeleSupported(Ljava/lang/Object;)Z
.end method

.method abstract buildIsNightHawkSupport(Ljava/lang/Object;)Z
.end method

.method abstract buildIsPortraitEnhanceSupport(Ljava/lang/Object;)Z
.end method

.method abstract buildIsPortraitFlareSupport(Ljava/lang/Object;)Z
.end method

.method abstract buildIsSprdVideo2kSupport(Ljava/lang/Object;)Z
.end method

.method abstract buildIsTeleCameraSupported(Ljava/lang/Object;)Z
.end method

.method abstract buildIsVideoCameraSupported(Ljava/lang/Object;)Z
.end method

.method abstract buildIsWideCameraSupported(Ljava/lang/Object;)Z
.end method

.method abstract buildIsZoomEisSupport(Ljava/lang/Object;)Z
.end method

.method abstract buildIspVersion(Ljava/lang/Object;)I
.end method

.method abstract buildLogicId(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method abstract buildMaxExposureCompensation(Ljava/lang/Object;)I
.end method

.method abstract buildMaxNumOfSupportedFocusAreas(Ljava/lang/Object;)I
.end method

.method abstract buildMaxNumOfSupportedMeteringAreas(Ljava/lang/Object;)I
.end method

.method abstract buildMicroCameraSupport(Ljava/lang/Object;)Z
.end method

.method abstract buildMicroPanTiltSupported(Ljava/lang/Object;)Z
.end method

.method abstract buildMinExposureCompensation(Ljava/lang/Object;)I
.end method

.method abstract buildOffLineSessionSupport(Ljava/lang/Object;)Z
.end method

.method abstract buildOfflineJniSupport(Ljava/lang/Object;)Z
.end method

.method abstract buildPeriscopeCamSupport(Ljava/lang/Object;)Z
.end method

.method abstract buildPhysicalCameraIds(Ljava/lang/Object;)Ljava/util/Set;
.end method

.method abstract buildPortrait8M2xZoomRatio(Ljava/lang/Object;)I
.end method

.method abstract buildScreenFlashFireSupport(Ljava/lang/Object;)Z
.end method

.method abstract buildSensorColorFilterArrange(Ljava/lang/Object;)Ljava/lang/Integer;
.end method

.method abstract buildSensorRect(Ljava/lang/Object;)Landroid/graphics/Rect;
.end method

.method abstract buildStereoSensorCropRegion(Ljava/lang/Object;)Landroid/graphics/Rect;
.end method

.method abstract buildSuperDefinitionType(Ljava/lang/Object;)I
.end method

.method abstract buildSuperFlashSupported(Ljava/lang/Object;)Z
.end method

.method abstract buildSupport4CellInOneSize(Ljava/lang/Object;)Ljava/util/List;
.end method

.method abstract buildSupportMultiZoomSteps(Ljava/lang/Object;)[F
.end method

.method abstract buildSupportSatModeSupport(Ljava/lang/Object;)Z
.end method

.method abstract buildSupportSlimBodyFeatureSize(Ljava/lang/Object;)I
.end method

.method abstract buildSupportSlimBodyMode(Ljava/lang/Object;)Z
.end method

.method abstract buildSupportTranFaceDetect(Ljava/lang/Object;)Ljava/util/List;
.end method

.method abstract buildSupported4Cell(Ljava/lang/Object;)Z
.end method

.method abstract buildSupportedAWBModes(Ljava/lang/Object;)Ljava/util/List;
.end method

.method abstract buildSupportedAiRawLite(Ljava/lang/Object;)Z
.end method

.method abstract buildSupportedArcFilterIds(Ljava/lang/Object;)Ljava/util/List;
.end method

.method abstract buildSupportedAsdMode(Ljava/lang/Object;)Ljava/util/List;
.end method

.method abstract buildSupportedAsdVersion(Ljava/lang/Object;)Ljava/util/List;
.end method

.method abstract buildSupportedContinuousVideoFocus()Z
.end method

.method abstract buildSupportedContrastValues(Ljava/lang/Object;)Ljava/util/List;
.end method

.method abstract buildSupportedDistortionCorrection(Ljava/lang/Object;)Ljava/util/List;
.end method

.method abstract buildSupportedDolHdrModes(Ljava/lang/Object;)Ljava/util/List;
.end method

.method abstract buildSupportedDualCamPictureSizes(Ljava/lang/Object;)Ljava/util/List;
.end method

.method abstract buildSupportedExposureTimes(Ljava/lang/Object;)Ljava/util/List;
.end method

.method abstract buildSupportedEyeDecetion(Ljava/lang/Object;)Ljava/util/List;
.end method

.method abstract buildSupportedFaceBeautyFeatures(Ljava/lang/Object;)Ljava/util/List;
.end method

.method abstract buildSupportedFaceBeautyFeaturesLevelScope(Ljava/lang/Object;)Ljava/util/List;
.end method

.method abstract buildSupportedFaceBeautyLevels(Ljava/lang/Object;)Ljava/util/List;
.end method

.method abstract buildSupportedFaceBeautyModes(Ljava/lang/Object;)Ljava/util/List;
.end method

.method abstract buildSupportedFastSuperNight(Ljava/lang/Object;)Z
.end method

.method abstract buildSupportedFlashModes(Ljava/lang/Object;)Ljava/util/List;
.end method

.method abstract buildSupportedFocusDistanceRange(Ljava/lang/Object;)Landroid/util/Range;
.end method

.method abstract buildSupportedFocusModes(Ljava/lang/Object;)Ljava/util/List;
.end method

.method abstract buildSupportedHDThumbnailSizes(Ljava/lang/Object;)Ljava/util/List;
.end method

.method abstract buildSupportedHdModes(Ljava/lang/Object;)Ljava/util/List;
.end method

.method abstract buildSupportedHighFpsResolutions(Ljava/lang/Object;)Ljava/util/List;
.end method

.method abstract buildSupportedHighPreviewFPSRanges(Ljava/lang/Object;)Ljava/util/List;
.end method

.method abstract buildSupportedHighSpeedSizesAndFPS(Ljava/lang/Object;)Ljava/util/List;
.end method

.method abstract buildSupportedHumanEffectModes(Ljava/lang/Object;)Ljava/util/List;
.end method

.method abstract buildSupportedISOValues(Ljava/lang/Object;)Ljava/util/List;
.end method

.method abstract buildSupportedISPMetaSizesForRaw(Ljava/lang/Object;)Ljava/util/List;
.end method

.method abstract buildSupportedISPMetaSizesForYuv(Ljava/lang/Object;)Ljava/util/List;
.end method

.method abstract buildSupportedLongExposureScene(Ljava/lang/Object;)Ljava/util/List;
.end method

.method abstract buildSupportedLuminanceValues(Ljava/lang/Object;)Ljava/util/List;
.end method

.method abstract buildSupportedMacro(Ljava/lang/Object;)Ljava/util/List;
.end method

.method abstract buildSupportedMagicSkyType(Ljava/lang/Object;)Ljava/util/List;
.end method

.method abstract buildSupportedManualWBRangeValue(Ljava/lang/Object;)Ljava/util/List;
.end method

.method abstract buildSupportedMeteringModes(Ljava/lang/Object;)Ljava/util/List;
.end method

.method abstract buildSupportedPhotoHDRModes(Ljava/lang/Object;)Ljava/util/List;
.end method

.method abstract buildSupportedPictureSizes(Ljava/lang/Object;)Ljava/util/List;
.end method

.method abstract buildSupportedPostViewSizes(Ljava/lang/Object;)Ljava/util/List;
.end method

.method abstract buildSupportedPreviewFPSRanges(Ljava/lang/Object;)Ljava/util/List;
.end method

.method abstract buildSupportedPreviewSizes(Ljava/lang/Object;)Ljava/util/List;
.end method

.method abstract buildSupportedRawPictureSizes(Ljava/lang/Object;)Ljava/util/List;
.end method

.method abstract buildSupportedRawSR(Ljava/lang/Object;)Z
.end method

.method abstract buildSupportedSMVRMetaDatas(Ljava/lang/Object;)[Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;
.end method

.method abstract buildSupportedSTBlurModes(Ljava/lang/Object;)Ljava/util/List;
.end method

.method abstract buildSupportedSTBlurPictureSizes(Ljava/lang/Object;)Ljava/util/List;
.end method

.method abstract buildSupportedScreenFlashModes(Ljava/lang/Object;)Ljava/util/List;
.end method

.method abstract buildSupportedScreenTorchStatus(Ljava/lang/Object;)Ljava/util/List;
.end method

.method abstract buildSupportedShot2Shot(Ljava/lang/Object;)Ljava/util/List;
.end method

.method abstract buildSupportedSingleBlurLevels(Ljava/lang/Object;)Ljava/util/List;
.end method

.method abstract buildSupportedStableSuperNight(Ljava/lang/Object;)Z
.end method

.method abstract buildSupportedSuperDefinition(Ljava/lang/Object;)Z
.end method

.method abstract buildSupportedSuperNightModes(Ljava/lang/Object;)Ljava/util/List;
.end method

.method abstract buildSupportedSuperResolution(Ljava/lang/Object;)Z
.end method

.method abstract buildSupportedThumbnailSizes(Ljava/lang/Object;)Ljava/util/List;
.end method

.method abstract buildSupportedTranssionFilterIds(Ljava/lang/Object;)Ljava/util/List;
.end method

.method abstract buildSupportedTranssionHDR(Ljava/lang/Object;)Ljava/util/List;
.end method

.method abstract buildSupportedVideoEffectIds(Ljava/lang/Object;)Ljava/util/List;
.end method

.method abstract buildSupportedVideoFilterIds(Ljava/lang/Object;)Ljava/util/List;
.end method

.method abstract buildSupportedVideoFrameIds(Ljava/lang/Object;)Ljava/util/List;
.end method

.method abstract buildSupportedVideoHDRModes(Ljava/lang/Object;)Ljava/util/List;
.end method

.method abstract buildSupportedVideoPortraitLevel(Ljava/lang/Object;)Ljava/util/List;
.end method

.method abstract buildSupportedVideoSizes(Ljava/lang/Object;)Ljava/util/List;
.end method

.method abstract buildSupportedVideoSpotLevel(Ljava/lang/Object;)Ljava/util/List;
.end method

.method abstract buildSupportedVsdofLevel(Ljava/lang/Object;)Ljava/util/List;
.end method

.method abstract buildSupportedZoomRatios(Ljava/lang/Object;)Ljava/util/List;
.end method

.method abstract buildVideoPreIspFakeIdAndModes(Ljava/lang/Object;)Ljava/util/List;
.end method

.method abstract buildVideoPreIspSupport(Ljava/lang/Object;)Z
.end method

.method abstract buildYuvCaptureFlipModeSupported(Ljava/lang/Object;)Ljava/util/List;
.end method

.method abstract buildZoom2XRemosaicSupported(Ljava/lang/Object;)Z
.end method

.method public colorLevelSupport()Z
    .registers 1

    .line 1112
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mColorLevelSupport:Z

    return p0
.end method

.method public flashStyleSupport()Z
    .registers 1

    .line 1094
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mFlashStyleSupport:Z

    return p0
.end method

.method public frontDualFlashSupport()Z
    .registers 1

    .line 1089
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mFrontDualFlashSupport:Z

    return p0
.end method

.method public get4cellInOneSize()Ljava/util/List;
    .registers 1

    .line 598
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->m4CellInOneSize:Ljava/util/List;

    return-object p0
.end method

.method public getBaseZoomRatio()F
    .registers 1

    .line 1107
    iget p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mBaseZoomRatio:F

    return p0
.end method

.method public getDualCamCalibrationSize()Landroid/util/Size;
    .registers 1

    .line 765
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mDualCamCalibrationSize:Landroid/util/Size;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public getExposureCompensationStep()Landroid/util/Rational;
    .registers 1

    .line 715
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mExposureCompensationStep:Landroid/util/Rational;

    return-object p0
.end method

.method public getIspVersion()I
    .registers 1

    .line 1150
    iget p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mIspVersion:I

    return p0
.end method

.method public getLogicId()Ljava/lang/String;
    .registers 1

    .line 1079
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mLogicId:Ljava/lang/String;

    return-object p0
.end method

.method public getMaxExposureCompensation()I
    .registers 1

    .line 705
    iget p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mMaxExposureCompensation:I

    return p0
.end method

.method public getMaxNumOfFocusAreas()I
    .registers 1

    .line 560
    iget p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mMaxNumOfFocusAreas:I

    return p0
.end method

.method public getMaxNumOfMeteringAreas()I
    .registers 1

    .line 565
    iget p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mMaxNumOfMeteringAreas:I

    return p0
.end method

.method public getMinExposureCompensation()I
    .registers 1

    .line 710
    iget p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mMinExposureCompensation:I

    return p0
.end method

.method public getPhysicalCameraIds()Ljava/util/Set;
    .registers 1

    .line 1074
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mPhysicalCameraIds:Ljava/util/Set;

    return-object p0
.end method

.method public getPortrait8M2xZoomRatio()I
    .registers 1

    .line 1169
    iget p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mPortrait8M2xZoomRatio:I

    return p0
.end method

.method public getPreIspFakeIdAndModes()Ljava/util/List;
    .registers 1

    .line 1127
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mPreIspFakeIdAndModes:Ljava/util/List;

    return-object p0
.end method

.method public getSensorColorFilterArrange()I
    .registers 1

    .line 924
    iget p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSensorColorFilterArrange:I

    return p0
.end method

.method public getSensorRect()Landroid/graphics/Rect;
    .registers 1

    .line 919
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSensorRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getStereoSensorCropRegion()Landroid/graphics/Rect;
    .registers 1

    .line 760
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mStereoSensorCropRegion:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getSupportFakeDualCamera()Ljava/util/List;
    .registers 3

    .line 812
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 813
    const-string v1, "off"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 814
    iget-boolean v1, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mFakeRAW_RAW_Support:Z

    if-eqz v1, :cond_14

    .line 815
    const-string p0, "raw_raw"

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 816
    :cond_14
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mFakeRAW_YUV_Support:Z

    if-eqz p0, :cond_1d

    .line 817
    const-string p0, "raw_yuv"

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1d
    return-object v0
.end method

.method public getSupportSTBlurLevels()Ljava/util/List;
    .registers 2

    .line 884
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportSingleBlurLevels:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedAWBMode()Ljava/util/List;
    .registers 1

    .line 874
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedAWBModes:Ljava/util/List;

    return-object p0
.end method

.method public getSupportedArcFilterIds()Ljava/util/List;
    .registers 1

    .line 636
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportArcFilterIds:Ljava/util/List;

    return-object p0
.end method

.method public getSupportedAsdModes()Ljava/util/List;
    .registers 2

    .line 661
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportAsdMode:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedAsdVersion()Ljava/util/List;
    .registers 2

    .line 666
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportAsdVersion:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedAutoMacroSwitch()Ljava/util/List;
    .registers 2

    .line 965
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportAutoMacroSwitch:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedDistortionCorrection()Ljava/util/List;
    .registers 2

    .line 904
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedDistortionCorrection:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedDolHdrModes()Ljava/util/List;
    .registers 2

    .line 540
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedStaggerHDRModes:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedExposureTimes()Ljava/util/List;
    .registers 1

    .line 985
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedExposureTimes:Ljava/util/List;

    return-object p0
.end method

.method public getSupportedEyeDetection()Ljava/util/List;
    .registers 2

    .line 955
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportEyeDetection:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedFaceBeautyLevels()Ljava/util/List;
    .registers 2

    .line 588
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportFaceBeautyLevels:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedFaceBeautyModes()Ljava/util/List;
    .registers 2

    .line 583
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportFaceBeautyModes:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedFlashModes()Ljava/util/List;
    .registers 2

    .line 525
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedFlashModes:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedFocusDistanceRange()Landroid/util/Range;
    .registers 1

    .line 1000
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedFocusDistanceRange:Landroid/util/Range;

    return-object p0
.end method

.method public getSupportedFocusModes()Ljava/util/List;
    .registers 2

    .line 545
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedFocusModes:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedHDThumbnailSizes()Ljava/util/List;
    .registers 2

    .line 735
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedHDThumbnailSizes:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedHighFpsResolutions()Ljava/util/List;
    .registers 2

    .line 980
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mHighFpsResolutions:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedHighSpeedFpsRanges()Ljava/util/List;
    .registers 2

    .line 934
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedHighPreviewFPSRange:Ljava/util/List;

    if-eqz v0, :cond_c

    .line 935
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedHighPreviewFPSRange:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_c
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSupportedISOValues()Ljava/util/List;
    .registers 1

    .line 990
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedISOValues:Ljava/util/List;

    return-object p0
.end method

.method public getSupportedISPRawSizes()Ljava/util/List;
    .registers 2

    .line 740
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedISPMetaSizesForRaw:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedLongExposureScene()Ljava/util/List;
    .registers 1

    .line 1140
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedLongExposureScene:Ljava/util/List;

    return-object p0
.end method

.method public getSupportedLuminanceScope()Ljava/util/List;
    .registers 2

    .line 824
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportLuminanceValues:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedMagicSkyType()Ljava/util/List;
    .registers 2

    .line 1069
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportMagicSkyType:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedManualWBRangeValue()Ljava/util/List;
    .registers 1

    .line 755
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportManualWBRangeValue:Ljava/util/List;

    return-object p0
.end method

.method public getSupportedMeteringModes()Ljava/util/List;
    .registers 1

    .line 1005
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedMeteringModes:Ljava/util/List;

    return-object p0
.end method

.method public getSupportedPhotoHDRModes()Ljava/util/List;
    .registers 2

    .line 530
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedPhotoHDRModes:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedPictureSizes()Ljava/util/List;
    .registers 2

    .line 505
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedPictureSizes:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedPostViewSizes()Ljava/util/List;
    .registers 2

    .line 725
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedPostViewSizes:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedPreviewFPSRanges()Ljava/util/List;
    .registers 2

    .line 720
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedPreviewFPSRange:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedPreviewSizes()Ljava/util/List;
    .registers 2

    .line 500
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedPreviewSizes:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedRawPictureSizes()Ljava/util/List;
    .registers 2

    .line 510
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedRawPictureSizes:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedSMVRRequestParams(I)[I
    .registers 7

    .line 942
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSMVRMetaDatas:[Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return-object v0

    .line 946
    :cond_6
    array-length v1, p0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_18

    aget-object v3, p0, v2

    .line 947
    iget v4, v3, Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;->fpsMax:I

    if-ne v4, p1, :cond_15

    .line 948
    invoke-virtual {v3}, Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;->toRequestParams()[I

    move-result-object p0

    return-object p0

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_18
    return-object v0
.end method

.method public getSupportedSTBlurPictureSizes()Ljava/util/List;
    .registers 1

    .line 1164
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedSTBurPictureSizes:Ljava/util/List;

    return-object p0
.end method

.method public getSupportedScreenFlashModes()Ljava/util/List;
    .registers 2

    .line 555
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedScreenFlashModes:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedScreenTorchStatus()Ljava/util/List;
    .registers 2

    .line 1099
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportScreenTorchStatus:Ljava/util/List;

    if-eqz v0, :cond_c

    .line 1100
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportScreenTorchStatus:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_c
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSupportedShot2Shot()Ljava/util/List;
    .registers 2

    .line 829
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportShot2Shot:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedSuperDefinitionType()I
    .registers 1

    .line 676
    iget p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSuperDefinitionType:I

    return p0
.end method

.method public getSupportedSuperNightMode()Ljava/util/List;
    .registers 2

    .line 849
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportSuperNightModes:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedThumbnailSizes()Ljava/util/List;
    .registers 2

    .line 730
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedThumbnailSizes:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedTranssionFilterIds()Ljava/util/List;
    .registers 1

    .line 641
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportTranssionFilterIds:Ljava/util/List;

    return-object p0
.end method

.method public getSupportedTranssionHDR()Ljava/util/List;
    .registers 2

    .line 671
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportTranssionHDR:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedVideoHDRModes()Ljava/util/List;
    .registers 2

    .line 535
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedVideoHDRModes:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedVideoPortraitLevel()Ljava/util/List;
    .registers 2

    .line 970
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportVideoPortraitLevel:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedVideoSizes()Ljava/util/List;
    .registers 2

    .line 520
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedVideoSizes:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedVideoSpotLevel()Ljava/util/List;
    .registers 2

    .line 975
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedVideoSpotLevel:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedVsdofLevel()Ljava/util/List;
    .registers 2

    .line 750
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportVsdofLevel:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedZoomRatios()Ljava/util/List;
    .registers 2

    .line 575
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedZoomRatios:Ljava/util/List;

    if-nez v0, :cond_a

    .line 576
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 578
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedZoomRatios:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getVideoSprd2kSupport()Z
    .registers 1

    .line 1145
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportSprdVideo2k:Z

    return p0
.end method

.method public is360HDRModeSupport()Z
    .registers 1

    .line 1131
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->m360HDRModeSupport:Z

    return p0
.end method

.method public isAiShutterSupport()Z
    .registers 1

    .line 1010
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportAiShutter:Z

    return p0
.end method

.method public isAnimalEyeDetection()Z
    .registers 1

    .line 960
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mAnimalEyeDetectSupport:Z

    return p0
.end method

.method public isAutoExposureLockSupported()Z
    .registers 1

    .line 700
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mIsAutoExposureLockSupported:Z

    return p0
.end method

.method public isBgServiceModeSupport()Z
    .registers 1

    .line 889
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mIsBGServiceModeSupport:Z

    return p0
.end method

.method public isCameraFoldedFlagSupport()Z
    .registers 1

    .line 607
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mCameraFoldedFlagSupport:Z

    return p0
.end method

.method public isDspSupport()Z
    .registers 1

    .line 612
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mDspSupport:Z

    return p0
.end method

.method public isDynamic10BitEncodeSupport()Z
    .registers 1

    .line 1179
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mIsDynamic10BitEncodeSupport:Z

    return p0
.end method

.method public isFakeDualLensSupport()Z
    .registers 2

    .line 802
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mFakeRAW_RAW_Support:Z

    if-nez v0, :cond_b

    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mFakeRAW_YUV_Support:Z

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method

.method public isHLG10Support()Z
    .registers 2

    .line 1184
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraCapabilities;->isHLGProfileSupport()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraCapabilities;->isDynamic10BitEncodeSupport()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public isHLGProfileSupport()Z
    .registers 1

    .line 1174
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mIsHLGProfileSupport:Z

    return p0
.end method

.method public isHdr10PlusSupport()Z
    .registers 1

    .line 1189
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportHdr10Plus:Z

    return p0
.end method

.method public isHighSpeedVideoSupport()Z
    .registers 1

    .line 929
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mHighSpeedVideoSupport:Z

    return p0
.end method

.method public isHumanDetectionSupport()Z
    .registers 1

    .line 1025
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mHumanDetectSupport:Z

    return p0
.end method

.method public isLogicalCameraSupport()Z
    .registers 1

    .line 797
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mLogicalCameraSupport:Z

    return p0
.end method

.method public isMacroTorchSupport()Z
    .registers 1

    .line 617
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mMacroTorchSupport:Z

    return p0
.end method

.method public isMicroPanTiltSupport()Z
    .registers 1

    .line 1035
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mMicroPanTiltSupport:Z

    return p0
.end method

.method public isMultiDualCamTeleSupport()Z
    .registers 1

    .line 793
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mMultiDualCamTeleSupport:Z

    return p0
.end method

.method public isNightHawkModeSupport()Z
    .registers 1

    .line 1015
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mIsSupportNightHawkMode:Z

    return p0
.end method

.method public isOffLineSessionSupport()Z
    .registers 1

    .line 894
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mOffLineSessionSupport:Z

    return p0
.end method

.method public isOfflineJniSupport()Z
    .registers 1

    .line 899
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mOfflineJniSupport:Z

    return p0
.end method

.method public isPeriscopeLensSupport()Z
    .registers 1

    .line 1059
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mPeriscopeLensSupport:Z

    return p0
.end method

.method public isPortraitFlareSupport()Z
    .registers 1

    .line 1136
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportPortraitFlare:Z

    return p0
.end method

.method public isPortraitModeEnhanceSupport()Z
    .registers 1

    .line 1020
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mIsSupportPortraitEnhance:Z

    return p0
.end method

.method public isSatModeSupport()Z
    .registers 1

    .line 1053
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mIsSatModeSupport:Z

    return p0
.end method

.method public isSupportContinuousVideoFocus()Z
    .registers 1

    .line 550
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedContinuousVideoFocus:Z

    return p0
.end method

.method public isSupportMicroCamera()Z
    .registers 1

    .line 1117
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mIsSupportMicroCamera:Z

    return p0
.end method

.method public isSupported4Cell()Z
    .registers 1

    .line 685
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupport4Cell:Z

    return p0
.end method

.method public isSupportedAIRawLite()Z
    .registers 1

    .line 869
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mIsSupportAiRawLite:Z

    return p0
.end method

.method public isSupportedAIRemosaic()Z
    .registers 1

    .line 839
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mIsSupportedAIRemosaic:Z

    return p0
.end method

.method public isSupportedFastSuperNightMode()Z
    .registers 6

    .line 859
    invoke-static {}, Lcom/transsion/camera/utils/MemoryUtils;->judgeMemory()I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    if-gt v0, v1, :cond_13

    .line 861
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->getSuperNightLiteNotSupportFor6G()Z

    move-result v0

    if-eqz v0, :cond_13

    return v2

    .line 864
    :cond_13
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mIsSupportFastSuperNight:Z

    if-eqz p0, :cond_23

    invoke-static {}, Lcom/transsion/camera/utils/MemoryUtils;->getTotalMemory()J

    move-result-wide v0

    const-wide/16 v3, 0xfa0

    cmp-long p0, v0, v3

    if-lez p0, :cond_23

    const/4 p0, 0x1

    return p0

    :cond_23
    return v2
.end method

.method public isSupportedRawSR()Z
    .registers 2

    .line 690
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportRawSR:Z

    if-eqz p0, :cond_16

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mRawSRMemLimit:Z

    if-eqz p0, :cond_14

    invoke-static {}, Lcom/transsion/camera/utils/CameraUtil;->getRam()I

    move-result p0

    const/16 v0, 0x67

    if-le p0, v0, :cond_16

    :cond_14
    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public isSupportedStableSuperNightMode()Z
    .registers 1

    .line 854
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mIsSupportStableSuperNight:Z

    return p0
.end method

.method public isSupportedSuperDefinition()Z
    .registers 1

    .line 680
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportSuperDefinition:Z

    return p0
.end method

.method public isSupportedSuperResolution()Z
    .registers 1

    .line 695
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportSuperResolution:Z

    return p0
.end method

.method public isSupportedZoom2xRemosaic()Z
    .registers 1

    .line 844
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mIsSupportedZoom2xRemosaic:Z

    return p0
.end method

.method public isTeleCameraSupport()Z
    .registers 1

    .line 783
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mTeleCameraSupport:Z

    return p0
.end method

.method public isVideoCameraSupport()Z
    .registers 1

    .line 603
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mVideoCameraSupport:Z

    return p0
.end method

.method public isWideCameraSupport()Z
    .registers 1

    .line 778
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mWideCameraSupport:Z

    return p0
.end method

.method public isZoomEisSupport()Z
    .registers 1

    .line 1155
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportZoomEis:Z

    return p0
.end method

.method public superFlashSupport()Z
    .registers 1

    .line 1084
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSuperFlashSupport:Z

    return p0
.end method

.method public usePreAECaptureFlow()Z
    .registers 1

    .line 1064
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mUsePreAECaptureFlow:Z

    return p0
.end method

.method abstract usePreAECaptureFlow(Ljava/lang/Object;)Z
.end method
