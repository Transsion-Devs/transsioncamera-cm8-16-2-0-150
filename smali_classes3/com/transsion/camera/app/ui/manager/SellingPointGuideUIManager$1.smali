.class Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->initSellingPointVideoLayout(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;)V
    .registers 2

    .line 106
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 109
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 111
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->-$$Nest$fgetmSellingPointVideoContainer(Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 112
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->-$$Nest$fgetmSellingPointVideoContainer(Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 113
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->-$$Nest$fgetmSellingPointVideoContainer(Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->-$$Nest$fgetmSellingPointVideoView(Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;)Lcom/transsion/camera/app/ui/widget/SellingPointTextureView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 114
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;

    # getter for: Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;
    invoke-static {p1}, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->access$000(Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    const/16 v0, 0x174

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 115
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/SellingPointGuideUIManager;->showFloatingWindowWithAnim()V

    return-void
.end method
