.class public final Lcom/transsion/widgetslib/widget/OSMaskImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private final mPaint$delegate:Lkotlin/Lazy;

.field private mPath:Landroid/graphics/Path;

.field private mRectF:Landroid/graphics/RectF;

.field private maskDelegate:Lcom/transsion/widgetslib/widget/FobAnimDelegate;


# direct methods
.method public static synthetic $r8$lambda$FlfRVozGvP8YrRR9Haz6tiX6QrM(Lcom/transsion/widgetslib/widget/OSMaskImageView;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/transsion/widgetslib/widget/OSMaskImageView;->getMaskAnimator$lambda$4$lambda$3(Lcom/transsion/widgetslib/widget/OSMaskImageView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 9

    .line 0
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/transsion/widgetslib/widget/OSMaskImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    .line 0
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/transsion/widgetslib/widget/OSMaskImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    sget-object p1, Lcom/transsion/widgetslib/widget/OSMaskImageView$mPaint$2;->INSTANCE:Lcom/transsion/widgetslib/widget/OSMaskImageView$mPaint$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mPaint$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_5

    const/4 p2, 0x0

    :cond_5
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_a

    const/4 p3, 0x0

    .line 19
    :cond_a
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/widgetslib/widget/OSMaskImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$getMPaint(Lcom/transsion/widgetslib/widget/OSMaskImageView;)Landroid/graphics/Paint;
    .registers 1

    .line 19
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/OSMaskImageView;->getMPaint()Landroid/graphics/Paint;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMPath$p(Lcom/transsion/widgetslib/widget/OSMaskImageView;)Landroid/graphics/Path;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mPath:Landroid/graphics/Path;

    return-object p0
.end method

.method public static final synthetic access$getMaskDelegate$p(Lcom/transsion/widgetslib/widget/OSMaskImageView;)Lcom/transsion/widgetslib/widget/FobAnimDelegate;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->maskDelegate:Lcom/transsion/widgetslib/widget/FobAnimDelegate;

    return-object p0
.end method

.method private final getMPaint()Landroid/graphics/Paint;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mPaint$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Paint;

    return-object p0
.end method

.method private final getMaskAnimator()Landroid/animation/ValueAnimator;
    .registers 3

    const/4 v0, 0x0

    new-array v0, v0, [F

    .line 34
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 35
    new-instance v1, Lcom/transsion/widgetslib/widget/OSMaskImageView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/widget/OSMaskImageView$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/widgetslib/widget/OSMaskImageView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 43
    new-instance v1, Lcom/transsion/widgetslib/widget/OSMaskImageView$getMaskAnimator$1$2;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/widget/OSMaskImageView$getMaskAnimator$1$2;-><init>(Lcom/transsion/widgetslib/widget/OSMaskImageView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method private static final getMaskAnimator$lambda$4$lambda$3(Lcom/transsion/widgetslib/widget/OSMaskImageView;Landroid/animation/ValueAnimator;)V
    .registers 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Float;

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    goto :goto_15

    :cond_14
    move-object p1, v1

    :goto_15
    if-eqz p1, :cond_55

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 37
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mPath:Landroid/graphics/Path;

    const-string v2, "mPath"

    if-nez v0, :cond_27

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_27
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 38
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mPath:Landroid/graphics/Path;

    if-nez v0, :cond_32

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_32
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mRectF:Landroid/graphics/RectF;

    const-string v3, "mRectF"

    if-nez v2, :cond_3c

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v1

    :cond_3c
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v4, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mRectF:Landroid/graphics/RectF;

    if-nez v4, :cond_48

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_49

    :cond_48
    move-object v1, v4

    :goto_49
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    sget-object v3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v1, p1, v3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_55
    return-void
.end method

.method private final getSourceImage()V
    .registers 5

    .line 67
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_46

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-gtz v0, :cond_d

    goto :goto_46

    .line 70
    :cond_d
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_14

    goto :goto_46

    .line 71
    :cond_14
    invoke-static {v0}, Lcom/transsion/widgetslib/util/Utils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1d

    goto :goto_46

    .line 76
    :cond_1d
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mRectF:Landroid/graphics/RectF;

    .line 77
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mPath:Landroid/graphics/Path;

    .line 78
    new-instance v0, Lcom/transsion/widgetslib/widget/FobAnimDelegate;

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/OSMaskImageView;->getMaskAnimator()Landroid/animation/ValueAnimator;

    move-result-object v1

    const-string v2, "this.getMaskAnimator()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/widget/FobAnimDelegate;-><init>(Landroid/animation/ValueAnimator;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->maskDelegate:Lcom/transsion/widgetslib/widget/FobAnimDelegate;

    :cond_46
    :goto_46
    return-void
.end method


# virtual methods
.method public final animSelected()V
    .registers 13

    .line 115
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_7

    .line 116
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/OSMaskImageView;->getSourceImage()V

    .line 118
    :cond_7
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_c

    return-void

    .line 121
    :cond_c
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->maskDelegate:Lcom/transsion/widgetslib/widget/FobAnimDelegate;

    const-string v1, "maskDelegate"

    const/4 v2, 0x0

    if-nez v0, :cond_17

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_17
    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/FobAnimDelegate;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 122
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->maskDelegate:Lcom/transsion/widgetslib/widget/FobAnimDelegate;

    if-nez p0, :cond_25

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_26

    :cond_25
    move-object v2, p0

    :goto_26
    invoke-virtual {v2}, Lcom/transsion/widgetslib/widget/FobAnimDelegate;->reverse()V

    return-void

    .line 124
    :cond_2a
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mRectF:Landroid/graphics/RectF;

    const-string v3, "mRectF"

    if-nez v0, :cond_34

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_34
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v4, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mRectF:Landroid/graphics/RectF;

    if-nez v4, :cond_40

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_40
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v0, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v0

    .line 125
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    if-eqz v3, :cond_81

    .line 126
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->maskDelegate:Lcom/transsion/widgetslib/widget/FobAnimDelegate;

    if-nez v3, :cond_5c

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_5c
    invoke-virtual {v3}, Lcom/transsion/widgetslib/widget/FobAnimDelegate;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v3

    new-instance v9, Landroid/view/animation/PathInterpolator;

    const v10, 0x3dcccccd    # 0.1f

    invoke-direct {v9, v10, v8, v10, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v3, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 127
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->maskDelegate:Lcom/transsion/widgetslib/widget/FobAnimDelegate;

    if-nez v3, :cond_73

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_73
    invoke-virtual {v3}, Lcom/transsion/widgetslib/widget/FobAnimDelegate;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v3

    new-array v6, v6, [F

    aput v0, v6, v5

    aput v8, v6, v4

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_b0

    .line 129
    :cond_81
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->maskDelegate:Lcom/transsion/widgetslib/widget/FobAnimDelegate;

    if-nez v3, :cond_89

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_89
    invoke-virtual {v3}, Lcom/transsion/widgetslib/widget/FobAnimDelegate;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v3

    new-instance v9, Landroid/view/animation/PathInterpolator;

    const v10, 0x3ea8f5c3    # 0.33f

    const v11, 0x3f2b851f    # 0.67f

    invoke-direct {v9, v10, v8, v11, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v3, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 130
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->maskDelegate:Lcom/transsion/widgetslib/widget/FobAnimDelegate;

    if-nez v3, :cond_a3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_a3
    invoke-virtual {v3}, Lcom/transsion/widgetslib/widget/FobAnimDelegate;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v3

    new-array v6, v6, [F

    aput v8, v6, v5

    aput v0, v6, v4

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 132
    :goto_b0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->maskDelegate:Lcom/transsion/widgetslib/widget/FobAnimDelegate;

    if-nez p0, :cond_b8

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_b9

    :cond_b8
    move-object v2, p0

    :goto_b9
    invoke-virtual {v2}, Lcom/transsion/widgetslib/widget/FobAnimDelegate;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 4

    .line 89
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 90
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2f

    .line 91
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_f

    goto :goto_10

    :cond_f
    move-object v0, v2

    :goto_10
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 92
    :cond_15
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->maskDelegate:Lcom/transsion/widgetslib/widget/FobAnimDelegate;

    if-nez p0, :cond_1f

    const-string p0, "maskDelegate"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v2

    :cond_1f
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/FobAnimDelegate;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2a

    move-object v2, p0

    :cond_2a
    if-eqz v2, :cond_2f

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2f
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 98
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5b

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->maskDelegate:Lcom/transsion/widgetslib/widget/FobAnimDelegate;

    const/4 v2, 0x0

    if-nez v1, :cond_17

    const-string v1, "maskDelegate"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_17
    invoke-virtual {v1}, Lcom/transsion/widgetslib/widget/FobAnimDelegate;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_1f

    :cond_1e
    move-object v0, v2

    :goto_1f
    if-eqz v0, :cond_5b

    .line 99
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 100
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v1

    const-string v3, "mPath"

    if-eqz v1, :cond_38

    .line 102
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mPath:Landroid/graphics/Path;

    if-nez v1, :cond_34

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_34
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipOutPath(Landroid/graphics/Path;)Z

    goto :goto_43

    .line 107
    :cond_38
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mPath:Landroid/graphics/Path;

    if-nez v1, :cond_40

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_40
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 109
    :goto_43
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->mRectF:Landroid/graphics/RectF;

    if-nez v1, :cond_51

    const-string v1, "mRectF"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_51
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/OSMaskImageView;->getMPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p1, v0, v2, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 110
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_5b
    return-void
.end method

.method public onVisibilityAggregated(Z)V
    .registers 3

    .line 82
    invoke-super {p0, p1}, Landroid/view/View;->onVisibilityAggregated(Z)V

    .line 83
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_28

    .line 84
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OSMaskImageView;->maskDelegate:Lcom/transsion/widgetslib/widget/FobAnimDelegate;

    const/4 v0, 0x0

    if-nez p0, :cond_12

    const-string p0, "maskDelegate"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v0

    :cond_12
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/FobAnimDelegate;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object p0

    if-nez p1, :cond_19

    goto :goto_1a

    :cond_19
    move-object p0, v0

    :goto_1a
    if-eqz p0, :cond_28

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_23

    move-object v0, p0

    :cond_23
    if-eqz v0, :cond_28

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_28
    return-void
.end method
