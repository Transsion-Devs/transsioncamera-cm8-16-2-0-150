.class Lcom/transsion/camera/adapter/CameraProxy2Impl$11;
.super Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/adapter/CameraProxy2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;


# direct methods
.method constructor <init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V
    .registers 3

    .line 4245
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$11;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureCallback;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CameraProxy2Impl-IA;)V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .registers 11

    .line 4257
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureCallback;->onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 4259
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$11;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmReleased(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z

    move-result p2

    if-eqz p2, :cond_15

    .line 4261
    invoke-static {}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "[onCaptureCompleted] camera proxy has release"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 4264
    :cond_15
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$11;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmPreviewFrameCallbackTmp(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_87

    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$11;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmOutputType(Lcom/transsion/camera/adapter/CameraProxy2Impl;)I

    move-result p2

    const/4 v1, 0x3

    if-eq p2, v1, :cond_2f

    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$11;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmSession(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object p2

    if-ne p2, p1, :cond_87

    .line 4265
    :cond_2f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$11;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmSetRepeatingRequestTime(Lcom/transsion/camera/adapter/CameraProxy2Impl;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x4b

    cmp-long p2, v1, v3

    if-lez p2, :cond_87

    .line 4266
    invoke-static {}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onCaptureCompleted] onFirstSteadyFrame session:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", cur id:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$11;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmCameraId(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 4267
    const-string p1, "onFirstSteadyFrame"

    invoke-static {p1}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 4268
    const-string p1, "[TranMemoryFlow] available memory when onFirstSteadyFrame :"

    invoke-static {p1}, Lcom/transsion/camera/utils/MemoryUtils;->logAvailMemoryAsync(Ljava/lang/String;)V

    .line 4269
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$11;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmPreviewFrameCallbackTmp(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$11;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmCameraId(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;->onFirstSteadyFrame(Ljava/lang/String;)V

    .line 4270
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$11;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fputmPreviewFrameCallbackTmp(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewFrameCallback;)V

    .line 4271
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    .line 4273
    :cond_87
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$11;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmPreviewCallback(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CameraProxy$CameraStartPreviewCallback;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_a4

    .line 4274
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$11;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmPreviewCallback(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CameraProxy$CameraStartPreviewCallback;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$11;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmCameraId(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, p2}, Lcom/transsion/camera/adapter/CameraProxy$CameraStartPreviewCallback;->onPreview(Ljava/lang/String;I)V

    .line 4275
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$11;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fputmPreviewCallback(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CameraProxy$CameraStartPreviewCallback;)V

    .line 4277
    :cond_a4
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$11;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmCaptureResultMonitor(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CaptureResultMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->onPreviewStarted()V

    .line 4278
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$11;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmCaptureResultMonitor(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CaptureResultMonitor;

    move-result-object v0

    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$11;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmParameters(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CameraParameters2Impl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getPreviewSize()Landroid/util/Size;

    move-result-object v2

    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$11;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmParameters(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CameraParameters2Impl;

    move-result-object p1

    .line 4279
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getPictureSize()Landroid/util/Size;

    move-result-object v3

    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$11;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmParameters(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CameraParameters2Impl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getFlashMode()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$11;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    .line 4280
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$misSatCameraForVideoMode(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z

    move-result v5

    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$11;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$misZoomBelow1X(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z

    move-result v6

    move-object v1, p3

    .line 4278
    invoke-virtual/range {v0 .. v6}, Lcom/transsion/camera/adapter/CaptureResultMonitor;->checkCaptureResult(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Landroid/util/Size;Ljava/lang/String;ZZ)V

    .line 4281
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$11;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1, v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$mupdateOnePeriodFlashTime(Lcom/transsion/camera/adapter/CameraProxy2Impl;Landroid/hardware/camera2/CaptureResult;)V

    .line 4282
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$11;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1, v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$mcheckAeSearching(Lcom/transsion/camera/adapter/CameraProxy2Impl;Landroid/hardware/camera2/CaptureResult;)V

    .line 4283
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$11;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->checkCaptureResult(Landroid/hardware/camera2/CaptureResult;)V

    .line 4284
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$11;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureCallback;->getCaptureState()Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;

    move-result-object p3

    invoke-static {p1, v1, p3}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$mcheckShot2ShotResult(Lcom/transsion/camera/adapter/CameraProxy2Impl;Landroid/hardware/camera2/CaptureResult;Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)Z

    .line 4285
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$11;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1, v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$mcheckFaceAttributeInfo(Lcom/transsion/camera/adapter/CameraProxy2Impl;Landroid/hardware/camera2/CaptureResult;)V

    .line 4286
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$11;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1, v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fputmCaptureResult(Lcom/transsion/camera/adapter/CameraProxy2Impl;Landroid/hardware/camera2/CaptureResult;)V

    .line 4287
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$11;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p0, p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fputisDoStartPreview(Lcom/transsion/camera/adapter/CameraProxy2Impl;Z)V

    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .registers 5

    .line 4294
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    .line 4295
    invoke-static {}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[onCaptureFailed] session:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",mSession:"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$11;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmSession(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .registers 7

    .line 4250
    invoke-super/range {p0 .. p6}, Lcom/transsion/camera/adapter/CameraProxy2Impl$CaptureCallback;->onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V

    return-void
.end method
