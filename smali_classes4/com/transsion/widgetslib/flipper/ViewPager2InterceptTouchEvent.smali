.class public final Lcom/transsion/widgetslib/flipper/ViewPager2InterceptTouchEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/widgetslib/widget/InterceptTouchEventHandler;


# instance fields
.field private initialX:F

.field private initialY:F

.field private touchSlop:I

.field private final viewPager:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method public constructor <init>(Landroidx/viewpager2/widget/ViewPager2;)V
    .registers 3

    const-string v0, "viewPager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/flipper/ViewPager2InterceptTouchEvent;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/flipper/ViewPager2InterceptTouchEvent;->touchSlop:I

    return-void
.end method

.method private final canChildScroll(IF)Z
    .registers 5

    .line 26
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p2

    float-to-int p2, p2

    neg-int p2, p2

    const/4 v0, 0x0

    if-eqz p1, :cond_19

    const/4 v1, 0x1

    if-eq p1, v1, :cond_d

    return v0

    .line 29
    :cond_d
    invoke-direct {p0}, Lcom/transsion/widgetslib/flipper/ViewPager2InterceptTouchEvent;->getChild()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_18

    invoke-virtual {p0, p2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p0

    return p0

    :cond_18
    return v0

    .line 28
    :cond_19
    invoke-direct {p0}, Lcom/transsion/widgetslib/flipper/ViewPager2InterceptTouchEvent;->getChild()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_24

    invoke-virtual {p0, p2}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result p0

    return p0

    :cond_24
    return v0
.end method

.method private final getChild()Landroid/view/View;
    .registers 3

    .line 19
    invoke-direct {p0}, Lcom/transsion/widgetslib/flipper/ViewPager2InterceptTouchEvent;->getParent()Landroid/view/ViewGroup;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_13

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_13

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_13
    return-object v0
.end method

.method private final getParent()Landroid/view/ViewGroup;
    .registers 2

    .line 18
    iget-object p0, p0, Lcom/transsion/widgetslib/flipper/ViewPager2InterceptTouchEvent;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_d

    check-cast p0, Landroid/view/ViewGroup;

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public handleInterceptTouchEvent(Landroid/view/MotionEvent;)V
    .registers 11

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/ViewPager2InterceptTouchEvent;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getOrientation()I

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    .line 37
    invoke-direct {p0, v0, v1}, Lcom/transsion/widgetslib/flipper/ViewPager2InterceptTouchEvent;->canChildScroll(IF)Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v1, :cond_1d

    invoke-direct {p0, v0, v2}, Lcom/transsion/widgetslib/flipper/ViewPager2InterceptTouchEvent;->canChildScroll(IF)Z

    move-result v1

    if-nez v1, :cond_1d

    goto/16 :goto_a6

    .line 41
    :cond_1d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_3a

    .line 42
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/flipper/ViewPager2InterceptTouchEvent;->initialX:F

    .line 43
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/flipper/ViewPager2InterceptTouchEvent;->initialY:F

    .line 44
    invoke-direct {p0}, Lcom/transsion/widgetslib/flipper/ViewPager2InterceptTouchEvent;->getParent()Landroid/view/ViewGroup;

    move-result-object p0

    if-eqz p0, :cond_a6

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    return-void

    .line 45
    :cond_3a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_a6

    .line 46
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v4, p0, Lcom/transsion/widgetslib/flipper/ViewPager2InterceptTouchEvent;->initialX:F

    sub-float/2addr v1, v4

    .line 47
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v4, p0, Lcom/transsion/widgetslib/flipper/ViewPager2InterceptTouchEvent;->initialY:F

    sub-float/2addr p1, v4

    const/4 v4, 0x0

    if-nez v0, :cond_54

    move v5, v3

    goto :goto_55

    :cond_54
    move v5, v4

    .line 51
    :goto_55
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v7, 0x3f000000    # 0.5f

    if-eqz v5, :cond_5f

    move v8, v7

    goto :goto_60

    :cond_5f
    move v8, v2

    :goto_60
    mul-float/2addr v6, v8

    .line 52
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    if-eqz v5, :cond_68

    goto :goto_69

    :cond_68
    move v2, v7

    :goto_69
    mul-float/2addr v8, v2

    .line 54
    iget v2, p0, Lcom/transsion/widgetslib/flipper/ViewPager2InterceptTouchEvent;->touchSlop:I

    int-to-float v7, v2

    cmpl-float v7, v6, v7

    if-gtz v7, :cond_76

    int-to-float v2, v2

    cmpl-float v2, v8, v2

    if-lez v2, :cond_a6

    :cond_76
    cmpl-float v2, v8, v6

    if-lez v2, :cond_7c

    move v2, v3

    goto :goto_7d

    :cond_7c
    move v2, v4

    :goto_7d
    if-ne v5, v2, :cond_89

    .line 57
    invoke-direct {p0}, Lcom/transsion/widgetslib/flipper/ViewPager2InterceptTouchEvent;->getParent()Landroid/view/ViewGroup;

    move-result-object p0

    if-eqz p0, :cond_a6

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    return-void

    :cond_89
    if-eqz v5, :cond_8c

    goto :goto_8d

    :cond_8c
    move v1, p1

    .line 60
    :goto_8d
    invoke-direct {p0, v0, v1}, Lcom/transsion/widgetslib/flipper/ViewPager2InterceptTouchEvent;->canChildScroll(IF)Z

    move-result p1

    if-eqz p1, :cond_9d

    .line 62
    invoke-direct {p0}, Lcom/transsion/widgetslib/flipper/ViewPager2InterceptTouchEvent;->getParent()Landroid/view/ViewGroup;

    move-result-object p0

    if-eqz p0, :cond_a6

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    return-void

    .line 65
    :cond_9d
    invoke-direct {p0}, Lcom/transsion/widgetslib/flipper/ViewPager2InterceptTouchEvent;->getParent()Landroid/view/ViewGroup;

    move-result-object p0

    if-eqz p0, :cond_a6

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    :cond_a6
    :goto_a6
    return-void
.end method
