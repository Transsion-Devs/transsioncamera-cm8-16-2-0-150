.class Lcom/ss/android/ttvecamera/framework/TECameraModeBase$6;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttvecamera/framework/TECameraModeBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;


# direct methods
.method constructor <init>(Lcom/ss/android/ttvecamera/framework/TECameraModeBase;)V
    .registers 2

    .line 1640
    iput-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$6;->this$0:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .registers 8

    .line 1646
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    if-eqz p3, :cond_1d

    .line 1648
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$6;->this$0:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    sget-object p2, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, p2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_11

    const/4 p2, -0x1

    goto :goto_1b

    :cond_11
    invoke-virtual {p3, p2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_1b
    iput p2, p1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCurrentIso:I

    .line 1650
    :cond_1d
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$6;->this$0:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    iget-boolean p1, p1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mIsFirstPreviewFrameArrived:Z

    const/4 p2, 0x1

    if-nez p1, :cond_64

    .line 1651
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$6;->this$0:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->openCameraLock()V

    .line 1652
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$6;->this$0:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    iput-boolean p2, p1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mIsFirstPreviewFrameArrived:Z

    .line 1653
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$6;->this$0:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    iget-wide v2, p1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFirstRepeatingRequestStartTimestamp:J

    sub-long/2addr v0, v2

    .line 1654
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "first preview frame callback arrived! consume = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", session consume: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$6;->this$0:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    iget-wide v2, v2, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCreateSessionConsume:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "TECameraModeBase"

    invoke-static {v2, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1655
    const-string p1, "te_record_camera2_set_repeating_request_cost"

    invoke-static {p1, v0, v1}, Lcom/ss/android/ttvecamera/TECameraMonitor;->perfLong(Ljava/lang/String;J)V

    .line 1656
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->logMonitorInfo(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1659
    :cond_64
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$6;->this$0:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    iget-object p1, p1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-boolean p1, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->mIsGetMetadata:Z

    if-eqz p1, :cond_9d

    .line 1660
    new-instance p1, Lcom/ss/android/ttvecamera/TECameraFrame$Metadata;

    invoke-direct {p1}, Lcom/ss/android/ttvecamera/TECameraFrame$Metadata;-><init>()V

    .line 1661
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/ss/android/ttvecamera/TECameraFrame$Metadata;->timestamp:J

    .line 1662
    iput-object p3, p1, Lcom/ss/android/ttvecamera/TECameraFrame$Metadata;->captureResult:Landroid/hardware/camera2/TotalCaptureResult;

    .line 1663
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$6;->this$0:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->getISORange()[I

    move-result-object v0

    aget p2, v0, p2

    iput p2, p1, Lcom/ss/android/ttvecamera/TECameraFrame$Metadata;->maxIso:I

    .line 1664
    iget-object p2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$6;->this$0:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    invoke-virtual {p2}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->getISORange()[I

    move-result-object p2

    const/4 v0, 0x0

    aget p2, p2, v0

    iput p2, p1, Lcom/ss/android/ttvecamera/TECameraFrame$Metadata;->minIso:I

    .line 1665
    iget-object p2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$6;->this$0:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    iget-object p2, p2, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraHolder:Lcom/ss/android/ttvecamera/TECamera2;

    invoke-virtual {p2}, Lcom/ss/android/ttvecamera/TECameraBase;->getProviderManager()Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;->getProvider()Lcom/ss/android/ttvecamera/provider/TECameraProvider;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->setMetadata(Lcom/ss/android/ttvecamera/TECameraFrame$Metadata;)V

    .line 1668
    :cond_9d
    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$6;->this$0:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    iget-boolean p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->ifFinalize:Z

    if-eqz p1, :cond_a9

    .line 1669
    invoke-static {p3}, Lcom/ss/android/ttvecamera/TECameraUtils;->finalizeCameraResult(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->ifFinalize:Z

    :cond_a9
    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .registers 6

    .line 1677
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    .line 1678
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$6;->this$0:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    iget-object p2, p1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-boolean p2, p2, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnablePreviewingFallback:Z

    if-eqz p2, :cond_36

    iget-boolean p1, p1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mIsFirstPreviewFrameArrived:Z

    if-nez p1, :cond_36

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result p1

    if-nez p1, :cond_36

    .line 1679
    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$6;->this$0:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    iget p2, p1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mPreviewCapturedFailedCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mPreviewCapturedFailedCount:I

    .line 1680
    iget-object p1, p1, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x5

    if-lt p2, p1, :cond_36

    .line 1681
    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$6;->this$0:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    iget-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object p2, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget p2, p2, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    const-string v0, "Camera previewing failed"

    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/16 v1, -0x1b5

    invoke-interface {p1, p2, v1, v0, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onPreviewError(IILjava/lang/String;Ljava/lang/Object;)V

    .line 1684
    :cond_36
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "failure: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",reason:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TECameraModeBase"

    invoke-static {p1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
