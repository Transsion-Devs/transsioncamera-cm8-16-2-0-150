.class Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DelAnimatorUpdateListener;
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
    name = "DelAnimatorUpdateListener"
.end annotation


# instance fields
.field private mHost:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mTempFinal:I

.field private mTempScroll:I


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;I)V
    .registers 4

    .line 1707
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1708
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DelAnimatorUpdateListener;->mHost:Ljava/lang/ref/WeakReference;

    .line 1709
    iput p2, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DelAnimatorUpdateListener;->mTempFinal:I

    .line 1710
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DelAnimatorUpdateListener;->mTempScroll:I

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 1715
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DelAnimatorUpdateListener;->mHost:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_24

    .line 1718
    :cond_b
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DelAnimatorUpdateListener;->mHost:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    .line 1719
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1720
    iget p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DelAnimatorUpdateListener;->mTempScroll:I

    add-int/2addr p0, p1

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->scrollTo(II)V

    :cond_24
    :goto_24
    return-void
.end method
