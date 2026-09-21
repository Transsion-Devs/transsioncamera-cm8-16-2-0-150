.class Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$3;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->captureStillPicture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;


# direct methods
.method constructor <init>(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)V
    .registers 2

    .line 910
    iput-object p1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$3;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .registers 8

    const/4 p1, 0x0

    .line 936
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    .line 926
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 914
    iget-object v0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$3;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    # getter for: Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;
    invoke-static {v0}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$2000(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    if-nez v0, :cond_13

    return-void

    .line 918
    :cond_13
    iget-object v0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$3;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    # setter for: Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mCaptureResultCache:Landroid/hardware/camera2/TotalCaptureResult;
    invoke-static {v0, p3}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$2102(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/TotalCaptureResult;

    .line 919
    iget-object p3, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$3;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    # getter for: Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;
    invoke-static {p3}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$2200(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p3

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p3, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    .line 920
    iget-object v1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$3;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    # getter for: Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;
    invoke-static {v1}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$2300(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v3, 0x1

    if-eqz p3, :cond_3d

    .line 922
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-eq p3, v3, :cond_45

    :cond_3d
    if-eqz v1, :cond_9a

    .line 923
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ne p3, v3, :cond_9a

    .line 924
    :cond_45
    const-string p3, "need cancel ae af trigger"

    const-string v1, "TEImage2Mode"

    invoke-static {v1, p3}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    iget-object p3, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$3;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    # getter for: Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;
    invoke-static {p3}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$2400(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p3

    invoke-virtual {p3, v0, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 928
    iget-object p3, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$3;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    # getter for: Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;
    invoke-static {p3}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$2500(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p3

    invoke-virtual {p3, v2, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 930
    iget-object p2, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$3;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    # getter for: Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;
    invoke-static {p2}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$2600(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p3

    const/4 v3, 0x0

    # invokes: Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->capture(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;
    invoke-static {p2, p3, v3, v3}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$2700(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;

    move-result-object p2

    .line 931
    invoke-virtual {p2}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->isSuccess()Z

    move-result p3

    if-nez p3, :cond_88

    .line 932
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onCaptureSequenceCompleted: error = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->getErrMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 936
    :cond_88
    iget-object p2, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$3;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    # getter for: Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;
    invoke-static {p2}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$2800(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p2

    invoke-virtual {p2, v0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 937
    iget-object p2, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$3;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    # getter for: Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;
    invoke-static {p2}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$2900(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p2

    invoke-virtual {p2, v2, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 940
    :cond_9a
    iget-object p0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$3;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    # getter for: Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;
    invoke-static {p0}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$3000(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    # invokes: Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->updatePreview(Landroid/hardware/camera2/CaptureRequest$Builder;)Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;
    invoke-static {p0, p1}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$3100(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;Landroid/hardware/camera2/CaptureRequest$Builder;)Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;

    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .registers 7

    .line 947
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    .line 948
    const-string p1, "TEImage2Mode"

    const-string p2, "captureStillPicture, capture failed"

    invoke-static {p1, p2}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    iget-object p1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$3;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    # getter for: Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;
    invoke-static {p1}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$3200(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)Lcom/ss/android/ttvecamera/TECameraSettings;

    move-result-object p1

    iget-boolean p1, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableYuvBufferCapture:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_1d

    .line 950
    iget-object p1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$3;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    # getter for: Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;
    invoke-static {p1}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$3300(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)Lcom/ss/android/ttvecamera/TECameraSettings;

    move-result-object p1

    iput-boolean p2, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableYuvBufferCapture:Z

    .line 952
    :cond_1d
    iget-object p1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$3;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    # getter for: Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;
    invoke-static {p1}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$3400(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)Lcom/ss/android/ttvecamera/TECameraSettings;

    move-result-object p1

    iget-boolean p1, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableCamera2Zsl:Z

    if-eqz p1, :cond_2f

    .line 953
    iget-object p1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$3;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    # getter for: Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;
    invoke-static {p1}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$3500(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)Lcom/ss/android/ttvecamera/TECameraSettings;

    move-result-object p1

    iput-boolean p2, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableCamera2Zsl:Z

    .line 955
    :cond_2f
    iget-object p1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$3;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    # getter for: Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mHandHelper:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$HandlerHelper;
    invoke-static {p1}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$200(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$HandlerHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$3;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    # getter for: Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mHandHelper:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$HandlerHelper;
    invoke-static {p2}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$200(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$HandlerHelper;

    move-result-object p2

    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Capture failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 956
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/16 p3, 0x3eb

    invoke-virtual {p2, p3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 955
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 957
    iget-object p0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$3;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    # getter for: Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->mHandHelper:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$HandlerHelper;
    invoke-static {p0}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$200(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$HandlerHelper;

    move-result-object p0

    const/16 p1, 0x3ea

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
