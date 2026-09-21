.class Lcom/transsion/camera/adapter/CameraProxy2Impl$2$1;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/adapter/CameraProxy2Impl$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/camera/adapter/CameraProxy2Impl$2;


# direct methods
.method constructor <init>(Lcom/transsion/camera/adapter/CameraProxy2Impl$2;)V
    .registers 2

    .line 2241
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$2$1;->this$1:Lcom/transsion/camera/adapter/CameraProxy2Impl$2;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .registers 4

    .line 2246
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 2247
    invoke-static {}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string/jumbo p2, "triggerAFPreCapture onCaptureCompleted"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2248
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$2$1;->this$1:Lcom/transsion/camera/adapter/CameraProxy2Impl$2;

    iget-object p1, p1, Lcom/transsion/camera/adapter/CameraProxy2Impl$2;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmRequestHandler(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$2$1;->this$1:Lcom/transsion/camera/adapter/CameraProxy2Impl$2;

    iget-object p2, p2, Lcom/transsion/camera/adapter/CameraProxy2Impl$2;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmCheckAeAfStableForCapturing(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2249
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$2$1;->this$1:Lcom/transsion/camera/adapter/CameraProxy2Impl$2;

    iget-object p1, p1, Lcom/transsion/camera/adapter/CameraProxy2Impl$2;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmRequestHandler(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$2$1;->this$1:Lcom/transsion/camera/adapter/CameraProxy2Impl$2;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$2;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmCheckAeAfStableForCapturing(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 p2, 0x12c

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .registers 4

    .line 2256
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    .line 2257
    invoke-static {}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string/jumbo p2, "triggerAFPreCapture onCaptureFailed"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2258
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$2$1;->this$1:Lcom/transsion/camera/adapter/CameraProxy2Impl$2;

    iget-object p1, p1, Lcom/transsion/camera/adapter/CameraProxy2Impl$2;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmRequestHandler(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$2$1;->this$1:Lcom/transsion/camera/adapter/CameraProxy2Impl$2;

    iget-object p2, p2, Lcom/transsion/camera/adapter/CameraProxy2Impl$2;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmCheckAeAfStableForCapturing(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2259
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$2$1;->this$1:Lcom/transsion/camera/adapter/CameraProxy2Impl$2;

    iget-object p1, p1, Lcom/transsion/camera/adapter/CameraProxy2Impl$2;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmRequestHandler(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$2$1;->this$1:Lcom/transsion/camera/adapter/CameraProxy2Impl$2;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$2;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmCheckAeAfStableForCapturing(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 p2, 0x12c

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
