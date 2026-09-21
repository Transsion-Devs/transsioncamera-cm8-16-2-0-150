.class public abstract Lcom/transsion/camera/adapter/CameraProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;,
        Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;,
        Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;,
        Lcom/transsion/camera/adapter/CameraProxy$PreviewCoverCallback;,
        Lcom/transsion/camera/adapter/CameraProxy$VideoHDRInfoCallback;,
        Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;,
        Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;,
        Lcom/transsion/camera/adapter/CameraProxy$IFlashStateCallback;,
        Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;,
        Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;,
        Lcom/transsion/camera/adapter/CameraProxy$CameraBVCallback;,
        Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;,
        Lcom/transsion/camera/adapter/CameraProxy$EyeDetectionCallback;,
        Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;,
        Lcom/transsion/camera/adapter/CameraProxy$CameraOfflineSessionListener;,
        Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;,
        Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusMoveCallback;,
        Lcom/transsion/camera/adapter/CameraProxy$AnimalEyeDetectionCallback;,
        Lcom/transsion/camera/adapter/CameraProxy$HumanDetectionCallback;,
        Lcom/transsion/camera/adapter/CameraProxy$IFaceDetectionListener;,
        Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;,
        Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;,
        Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;,
        Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;,
        Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;,
        Lcom/transsion/camera/adapter/CameraProxy$CameraStartPreviewCallback;,
        Lcom/transsion/camera/adapter/CameraProxy$DeferredData;
    }
.end annotation


# static fields
.field public static sCaptureCheckForDebug:Lcom/transsion/camera/utils/debug/ICaptureCheck;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addDevicePreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;)V
.end method

.method public abstract addGenderAttributeCallback(Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;)V
.end method

.method public abstract autoFocus(Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;)V
.end method

.method public abstract cancelAutoFocus()V
.end method

.method public abstract cancelTakePicture()V
.end method

.method public abstract clearFrameResultCallback()V
.end method

.method public abstract clearGenderAttributeCallback()V
.end method

.method public abstract clearStreamIdResultCallback()V
.end method

.method public abstract destroyTask()V
.end method

.method public abstract enableVideoAutoFlash(Z)V
.end method

.method public abstract getAIRawLiteMotionDetection()I
.end method

.method public abstract getAeExpoInfo()[I
.end method

.method public abstract getAeStateResult()I
.end method

.method public abstract getBrightnessResult()[I
.end method

.method public abstract getCameraCapabilities()Lcom/transsion/camera/adapter/ICameraCapabilities;
.end method

.method public abstract getCameraId()[I
.end method

.method public abstract getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;
.end method

.method public abstract getCaptureResult()Landroid/hardware/camera2/CaptureResult;
.end method

.method public abstract getEVList()[I
.end method

.method public abstract getHDRAeExpoInfo()[I
.end method

.method public abstract getJpegMaxSize()I
.end method

.method public abstract getLlsAeExpoInfo()[I
.end method

.method public abstract getMFNRAeExpoInfo()[I
.end method

.method public abstract getNightAeExpoInfo()[I
.end method

.method public abstract isMTKCaptureFlow()Z
.end method

.method public abstract isMultiCamera()Z
.end method

.method public abstract isOfflineJniSupport()Z
.end method

.method public abstract isQcomCaptureFlow()Z
.end method

.method public abstract isReleased()Z
.end method

.method public abstract isVssSupported()Z
.end method

.method public abstract onTemperatureChanged(I)V
.end method

.method public abstract preparePreview(Lcom/transsion/camera/adapter/CameraProxy$DeferredData;I)V
.end method

.method public abstract registerDualLensCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;I)V
.end method

.method public abstract registerFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V
.end method

.method public abstract registerSettingPreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;)V
.end method

.method public abstract registerShot2ShotCallback(Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;)V
.end method

.method public abstract registerStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;)V
.end method

.method public abstract removeGenderAttributeCallback(Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;)V
.end method

.method public abstract setActionSound(Lcom/transsion/camera/utils/sound/IActionSound;)V
.end method

.method public abstract setAnimalEyeDetectCallback(Lcom/transsion/camera/adapter/CameraProxy$AnimalEyeDetectionCallback;)V
.end method

.method public abstract setAutoFocusMoveCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusMoveCallback;)V
.end method

.method public abstract setCameraBVCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraBVCallback;)V
.end method

.method public abstract setCameraDataChannel(Lcom/transsion/camera/adapter/CameraDataChannel;)V
.end method

.method public abstract setCameraOfflineSessionListener(Lcom/transsion/camera/adapter/CameraProxy$CameraOfflineSessionListener;)V
.end method

.method public abstract setCameraParameters(Lcom/transsion/camera/adapter/CameraParameters;)V
.end method

.method public abstract setEyeDetectionCallback(Lcom/transsion/camera/adapter/CameraProxy$EyeDetectionCallback;)V
.end method

.method public abstract setFaceDetectionCallback(Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;)V
.end method

.method public abstract setFlashStateCallback(Lcom/transsion/camera/adapter/CameraProxy$IFlashStateCallback;)V
.end method

.method public abstract setHumanDetCallback(Lcom/transsion/camera/adapter/CameraProxy$HumanDetectionCallback;)V
.end method

.method public abstract setLowConfigReduceLoading(Z)V
.end method

.method public abstract setModeThumbnailSource(I)V
.end method

.method public abstract setPause(Z)V
.end method

.method public abstract setPictureGPSLocation(Landroid/location/Location;)V
.end method

.method public abstract setPictureOrientation(I)V
.end method

.method public abstract setShot2ShotCallback(Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;)V
.end method

.method public abstract setShutterSoundEffect(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setVideoHDRInfoCallback(Lcom/transsion/camera/adapter/CameraProxy$VideoHDRInfoCallback;)V
.end method

.method public abstract setVideoOrientation(I)V
.end method

.method public abstract shutterSoundPlay(ILcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;)V
.end method

.method public abstract shutterSoundPlay(Ljava/lang/String;)V
.end method

.method public startContinuousShot(Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;IIZ)V
    .registers 15

    .line 132
    new-instance v0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;-><init>(Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;ZIZ)V

    invoke-virtual {p0, v0, p4}, Lcom/transsion/camera/adapter/CameraProxy;->startContinuousShot(Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;I)V

    return-void
.end method

.method abstract startContinuousShot(Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;I)V
.end method

.method public abstract startFaceDetection()V
.end method

.method public abstract startFaceDetection(Lcom/transsion/camera/adapter/CameraProxy$IFaceDetectionListener;)V
.end method

.method public abstract startPreview(Lcom/transsion/camera/adapter/CameraProxy$CameraStartPreviewCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;)V
.end method

.method public abstract startRecording(Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;Z)V
.end method

.method public abstract startVideoHDRInfoDetect()V
.end method

.method public abstract stopContinuousShot()V
.end method

.method public abstract stopContinuousShotCount()V
.end method

.method public abstract stopFaceDetection()V
.end method

.method public abstract stopFaceDetection(Z)V
.end method

.method public abstract stopGenderAttributeDetection()V
.end method

.method public abstract stopPreview()V
.end method

.method public abstract stopRecording()V
.end method

.method public abstract stopRepeating()V
.end method

.method public abstract stopVideoHDRInfoDetect()V
.end method

.method public abstract switchToOfflineSession(I)V
.end method

.method public takePicture(Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;ZIZ)V
    .registers 16

    .line 108
    new-instance v0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;-><init>(Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;ZIZ)V

    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy;->takePicture(Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;)V

    return-void
.end method

.method abstract takePicture(Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;)V
.end method

.method public abstract unRegisterDualLensCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;)V
.end method

.method public abstract unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V
.end method

.method public abstract unRegisterSettingPreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;)V
.end method

.method public abstract unRegisterStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;)V
.end method

.method public abstract unregisterShot2ShotCallback(Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;)V
.end method

.method public abstract updateAuxSurfaceModeSupport(Z)V
.end method

.method public abstract updateAuxSurfaceStatus(Z)V
.end method

.method public abstract updateBackgroundSurfaceModeSupport(Z)V
.end method

.method public abstract updateBackgroundSurfaceStatus(Z)V
.end method

.method public abstract updateFocusMode(Ljava/lang/String;)V
.end method

.method public abstract updateQcomPicSurface(Lcom/transsion/camera/adapter/IBGSurface;)V
.end method

.method public abstract updateRecordingHint(Z)V
.end method

.method public abstract updateSlaveSurfaceModeSupport(Z)V
.end method

.method public videoSnapShot(Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;IZ)V
    .registers 15

    .line 123
    new-instance v0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;-><init>(Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;ZIZ)V

    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy;->videoSnapShot(Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;)V

    return-void
.end method

.method abstract videoSnapShot(Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;)V
.end method
