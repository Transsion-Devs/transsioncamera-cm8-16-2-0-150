.class Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$4;
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

    .line 953
    iput-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$4;->this$0:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    .line 963
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$4;->this$0:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    const/4 v0, 0x0

    # setter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mTouched:Z
    invoke-static {p1, v0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$4802(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;Z)Z

    .line 964
    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$4;->this$0:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    const/4 p1, 0x0

    # setter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mScale:F
    invoke-static {p0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$4602(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;F)F

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 956
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$4;->this$0:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    const/4 v0, 0x0

    # setter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mTouched:Z
    invoke-static {p1, v0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$4802(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;Z)Z

    .line 957
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$4;->this$0:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    const/4 v0, 0x0

    # setter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mScale:F
    invoke-static {p1, v0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$4602(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;F)F

    .line 958
    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$4;->this$0:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
