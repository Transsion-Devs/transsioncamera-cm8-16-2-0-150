.class Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->initAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)V
    .registers 2

    .line 923
    iput-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$2;->this$0:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    .line 933
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$2;->this$0:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    const/4 v0, 0x1

    # setter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mShowAnimationCancel:Z
    invoke-static {p1, v0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$4702(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;Z)Z

    .line 934
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$2;->this$0:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    const/4 v0, 0x0

    # setter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mTouched:Z
    invoke-static {p1, v0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$4802(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;Z)Z

    .line 935
    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$2;->this$0:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    const/4 p1, 0x0

    # setter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mScale:F
    invoke-static {p0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$4602(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;F)F

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 926
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$2;->this$0:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    # getter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mShowAnimationCancel:Z
    invoke-static {p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$4700(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Z

    move-result p1

    if-nez p1, :cond_3d

    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$2;->this$0:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    # getter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mTouched:Z
    invoke-static {p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$4800(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Z

    move-result p1

    if-eqz p1, :cond_3d

    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$2;->this$0:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    # getter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mHideScaleAnimation:Landroid/animation/ValueAnimator;
    invoke-static {p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$4900(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-eqz p1, :cond_3d

    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$2;->this$0:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    # getter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mHideScaleAnimation:Landroid/animation/ValueAnimator;
    invoke-static {p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$4900(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_3d

    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$2;->this$0:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    # getter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mHideAlphaAnimation:Landroid/animation/ValueAnimator;
    invoke-static {p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$5000(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-eqz p1, :cond_3d

    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$2;->this$0:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    # getter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mHideAlphaAnimation:Landroid/animation/ValueAnimator;
    invoke-static {p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$5000(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_3d

    .line 927
    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$2;->this$0:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    # invokes: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->startHideAnimation()V
    invoke-static {p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$5100(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)V

    :cond_3d
    return-void
.end method
