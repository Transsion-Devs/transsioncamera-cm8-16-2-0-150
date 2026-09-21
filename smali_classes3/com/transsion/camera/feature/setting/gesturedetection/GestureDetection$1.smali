.class Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;)V
    .registers 2

    .line 458
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection$1;->this$0:Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .registers 4

    .line 467
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection$1;->this$0:Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->-$$Nest$fgetmRestored(Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 468
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection$1;->this$0:Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->-$$Nest$fgetmIsModeSupportOriginal(Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->-$$Nest$fputmIsModeSupport(Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;Z)V

    .line 469
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection$1;->this$0:Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->-$$Nest$msyncRemoteCaptureFragment(Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;)V

    .line 471
    :cond_16
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection$1;->this$0:Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection$1;->this$0:Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->-$$Nest$fgetmIsModeSupport(Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 472
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection$1;->this$0:Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->-$$Nest$fgetmHandler(Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 473
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection$1;->this$0:Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->-$$Nest$fgetmHandler(Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;)Landroid/os/Handler;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 474
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection$1;->this$0:Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->access$000(Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection$1;->this$0:Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    :cond_55
    return-void
.end method

.method public onPreviewStopped()V
    .registers 2

    .line 462
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection$1;->this$0:Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;->-$$Nest$fgetmHandler(Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetection;)Landroid/os/Handler;

    move-result-object p0

    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
