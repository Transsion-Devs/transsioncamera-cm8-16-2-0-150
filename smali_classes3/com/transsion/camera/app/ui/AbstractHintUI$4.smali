.class Lcom/transsion/camera/app/ui/AbstractHintUI$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/AbstractHintUI;->runHintRootAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/AbstractHintUI;)V
    .registers 2

    .line 1857
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$4;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 1865
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 1866
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$4;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRoot:Landroid/widget/FrameLayout;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 1860
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1861
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$4;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRoot:Landroid/widget/FrameLayout;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
