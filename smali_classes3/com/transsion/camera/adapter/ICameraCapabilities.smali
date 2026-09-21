.class public interface abstract Lcom/transsion/camera/adapter/ICameraCapabilities;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract colorLevelSupport()Z
.end method

.method public abstract flashStyleSupport()Z
.end method

.method public abstract frontDualFlashSupport()Z
.end method

.method public abstract get4cellInOneSize()Ljava/util/List;
.end method

.method public abstract getCaptureThumbnailSource(ZJZ)I
.end method

.method public abstract getCreateSessionThumbnailSource()I
.end method

.method public abstract getExposureCompensationStep()Landroid/util/Rational;
.end method

.method public abstract getIspVersion()I
.end method

.method public abstract getMaxExposureCompensation()I
.end method

.method public abstract getMaxNumOfFocusAreas()I
.end method

.method public abstract getMaxNumOfMeteringAreas()I
.end method

.method public abstract getMinExposureCompensation()I
.end method

.method public abstract getPhysicalCameraIds()Ljava/util/Set;
.end method

.method public abstract getPortrait8M2xZoomRatio()I
.end method

.method public abstract getPreIspFakeIdAndModes()Ljava/util/List;
.end method

.method public abstract getSensorRect()Landroid/graphics/Rect;
.end method

.method public abstract getStereoSensorCropRegion()Landroid/graphics/Rect;
.end method

.method public abstract getSupportFakeDualCamera()Ljava/util/List;
.end method

.method public abstract getSupportSTBlurLevels()Ljava/util/List;
.end method

.method public abstract getSupportedAWBMode()Ljava/util/List;
.end method

.method public abstract getSupportedArcFilterIds()Ljava/util/List;
.end method

.method public abstract getSupportedAsdModes()Ljava/util/List;
.end method

.method public abstract getSupportedAsdVersion()Ljava/util/List;
.end method

.method public abstract getSupportedAutoMacroSwitch()Ljava/util/List;
.end method

.method public abstract getSupportedDistortionCorrection()Ljava/util/List;
.end method

.method public abstract getSupportedDolHdrModes()Ljava/util/List;
.end method

.method public abstract getSupportedExposureTimes()Ljava/util/List;
.end method

.method public abstract getSupportedEyeDetection()Ljava/util/List;
.end method

.method public abstract getSupportedFaceBeautyLevels()Ljava/util/List;
.end method

.method public abstract getSupportedFaceBeautyModes()Ljava/util/List;
.end method

.method public abstract getSupportedFlashModes()Ljava/util/List;
.end method

.method public abstract getSupportedFocusDistanceRange()Landroid/util/Range;
.end method

.method public abstract getSupportedFocusModes()Ljava/util/List;
.end method

.method public abstract getSupportedHDThumbnailSizes()Ljava/util/List;
.end method

.method public abstract getSupportedHighFpsResolutions()Ljava/util/List;
.end method

.method public abstract getSupportedHighSpeedFpsRanges()Ljava/util/List;
.end method

.method public abstract getSupportedHighSpeedSizesAndFPS()Ljava/util/List;
.end method

.method public abstract getSupportedISOValues()Ljava/util/List;
.end method

.method public abstract getSupportedISPRawSizes()Ljava/util/List;
.end method

.method public abstract getSupportedLongExposureScene()Ljava/util/List;
.end method

.method public abstract getSupportedLuminanceScope()Ljava/util/List;
.end method

.method public abstract getSupportedMagicSkyType()Ljava/util/List;
.end method

.method public abstract getSupportedManualWBRangeValue()Ljava/util/List;
.end method

.method public abstract getSupportedMeteringModes()Ljava/util/List;
.end method

.method public abstract getSupportedPhotoHDRModes()Ljava/util/List;
.end method

.method public abstract getSupportedPictureSizes()Ljava/util/List;
.end method

.method public abstract getSupportedPostViewSizes()Ljava/util/List;
.end method

.method public abstract getSupportedPreviewSizes()Ljava/util/List;
.end method

.method public abstract getSupportedRawPictureSizes()Ljava/util/List;
.end method

.method public abstract getSupportedSMVRRequestParams(I)[I
.end method

.method public abstract getSupportedSTBlurPictureSizes()Ljava/util/List;
.end method

.method public abstract getSupportedScreenFlashModes()Ljava/util/List;
.end method

.method public abstract getSupportedScreenTorchStatus()Ljava/util/List;
.end method

.method public abstract getSupportedShot2Shot()Ljava/util/List;
.end method

.method public abstract getSupportedSuperDefinitionType()I
.end method

.method public abstract getSupportedSuperNightMode()Ljava/util/List;
.end method

.method public abstract getSupportedThumbnailSizes()Ljava/util/List;
.end method

.method public abstract getSupportedTranssionFilterIds()Ljava/util/List;
.end method

.method public abstract getSupportedTranssionHDR()Ljava/util/List;
.end method

.method public abstract getSupportedVideoHDRModes()Ljava/util/List;
.end method

.method public abstract getSupportedVideoPortraitLevel()Ljava/util/List;
.end method

.method public abstract getSupportedVideoSizes()Ljava/util/List;
.end method

.method public abstract getSupportedVideoSpotLevel()Ljava/util/List;
.end method

.method public abstract getSupportedVsdofLevel()Ljava/util/List;
.end method

.method public abstract getSupportedZoomRatios()Ljava/util/List;
.end method

.method public abstract getVideoSprd2kSupport()Z
.end method

.method public abstract is360HDRModeSupport()Z
.end method

.method public abstract isAiShutterSupport()Z
.end method

.method public abstract isAnimalEyeDetection()Z
.end method

.method public abstract isAntiVideoSupport()Z
.end method

.method public abstract isAutoExposureLockSupported()Z
.end method

.method public abstract isAutoWaterMarkSupport()Z
.end method

.method public abstract isDspSupport()Z
.end method

.method public abstract isEditWaterMarkSupport()Z
.end method

.method public abstract isFastThumbSupport()Z
.end method

.method public abstract isFusionSupport()Z
.end method

.method public abstract isGenderAttributeValueSupport()Z
.end method

.method public abstract isGoldWaterMarkSupport()Z
.end method

.method public abstract isHLG10Support()Z
.end method

.method public abstract isHdr10PlusSupport()Z
.end method

.method public abstract isHighFpsSupport()Z
.end method

.method public abstract isHighSpeedVideoSupport()Z
.end method

.method public abstract isHumanDetectionSupport()Z
.end method

.method public abstract isMacroTorchSupport()Z
.end method

.method public abstract isNightHawkModeSupport()Z
.end method

.method public abstract isPortraitFlareSupport()Z
.end method

.method public abstract isPortraitModeEnhanceSupport()Z
.end method

.method public abstract isSMVRModeSupport()Z
.end method

.method public abstract isSatModeSupport()Z
.end method

.method public abstract isSuperAntiVideoSupport()Z
.end method

.method public abstract isSupportContinuousVideoFocus()Z
.end method

.method public abstract isSupportHighLight()Z
.end method

.method public abstract isSupported4Cell()Z
.end method

.method public abstract isSupportedAIRawLite()Z
.end method

.method public abstract isSupportedAIRemosaic()Z
.end method

.method public abstract isSupportedFastSuperNightMode()Z
.end method

.method public abstract isSupportedRawSR()Z
.end method

.method public abstract isSupportedStableSuperNightMode()Z
.end method

.method public abstract isSupportedSuperDefinition()Z
.end method

.method public abstract isSupportedSuperResolution()Z
.end method

.method public abstract isSupportedZoom2xRemosaic()Z
.end method

.method public abstract isThumbnailPostViewSupport()Z
.end method

.method public abstract isVideoCameraSupport()Z
.end method

.method public abstract isVideoPortraitSupport()Z
.end method

.method public abstract isVideoSuperNightSupport()Z
.end method

.method public abstract isVideoSuperNightYUVSupport()Z
.end method

.method public abstract isVideoWaterMarkSupport()Z
.end method

.method public abstract isWideCameraSupport()Z
.end method

.method public abstract isZSLSupport()Z
.end method

.method public abstract isZoomEisSupport()Z
.end method

.method public abstract needFlipForVideoMirror()Z
.end method

.method public abstract shouldLimitZoomInSlowMotion()Z
.end method

.method public abstract superFlashSupport()Z
.end method
