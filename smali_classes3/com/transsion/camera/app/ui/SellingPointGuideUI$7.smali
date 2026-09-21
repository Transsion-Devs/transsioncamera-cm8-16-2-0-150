.class Lcom/transsion/camera/app/ui/SellingPointGuideUI$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/SellingPointGuideUI;->startAlphaAnimation(Landroid/view/View;FFIILandroid/view/animation/PathInterpolator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$dstAlpha:F

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/SellingPointGuideUI;FLandroid/view/View;)V
    .registers 4

    .line 984
    iput p2, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI$7;->val$dstAlpha:F

    iput-object p3, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI$7;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 987
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 988
    iget p1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI$7;->val$dstAlpha:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_11

    .line 989
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI$7;->val$view:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_11
    return-void
.end method
