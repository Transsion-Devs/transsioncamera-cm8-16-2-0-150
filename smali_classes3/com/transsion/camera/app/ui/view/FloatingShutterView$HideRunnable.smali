.class Lcom/transsion/camera/app/ui/view/FloatingShutterView$HideRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/view/FloatingShutterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HideRunnable"
.end annotation


# instance fields
.field mParent:Landroid/view/View;

.field final synthetic this$0:Lcom/transsion/camera/app/ui/view/FloatingShutterView;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/ui/view/FloatingShutterView;Landroid/view/View;)V
    .registers 3

    .line 727
    iput-object p1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView$HideRunnable;->this$0:Lcom/transsion/camera/app/ui/view/FloatingShutterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 728
    iput-object p2, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView$HideRunnable;->mParent:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 733
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView$HideRunnable;->this$0:Lcom/transsion/camera/app/ui/view/FloatingShutterView;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/view/FloatingShutterView;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 734
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView$HideRunnable;->this$0:Lcom/transsion/camera/app/ui/view/FloatingShutterView;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/view/FloatingShutterView;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    const/16 v1, 0xe5

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 736
    :cond_13
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView$HideRunnable;->this$0:Lcom/transsion/camera/app/ui/view/FloatingShutterView;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->-$$Nest$fgetmRootView(Lcom/transsion/camera/app/ui/view/FloatingShutterView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 737
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView$HideRunnable;->this$0:Lcom/transsion/camera/app/ui/view/FloatingShutterView;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->-$$Nest$fgetmRootView(Lcom/transsion/camera/app/ui/view/FloatingShutterView;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 738
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView$HideRunnable;->this$0:Lcom/transsion/camera/app/ui/view/FloatingShutterView;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->-$$Nest$fgetmRootView(Lcom/transsion/camera/app/ui/view/FloatingShutterView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 739
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView$HideRunnable;->this$0:Lcom/transsion/camera/app/ui/view/FloatingShutterView;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->-$$Nest$fgetmRootView(Lcom/transsion/camera/app/ui/view/FloatingShutterView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 740
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView$HideRunnable;->this$0:Lcom/transsion/camera/app/ui/view/FloatingShutterView;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->-$$Nest$fgetmRootView(Lcom/transsion/camera/app/ui/view/FloatingShutterView;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 741
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView$HideRunnable;->mParent:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
