.class Lcom/transsion/camera/adapter/CameraProxy2Impl$9;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/adapter/CameraProxy2Impl;->doPreAEAFCapture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

.field final synthetic val$preCaptureResultCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$IPreCaptureResultCallback;


# direct methods
.method constructor <init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CameraProxy2Impl$IPreCaptureResultCallback;)V
    .registers 3

    .line 3486
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$9;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    iput-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$9;->val$preCaptureResultCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$IPreCaptureResultCallback;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .registers 10

    .line 3495
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSatWideFixedLens:Z

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$9;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$misZoomBelow1X(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z

    move-result p1

    if-eqz p1, :cond_14

    const-wide/16 p1, 0x3e8

    :goto_12
    move-wide v3, p1

    goto :goto_22

    .line 3497
    :cond_14
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$9;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$mflashStyleOneStage(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z

    move-result p1

    if-eqz p1, :cond_1f

    const-wide/16 p1, 0xbb8

    goto :goto_12

    :cond_1f
    const-wide/16 p1, 0x2710

    goto :goto_12

    .line 3498
    :goto_22
    invoke-static {}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[CapturePerformance] preCaptureCallback [onCaptureCompleted] , preAFTimeout:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3500
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$9;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmCaptureResultMonitor(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CaptureResultMonitor;

    move-result-object p1

    new-instance p2, Lcom/transsion/camera/adapter/CameraProxy2Impl$AEPreCaptureTimeOutCallback;

    iget-object p3, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$9;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$9;->val$preCaptureResultCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$IPreCaptureResultCallback;

    const/4 v1, 0x0

    invoke-direct {p2, p3, v0, v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl$AEPreCaptureTimeOutCallback;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CaptureResultMonitor$AEPreCaptureResultCallback;Lcom/transsion/camera/adapter/CameraProxy2Impl-IA;)V

    invoke-virtual {p1, p2}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->triggerAEPreCapturing(Lcom/transsion/camera/adapter/CaptureResultMonitor$AEPreCaptureResultCallback;)V

    .line 3502
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$9;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmCaptureResultMonitor(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CaptureResultMonitor;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/adapter/CameraProxy2Impl$AFPreCaptureTimeOutCallback;

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$9;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$9;->val$preCaptureResultCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$IPreCaptureResultCallback;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/adapter/CameraProxy2Impl$AFPreCaptureTimeOutCallback;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;JLcom/transsion/camera/adapter/CameraProxy2Impl-IA;)V

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->triggerPreAFActiveScanning(Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;)V

    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .registers 5

    .line 3510
    invoke-static {}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[CapturePerformance] preCaptureCallback [onCaptureFailed] reason = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3511
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$9;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmCaptureResultMonitor(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CaptureResultMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->isPreviewStarted()Z

    move-result p1

    if-eqz p1, :cond_34

    .line 3512
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$9;->val$preCaptureResultCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$IPreCaptureResultCallback;

    invoke-interface {p1}, Lcom/transsion/camera/adapter/CaptureResultMonitor$AEPreCaptureResultCallback;->onAEPreCaptureDone()V

    .line 3513
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$9;->val$preCaptureResultCallback:Lcom/transsion/camera/adapter/CameraProxy2Impl$IPreCaptureResultCallback;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusCallback;->onAutoFocus(Z)V

    return-void

    .line 3515
    :cond_34
    invoke-static {}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "preCaptureCallback [onCaptureFailed] preview is stopped."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
