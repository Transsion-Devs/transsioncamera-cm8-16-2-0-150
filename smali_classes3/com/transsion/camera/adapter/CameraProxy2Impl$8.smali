.class Lcom/transsion/camera/adapter/CameraProxy2Impl$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy2Impl$IPreCaptureResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/adapter/CameraProxy2Impl;->doPreAEAFCapture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mPreAEDone:Z

.field private mPreAFDone:Z

.field private mPreCaptureDone:Z

.field final synthetic this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;


# direct methods
.method constructor <init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V
    .registers 2

    .line 3414
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$8;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkPreCapture()V
    .registers 4

    .line 3476
    invoke-static {}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doPreAEAFCapture mPreAEDone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$8;->mPreAEDone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mPreAFDone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$8;->mPreAFDone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mPreCaptureDone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$8;->mPreCaptureDone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3478
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$8;->mPreAEDone:Z

    if-eqz v0, :cond_46

    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$8;->mPreAFDone:Z

    if-eqz v0, :cond_46

    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$8;->mPreCaptureDone:Z

    if-nez v0, :cond_46

    const/4 v0, 0x1

    .line 3479
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$8;->mPreCaptureDone:Z

    .line 3480
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$8;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmCapturePictureCallback(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$mdoCapture(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;)V

    :cond_46
    return-void
.end method


# virtual methods
.method public onAEPreCaptureDone()V
    .registers 4

    .line 3423
    invoke-static {}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "[CapturePerformance] doPreAEAFCapture PreAE done"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 3424
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$8;->mPreAEDone:Z

    .line 3425
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$8;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmReleased(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 3427
    invoke-static {}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    const-string v2, "[onAEPreCaptureDone] camera proxy has release"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3428
    iget-boolean v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$8;->mPreCaptureDone:Z

    if-nez v1, :cond_3d

    .line 3429
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$8;->mPreCaptureDone:Z

    .line 3430
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$8;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmCapturePictureCallback(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object v0, v0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    if-eqz v0, :cond_3d

    .line 3431
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$8;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmCapturePictureCallback(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    move-result-object p0

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureFailed(Z)V

    :cond_3d
    return-void

    .line 3436
    :cond_3e
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$8;->checkPreCapture()V

    return-void
.end method

.method public onAutoFocus(Z)V
    .registers 4

    .line 3441
    invoke-static {}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "[CapturePerformance] doPreAEAFCapture PreAF done"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 3442
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$8;->mPreAFDone:Z

    .line 3443
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$8;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmReleased(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 3445
    invoke-static {}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "[onAutoFocus] camera proxy has release"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3446
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$8;->mPreCaptureDone:Z

    if-nez v0, :cond_3d

    .line 3447
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$8;->mPreCaptureDone:Z

    .line 3448
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$8;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmCapturePictureCallback(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object p1, p1, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    if-eqz p1, :cond_3d

    .line 3449
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$8;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmCapturePictureCallback(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    move-result-object p0

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureFailed(Z)V

    :cond_3d
    return-void

    .line 3455
    :cond_3e
    :try_start_3e
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$8;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmSession(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$8;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    iget-object v0, v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isQcomCaptureFlow()Z

    move-result v0

    if-nez v0, :cond_58

    .line 3456
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$8;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$mdoCancelAutoFocus(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V

    goto :goto_58

    :catch_56
    move-exception v0

    goto :goto_70

    .line 3458
    :cond_58
    :goto_58
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$8;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmIsCancelCapture(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 3459
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$8;->mPreCaptureDone:Z

    .line 3460
    invoke-static {}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "doPreAEAFCapture canceled"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 3463
    :cond_6c
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$8;->checkPreCapture()V
    :try_end_6f
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_3e .. :try_end_6f} :catch_56
    .catch Ljava/lang/IllegalStateException; {:try_start_3e .. :try_end_6f} :catch_56
    .catch Ljava/lang/SecurityException; {:try_start_3e .. :try_end_6f} :catch_56

    return-void

    .line 3465
    :goto_70
    iget-boolean v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$8;->mPreCaptureDone:Z

    if-nez v1, :cond_8f

    .line 3466
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$8;->mPreCaptureDone:Z

    .line 3467
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$8;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmCapturePictureCallback(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    move-result-object v1

    iget-object v1, v1, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object v1, v1, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    if-eqz v1, :cond_8f

    .line 3468
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$8;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmCapturePictureCallback(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;

    move-result-object p0

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CapturePictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureFailed(Z)V

    .line 3471
    :cond_8f
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
