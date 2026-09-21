.class Lcom/ss/android/medialib/camera/Camera2$6;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/medialib/camera/Camera2;->setFocusAreas(IIF[FI)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/medialib/camera/Camera2;


# direct methods
.method constructor <init>(Lcom/ss/android/medialib/camera/Camera2;)V
    .registers 2

    .line 849
    iput-object p1, p0, Lcom/ss/android/medialib/camera/Camera2$6;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .registers 7

    .line 861
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Focus::onCaptureCompleted: thread_name = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Camera2"

    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_f4

    .line 862
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string p2, "FOCUS_TAG"

    if-eq p1, p2, :cond_2a

    goto/16 :goto_f4

    .line 867
    :cond_2a
    sget-object p1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, p1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_36

    goto/16 :goto_f3

    .line 871
    :cond_36
    iget-object p2, p0, Lcom/ss/android/medialib/camera/Camera2$6;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    # getter for: Lcom/ss/android/medialib/camera/Camera2;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;
    invoke-static {p2}, Lcom/ss/android/medialib/camera/Camera2;->access$800(Lcom/ss/android/medialib/camera/Camera2;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p2

    if-eqz p2, :cond_f3

    .line 872
    iget-object p2, p0, Lcom/ss/android/medialib/camera/Camera2$6;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    # operator++ for: Lcom/ss/android/medialib/camera/Camera2;->mFocusTryCount:I
    invoke-static {p2}, Lcom/ss/android/medialib/camera/Camera2;->access$908(Lcom/ss/android/medialib/camera/Camera2;)I

    .line 873
    iget-object p2, p0, Lcom/ss/android/medialib/camera/Camera2$6;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    # getter for: Lcom/ss/android/medialib/camera/Camera2;->mCurrentAFState:I
    invoke-static {p2}, Lcom/ss/android/medialib/camera/Camera2;->access$1000(Lcom/ss/android/medialib/camera/Camera2;)I

    move-result p2

    const/4 p3, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x3

    if-eq p2, v2, :cond_69

    iget-object p2, p0, Lcom/ss/android/medialib/camera/Camera2$6;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    # getter for: Lcom/ss/android/medialib/camera/Camera2;->mCurrentAFState:I
    invoke-static {p2}, Lcom/ss/android/medialib/camera/Camera2;->access$1000(Lcom/ss/android/medialib/camera/Camera2;)I

    move-result p2

    if-eq p2, v1, :cond_69

    iget-object p2, p0, Lcom/ss/android/medialib/camera/Camera2$6;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    # getter for: Lcom/ss/android/medialib/camera/Camera2;->mCurrentAFState:I
    invoke-static {p2}, Lcom/ss/android/medialib/camera/Camera2;->access$1000(Lcom/ss/android/medialib/camera/Camera2;)I

    move-result p2

    if-ne p2, p3, :cond_5f

    goto :goto_69

    .line 895
    :cond_5f
    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera2$6;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    # setter for: Lcom/ss/android/medialib/camera/Camera2;->mCurrentAFState:I
    invoke-static {p0, p1}, Lcom/ss/android/medialib/camera/Camera2;->access$1002(Lcom/ss/android/medialib/camera/Camera2;I)I

    return-void

    .line 874
    :cond_69
    :goto_69
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eq p2, v1, :cond_75

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, p3, :cond_f3

    .line 875
    :cond_75
    iget-object p1, p0, Lcom/ss/android/medialib/camera/Camera2$6;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    const/4 p2, 0x0

    # setter for: Lcom/ss/android/medialib/camera/Camera2;->mManualFocusEngaged:Z
    invoke-static {p1, p2}, Lcom/ss/android/medialib/camera/Camera2;->access$1102(Lcom/ss/android/medialib/camera/Camera2;Z)Z

    .line 879
    :try_start_7b
    iget-object p1, p0, Lcom/ss/android/medialib/camera/Camera2$6;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    # getter for: Lcom/ss/android/medialib/camera/Camera2;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;
    invoke-static {p1}, Lcom/ss/android/medialib/camera/Camera2;->access$800(Lcom/ss/android/medialib/camera/Camera2;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    sget-object p3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p3, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 880
    iget-object p1, p0, Lcom/ss/android/medialib/camera/Camera2$6;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    # getter for: Lcom/ss/android/medialib/camera/Camera2;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;
    invoke-static {p1}, Lcom/ss/android/medialib/camera/Camera2;->access$800(Lcom/ss/android/medialib/camera/Camera2;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    sget-object p3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p3, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 883
    iget-object p1, p0, Lcom/ss/android/medialib/camera/Camera2$6;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    # getter for: Lcom/ss/android/medialib/camera/Camera2;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;
    invoke-static {p1}, Lcom/ss/android/medialib/camera/Camera2;->access$800(Lcom/ss/android/medialib/camera/Camera2;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p3

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p3

    # setter for: Lcom/ss/android/medialib/camera/Camera2;->mCaptureRequest:Landroid/hardware/camera2/CaptureRequest;
    invoke-static {p1, p3}, Lcom/ss/android/medialib/camera/Camera2;->access$1202(Lcom/ss/android/medialib/camera/Camera2;Landroid/hardware/camera2/CaptureRequest;)Landroid/hardware/camera2/CaptureRequest;

    .line 884
    iget-object p1, p0, Lcom/ss/android/medialib/camera/Camera2$6;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    # getter for: Lcom/ss/android/medialib/camera/Camera2;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;
    invoke-static {p1}, Lcom/ss/android/medialib/camera/Camera2;->access$600(Lcom/ss/android/medialib/camera/Camera2;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object p1

    if-eqz p1, :cond_ca

    .line 885
    iget-object p1, p0, Lcom/ss/android/medialib/camera/Camera2$6;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    # getter for: Lcom/ss/android/medialib/camera/Camera2;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;
    invoke-static {p1}, Lcom/ss/android/medialib/camera/Camera2;->access$600(Lcom/ss/android/medialib/camera/Camera2;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object p1

    iget-object p3, p0, Lcom/ss/android/medialib/camera/Camera2$6;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    # getter for: Lcom/ss/android/medialib/camera/Camera2;->mCaptureRequest:Landroid/hardware/camera2/CaptureRequest;
    invoke-static {p3}, Lcom/ss/android/medialib/camera/Camera2;->access$1200(Lcom/ss/android/medialib/camera/Camera2;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object p3

    iget-object v1, p0, Lcom/ss/android/medialib/camera/Camera2$6;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    # getter for: Lcom/ss/android/medialib/camera/Camera2;->mSessionCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    invoke-static {v1}, Lcom/ss/android/medialib/camera/Camera2;->access$1300(Lcom/ss/android/medialib/camera/Camera2;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/medialib/camera/Camera2$6;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    # getter for: Lcom/ss/android/medialib/camera/Camera2;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/ss/android/medialib/camera/Camera2;->access$1400(Lcom/ss/android/medialib/camera/Camera2;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {p1, p3, v1, v2}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 887
    :cond_ca
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Focus done, try count = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/ss/android/medialib/camera/Camera2$6;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    # getter for: Lcom/ss/android/medialib/camera/Camera2;->mFocusTryCount:I
    invoke-static {p3}, Lcom/ss/android/medialib/camera/Camera2;->access$900(Lcom/ss/android/medialib/camera/Camera2;)I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    iget-object p1, p0, Lcom/ss/android/medialib/camera/Camera2$6;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    # setter for: Lcom/ss/android/medialib/camera/Camera2;->mFocusTryCount:I
    invoke-static {p1, p2}, Lcom/ss/android/medialib/camera/Camera2;->access$902(Lcom/ss/android/medialib/camera/Camera2;I)I

    .line 889
    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera2$6;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    # setter for: Lcom/ss/android/medialib/camera/Camera2;->mCurrentAFState:I
    invoke-static {p0, p2}, Lcom/ss/android/medialib/camera/Camera2;->access$1002(Lcom/ss/android/medialib/camera/Camera2;I)I
    :try_end_ee
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_7b .. :try_end_ee} :catch_ef

    return-void

    :catch_ef
    move-exception p0

    .line 891
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_f3
    :goto_f3
    return-void

    .line 863
    :cond_f4
    :goto_f4
    const-string p0, "Not focus request!"

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .registers 4

    .line 902
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    .line 903
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Manual AF failure: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Camera2"

    invoke-static {p2, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera2$6;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    const/4 p1, 0x0

    # setter for: Lcom/ss/android/medialib/camera/Camera2;->mManualFocusEngaged:Z
    invoke-static {p0, p1}, Lcom/ss/android/medialib/camera/Camera2;->access$1102(Lcom/ss/android/medialib/camera/Camera2;Z)Z

    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .registers 4

    .line 854
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method
