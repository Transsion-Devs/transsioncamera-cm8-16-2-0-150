.class Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$13;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->showZoomItemView(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 2

    .line 492
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$13;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    .line 495
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 496
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$13;->val$view:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 497
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$13;->val$view:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 498
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$13;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 499
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$13;->val$view:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 504
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 505
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$13;->val$view:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 506
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$13;->val$view:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 507
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$13;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 508
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$13;->val$view:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    .line 513
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 514
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$13;->val$view:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
