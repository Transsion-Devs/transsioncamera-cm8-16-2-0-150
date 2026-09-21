.class public interface abstract Lcom/ss/android/ttvecamera/framework/ITECameraMode;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CAMERA_SCENE_CAPTURE:I = 0x0

.field public static final CAMERA_SCENE_RECORD:I = 0x1


# virtual methods
.method public abstract abortSession()V
.end method

.method public abstract calculateZoomSize(F)Landroid/graphics/Rect;
.end method

.method public abstract calculateZoomSizeV2(F)Landroid/graphics/Rect;
.end method

.method public abstract cancelFocus()I
.end method

.method public abstract captureBurst(Lcom/ss/android/ttvecamera/model/BurstRequest;ILcom/ss/android/ttvecamera/TECameraSettings$CaptureBufferFrameCallback;)V
.end method

.method public abstract close()V
.end method

.method public abstract closePreviewSession()V
.end method

.method public abstract enableCaf()I
.end method

.method public abstract fillFeatures()V
.end method

.method public abstract focusAtPoint(IIFII)I
.end method

.method public abstract focusAtPoint(Lcom/ss/android/ttvecamera/TEFocusSettings;)I
.end method

.method public abstract getApertureRange()[F
.end method

.method public abstract getCameraCaptureSize()[I
.end method

.method public abstract getFOV()[F
.end method

.method public abstract getFlashMode()I
.end method

.method public abstract getISO()I
.end method

.method public abstract getISORange()[I
.end method

.method public abstract getManualFocusAbility()F
.end method

.method public abstract getPictureSize()[I
.end method

.method public abstract getPreviewFps()[I
.end method

.method public abstract getShutterTimeRange()[J
.end method

.method public abstract openCamera(Ljava/lang/String;I)I
.end method

.method public abstract prepareProvider()I
.end method

.method public abstract process(Lcom/ss/android/ttvecamera/TECameraSettings$Operation;)V
.end method

.method public abstract removeFocusSettings()V
.end method

.method public abstract reset()V
.end method

.method public abstract selectCamera(I)Ljava/lang/String;
    .param p1    # I
        .annotation build Lcom/ss/android/ttvecamera/TECameraSettings$CameraFacing;
        .end annotation
    .end param
.end method

.method public abstract setAperture(F)V
.end method

.method public abstract setAutoExposureLock(Z)V
.end method

.method public abstract setAutoFocusLock(Z)V
.end method

.method public abstract setCameraDevice(Ljava/lang/Object;)V
.end method

.method public abstract setExposureCompensation(I)Z
.end method

.method public abstract setFeatureParameter(Landroid/os/Bundle;)V
.end method

.method public abstract setFpsConfigCallback(Lcom/ss/android/ttvecamera/TECameraBase$CameraFpsConfigCallback;)V
.end method

.method public abstract setISO(I)V
.end method

.method public abstract setManualFocusDistance(F)V
.end method

.method public abstract setPictureSize(II)I
.end method

.method public abstract setPictureSizeCallback(Lcom/ss/android/ttvecamera/TECameraBase$PictureSizeCallBack;)V
.end method

.method public abstract setPreviewSizeCallback(Lcom/ss/android/ttvecamera/TECameraBase$PreviewSizeCallBack;)V
.end method

.method public abstract setSceneMode(I)V
.end method

.method public abstract setShutterTime(J)V
.end method

.method public abstract setWhileBalance(ZLjava/lang/String;)V
.end method

.method public abstract startPreview()I
.end method

.method public abstract startRecording()I
.end method

.method public abstract startZoom(FLcom/ss/android/ttvecamera/TECameraSettings$ZoomCallback;)I
.end method

.method public abstract stopRecording()I
.end method

.method public abstract stopZoom()V
.end method

.method public abstract switchFlashMode(I)V
.end method

.method public abstract takePicture(IILcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;)V
.end method

.method public abstract takePicture(Lcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;I)V
.end method

.method public abstract toggleTorch(Z)I
.end method

.method public abstract updateCapture()I
.end method

.method public abstract zoomV2(FLcom/ss/android/ttvecamera/TECameraSettings$ZoomCallback;)V
.end method
