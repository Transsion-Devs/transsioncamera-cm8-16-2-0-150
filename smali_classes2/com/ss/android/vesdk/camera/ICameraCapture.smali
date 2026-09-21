.class public interface abstract Lcom/ss/android/vesdk/camera/ICameraCapture;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/camera/ICameraPreview;


# static fields
.field public static final CAMERA_SCENE_CAPTURE:I = 0x0

.field public static final CAMERA_SCENE_RECORD:I = 0x1


# virtual methods
.method public abstract cancelFocus()V
.end method

.method public abstract captureBurst(Lcom/ss/android/ttvecamera/TECameraSettings$CaptureBufferFrameCallback;Lcom/ss/android/ttvecamera/model/BurstRequest;)I
.end method

.method public abstract changePreviewSize(Lcom/ss/android/vesdk/VESize;)Z
.end method

.method public abstract changeRecorderState(ILcom/ss/android/ttvecamera/TECameraBase$CameraKitStateCallback;)V
.end method

.method public abstract close()I
.end method

.method public abstract close(Lcom/bytedance/bpea/basics/Cert;)I
.end method

.method public abstract close(Z)I
.end method

.method public abstract close(ZLcom/bytedance/bpea/basics/Cert;)I
.end method

.method public abstract destroy()V
.end method

.method public abstract downExposureCompensation()V
.end method

.method public abstract enableCaf()V
.end method

.method public abstract focusAtPoint(IIFII)I
.end method

.method public abstract focusAtPoint(Lcom/ss/android/vesdk/VEFocusSettings;)I
.end method

.method public abstract getApertureRange(Lcom/ss/android/ttvecamera/TECameraSettings$ApertureCallback;)[F
.end method

.method public abstract getCameraAllFeatures(Landroid/content/Context;)Landroid/os/Bundle;
.end method

.method public abstract getCameraCaptureSize()Lcom/ss/android/vesdk/VESize;
.end method

.method public abstract getCameraECInfo()Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;
.end method

.method public abstract getCameraFacing()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;
.end method

.method public abstract getCameraState()I
.end method

.method public abstract getFOV(Lcom/ss/android/ttvecamera/TECameraSettings$FOVCallback;)[F
.end method

.method public abstract getFlashMode()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FLASH_MODE;
.end method

.method public abstract getISO(Lcom/ss/android/ttvecamera/TECameraSettings$ISOCallback;)I
.end method

.method public abstract getISORange(Lcom/ss/android/ttvecamera/TECameraSettings$ISORangeCallback;)[I
.end method

.method public abstract getManualFocusAbility(Lcom/ss/android/ttvecamera/TECameraSettings$ManualFocusCallback;)F
.end method

.method public abstract getPictureSize()Lcom/ss/android/vesdk/VESize;
.end method

.method public abstract getPreviewFps()[I
.end method

.method public abstract getPreviewFrameSize()Lcom/ss/android/vesdk/VESize;
.end method

.method public abstract getShutterTimeRange(Lcom/ss/android/ttvecamera/TECameraSettings$ShutterTimeCallback;)[J
.end method

.method public abstract isARCoreSupported(Landroid/content/Context;Lcom/ss/android/vesdk/VECameraSettings;)Z
.end method

.method public abstract isAutoExposureLockSupported()Z
.end method

.method public abstract isAutoFocusLockSupported()Z
.end method

.method public abstract isCameraSwitchState()Z
.end method

.method public abstract isSupportedExposureCompensation()Z
.end method

.method public abstract isTorchSupported()Z
.end method

.method public abstract newSurfaceTexture()V
.end method

.method public abstract notifyHostForegroundVisible(Z)V
.end method

.method public abstract open()I
.end method

.method public abstract open(Lcom/bytedance/bpea/basics/Cert;)I
.end method

.method public abstract process(Lcom/ss/android/vesdk/VECameraSettings$Operation;)V
.end method

.method public abstract queryFeatures(Landroid/os/Bundle;)V
.end method

.method public abstract queryFeatures(Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;Landroid/os/Bundle;)V
.end method

.method public abstract queryShaderZoomAbility()F
.end method

.method public abstract queryZoomAbility()I
.end method

.method public abstract queryZoomAbility(Z)I
.end method

.method public abstract setAperture(I)V
.end method

.method public abstract setAutoExposureLock(Z)V
.end method

.method public abstract setAutoFocusLock(Z)V
.end method

.method public abstract setCameraStateListener(Lcom/ss/android/vesdk/VEListener$VECameraStateExtListener;)V
.end method

.method public abstract setDeviceRotation(I)V
.end method

.method public abstract setExposureCompensation(I)V
.end method

.method public abstract setFeatureParameters(Landroid/os/Bundle;)V
.end method

.method public abstract setFpsConfigListener(Lcom/ss/android/vesdk/VEListener$VECameraFpsConfigCallback;)V
.end method

.method public abstract setISO(I)V
.end method

.method public abstract setManualFocusDistance(F)V
.end method

.method public abstract setPictureSize(II)V
.end method

.method public abstract setPictureSizeListener(Lcom/ss/android/vesdk/VEListener$VEPictureSizeCallback;)V
.end method

.method public abstract setPreviewFpsRange(Lcom/ss/android/ttvecamera/TEFrameRateRange;)V
.end method

.method public abstract setPreviewSize(Lcom/ss/android/vesdk/VESize;)Z
.end method

.method public abstract setPreviewSizeListener(Lcom/ss/android/vesdk/VEListener$VEPreviewSizeCallback;)V
.end method

.method public abstract setSATZoomListener(Lcom/ss/android/vesdk/VERecorder$VESATZoomListener;)V
.end method

.method public abstract setSceneMode(I)V
.end method

.method public abstract setShaderZoomListener(Lcom/ss/android/vesdk/VERecorder$VEShaderZoomListener;)V
.end method

.method public abstract setShutterTime(J)V
.end method

.method public abstract setWhiteBalance(ZLjava/lang/String;)V
.end method

.method public abstract setZoomListener(Lcom/ss/android/vesdk/VERecorder$VECameraZoomListener;)V
.end method

.method public abstract startPreview()I
.end method

.method public abstract startZoom(F)I
.end method

.method public abstract stopPreview()I
.end method

.method public abstract stopZoom()I
.end method

.method public abstract switchCamera()I
.end method

.method public abstract switchCamera(Lcom/bytedance/bpea/basics/Cert;)I
.end method

.method public abstract switchCamera(Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;)I
.end method

.method public abstract switchCamera(Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;Lcom/bytedance/bpea/basics/Cert;)I
.end method

.method public abstract switchCamera(Lcom/ss/android/vesdk/VECameraSettings;)I
.end method

.method public abstract switchCamera(Lcom/ss/android/vesdk/VECameraSettings;Lcom/bytedance/bpea/basics/Cert;)I
.end method

.method public abstract switchCameraMode(I)I
.end method

.method public abstract switchCameraMode(ILcom/ss/android/ttvecamera/TECameraSettings;)I
.end method

.method public abstract switchFlashMode(Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FLASH_MODE;)I
.end method

.method public abstract switchToARMode(Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig;)V
.end method

.method public abstract switchToARMode(Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig;Lcom/bytedance/bpea/basics/Cert;)V
.end method

.method public abstract switchToNormalCamera()V
.end method

.method public abstract switchToNormalCamera(Lcom/bytedance/bpea/basics/Cert;)V
.end method

.method public abstract switchTorch(Z)I
.end method

.method public abstract takePicture(IILcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract takePicture(Lcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;)I
.end method

.method public abstract takePicture(Lcom/ss/android/vesdk/VECameraSettings$PictureCallback;)I
.end method

.method public abstract tryRestartCamera()Z
.end method

.method public abstract upExposureCompensation()V
.end method

.method public abstract zoomV2(F)I
.end method
