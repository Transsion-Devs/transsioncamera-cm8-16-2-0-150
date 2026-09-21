.class Lcom/transsion/camera/app/common/mode/SubDeviceControl$1;
.super Lcom/transsion/camera/adapter/CameraAgent$Customer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/SubDeviceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/mode/SubDeviceControl;J)V
    .registers 4

    .line 843
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$1;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-direct {p0, p2, p3}, Lcom/transsion/camera/adapter/CameraAgent$Customer;-><init>(J)V

    return-void
.end method


# virtual methods
.method public onDeviceClosed(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onDeviceDisconnected(Ljava/lang/String;)V
    .registers 3

    .line 858
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$1;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmNotifyCallback(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 859
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$1;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmNotifyCallback(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;->notifyDeviceDisconnected(Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method public onDeviceError(Ljava/lang/String;I)V
    .registers 4

    .line 865
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$1;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmHandler(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_20

    .line 866
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/16 v0, 0x65

    .line 867
    iput v0, p1, Landroid/os/Message;->what:I

    .line 868
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 869
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$1;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmHandler(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_20
    return-void
.end method

.method public onDeviceOpened(Lcom/transsion/camera/adapter/CameraProxy;Ljava/lang/String;)V
    .registers 3

    .line 846
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$1;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmHandler(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Landroid/os/Handler;

    move-result-object p2

    if-eqz p2, :cond_17

    .line 847
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$1;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmHandler(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Landroid/os/Handler;

    move-result-object p0

    const/16 p2, 0x64

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_17
    return-void
.end method
