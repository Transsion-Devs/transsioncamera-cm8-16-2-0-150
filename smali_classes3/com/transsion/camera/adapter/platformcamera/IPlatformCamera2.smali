.class public interface abstract Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2$DXOScene;
    }
.end annotation


# virtual methods
.method public abstract aeStateFlashRequired(Landroid/hardware/camera2/CaptureResult;Ljava/lang/String;I)Z
.end method

.method public abstract afSearchStateAvailable()Z
.end method

.method public abstract checkAIRawLiteMotionDetection(Landroid/hardware/camera2/CaptureResult;)[I
.end method

.method public abstract checkAdrcGainValueResult(Landroid/hardware/camera2/CaptureResult;)[F
.end method

.method public abstract checkAeDrvBtyResult(Landroid/hardware/camera2/CaptureResult;)[I
.end method

.method public abstract checkAeDrvDtyResult(Landroid/hardware/camera2/CaptureResult;)[I
.end method

.method public abstract checkAeeExpoInfoResult(Landroid/hardware/camera2/CaptureResult;)[I
.end method

.method public abstract checkAfSearchStateResult(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Integer;
.end method

.method public abstract checkAiShutterResult(Landroid/hardware/camera2/CaptureResult;)[I
.end method

.method public abstract checkAnimalEyeDetectionResult(Landroid/hardware/camera2/CaptureResult;)[I
.end method

.method public abstract checkAsdResult(Landroid/hardware/camera2/CaptureResult;)[I
.end method

.method public abstract checkAutoMacroSwitchResult(Landroid/hardware/camera2/CaptureResult;)[I
.end method

.method public abstract checkBrightnessResult(Landroid/hardware/camera2/CaptureResult;)[I
.end method

.method public abstract checkDualLensResult(Landroid/hardware/camera2/CaptureResult;)[I
.end method

.method public checkEVList(Landroid/hardware/camera2/CaptureResult;)[I
    .registers 2

    const/4 p0, 0x0

    .line 457
    new-array p0, p0, [I

    return-object p0
.end method

.method public checkEvAfChangeResult(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Integer;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract checkEyeDetectionResult(Landroid/hardware/camera2/CaptureResult;)[I
.end method

.method public abstract checkFaceAttributeInfo(Landroid/hardware/camera2/CaptureResult;)[I
.end method

.method public abstract checkHDRAeExpoInfoResult(Landroid/hardware/camera2/CaptureResult;)[I
.end method

.method public abstract checkHumanDetectResult(Landroid/hardware/camera2/CaptureResult;)[I
.end method

.method public abstract checkInSensorZoomMode(Landroid/hardware/camera2/CaptureResult;)[I
.end method

.method public abstract checkLlsInfoResult(Landroid/hardware/camera2/CaptureResult;)[I
.end method

.method public abstract checkLongExposureResult(Landroid/hardware/camera2/CaptureResult;)[I
.end method

.method public abstract checkMFNRAeExpoInfoResult(Landroid/hardware/camera2/CaptureResult;)[I
.end method

.method public abstract checkMagicSkyDetection(Landroid/hardware/camera2/CaptureResult;)Z
.end method

.method public abstract checkMoonDetectionResult(Landroid/hardware/camera2/CaptureResult;)[I
.end method

.method public checkMorHdsSceneResult(Landroid/hardware/camera2/CaptureResult;)[I
    .registers 2

    const/4 p0, 0x0

    .line 478
    new-array p0, p0, [I

    return-object p0
.end method

.method public abstract checkNightAeExpoInfoResult(Landroid/hardware/camera2/CaptureResult;)[I
.end method

.method public abstract checkNightHawkResult(Landroid/hardware/camera2/CaptureResult;)[I
.end method

.method public checkNightResult(Landroid/hardware/camera2/CaptureResult;)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public checkOfflineSessionSupportResult(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Integer;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract checkPortraitFlareResult(Landroid/hardware/camera2/CaptureResult;)[F
.end method

.method public checkPreAECaptureOnStarted(Landroid/hardware/camera2/CaptureResult;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public abstract checkScreenFlashFireResult(Landroid/hardware/camera2/CaptureResult;)Z
.end method

.method public abstract checkShot2ShotResult(Landroid/hardware/camera2/CaptureResult;)[I
.end method

.method public abstract checkShutterDone(Landroid/hardware/camera2/CaptureResult;)Z
.end method

.method public abstract checkStarSearchStatus(Landroid/hardware/camera2/CaptureResult;)[I
.end method

.method public abstract checkStreamIdResult(Landroid/hardware/camera2/CaptureResult;)[I
.end method

.method public abstract checkSuperNightLiteResult(Landroid/hardware/camera2/CaptureResult;)[I
.end method

.method public abstract checkTranssionFaceInfo(Landroid/hardware/camera2/CaptureResult;)[Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;
.end method

.method public abstract checkTripodSuperNightCountdown(Landroid/hardware/camera2/CaptureResult;)[I
.end method

.method public abstract checkZoomRatio(Landroid/hardware/camera2/CaptureResult;)F
.end method

.method public abstract colorLevelSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract enableBWConvert(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract enableBWPortrait(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract enableBgServiceMode(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract enableContinuousShot(Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract enableFace3A(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract enableFakeDualLensMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract enableIspTuningData(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract enableMirror(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract enableModeUltrazoom(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract enableQuickPreview(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract enableRTDofMode(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract enableStreamFlip(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract enableTranssionPlugin(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract enableVideoInterpolation(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract enableVideoMirror(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract flashStyleSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public forceUpdateRequestFlashMode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Z)[Ljava/lang/Integer;
    .registers 8

    .line 1381
    filled-new-array {p5, p6}, [Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public abstract frontDualFlashSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract get4cellInOneSize(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
.end method

.method public abstract getAEState(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Integer;
.end method

.method public abstract getAntiFaceInfoRect(Landroid/hardware/camera2/CaptureResult;)[I
.end method

.method public abstract getAntiVideoMode(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Integer;
.end method

.method public abstract getAsdVersion()I
.end method

.method public abstract getBaseZoomRatio()F
.end method

.method public abstract getBestMomentDetectBanding(Landroid/hardware/camera2/CaptureResult;)I
.end method

.method public abstract getBestMomentDetectResult(Landroid/hardware/camera2/CaptureResult;)I
.end method

.method public abstract getCCTValue(Landroid/hardware/camera2/CaptureResult;)I
.end method

.method public abstract getCaptureThumbnailSource(ZJZ)I
.end method

.method public getCreateSessionThumbnailSource()I
    .registers 1

    const/4 p0, 0x2

    return p0
.end method

.method public abstract getCusDeferRequestMode(Landroid/hardware/camera2/CaptureResult;)[I
.end method

.method public abstract getFaceFeatureAdditionalResult(Landroid/hardware/camera2/CaptureResult;)[I
.end method

.method public abstract getFlickerDetectBanding(Landroid/hardware/camera2/CaptureResult;)I
.end method

.method public abstract getFlickerSensorData(Landroid/hardware/camera2/CaptureResult;)[F
.end method

.method public abstract getFovCropRegion(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/graphics/Rect;
.end method

.method public abstract getFovWideCropRegion(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/graphics/Rect;
.end method

.method public abstract getFovWideCropRegion60(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/graphics/Rect;
.end method

.method public getGenderAttributeAndRace(Landroid/hardware/camera2/CaptureResult;)[I
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getHeavyCapturingBV()I
.end method

.method public abstract getHighFpsResolutions(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
.end method

.method public abstract getHumanBox(Landroid/hardware/camera2/CaptureResult;)[I
.end method

.method public abstract getIspVersion()I
.end method

.method public getJpegMaxSize()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getLogicId(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/lang/String;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getMultiCameraZoomSteps(Landroid/hardware/camera2/CameraCharacteristics;)[F
.end method

.method public getOfflineConfigSize()Landroid/util/Size;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getOfflineFacing()I
    .registers 1

    const/4 p0, -0x1

    return p0
.end method

.method public getOfflineOpMode(ZZ)I
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public getPortrait8M2xZoomRatio(Landroid/hardware/camera2/CameraCharacteristics;)I
    .registers 2

    const/16 p0, 0x4e20

    return p0
.end method

.method public abstract getPortrait8MSize(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
.end method

.method public abstract getPreIspSupportIdsAndModes(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
.end method

.method public getSensorHighSize(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .registers 2

    .line 776
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public abstract getSlimBodyFeatureSize(Landroid/hardware/camera2/CameraCharacteristics;)I
.end method

.method public abstract getStereoSensorCropRegion(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/graphics/Rect;
.end method

.method public abstract getSuitableVideoFrameRange(Ljava/util/List;I)Landroid/util/Range;
.end method

.method public getSuperDefinitionType(Landroid/hardware/camera2/CameraCharacteristics;)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public abstract getSupportLogicalCameraMode()[I
.end method

.method public abstract getSupportSMVRModeMetaData(Landroid/hardware/camera2/CameraCharacteristics;)[Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;
.end method

.method public abstract getSupportSTBlurModes(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
.end method

.method public abstract getSupportSingleBlurLevels(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
.end method

.method public getSupportSprdVideo2k()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public abstract getSupportedArcFilterIds(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
.end method

.method public abstract getSupportedAsdMode(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
.end method

.method public abstract getSupportedAsdVersion(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
.end method

.method public abstract getSupportedAutoMacroSwitch(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
.end method

.method public getSupportedContrastValues(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .registers 2

    .line 955
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public abstract getSupportedDistortionCorrection(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
.end method

.method public abstract getSupportedDolHdrModes(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
.end method

.method public abstract getSupportedDualCamCalibSize(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/util/Size;
.end method

.method public abstract getSupportedDualCamPictureSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
.end method

.method public abstract getSupportedEyeDetection(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
.end method

.method public abstract getSupportedFaceBeautyFeatures(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
.end method

.method public abstract getSupportedFaceBeautyFeaturesLevelScope(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
.end method

.method public abstract getSupportedFaceBeautyLevels(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
.end method

.method public abstract getSupportedFaceBeautyModes(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
.end method

.method public abstract getSupportedHDSize(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
.end method

.method public abstract getSupportedHdModes(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
.end method

.method public abstract getSupportedHumanEffectModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
.end method

.method public abstract getSupportedISOValues(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
.end method

.method public abstract getSupportedISPMetaSizesForRaw(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
.end method

.method public abstract getSupportedISPMetaSizesForYuv(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
.end method

.method public abstract getSupportedLongExposureScene(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
.end method

.method public abstract getSupportedLuminanceValues(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
.end method

.method public abstract getSupportedMagicSkyType(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
.end method

.method public abstract getSupportedManualWBRangeValue(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
.end method

.method public abstract getSupportedMeteringModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
.end method

.method public abstract getSupportedPhotoHdrModes(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
.end method

.method public getSupportedPictureSizes(Ljava/util/List;Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .registers 3

    return-object p1
.end method

.method public abstract getSupportedScreenFlashModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
.end method

.method public abstract getSupportedScreenTorchStatus(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
.end method

.method public abstract getSupportedShot2Shot(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
.end method

.method public abstract getSupportedSuperNightModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
.end method

.method public abstract getSupportedTranFaceDetectMode(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
.end method

.method public abstract getSupportedTranssionFilterIds(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
.end method

.method public abstract getSupportedTranssionHDR(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
.end method

.method public abstract getSupportedVideoEffectIds(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
.end method

.method public abstract getSupportedVideoFilterIds(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
.end method

.method public abstract getSupportedVideoFrameIds(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
.end method

.method public abstract getSupportedVideoHdrModes(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
.end method

.method public abstract getSupportedVideoPortraitLevel(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
.end method

.method public abstract getSupportedVideoSpotLevel(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
.end method

.method public abstract getSupportedVsdofLevel(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
.end method

.method public abstract getSupportedYuvCaptureFlipMode(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
.end method

.method public getTintValue(Landroid/hardware/camera2/CaptureResult;)I
    .registers 2

    const/16 p0, -0x3e8

    return p0
.end method

.method public getTranssionMaxSuperJpegSize()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public abstract getZoom2xRemosaicEnabled()Z
.end method

.method public abstract initFirst(Landroid/hardware/camera2/CameraCharacteristics;)V
.end method

.method public initOffline()V
    .registers 1

    return-void
.end method

.method public abstract initSecond(Landroid/hardware/camera2/CameraCharacteristics;)V
.end method

.method public abstract is360HDRModeSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract is4cell(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isAnimalEyeDetectSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isAntiVideoSupport()Z
.end method

.method public abstract isAutoWaterMarkSupport()Z
.end method

.method public abstract isBGServiceModeSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isBWPortraitSupport()Z
.end method

.method public abstract isCameraFoldedFlagSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isCaptureCoverSupport()Z
.end method

.method public isDisplayP3Support()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public abstract isDspSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public isDynamicRangeSupportTenBitEncode(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public abstract isEditWatermarkSupport()Z
.end method

.method public abstract isFakeRAW_RAWCameraSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isFakeRAW_YUVCameraSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public isFastThumbSupport()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public abstract isFlashFacadeOn()Z
.end method

.method public abstract isFusionSupport()Z
.end method

.method public abstract isGenderAttributeValueSupport()Z
.end method

.method public abstract isGoldWaterMarkSupport()Z
.end method

.method public isHLGProfileSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public abstract isHeavyCapturing()Z
.end method

.method public abstract isHighFpsSupport()Z
.end method

.method public abstract isISZSupport()Z
.end method

.method public abstract isLogicalCameraSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isLowLightScene(Landroid/hardware/camera2/CaptureResult;I)Z
.end method

.method public abstract isMTKCaptureFlow()Z
.end method

.method public abstract isMacroTorchSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isMicroPanTiltSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isMultiDualCamLogicalSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isMultiDualCamTeleCamSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isNeedRestrictExposureTime()Z
.end method

.method public abstract isOISSupport()Z
.end method

.method public isOffLineSessionSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public isOfflineInitSuccess()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isOfflineJniSupport()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public abstract isPeriscopeLensSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isPortraitModeEnhanceSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public isQcomCaptureFlow()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public abstract isSMVRModeSupport()Z
.end method

.method public abstract isSatModeSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isScreenFlashFireSupport()Z
.end method

.method public abstract isStreamFlip()Z
.end method

.method public abstract isSuperAntiVideoSupport()Z
.end method

.method public isSupportContinuousVideoFocus()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public abstract isSupportHDRForSuperNight()Z
.end method

.method public abstract isSupportHdr10Plus(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public isSupportHighLight()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public abstract isSupportMicroCamera(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isSupportMultichannelFlow(Ljava/lang/String;)Z
.end method

.method public abstract isSupportRawSR(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isSupportSlimBodyMode(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isSupportedAIRemosaic(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isSupportedAiRawLite()Z
.end method

.method public abstract isSupportedAiShutter(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isSupportedFastSuperNightMode(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isSupportedHumanDetection(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isSupportedMegSuperNight()Z
.end method

.method public abstract isSupportedNightHawkMode(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isSupportedPortraitFlare(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isSupportedStableSuperNight(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isSupportedSuperDefinition(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isSupportedSuperResolution(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isSupportedZoom2XRemosaic(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isSupportedZoomEis(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isTeleCameraSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isThumbnailPostViewSupport()Z
.end method

.method public abstract isVideoCameraSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isVideoPortraitSupport()Z
.end method

.method public abstract isVideoPreIspSupport()Z
.end method

.method public abstract isVideoSuperNightSupport()Z
.end method

.method public abstract isVideoSuperNightYUVSupport()Z
.end method

.method public abstract isVideoWaterMarkSupport()Z
.end method

.method public abstract isWideCameraSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public isZSLSupport()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public needFastThumbSurface(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const/4 p0, 0x0

    return p0
.end method

.method public needFlipForVideoMirror()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public abstract needThumbnailSurface(I)Z
.end method

.method public abstract needTriggerPreCapture(Landroid/hardware/camera2/CaptureResult;Ljava/lang/String;II)Z
.end method

.method public needTurnHDROff()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public needUpdateSceneForPortrait()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public offlineJniMetadata(Ljava/lang/Object;ZZ)V
    .registers 4

    return-void
.end method

.method public offlineJniProcess()V
    .registers 1

    return-void
.end method

.method public offlineUpdateOpMode(II)V
    .registers 3

    return-void
.end method

.method public onCaptureFailed(I)V
    .registers 2

    return-void
.end method

.method public onCaptureStarted(IILjava/lang/String;I[Landroid/util/Size;ZZLjava/util/List;Z)V
    .registers 10

    .line 0
    return-void
.end method

.method public onCaptureStarted(JI)V
    .registers 4

    .line 0
    return-void
.end method

.method public abstract requestCancelFocus(Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public restartOffine()I
    .registers 1

    const/4 p0, -0x1

    return p0
.end method

.method public abstract set360VideoHdrInitMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract set360VideoHdrMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setAIRawLiteMotionDetection(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setAbeHdrCheckMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setAbeHdrMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public setActivityOrientation(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    return-void
.end method

.method public abstract setAdrcGainValue(FLandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setAeIspGain(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public setAecCameraId(Ljava/lang/Integer;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    return-void
.end method

.method public setAecFrameAdrcGain(FLandroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    return-void
.end method

.method public setAecFrameControlLuxIndex(FLandroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    return-void
.end method

.method public setAecFrameDarkBoostGain(FLandroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    return-void
.end method

.method public setAecSensitivity([FLandroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    return-void
.end method

.method public abstract setAeeExpoInfoResult([ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setAfFfMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setAiMoonMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setAiShutterMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setAiShutterMorpho(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setAirawSN2SRMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setAnimalEyeDetection(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setAntiVideoMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setAppMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setArcFilterId(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setArdcGain(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setAsdInfo(Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setAsdMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setAsdVersion(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setAutoMacroSwitch(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setAutoMacroSwitchSetting(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setAutoWaterMarkMode(Ljava/lang/String;ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public setAwbDecisionAfterTC([FLandroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    return-void
.end method

.method public setAwbWarmstartGain([FLandroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    return-void
.end method

.method public abstract setBMCustomZslBufSize(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setBMDebandingMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setBMLowLightMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setBestMomentDetectMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setBestMomentRawHDRMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setBgImageReaderId(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public setCaptureBurstNumber(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    return-void
.end method

.method public abstract setCaptureCustomTuning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2$DXOScene;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setCaptureISPFrameCount(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setCaptureISPFrameIndex(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setCaptureISPTuningIndex(JLandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setCaptureISPTunning(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setCaptureTag(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setCaptureTaskInfo([ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setCaptureTime(JLandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setCaptureZSLTimestamp(JLandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setCelebritySceneMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setColorLevelValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public setContinuousCapture(Z)V
    .registers 2

    return-void
.end method

.method public abstract setCusIspAsd([ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setDenoiseMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setDistortionCorrection(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setDistortionCorrectionPreview(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setDxoCountry(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setDxoSceneDetectionMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public setEVList([ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    return-void
.end method

.method public abstract setExifModeInfo(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setExternalIspMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setEyeDetection(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setFaceAttributeValue([ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setFaceBeautyFeaturesLevel([ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setFaceBeautyLevel(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setFaceBeautyMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setFaceProportion(FLandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public setFeature2Mode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    return-void
.end method

.method public abstract setFlareCaptureEnable(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setFlashFacade(Ljava/lang/String;)V
.end method

.method public abstract setFlashSnapAutoCaptureMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setFlashStyle(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setFocalLength(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setFrontDualFlashColorTemp(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setFrontDualFlashStrengthMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setFusionMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setGenderAttributeValue(Ljava/util/List;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setGoldWaterMarkModeType(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setGoldWaterMarkPictureSize([ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setGroupCaptureEnable(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setHDRAeExpoInfoResult([ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setHalBmLowLightMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setHdMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setHdr10PlusMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setHeavyCapturing(Z)V
.end method

.method public abstract setHeavyCapturingBV(I)V
.end method

.method public abstract setHighFpsMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public setHighLight(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    return-void
.end method

.method public abstract setHumanDetectInfo([ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setHumanDetection(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setHumanEffectMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setISOParameter(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setImageStyleId(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public setInSensorZoomEnable(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    return-void
.end method

.method public abstract setIncreaseFrequency(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public setInsensorScene(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    return-void
.end method

.method public abstract setIs24HourFormat(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public setIsoAndExposureTime(JILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 5

    return-void
.end method

.method public abstract setLedFlashState(Z)V
.end method

.method public abstract setLensCorrectionMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public setLivePhotoMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    return-void
.end method

.method public setLiveResultMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    return-void
.end method

.method public abstract setLongExposureCaptureState(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setLongExposureScene(Ljava/lang/String;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public setLongPressBurst(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    return-void
.end method

.method public abstract setLowLightMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setLuminanceValue(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setMFNRAeExpoInfoResult([ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setMTKProcessRawEnable(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setMacroLampValue(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setMagicSkyMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setMagicSkyResult(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setMagicSkyType(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public setManualAWBMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    return-void
.end method

.method public abstract setManualAWBValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setMeteringMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setMiddleNightMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setMoonDetectionMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setMoonDetectionPitch(FLandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setMotionCaptureMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setMultiCropRegion([ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setNightAeExpoInfoResult([ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setNightHawkMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setNightMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setP2CropRegionCustomize([ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setP2RawCropResizeEnable(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setP2ResizerSizeCustomize([ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setPDAF(Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setPMasterFlareLocation([FLandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setPMasterFlareMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setPMasterFlarePreviewSize([Landroid/util/Size;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setPhotoHdrMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setPipDeviceValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setPlainLocationText(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setPortrait8MSize(ILandroid/util/Size;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setPortraitMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setPortraitModeEnhanceMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setPreviewGoldWaterMarkPictureSize([ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setProWatermarkStyle(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setProcessRawMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setQuadSwitchValue(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setRaw10ConvertFMT(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setRawSuperResolutionMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setRealZoomRatio(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public setRecordingOrientation(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    return-void
.end method

.method public abstract setRemosaicMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setRingFlashLight(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setSMVRMode([ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public setSTBlurLightStrength(FLandroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    return-void
.end method

.method public abstract setSTBlurMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public setSTBlurReaRatio(FLandroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    return-void
.end method

.method public setSTBlurStrengths([FLandroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    return-void
.end method

.method public abstract setSatPictureSize([ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setScreenFlashMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public setScreenFlashStatus(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    return-void
.end method

.method public abstract setScreenTorchStatus(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setSdofPhotoLevel(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setSdofPhotoMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setSdofPreviewSize(Landroid/util/Size;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public setSensorHighSize(ILandroid/util/Size;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 4

    return-void
.end method

.method public abstract setSessionCreate(Z)V
.end method

.method public abstract setShot2ShotMode(ILjava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setSingleBlurLevel(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setSkinOptimizationMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
.end method

.method public abstract setSmoothZoomValue(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public setStartAwbWarmstartCCT(FLandroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    return-void
.end method

.method public abstract setStreamingCustomTuning(ILcom/transsion/camera/adapter/platformcamera/IPlatformCamera2$DXOScene;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setStreetPhotoFilterId(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setSuperAIRawMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setSuperAntiVideoMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setSuperDefinitionMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setSuperFlashValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setSuperNightFilterId(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setSuperNightMode(Ljava/lang/String;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setSuperResolutionMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setSystemUserID(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setTAPSCaptureInputCount(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setTAPSCaptureInputFrameIndex(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setTAPSCaptureNeedYuvSize(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public setTFEVCheckerEnable(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    return-void
.end method

.method public abstract setTargetFpsRange(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/util/Range;)V
.end method

.method public abstract setTfPortraitMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setThumbnailPostViewSize([ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setTranFaceDetectMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setTranssionAINRMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setTranssionCameraMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setTranssionExcludeVideoMakeUpBeauty(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setTranssionFilterId(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setTranssionHDR(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setTranssionMakeUpIntensity([FLandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setTranssionMakeUpMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setTranssionMakeUpVideoIntensity([FLandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setTranssionMakeUpVideoMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setTranssionSlimBodyLevels([ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setTranssionSlimBodyMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setTranssionSlimBodySkip(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setTranssionSuperNightFilterId(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setTranssionTurboFusionMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setTripodSuperNightEnable(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public setTuningChn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 5

    return-void
.end method

.method public setViUllEnable(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    return-void
.end method

.method public setVideo2kCapSize(Landroid/util/Size;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    return-void
.end method

.method public abstract setVideo360HdrScene(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setVideoAutoFpsModeForISP(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setVideoEffectId(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setVideoFilterId(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setVideoFilterLevel(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setVideoFilterSkinType(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setVideoFrameId(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public setVideoHDRFormat(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    return-void
.end method

.method public abstract setVideoHdrMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setVideoPortraitLevel(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setVideoPortraitMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setVideoPreIspMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setVideoRecordStatus(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setVideoSpotLevel(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setVideoSpotMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setVideoSuperNightMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setVideoSuperNightResolution(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setVideoSuperNightScene(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setVideoSuperNightYUVMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public setYUVHdrCaptureMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    return-void
.end method

.method public abstract setYuvCaptureFlipMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setZSLMode(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setZoom2xRemosaicMode(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setZoomEisMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public shouldLimitZoomInSlowMotion()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public abstract skipMultCapture(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract superFlashSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract supportZoomRatioKey()Z
.end method

.method public abstract triggerFrontFlash(Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract updateAodMode(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public updateControlSceneMode(I)I
    .registers 2

    return p1
.end method

.method public updateNight3dnrAlgo(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    return-void
.end method

.method public updateNightMorHdsScene(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    return-void
.end method

.method public abstract updateOISMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public updateOfflineConfig([Landroid/util/Size;ZZ)I
    .registers 4

    const/4 p0, -0x1

    return p0
.end method

.method public updateOfflineFacing(I)V
    .registers 2

    return-void
.end method

.method public abstract updateOnePeriodFlashTime(Landroid/hardware/camera2/CaptureResult;)[I
.end method

.method public updateQcomPicSurface(Landroid/media/ImageReader;Lcom/transsion/camera/adapter/platformcamera/OfflineImageAvaliableListener;)V
    .registers 3

    return-void
.end method

.method public abstract usePreAECaptureFlow(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method
