.class public Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView$OnCountDownListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mBackgroundColor:I

.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mCountDownAnimator:Landroid/animation/ValueAnimator;

.field private mCountDownListener:Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView$OnCountDownListener;

.field private mIsAnimatorCancelled:Z

.field private mIsAnimatorFinishedPrepared:Z

.field private mMaxTime:I

.field private mProgress:F

.field private mProgressColor:I

.field private mProgressPaint:Landroid/graphics/Paint;

.field private mRectF:Landroid/graphics/RectF;

.field private mStrokeWidth:F

.field private mTextColor:I

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextSize:F


# direct methods
.method public static synthetic $r8$lambda$6LecNdwuAHNjJXWnpLRr9bWqyLM(Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;JLandroid/animation/ValueAnimator;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->lambda$startCountDown$0(JLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmCountDownListener(Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;)Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView$OnCountDownListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->mCountDownListener:Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView$OnCountDownListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsAnimatorCancelled(Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->mIsAnimatorCancelled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmIsAnimatorCancelled(Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->mIsAnimatorCancelled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 32
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "CircleCountDownView"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p3, 0x3c23d70a    # 0.01f

    .line 45
    iput p3, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->mProgress:F

    const/4 p3, 0x0

    .line 47
    iput-boolean p3, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->mIsAnimatorCancelled:Z

    .line 48
    iput-boolean p3, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->mIsAnimatorFinishedPrepared:Z

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    const v0, -0x333334

    .line 75
    iput v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->mBackgroundColor:I

    const/4 v0, -0x1

    .line 76
    iput v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->mProgressColor:I

    const/high16 v0, -0x1000000

    .line 77
    iput v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->mTextColor:I

    const/high16 v0, 0x42c80000    # 100.0f

    .line 78
    iput v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->mTextSize:F

    const/high16 v0, 0x41a00000    # 20.0f

    .line 79
    iput v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->mStrokeWidth:F

    const/16 v0, 0x3c

    .line 80
    iput v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->mMaxTime:I

    if-eqz p2, :cond_5f

    .line 83
    sget-object v0, Lcom/transsion/camera/R$styleable;->CircleCountDownView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 84
    sget p2, Lcom/transsion/camera/R$styleable;->CircleCountDownView_countDownBackgroundColor:I

    iget v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->mBackgroundColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->mBackgroundColor:I

    .line 85
    sget p2, Lcom/transsion/camera/R$styleable;->CircleCountDownView_countDownProgressColor:I

    iget v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->mProgressColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->mProgressColor:I

    .line 86
    sget p2, Lcom/transsion/camera/R$styleable;->CircleCountDownView_countDownTextColor:I

    iget v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->mTextColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->mTextColor:I

    .line 87
    sget p2, Lcom/transsion/camera/R$styleable;->CircleCountDownView_countDownTextSize:I

    iget v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->mTextSize:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->mTextSize:F

    .line 88
    sget p2, Lcom/transsion/camera/R$styleable;->CircleCountDownView_countDownStrokeWidth:I

    iget v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->mStrokeWidth:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->mStrokeWidth:F

    .line 89
    sget p2, Lcom/transsion/camera/R$styleable;->CircleCountDownView_countDownMaxTime:I

    iget v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->mMaxTime:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->mMaxTime:I

    .line 90
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 93
    :cond_5f
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 94
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->mBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 95
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 96
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->mBackgroundPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->mStrokeWidth:F

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 97
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 99
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->mProgressPaint:Landroid/graphics/Paint;

    .line 100
    iget v2, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->mProgressColor:I

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 102
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->mProgressPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->mStrokeWidth:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 103
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 105
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->mTextPaint:Landroid/graphics/Paint;

    .line 106
    iget p2, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->mTextColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 107
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->mTextPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->mTextSize:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 108
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->mTextPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 110
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->mRectF:Landroid/graphics/RectF;

    return-void
.end method

.method private synthetic lambda$startCountDown$0(JLandroid/animation/ValueAnimator;)V
    .registers 4

    .line 153
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    iput p3, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->mProgress:F

    long-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p2, p3

    mul-float/2addr p1, p2

    .line 155
    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->mIsAnimatorFinishedPrepared:Z

    if-nez p2, :cond_25

    const/high16 p2, 0x437a0000    # 250.0f

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_25

    const/4 p1, 0x1

    .line 156
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->mIsAnimatorFinishedPrepared:Z

    .line 157
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->mCountDownListener:Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView$OnCountDownListener;

    if-eqz p1, :cond_25

    .line 158
    invoke-interface {p1}, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView$OnCountDownListener;->onCountDownFinishedPrepare()V

    .line 161
    :cond_25
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 13

    .line 115
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 117
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 118
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 119
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget v4, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->mStrokeWidth:F

    div-float/2addr v4, v1

    sub-float/2addr v3, v4

    .line 121
    iget-object v4, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->mRectF:Landroid/graphics/RectF;

    sub-float v5, v0, v3

    sub-float v6, v2, v3

    add-float v7, v0, v3

    add-float v8, v2, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 123
    iget-object v4, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/high16 v3, 0x43b40000    # 360.0f

    .line 125
    iget v4, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->mProgress:F

    mul-float v8, v4, v3

    .line 126
    iget-object v6, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->mRectF:Landroid/graphics/RectF;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->mProgressPaint:Landroid/graphics/Paint;

    const/high16 v7, -0x3d4c0000    # -90.0f

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 128
    iget p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->mMaxTime:I

    int-to-float p1, p1

    const/high16 v3, 0x3f800000    # 1.0f

    iget v4, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->mProgress:F

    sub-float/2addr v3, v4

    mul-float/2addr p1, v3

    float-to-int p1, p1

    add-int/lit8 p1, p1, 0x1

    .line 129
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 130
    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    .line 131
    iget v4, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v4, v3

    div-float/2addr v4, v1

    sub-float/2addr v2, v4

    .line 132
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, p1, v0, v2, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setMaxTime(I)V
    .registers 2

    .line 209
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->mMaxTime:I

    .line 210
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOnCountDownListener(Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView$OnCountDownListener;)V
    .registers 2

    .line 136
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->mCountDownListener:Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView$OnCountDownListener;

    return-void
.end method

.method public startCountDown()V
    .registers 5

    .line 140
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->mCountDownAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 141
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->mCountDownAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_f
    const/4 v0, 0x0

    .line 143
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->mIsAnimatorCancelled:Z

    .line 144
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->mIsAnimatorFinishedPrepared:Z

    const v0, 0x3c23d70a    # 0.01f

    .line 145
    iput v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->mProgress:F

    .line 146
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 147
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->mCountDownAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_53

    .line 148
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->mMaxTime:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const/4 v2, 0x2

    .line 149
    new-array v2, v2, [F

    fill-array-data v2, :array_5a

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->mCountDownAnimator:Landroid/animation/ValueAnimator;

    .line 150
    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 151
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->mCountDownAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 152
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->mCountDownAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0, v1}, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;J)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 163
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->mCountDownAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView$1;-><init>(Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 196
    :cond_53
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->mCountDownAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_5a
    .array-data 4
        0x3c23d70a    # 0.01f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public stopCountDown()Z
    .registers 3

    .line 200
    sget-object v0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "stopCountDown"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->mCountDownAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 202
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CircleCountDownView;->mCountDownAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method
