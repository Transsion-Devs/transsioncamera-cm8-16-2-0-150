.class Lcom/transsion/camera/adapter/DXOCameraProxy2Impl$DXOCapturePictureCallback;
.super Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DXOCapturePictureCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;


# direct methods
.method public static synthetic $r8$lambda$gB8RFSxG8wpdjqFTmlNeuyZOdco(Lcom/transsion/camera/adapter/DXOCameraProxy2Impl$DXOCapturePictureCallback;Landroid/os/Handler;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl$DXOCapturePictureCallback;->lambda$updateParameters$0(Landroid/os/Handler;)V

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;)V
    .registers 3

    .line 178
    iput-object p1, p0, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl$DXOCapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;

    .line 179
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;)V

    return-void
.end method

.method private synthetic lambda$updateParameters$0(Landroid/os/Handler;)V
    .registers 4

    .line 211
    iget-object p0, p0, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl$DXOCapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;

    invoke-static {p0}, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;->-$$Nest$fgetmRestoreParameters(Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private updateParameters(Landroid/hardware/camera2/CaptureRequest;)V
    .registers 4

    .line 206
    iget-object v0, p0, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl$DXOCapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;

    invoke-static {v0}, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;->-$$Nest$fgetmDXOParameters(Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;)Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;

    move-result-object v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl$DXOCapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;

    invoke-static {v0}, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;->-$$Nest$fgetmDXOParameters(Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;)Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraParameters;->getShot2ShotMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_44

    .line 207
    invoke-static {p1}, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl$CaptureRequestProxy;->getRequestType(Landroid/hardware/camera2/CaptureRequest;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_38

    .line 209
    iget-object p1, p0, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl$DXOCapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;->-$$Nest$fgetmDXOParameters(Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;)Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;->updateAliveState(I)V

    .line 210
    iget-object p1, p0, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl$DXOCapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->getRequestHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl$DXOCapturePictureCallback$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl$DXOCapturePictureCallback$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/adapter/DXOCameraProxy2Impl$DXOCapturePictureCallback;)V

    .line 211
    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_44

    :cond_38
    if-gez p1, :cond_44

    .line 213
    iget-object p1, p0, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl$DXOCapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;->-$$Nest$fgetmDXOParameters(Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;)Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;->updateAliveState(I)V

    .line 217
    :cond_44
    :goto_44
    iget-object p0, p0, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl$DXOCapturePictureCallback;->this$0:Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object p0

    .line 218
    instance-of p1, p0, Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;

    if-eqz p1, :cond_53

    .line 219
    check-cast p0, Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/DXOCameraParameters2Impl;->resetFaceRectangles()V

    :cond_53
    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .registers 4

    .line 184
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 185
    invoke-direct {p0, p2}, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl$DXOCapturePictureCallback;->updateParameters(Landroid/hardware/camera2/CaptureRequest;)V

    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .registers 4

    .line 200
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    .line 201
    invoke-direct {p0, p2}, Lcom/transsion/camera/adapter/DXOCameraProxy2Impl$DXOCapturePictureCallback;->updateParameters(Landroid/hardware/camera2/CaptureRequest;)V

    return-void
.end method

.method public onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V
    .registers 3

    .line 195
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V

    return-void
.end method

.method public onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V
    .registers 5

    .line 190
    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V

    return-void
.end method
