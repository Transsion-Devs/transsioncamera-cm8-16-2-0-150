.class Lcom/transsion/camera/app/ui/view/ScreenSupplyView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->fadeOut(Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/view/ScreenSupplyView;

.field final synthetic val$apertureView:Landroid/view/View;

.field final synthetic val$previewScreenSupplyView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/view/ScreenSupplyView;Landroid/view/View;Landroid/view/View;)V
    .registers 4

    .line 423
    iput-object p1, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView$2;->this$0:Lcom/transsion/camera/app/ui/view/ScreenSupplyView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView$2;->val$previewScreenSupplyView:Landroid/view/View;

    iput-object p3, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView$2;->val$apertureView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 436
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView$2;->this$0:Lcom/transsion/camera/app/ui/view/ScreenSupplyView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->-$$Nest$fputmEnterOutAnimator(Lcom/transsion/camera/app/ui/view/ScreenSupplyView;Landroid/animation/AnimatorSet;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 426
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView$2;->val$previewScreenSupplyView:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 427
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView$2;->val$apertureView:Landroid/view/View;

    if-eqz p1, :cond_13

    const/4 v1, 0x0

    .line 428
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 429
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView$2;->val$apertureView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 431
    :cond_13
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView$2;->this$0:Lcom/transsion/camera/app/ui/view/ScreenSupplyView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->-$$Nest$fputmEnterOutAnimator(Lcom/transsion/camera/app/ui/view/ScreenSupplyView;Landroid/animation/AnimatorSet;)V

    return-void
.end method
