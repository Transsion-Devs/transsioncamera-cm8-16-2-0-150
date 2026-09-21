.class public Lcom/transsion/camera/featurelibs/aicommon/ui/widget/ProgressView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field private final mBackgroundPaint:Landroid/graphics/Paint;

.field private final mClipPath:Landroid/graphics/Path;

.field private mHeight:F

.field private mProgress:F

.field private final mProgressPaint:Landroid/graphics/Paint;

.field private final mProgressRect:Landroid/graphics/RectF;

.field private mProgressWidth:F

.field private mWidth:F


# direct methods
.method public static synthetic $r8$lambda$TcrguajlfQF5ZKzmfvlpGYtZ32g(Lcom/transsion/camera/featurelibs/aicommon/ui/widget/ProgressView;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/widget/ProgressView;->lambda$setupAnimator$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 36
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ProgressView"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/featurelibs/aicommon/ui/widget/ProgressView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/featurelibs/aicommon/ui/widget/ProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/transsion/camera/featurelibs/aicommon/ui/widget/ProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 10

    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 72
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 74
    sget v1, Lcom/transsion/camera/featurelibs/aicommon/R$fraction;->default_progress_view_progress_with:I

    .line 75
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    .line 76
    sget v2, Lcom/transsion/camera/featurelibs/aicommon/R$color;->default_progress_view_progress_background_color:I

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    .line 78
    sget v3, Lcom/transsion/camera/featurelibs/aicommon/R$color;->default_progress_view_progress_color:I

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 81
    sget-object v3, Lcom/transsion/camera/featurelibs/aicommon/R$styleable;->ProgressView:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 84
    :try_start_27
    sget p2, Lcom/transsion/camera/featurelibs/aicommon/R$styleable;->ProgressView_progressWith:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/widget/ProgressView;->mProgressWidth:F

    .line 87
    sget p2, Lcom/transsion/camera/featurelibs/aicommon/R$styleable;->ProgressView_progressBackgroundColor:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 88
    new-instance p3, Landroid/graphics/Paint;

    const/4 p4, 0x1

    invoke-direct {p3, p4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/widget/ProgressView;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 89
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 90
    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 92
    sget p2, Lcom/transsion/camera/featurelibs/aicommon/R$styleable;->ProgressView_progressColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 93
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, p4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/widget/ProgressView;->mProgressPaint:Landroid/graphics/Paint;

    .line 94
    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 95
    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setColor(I)V
    :try_end_58
    .catchall {:try_start_27 .. :try_end_58} :catchall_6d

    .line 96
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->close()V

    .line 98
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/widget/ProgressView;->mClipPath:Landroid/graphics/Path;

    .line 99
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/widget/ProgressView;->mProgressRect:Landroid/graphics/RectF;

    .line 101
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/widget/ProgressView;->setupAnimator()V

    return-void

    :catchall_6d
    move-exception p0

    if-eqz p1, :cond_78

    .line 81
    :try_start_70
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->close()V
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_74

    goto :goto_78

    :catchall_74
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_78
    :goto_78
    throw p0
.end method

.method private synthetic lambda$setupAnimator$0(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 111
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/widget/ProgressView;->mProgress:F

    .line 112
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private setupAnimator()V
    .registers 4

    const/4 v0, 0x2

    .line 105
    new-array v0, v0, [F

    fill-array-data v0, :array_2c

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/widget/ProgressView;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x320

    .line 106
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 107
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/widget/ProgressView;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 108
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/widget/ProgressView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 110
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/widget/ProgressView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/camera/featurelibs/aicommon/ui/widget/ProgressView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/widget/ProgressView$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/featurelibs/aicommon/ui/widget/ProgressView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_2c
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private viewVisible()Z
    .registers 5

    .line 188
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 192
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 193
    :goto_c
    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_41

    .line 194
    check-cast p0, Landroid/view/View;

    .line 195
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3c

    .line 196
    sget-object v0, Lcom/transsion/camera/featurelibs/aicommon/ui/widget/ProgressView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "viewVisible parentView: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", visibility: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 199
    :cond_3c
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_c

    :cond_41
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 3

    .line 157
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 158
    sget-object v0, Lcom/transsion/camera/featurelibs/aicommon/ui/widget/ProgressView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 159
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/widget/ProgressView;->viewVisible()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/widget/ProgressView;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 160
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/widget/ProgressView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_1f
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .line 166
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 167
    sget-object v0, Lcom/transsion/camera/featurelibs/aicommon/ui/widget/ProgressView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 168
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/widget/ProgressView;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_11

    .line 169
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_11
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 11

    .line 136
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 138
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 139
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/widget/ProgressView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 141
    iget v5, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/widget/ProgressView;->mHeight:F

    const/high16 v0, 0x40000000    # 2.0f

    div-float v6, v5, v0

    .line 143
    iget v4, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/widget/ProgressView;->mWidth:F

    iget-object v8, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/widget/ProgressView;->mBackgroundPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v7, v6

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 145
    iget p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/widget/ProgressView;->mWidth:F

    iget v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/widget/ProgressView;->mProgressWidth:F

    add-float/2addr p1, v0

    neg-float v2, v0

    .line 146
    iget v3, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/widget/ProgressView;->mProgress:F

    mul-float/2addr p1, v3

    add-float/2addr v2, p1

    .line 148
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/widget/ProgressView;->mProgressRect:Landroid/graphics/RectF;

    add-float/2addr v0, v2

    iget v3, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/widget/ProgressView;->mHeight:F

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4, v0, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 150
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/widget/ProgressView;->mProgressRect:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/widget/ProgressView;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v6, v6, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 152
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 13

    .line 123
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    int-to-float p1, p1

    .line 124
    iput p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/widget/ProgressView;->mWidth:F

    int-to-float p2, p2

    .line 125
    iput p2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/widget/ProgressView;->mHeight:F

    .line 127
    iget p3, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/widget/ProgressView;->mProgressWidth:F

    mul-float/2addr p1, p3

    iput p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/widget/ProgressView;->mProgressWidth:F

    const/high16 p1, 0x40000000    # 2.0f

    div-float v5, p2, p1

    .line 130
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/widget/ProgressView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 131
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/widget/ProgressView;->mClipPath:Landroid/graphics/Path;

    iget v3, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/widget/ProgressView;->mWidth:F

    iget v4, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/widget/ProgressView;->mHeight:F

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 3

    .line 175
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 176
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/widget/ProgressView;->viewVisible()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 177
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/widget/ProgressView;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_20

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_20

    .line 178
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/widget/ProgressView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 181
    :cond_19
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/widget/ProgressView;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_20

    .line 182
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_20
    return-void
.end method

.method public setProgressBackgroundColor(I)V
    .registers 3

    .line 117
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/widget/ProgressView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 118
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
