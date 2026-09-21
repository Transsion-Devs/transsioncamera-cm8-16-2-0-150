.class Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->fadeoutZoomWheel(Landroid/view/View;Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$container:Landroid/view/View;

.field final synthetic val$graduationView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/view/View;)V
    .registers 3

    .line 337
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$8;->val$graduationView:Landroid/view/View;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$8;->val$container:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    .line 340
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 341
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$8;->val$graduationView:Landroid/view/View;

    instance-of v0, p1, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;

    if-eqz v0, :cond_f

    .line 342
    check-cast p1, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->setIsBeingHidden(Z)V

    .line 344
    :cond_f
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$8;->val$container:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 345
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$8;->val$graduationView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 346
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$8;->val$container:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 347
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$8;->val$container:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 352
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 353
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$8;->val$graduationView:Landroid/view/View;

    instance-of v0, p1, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;

    if-eqz v0, :cond_f

    .line 354
    check-cast p1, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->setIsBeingHidden(Z)V

    .line 356
    :cond_f
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$8;->val$container:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 357
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$8;->val$graduationView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 358
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$8;->val$container:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 359
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$8;->val$container:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method
