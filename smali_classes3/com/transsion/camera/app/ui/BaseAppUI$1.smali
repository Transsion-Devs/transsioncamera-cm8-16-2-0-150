.class Lcom/transsion/camera/app/ui/BaseAppUI$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/mode/CameraOperateAction$RawActionHandleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/BaseAppUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/BaseAppUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .registers 2

    .line 464
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI$1;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAction(I)V
    .registers 5

    .line 467
    invoke-static {}, Lcom/transsion/camera/app/ui/BaseAppUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAction = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->actionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mIsPaused: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI$1;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-boolean v2, v2, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 467
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 469
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$1;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->-$$Nest$misMainThread(Lcom/transsion/camera/app/ui/BaseAppUI;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 470
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$1;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->-$$Nest$monCameraOperateAction(Lcom/transsion/camera/app/ui/BaseAppUI;I)V

    return-void

    .line 472
    :cond_36
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$1;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->-$$Nest$fgetmLockObj(Lcom/transsion/camera/app/ui/BaseAppUI;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 473
    :try_start_3d
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI$1;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-boolean v1, v1, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsPaused:Z

    if-nez v1, :cond_55

    .line 474
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$1;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/app/ui/BaseAppUI;)Landroid/os/Handler;

    move-result-object p0

    const/16 v1, 0x69

    invoke-virtual {p0, v1, p1, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_55

    :catchall_53
    move-exception p0

    goto :goto_57

    .line 476
    :cond_55
    :goto_55
    monitor-exit v0

    return-void

    :goto_57
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_3d .. :try_end_58} :catchall_53

    throw p0
.end method
