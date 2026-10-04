.class Lcom/transsion/camera/adapter/CameraProxy2Impl$CSPictureCallback;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/adapter/CameraProxy2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CSPictureCallback"
.end annotation


# instance fields
.field final mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

.field final synthetic this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;


# direct methods
.method constructor <init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;)V
    .registers 3

    .line 3952
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CSPictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    .line 3953
    iput-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CSPictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    return-void
.end method

.method private onCaptureSequenceFinished()V
    .registers 4

    .line 4021
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CSPictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmInContinuousCapture(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 4022
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CSPictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fputmInContinuousCapture(Lcom/transsion/camera/adapter/CameraProxy2Impl;Z)V

    .line 4023
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CSPictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    iget-object v0, v0, Lcom/transsion/camera/adapter/CameraProxy2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0, v1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setContinuousCapture(Z)V

    .line 4025
    :try_start_15
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CSPictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$msetRepeatingRequest(Lcom/transsion/camera/adapter/CameraProxy2Impl;)V
    :try_end_1a
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_15 .. :try_end_1a} :catch_1b
    .catch Ljava/lang/IllegalStateException; {:try_start_15 .. :try_end_1a} :catch_1b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_1a} :catch_1b

    return-void

    :catch_1b
    move-exception p0

    .line 4028
    invoke-static {}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRepeatingRequest exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_38
    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .registers 4

    .line 3986
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .registers 5

    .line 4013
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    .line 4014
    invoke-static {}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ContinueShot [onCaptureFailed] session:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", mReleased: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CSPictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmReleased(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 4015
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CSPictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmReleased(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z

    move-result p1

    if-nez p1, :cond_39

    .line 4016
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CSPictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureFailed(Z)V

    :cond_39
    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .registers 4

    return-void
.end method

.method public onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V
    .registers 5

    .line 4004
    invoke-super {p0, p1, p2}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V

    .line 4005
    invoke-static {}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContinueShot [onCaptureSequenceAborted] session:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 4006
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$CSPictureCallback;->onCaptureSequenceFinished()V

    return-void
.end method

.method public onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V
    .registers 8

    .line 3991
    invoke-super {p0, p1, p2, p3, p4}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V

    .line 3992
    invoke-static {}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContinueShot [onCaptureSequenceCompleted] session:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3993
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl$CSPictureCallback;->onCaptureSequenceFinished()V

    .line 3994
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CSPictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object p1, p1, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    if-eqz p1, :cond_27

    .line 3995
    invoke-interface {p1, p2, p3, p4}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureSequenceCompleted(IJ)V

    .line 3997
    :cond_27
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CSPictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mRawCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    if-eqz p0, :cond_30

    .line 3998
    invoke-interface {p0, p2, p3, p4}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureSequenceCompleted(IJ)V

    :cond_30
    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .registers 14

    .line 3960
    invoke-super/range {p0 .. p6}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V

    .line 3961
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CSPictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p2}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmReleased(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z

    move-result p2

    if-eqz p2, :cond_15

    .line 3963
    invoke-static {}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "ContinueShot [onCaptureStarted] camera proxy has release"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 3966
    :cond_15
    invoke-static {}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContinueShot [onCaptureStarted] session:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "; frameNumber="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3967
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CSPictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object p1, p1, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mShutterCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;

    if-eqz p1, :cond_61

    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CSPictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmIsCancelCapture(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z

    move-result p1

    if-nez p1, :cond_61

    .line 3968
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CSPictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object v0, p1, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mShutterCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;

    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CSPictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmCameraId(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CSPictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmReleased(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Z

    move-result v2

    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CSPictureCallback;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->-$$Nest$fgetmParameters(Lcom/transsion/camera/adapter/CameraProxy2Impl;)Lcom/transsion/camera/adapter/CameraParameters2Impl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getCaptureTime()J

    move-result-wide v5

    move-wide v3, p3

    invoke-interface/range {v0 .. v6}, Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;->onShutterStarted(Ljava/lang/String;ZJJ)V

    .line 3970
    :cond_61
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CSPictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object p1, p1, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    if-eqz p1, :cond_6f

    .line 3971
    new-instance p2, Lcom/transsion/camera/adapter/NullCameraCaptureState;

    invoke-direct {p2}, Lcom/transsion/camera/adapter/NullCameraCaptureState;-><init>()V

    invoke-interface {p1, p3, p4, p2}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureStarted(JLcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V

    .line 3973
    :cond_6f
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$CSPictureCallback;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mRawCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    if-eqz p0, :cond_7d

    .line 3974
    new-instance p1, Lcom/transsion/camera/adapter/NullCameraCaptureState;

    invoke-direct {p1}, Lcom/transsion/camera/adapter/NullCameraCaptureState;-><init>()V

    invoke-interface {p0, p3, p4, p1}, Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;->onCaptureStarted(JLcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V

    :cond_7d
    return-void
.end method
