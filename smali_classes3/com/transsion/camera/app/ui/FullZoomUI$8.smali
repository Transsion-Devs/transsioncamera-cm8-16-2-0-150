.class Lcom/transsion/camera/app/ui/FullZoomUI$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/FullZoomUI;->notifyCameraOperateActionToUI(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/FullZoomUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/FullZoomUI;)V
    .registers 2

    .line 1731
    iput-object p1, p0, Lcom/transsion/camera/app/ui/FullZoomUI$8;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1734
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI$8;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/FullZoomUI;->-$$Nest$fgetmIsCapturing(Lcom/transsion/camera/app/ui/FullZoomUI;)Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI$8;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/FullZoomUI;->-$$Nest$fgetmSelfTimerBegin(Lcom/transsion/camera/app/ui/FullZoomUI;)Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI$8;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/FullZoomUI;->-$$Nest$fgetmUIState(Lcom/transsion/camera/app/ui/FullZoomUI;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2a

    .line 1735
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI$8;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/app/ui/FullZoomUI;->-$$Nest$fputmIsNeedAnimate(Lcom/transsion/camera/app/ui/FullZoomUI;Z)V

    .line 1736
    iget-object v0, p0, Lcom/transsion/camera/app/ui/FullZoomUI$8;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/FullZoomUI;->show(Z)V

    .line 1737
    iget-object p0, p0, Lcom/transsion/camera/app/ui/FullZoomUI$8;->this$0:Lcom/transsion/camera/app/ui/FullZoomUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/FullZoomUI;->showWideCamera()V

    :cond_2a
    return-void
.end method
