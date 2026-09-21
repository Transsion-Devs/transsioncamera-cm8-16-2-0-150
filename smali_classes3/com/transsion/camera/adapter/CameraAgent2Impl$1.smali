.class Lcom/transsion/camera/adapter/CameraAgent2Impl$1;
.super Lcom/transsion/camera/utils/threads/WorkTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/adapter/CameraAgent2Impl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;


# direct methods
.method constructor <init>(Lcom/transsion/camera/adapter/CameraAgent2Impl;Ljava/lang/String;)V
    .registers 3

    .line 53
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    invoke-direct {p0, p2}, Lcom/transsion/camera/utils/threads/WorkTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public doProcess()V
    .registers 5

    .line 56
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->-$$Nest$fgetmLock(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 57
    :try_start_7
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    const-string v2, "initDeviceInfo start"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 58
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    new-instance v2, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    invoke-static {v3}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->-$$Nest$fgetmCameraManager(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Landroid/hardware/camera2/CameraManager;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;-><init>(Landroid/hardware/camera2/CameraManager;)V

    invoke-static {v1, v2}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->-$$Nest$fputmCameraDeviceInfo(Lcom/transsion/camera/adapter/CameraAgent2Impl;Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;)V

    .line 59
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    invoke-static {v1}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->-$$Nest$fgetmCameraDeviceInfo(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->initFirst()V

    .line 60
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    invoke-static {v1}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->-$$Nest$fgetmCameraDeviceInfo(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraDeviceInfo2Impl;->initSecond()V

    .line 61
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    const-string v2, "initDeviceInfo end"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    invoke-static {v1}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->-$$Nest$fgetmLock(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 63
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_7 .. :try_end_45} :catchall_8d

    .line 65
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "AvailabilityCallbackThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->-$$Nest$fputmAvailabilityThread(Lcom/transsion/camera/adapter/CameraAgent2Impl;Landroid/os/HandlerThread;)V

    .line 66
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->-$$Nest$fgetmAvailabilityThread(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 67
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    invoke-static {v2}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->-$$Nest$fgetmAvailabilityThread(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Landroid/os/HandlerThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {v0, v1}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->-$$Nest$fputmAvailabilityHandler(Lcom/transsion/camera/adapter/CameraAgent2Impl;Landroid/os/Handler;)V

    .line 68
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->-$$Nest$fgetmCameraManager(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Landroid/hardware/camera2/CameraManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    invoke-static {v1}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->-$$Nest$fgetmAvailabilityCallback(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$1;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->-$$Nest$fgetmAvailabilityHandler(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    .line 69
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "initDeviceInfo registerAvailabilityCallback"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :catchall_8d
    move-exception p0

    .line 63
    :try_start_8e
    monitor-exit v0
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8d

    throw p0
.end method
