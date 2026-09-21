.class Lcom/transsion/camera/app/ui/FrontWideCameraUI$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/FrontWideCameraUI;->notifyCameraOperateActionToUI(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)V
    .registers 2

    .line 1356
    iput-object p1, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$6;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1359
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$6;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->-$$Nest$fgetmIsCapturing(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$6;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->-$$Nest$fgetmSelfTimerBegin(Lcom/transsion/camera/app/ui/FrontWideCameraUI;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 1360
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$6;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->-$$Nest$fputmIsNeedAnimate(Lcom/transsion/camera/app/ui/FrontWideCameraUI;Z)V

    .line 1361
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$6;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->show(Z)V

    .line 1362
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FrontWideCameraUI$6;->this$0:Lcom/transsion/camera/app/ui/FrontWideCameraUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FrontWideCameraUI;->showWideCamera()V

    :cond_21
    return-void
.end method
