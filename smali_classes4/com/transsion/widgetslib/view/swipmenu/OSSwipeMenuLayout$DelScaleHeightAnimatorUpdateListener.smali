.class Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DelScaleHeightAnimatorUpdateListener;
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
    name = "DelScaleHeightAnimatorUpdateListener"
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


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;)V
    .registers 3

    .line 1768
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1769
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DelScaleHeightAnimatorUpdateListener;->mHost:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5

    .line 1774
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DelScaleHeightAnimatorUpdateListener;->mHost:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_31

    .line 1777
    :cond_b
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$DelScaleHeightAnimatorUpdateListener;->mHost:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    .line 1778
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, p1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 1780
    # setter for: Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mAnimateAlpha:I
    invoke-static {p0, v1}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->access$102(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;I)I

    .line 1781
    # getter for: Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mMenuImagePaint:Landroid/graphics/Paint;
    invoke-static {p0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->access$200(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const v1, 0x3ecccccd    # 0.4f

    mul-float/2addr p1, v1

    sub-float/2addr v0, p1

    .line 1782
    # setter for: Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->mAnimateRatio:F
    invoke-static {p0, v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->access$302(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;F)F

    :cond_31
    :goto_31
    return-void
.end method
