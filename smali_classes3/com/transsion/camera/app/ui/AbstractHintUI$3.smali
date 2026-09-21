.class Lcom/transsion/camera/app/ui/AbstractHintUI$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/AbstractHintUI;->runHintRootAnimator(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

.field final synthetic val$orientation:I


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/AbstractHintUI;I)V
    .registers 3

    .line 1832
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$3;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    iput p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$3;->val$orientation:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    .line 1835
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1836
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$3;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRoot:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1837
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$3;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->-$$Nest$fgetmScreenFormType(Lcom/transsion/camera/app/ui/AbstractHintUI;)I

    move-result v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$3;->val$orientation:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateProgressBarLayout(IZI)V

    .line 1838
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI$3;->this$0:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->-$$Nest$fgetmFoldAnimatorIn(Lcom/transsion/camera/app/ui/AbstractHintUI;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
