.class Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->handleChildViewAnimationImpl(Landroid/view/View;IZIILandroid/animation/Animator$AnimatorListener;II)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$childView:Landroid/view/View;

.field final synthetic val$inverse:Z

.field final synthetic val$listener:Landroid/animation/Animator$AnimatorListener;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;Landroid/animation/Animator$AnimatorListener;Landroid/view/View;Z)V
    .registers 5

    .line 1710
    iput-object p2, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy$1;->val$listener:Landroid/animation/Animator$AnimatorListener;

    iput-object p3, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy$1;->val$childView:Landroid/view/View;

    iput-boolean p4, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy$1;->val$inverse:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 1724
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 1726
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy$1;->val$listener:Landroid/animation/Animator$AnimatorListener;

    if-eqz p0, :cond_a

    .line 1727
    invoke-interface {p0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    :cond_a
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 1713
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1714
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy$1;->val$listener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_a

    .line 1715
    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1717
    :cond_a
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy$1;->val$childView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_1d

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy$1;->val$inverse:Z

    if-nez p1, :cond_1d

    .line 1718
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy$1;->val$childView:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_1d
    return-void
.end method
