.class Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 969
    iput-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$5;->this$0:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 972
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$5;->this$0:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    # getter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mHideScaleAnimation:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$4900(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$5;->this$0:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    # getter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mHideScaleAnimation:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$4900(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_26

    .line 973
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$5;->this$0:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    # getter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mHideScaleAnimation:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$4900(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 974
    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$5;->this$0:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    # getter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mHideAlphaAnimation:Landroid/animation/ValueAnimator;
    invoke-static {p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$5000(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_26
    return-void
.end method
