.class Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DelHeightAnimatorUpdateListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DelHeightAnimatorUpdateListener"
.end annotation


# instance fields
.field private mBottomMargin:I

.field private mDeleteAnimationListenerCompat:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DeleteAnimationListenerCompat;

.field private mHost:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mTopMargin:I


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DeleteAnimationListenerCompat;)V
    .registers 4

    .line 1731
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1732
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DelHeightAnimatorUpdateListener;->mHost:Ljava/lang/ref/WeakReference;

    .line 1733
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DelHeightAnimatorUpdateListener;->mTopMargin:I

    .line 1734
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DelHeightAnimatorUpdateListener;->mBottomMargin:I

    .line 1735
    iput-object p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DelHeightAnimatorUpdateListener;->mDeleteAnimationListenerCompat:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DeleteAnimationListenerCompat;

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 8

    .line 1740
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DelHeightAnimatorUpdateListener;->mHost:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_5c

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_5c

    .line 1743
    :cond_b
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DelHeightAnimatorUpdateListener;->mHost:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    .line 1744
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    .line 1745
    iget-object v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DelHeightAnimatorUpdateListener;->mDeleteAnimationListenerCompat:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DeleteAnimationListenerCompat;

    if-eqz v2, :cond_26

    # getter for: Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mSwipeMenu:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;
    invoke-static {v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->access$000(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;)Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    move-result-object v2

    if-eqz v2, :cond_26

    .line 1746
    iget-object v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DelHeightAnimatorUpdateListener;->mDeleteAnimationListenerCompat:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DeleteAnimationListenerCompat;

    invoke-interface {v2, v1}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DeleteAnimationListenerCompat;->onVerticalAniUpdate(F)V

    .line 1748
    :cond_26
    iget v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DelHeightAnimatorUpdateListener;->mTopMargin:I

    if-nez v2, :cond_2e

    iget v2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DelHeightAnimatorUpdateListener;->mBottomMargin:I

    if-eqz v2, :cond_48

    .line 1749
    :cond_2e
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1750
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DelHeightAnimatorUpdateListener;->mTopMargin:I

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v1

    mul-float/2addr v4, v5

    float-to-int v1, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DelHeightAnimatorUpdateListener;->mBottomMargin:I

    int-to-float p0, p0

    mul-float/2addr p0, v5

    float-to-int p0, p0

    .line 1751
    invoke-virtual {v2, v3, v1, v4, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1757
    :cond_48
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    .line 1758
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    float-to-int p0, p0

    .line 1759
    iput p0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1761
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5c
    :goto_5c
    return-void
.end method
