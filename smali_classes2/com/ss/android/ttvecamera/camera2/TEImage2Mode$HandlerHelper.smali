.class Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$HandlerHelper;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandlerHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;


# direct methods
.method public constructor <init>(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;Landroid/os/Looper;)V
    .registers 3

    .line 1663
    iput-object p1, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$HandlerHelper;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    .line 1664
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .registers 4

    .line 1669
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 1670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatch msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TEImage2Mode"

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1671
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_50

    return-void

    .line 1690
    :pswitch_21
    iget-object p0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$HandlerHelper;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    # invokes: Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->captureStillPicture()V
    invoke-static {p0}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$4800(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)V

    return-void

    .line 1686
    :pswitch_27
    iget-object p0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$HandlerHelper;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->cancelAFTrigger()V

    return-void

    .line 1683
    :pswitch_2d
    iget-object p0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$HandlerHelper;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    # getter for: Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;
    invoke-static {p0}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$4600(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    # invokes: Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->updatePreview(Landroid/hardware/camera2/CaptureRequest$Builder;)Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;
    invoke-static {p0, p1}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$4700(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;Landroid/hardware/camera2/CaptureRequest$Builder;)Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;

    return-void

    .line 1680
    :pswitch_37
    iget-object p0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$HandlerHelper;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Exception;

    const/16 v0, -0x3e8

    # invokes: Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->onCaptureFailed(Ljava/lang/Exception;I)V
    invoke-static {p0, p1, v0}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$4200(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;Ljava/lang/Exception;I)V

    return-void

    .line 1677
    :pswitch_43
    iget-object p0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$HandlerHelper;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    # invokes: Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->resetPreviewAfterFlashCapture()V
    invoke-static {p0}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$4500(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)V

    return-void

    .line 1674
    :pswitch_49
    iget-object p0, p0, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode$HandlerHelper;->this$0:Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;

    # invokes: Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->doCaptureOnReady()V
    invoke-static {p0}, Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;->access$4400(Lcom/ss/android/ttvecamera/camera2/TEImage2Mode;)V

    return-void

    nop

    :pswitch_data_50
    .packed-switch 0x3e8
        :pswitch_49
        :pswitch_49
        :pswitch_43
        :pswitch_37
        :pswitch_2d
        :pswitch_27
        :pswitch_21
        :pswitch_21
    .end packed-switch
.end method
