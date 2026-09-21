.class Lcom/transsion/camera/adapter/CameraProxy2Impl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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
    .registers 2

    .line 2227
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$2;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 2230
    invoke-static {}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "[CapturePerformance] triggerAFPreCapture start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2231
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$2;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmParameters(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CameraParameters2Impl;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setFocusModeAuto(Z)V

    .line 2233
    :try_start_13
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$2;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$msetRepeatingRequest(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V
    :try_end_18
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_13 .. :try_end_18} :catch_23
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_18} :catch_23
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_18} :catch_23

    .line 2241
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$2;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    new-instance v1, Lcom/transsion/camera/adapter/CameraProxy2Impl$2$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$2$1;-><init>(Lcom/transsion/camera/adapter/CameraProxy2Impl$2;)V

    invoke-static {v0, v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$mdoPreAF(Lcom/transsion/camera/adapter/CameraProxy2Impl;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)V

    return-void

    :catch_23
    move-exception v0

    .line 2235
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$2;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {v2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmParameters(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CameraParameters2Impl;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/transsion/camera/adapter/CameraParameters;->setFocusModeAuto(Z)V

    .line 2236
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$2;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmCapturePictureCallback(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    move-result-object p0

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    invoke-interface {p0, v1}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureFailed(Z)V

    .line 2237
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
