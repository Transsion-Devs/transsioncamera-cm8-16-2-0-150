.class public Lcom/transsion/camera/app/ui/view/ViewSwitcher;
.super Landroid/widget/ViewSwitcher;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 13
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public reset()V
    .registers 1

    .line 17
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/view/ViewSwitcher;->showBackground()V

    return-void
.end method

.method public showBackground()V
    .registers 3

    .line 29
    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getDisplayedChild()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    return-void
.end method

.method public showForeground()V
    .registers 3

    .line 33
    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getDisplayedChild()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    return-void
.end method

.method public final showNext()V
    .registers 1

    return-void
.end method

.method public final showPrevious()V
    .registers 1

    return-void
.end method
