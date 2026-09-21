.class Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/widget/tablayout/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SlidingTabIndicator"
.end annotation


# instance fields
.field private animationStartLeft:I

.field private animationStartRight:I

.field defaultIndicatorRadius:I

.field private final defaultSelectionIndicator:Landroid/graphics/drawable/GradientDrawable;

.field indicatorAnimator:Landroid/animation/ValueAnimator;

.field indicatorBottomOffset:I

.field indicatorLeft:I

.field indicatorRight:I

.field private layoutDirection:I

.field private selectedIndicatorHeight:I

.field private final selectedIndicatorPaint:Landroid/graphics/Paint;

.field selectedPosition:I

.field selectionOffset:F

.field final synthetic this$0:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/widget/tablayout/TabLayout;Landroid/content/Context;)V
    .registers 3

    .line 3078
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->this$0:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    .line 3079
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 3064
    iput p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->selectedPosition:I

    .line 3067
    iput p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->layoutDirection:I

    .line 3069
    iput p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->indicatorLeft:I

    .line 3070
    iput p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->indicatorRight:I

    const/4 p2, 0x0

    .line 3071
    iput p2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->indicatorBottomOffset:I

    .line 3072
    iput p2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->defaultIndicatorRadius:I

    .line 3075
    iput p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->animationStartLeft:I

    .line 3076
    iput p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->animationStartRight:I

    .line 3080
    invoke-virtual {p0, p2}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 3081
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->selectedIndicatorPaint:Landroid/graphics/Paint;

    .line 3082
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->defaultSelectionIndicator:Landroid/graphics/drawable/GradientDrawable;

    return-void
.end method

.method static synthetic access$1400(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;)I
    .registers 1

    .line 3057
    iget p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->animationStartLeft:I

    return p0
.end method

.method static synthetic access$1500(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;)I
    .registers 1

    .line 3057
    iget p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->animationStartRight:I

    return p0
.end method

.method private calculateTabViewContentBounds(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;Landroid/graphics/RectF;)V
    .registers 5

    .line 3378
    # invokes: Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->getContentWidth()I
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->access$1600(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;)I

    move-result v0

    .line 3379
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const/16 v1, 0x18

    invoke-static {p0, v1}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result p0

    float-to-int p0, p0

    if-ge v0, p0, :cond_12

    move v0, p0

    .line 3384
    :cond_12
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    add-int/2addr p0, p1

    div-int/lit8 p0, p0, 0x2

    .line 3385
    div-int/lit8 v0, v0, 0x2

    sub-int p1, p0, v0

    add-int/2addr p0, v0

    int-to-float p1, p1

    int-to-float p0, p0

    const/4 v0, 0x0

    .line 3388
    invoke-virtual {p2, p1, v0, p0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private updateIndicatorPosition()V
    .registers 8

    .line 3231
    iget v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->selectedPosition:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_95

    .line 3235
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_95

    .line 3236
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 3237
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    .line 3239
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->this$0:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    iget-boolean v4, v3, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabIndicatorFullWidth:Z

    if-nez v4, :cond_3b

    instance-of v4, v0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    if-eqz v4, :cond_3b

    .line 3240
    check-cast v0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    # getter for: Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabViewContentBounds:Landroid/graphics/RectF;
    invoke-static {v3}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->access$1300(Lcom/transsion/widgetslib/widget/tablayout/TabLayout;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->calculateTabViewContentBounds(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;Landroid/graphics/RectF;)V

    .line 3241
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->this$0:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    # getter for: Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabViewContentBounds:Landroid/graphics/RectF;
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->access$1300(Lcom/transsion/widgetslib/widget/tablayout/TabLayout;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v1, v0

    .line 3242
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->this$0:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    # getter for: Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabViewContentBounds:Landroid/graphics/RectF;
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->access$1300(Lcom/transsion/widgetslib/widget/tablayout/TabLayout;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    float-to-int v2, v0

    .line 3245
    :cond_3b
    iget v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->selectionOffset:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_97

    iget v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->selectedPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_97

    .line 3247
    iget v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->selectedPosition:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3248
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 3249
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    .line 3251
    iget-object v5, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->this$0:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    iget-boolean v6, v5, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabIndicatorFullWidth:Z

    if-nez v6, :cond_81

    instance-of v6, v0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    if-eqz v6, :cond_81

    .line 3252
    check-cast v0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    # getter for: Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabViewContentBounds:Landroid/graphics/RectF;
    invoke-static {v5}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->access$1300(Lcom/transsion/widgetslib/widget/tablayout/TabLayout;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->calculateTabViewContentBounds(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;Landroid/graphics/RectF;)V

    .line 3253
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->this$0:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    # getter for: Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabViewContentBounds:Landroid/graphics/RectF;
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->access$1300(Lcom/transsion/widgetslib/widget/tablayout/TabLayout;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v3, v0

    .line 3254
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->this$0:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    # getter for: Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabViewContentBounds:Landroid/graphics/RectF;
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->access$1300(Lcom/transsion/widgetslib/widget/tablayout/TabLayout;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    float-to-int v4, v0

    .line 3257
    :cond_81
    iget v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->selectionOffset:F

    int-to-float v3, v3

    mul-float/2addr v3, v0

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v6, v5, v0

    int-to-float v1, v1

    mul-float/2addr v6, v1

    add-float/2addr v3, v6

    float-to-int v1, v3

    int-to-float v3, v4

    mul-float/2addr v3, v0

    sub-float/2addr v5, v0

    int-to-float v0, v2

    mul-float/2addr v5, v0

    add-float/2addr v3, v5

    float-to-int v2, v3

    goto :goto_97

    :cond_95
    const/4 v1, -0x1

    move v2, v1

    .line 3265
    :cond_97
    :goto_97
    invoke-virtual {p0, v1, v2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->setIndicatorPosition(II)V

    return-void
.end method

.method private updateOrRecreateIndicatorAnimation(ZII)V
    .registers 9

    .line 3287
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_a

    .line 3290
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->updateIndicatorPosition()V

    return-void

    .line 3294
    :cond_a
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 3295
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    .line 3297
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->this$0:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    iget-boolean v4, v3, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabIndicatorFullWidth:Z

    if-nez v4, :cond_37

    instance-of v4, v0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    if-eqz v4, :cond_37

    .line 3298
    check-cast v0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    # getter for: Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabViewContentBounds:Landroid/graphics/RectF;
    invoke-static {v3}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->access$1300(Lcom/transsion/widgetslib/widget/tablayout/TabLayout;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->calculateTabViewContentBounds(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;Landroid/graphics/RectF;)V

    .line 3299
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->this$0:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    # getter for: Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabViewContentBounds:Landroid/graphics/RectF;
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->access$1300(Lcom/transsion/widgetslib/widget/tablayout/TabLayout;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v1, v0

    .line 3300
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->this$0:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    # getter for: Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabViewContentBounds:Landroid/graphics/RectF;
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->access$1300(Lcom/transsion/widgetslib/widget/tablayout/TabLayout;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    float-to-int v2, v0

    .line 3308
    :cond_37
    iget v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->indicatorLeft:I

    .line 3309
    iget v3, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->indicatorRight:I

    if-ne v0, v1, :cond_40

    if-ne v3, v2, :cond_40

    return-void

    :cond_40
    if-eqz p1, :cond_46

    .line 3319
    iput v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->animationStartLeft:I

    .line 3320
    iput v3, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->animationStartRight:I

    .line 3325
    :cond_46
    new-instance v0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator$1;

    invoke-direct {v0, p0, v1, v2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator$1;-><init>(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;II)V

    if-eqz p1, :cond_78

    .line 3338
    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    .line 3339
    new-instance v1, Lcom/transsion/widgetslib/view/interpolators/OSEaseInQuadOutCurve1Interpolator;

    invoke-direct {v1}, Lcom/transsion/widgetslib/view/interpolators/OSEaseInQuadOutCurve1Interpolator;-><init>()V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v1, p3

    .line 3340
    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 p3, 0x2

    .line 3341
    new-array p3, p3, [F

    fill-array-data p3, :array_84

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 3342
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3343
    new-instance p3, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator$2;

    invoke-direct {p3, p0, p2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator$2;-><init>(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;I)V

    invoke-virtual {p1, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3356
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 3359
    :cond_78
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 3360
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    nop

    :array_84
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method animateIndicatorToPosition(II)V
    .registers 4

    .line 3278
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3279
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_f
    const/4 v0, 0x1

    .line 3282
    invoke-direct {p0, v0, p1, p2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->updateOrRecreateIndicatorAnimation(ZII)V

    return-void
.end method

.method childrenNeedLayout()Z
    .registers 5

    .line 3115
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_17

    .line 3116
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3117
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    if-gtz v3, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_17
    return v1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 8

    .line 3394
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->this$0:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    iget-object v0, v0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 3395
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_d

    :cond_c
    move v0, v1

    .line 3397
    :goto_d
    iget v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->selectedIndicatorHeight:I

    if-ltz v2, :cond_12

    move v0, v2

    .line 3404
    :cond_12
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->this$0:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    iget v2, v2, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabIndicatorGravity:I

    if-eqz v2, :cond_36

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v2, v3, :cond_28

    if-eq v2, v4, :cond_3f

    const/4 v0, 0x3

    if-eq v2, v0, :cond_23

    move v0, v1

    goto :goto_3f

    .line 3419
    :cond_23
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_3f

    .line 3410
    :cond_28
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    div-int/2addr v1, v4

    .line 3411
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, v0

    div-int/lit8 v0, v2, 0x2

    goto :goto_3f

    .line 3406
    :cond_36
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    .line 3407
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 3426
    :cond_3f
    :goto_3f
    iget v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->indicatorLeft:I

    if-ltz v2, :cond_6d

    iget v3, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->indicatorRight:I

    if-le v3, v2, :cond_6d

    .line 3430
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->this$0:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    iget-object v2, v2, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4e

    goto :goto_50

    :cond_4e
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->defaultSelectionIndicator:Landroid/graphics/drawable/GradientDrawable;

    .line 3429
    :goto_50
    invoke-static {v2}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 3431
    iget v3, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->indicatorLeft:I

    iget v4, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->indicatorBottomOffset:I

    sub-int/2addr v1, v4

    iget v5, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->indicatorRight:I

    sub-int/2addr v0, v4

    invoke-virtual {v2, v3, v1, v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3432
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->selectedIndicatorPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_6a

    .line 3438
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-static {v2, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 3441
    :cond_6a
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3445
    :cond_6d
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method getIndicatorPosition()F
    .registers 2

    .line 3135
    iget v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->selectedPosition:I

    int-to-float v0, v0

    iget p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->selectionOffset:F

    add-float/2addr v0, p0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 3215
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 3217
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 3222
    iget p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->selectedPosition:I

    const/4 p2, -0x1

    const/4 p3, 0x0

    invoke-direct {p0, p3, p1, p2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->updateOrRecreateIndicatorAnimation(ZII)V

    return-void

    .line 3226
    :cond_15
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->updateIndicatorPosition()V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 11

    .line 3154
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 3156
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_d

    goto/16 :goto_7d

    .line 3165
    :cond_d
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->this$0:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    iget v1, v0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabGravity:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_19

    iget v0, v0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->mode:I

    if-ne v0, v2, :cond_7d

    .line 3166
    :cond_19
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v4, v1

    move v5, v4

    :goto_20
    if-ge v4, v0, :cond_37

    .line 3171
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 3172
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_34

    .line 3173
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    :cond_34
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    :cond_37
    if-gtz v5, :cond_3a

    goto :goto_7d

    .line 3182
    :cond_3a
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const/16 v6, 0x10

    invoke-static {v4, v6}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result v4

    float-to-int v4, v4

    mul-int v6, v5, v0

    .line 3185
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    mul-int/2addr v4, v2

    sub-int/2addr v7, v4

    if-gt v6, v7, :cond_71

    move v2, v1

    :goto_50
    if-ge v1, v0, :cond_6f

    .line 3190
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 3191
    iget v6, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v7, 0x0

    if-ne v6, v5, :cond_67

    iget v6, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_6c

    .line 3192
    :cond_67
    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 3193
    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move v2, v3

    :cond_6c
    add-int/lit8 v1, v1, 0x1

    goto :goto_50

    :cond_6f
    move v3, v2

    goto :goto_78

    .line 3201
    :cond_71
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->this$0:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    iput v1, v0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabGravity:I

    .line 3202
    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->updateTabViews(Z)V

    :goto_78
    if-eqz v3, :cond_7d

    .line 3208
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_7d
    :goto_7d
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 2

    .line 3140
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    return-void
.end method

.method setDefaultSelectedIndicatorRadius(I)V
    .registers 3

    .line 3107
    iget v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->defaultIndicatorRadius:I

    if-eq v0, p1, :cond_f

    .line 3108
    iput p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->defaultIndicatorRadius:I

    .line 3109
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->defaultSelectionIndicator:Landroid/graphics/drawable/GradientDrawable;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 3110
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_f
    return-void
.end method

.method setIndicatorPosition(II)V
    .registers 4

    .line 3269
    iget v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->indicatorLeft:I

    if-ne p1, v0, :cond_a

    iget v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->indicatorRight:I

    if-eq p2, v0, :cond_9

    goto :goto_a

    :cond_9
    return-void

    .line 3271
    :cond_a
    :goto_a
    iput p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->indicatorLeft:I

    .line 3272
    iput p2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->indicatorRight:I

    .line 3273
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method setIndicatorPositionFromTabPosition(IF)V
    .registers 4

    .line 3125
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3126
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3129
    :cond_f
    iput p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->selectedPosition:I

    .line 3130
    iput p2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->selectionOffset:F

    .line 3131
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->updateIndicatorPosition()V

    return-void
.end method

.method setSelectedIndicatorBottomOffset(I)V
    .registers 3

    .line 3100
    iget v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->indicatorBottomOffset:I

    if-eq v0, p1, :cond_9

    .line 3101
    iput p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->indicatorBottomOffset:I

    .line 3102
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_9
    return-void
.end method

.method setSelectedIndicatorColor(I)V
    .registers 3

    .line 3086
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->selectedIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eq v0, p1, :cond_10

    .line 3087
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->selectedIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3088
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_10
    return-void
.end method

.method setSelectedIndicatorHeight(I)V
    .registers 3

    .line 3093
    iget v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->selectedIndicatorHeight:I

    if-eq v0, p1, :cond_9

    .line 3094
    iput p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->selectedIndicatorHeight:I

    .line 3095
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_9
    return-void
.end method
