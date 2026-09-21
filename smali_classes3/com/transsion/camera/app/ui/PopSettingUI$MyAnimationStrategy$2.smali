.class Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;->initPopupAnim(Landroid/view/View;ZILandroid/animation/AnimatorSet;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy;Landroid/view/View;)V
    .registers 3

    .line 1804
    iput-object p2, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 1817
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy$2;->val$view:Landroid/view/View;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    .line 1822
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI$MyAnimationStrategy$2;->val$view:Landroid/view/View;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method
