.class Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->handleChildViewAnimationImpl(Landroid/view/View;ZIILandroid/animation/Animator$AnimatorListener;II)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;

.field final synthetic val$childView:Landroid/view/View;

.field final synthetic val$inverse:Z

.field final synthetic val$listener:Landroid/animation/Animator$AnimatorListener;

.field final synthetic val$overlay:Landroid/widget/FrameLayout;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;Landroid/widget/FrameLayout;Landroid/animation/Animator$AnimatorListener;Landroid/view/View;Z)V
    .registers 6

    .line 1609
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy$1;->this$1:Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy$1;->val$overlay:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy$1;->val$listener:Landroid/animation/Animator$AnimatorListener;

    iput-object p4, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy$1;->val$childView:Landroid/view/View;

    iput-boolean p5, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy$1;->val$inverse:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 1637
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 1639
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy$1;->val$listener:Landroid/animation/Animator$AnimatorListener;

    if-eqz p0, :cond_a

    .line 1640
    invoke-interface {p0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    :cond_a
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 1621
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1622
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy$1;->val$listener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_a

    .line 1623
    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1625
    :cond_a
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy$1;->this$1:Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$fgetmRoot(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_49

    .line 1626
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy$1;->this$1:Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$fgetmRoot(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy$1;->val$overlay:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1627
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy$1;->val$overlay:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1628
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy$1;->val$childView:Landroid/view/View;

    if-eqz p1, :cond_49

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_49

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy$1;->val$inverse:Z

    if-nez p1, :cond_49

    .line 1629
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy$1;->val$childView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_49
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .line 1612
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 1613
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy$1;->this$1:Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$fgetmRoot(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 1614
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy$1;->this$1:Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;->this$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->-$$Nest$fgetmRoot(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy$1;->val$overlay:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1615
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy$1;->val$overlay:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->bringToFront()V

    :cond_2d
    return-void
.end method
