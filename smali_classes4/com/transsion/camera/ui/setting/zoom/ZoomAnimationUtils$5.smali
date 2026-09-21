.class Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->hideZoomItemIndicator(Landroid/view/View;Z)V
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

    .line 213
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$5;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    .line 216
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 217
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$5;->val$view:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 218
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$5;->val$view:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 219
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$5;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 220
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$5;->val$view:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 225
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 226
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$5;->val$view:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 227
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$5;->val$view:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 228
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$5;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 229
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$5;->val$view:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
