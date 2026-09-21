.class Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IUserInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;)V
    .registers 2

    .line 340
    iput-object p1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$1;->this$0:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserInteraction()V
    .registers 4

    .line 343
    iget-object v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$1;->this$0:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    const/16 v1, 0x154

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 344
    iget-object v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$1;->this$0:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    const/16 v1, 0xd6

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 345
    iget-object v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$1;->this$0:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->-$$Nest$fputmResetSleepPageTime(Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;J)V

    .line 346
    iget-object v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$1;->this$0:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->-$$Nest$fgetmMainHandler(Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$1;->this$0:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;

    invoke-static {v1}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->-$$Nest$fgetmResetSleepPageRunnable(Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 347
    iget-object v0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$1;->this$0:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->-$$Nest$fgetmMainHandler(Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$1;->this$0:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->-$$Nest$fgetmResetSleepPageRunnable(Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/32 v1, 0x3a980

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
