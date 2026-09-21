.class Lcom/transsion/camera/adapter/CameraAgent2Impl$2;
.super Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/adapter/CameraAgent2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;


# direct methods
.method constructor <init>(Lcom/transsion/camera/adapter/CameraAgent2Impl;)V
    .registers 2

    .line 113
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$2;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraAvailable(Ljava/lang/String;)V
    .registers 7

    .line 116
    invoke-super {p0, p1}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->onCameraAvailable(Ljava/lang/String;)V

    .line 117
    const-class v0, Lcom/transsion/camera/adapter/CameraAgent;

    monitor-enter v0

    .line 118
    :try_start_6
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCameraAvailable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$2;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    invoke-static {v3}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->-$$Nest$fgetmPendingOpenCustomer(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Lcom/transsion/camera/adapter/CameraAgent$Customer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " , mIsPause:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$2;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    iget-boolean v3, v3, Lcom/transsion/camera/adapter/CameraAgent;->mIsPause:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 119
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$2;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    invoke-static {v1, p1}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->-$$Nest$mremoveUnavailable(Lcom/transsion/camera/adapter/CameraAgent2Impl;Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$2;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    invoke-static {v1}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->-$$Nest$fgetmPendingOpenCustomer(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Lcom/transsion/camera/adapter/CameraAgent$Customer;

    move-result-object v1

    if-eqz v1, :cond_7c

    .line 122
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCameraAvailable: cameraId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", customer.getCameraId(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraAgent$Customer;->getCameraId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", equals: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraAgent$Customer;->getCameraId()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 122
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_7c

    :catchall_7a
    move-exception p0

    goto :goto_a6

    :cond_7c
    :goto_7c
    if-eqz v1, :cond_a4

    .line 127
    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraAgent$Customer;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a4

    .line 128
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$2;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->-$$Nest$fgetmAvailabilityHandler(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Landroid/os/Handler;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$2;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    invoke-static {v1}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->-$$Nest$fgetmReOpenRunnable(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 129
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$2;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    iget-boolean p1, p0, Lcom/transsion/camera/adapter/CameraAgent;->mIsPause:Z

    if-nez p1, :cond_a4

    .line 130
    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->-$$Nest$fgetmReOpenRunnable(Lcom/transsion/camera/adapter/CameraAgent2Impl;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 133
    :cond_a4
    monitor-exit v0

    return-void

    :goto_a6
    monitor-exit v0
    :try_end_a7
    .catchall {:try_start_6 .. :try_end_a7} :catchall_7a

    throw p0
.end method

.method public onCameraUnavailable(Ljava/lang/String;)V
    .registers 5

    .line 138
    invoke-super {p0, p1}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->onCameraUnavailable(Ljava/lang/String;)V

    .line 139
    const-class v0, Lcom/transsion/camera/adapter/CameraAgent;

    monitor-enter v0

    .line 140
    :try_start_6
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraAgent2Impl$2;->this$0:Lcom/transsion/camera/adapter/CameraAgent2Impl;

    invoke-static {p0, p1}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->-$$Nest$maddUnavailable(Lcom/transsion/camera/adapter/CameraAgent2Impl;Ljava/lang/String;)V

    .line 141
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgent2Impl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraUnavailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 142
    monitor-exit v0

    return-void

    :catchall_25
    move-exception p0

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_6 .. :try_end_27} :catchall_25

    throw p0
.end method
