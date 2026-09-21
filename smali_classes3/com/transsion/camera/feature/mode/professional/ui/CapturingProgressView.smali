.class public Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView$ProgressCallBack;
    }
.end annotation


# static fields
.field private static final SECTION_POSITIONS:[F


# instance fields
.field private mArcStartValueAnimator:Landroid/animation/ValueAnimator;

.field private mCurrentDrawAngle:F

.field private mHeight:I

.field private mLinearGradient:Landroid/graphics/LinearGradient;

.field private mPaint:Landroid/graphics/Paint;

.field private mProgressCallBack:Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView$ProgressCallBack;

.field private mRectF:Landroid/graphics/RectF;

.field private mRectPadding:F

.field private mShaderColors:[I

.field private mStrokeWidth:F

.field private mWidth:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmProgressCallBack(Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;)Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView$ProgressCallBack;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->mProgressCallBack:Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView$ProgressCallBack;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentDrawAngle(Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;F)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->mCurrentDrawAngle:F

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x2

    .line 22
    new-array v0, v0, [F

    fill-array-data v0, :array_a

    sput-object v0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->SECTION_POSITIONS:[F

    return-void

    nop

    :array_a
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 31
    iput p2, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->mCurrentDrawAngle:F

    .line 53
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 6

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x106000b

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->mShaderColors:[I

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/mode/professional/R$dimen;->capture_stroke_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->mStrokeWidth:F

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/feature/mode/professional/R$dimen;->capture_shutter_anim_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->mRectPadding:F

    .line 63
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->mPaint:Landroid/graphics/Paint;

    .line 64
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 65
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->mPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->mStrokeWidth:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 p1, 0x2

    .line 67
    new-array p1, p1, [F

    fill-array-data p1, :array_64

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->mArcStartValueAnimator:Landroid/animation/ValueAnimator;

    .line 68
    new-instance p0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void

    :array_64
    .array-data 4
        0x43b48000    # 361.0f
        0x0
    .end array-data
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8

    .line 86
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 87
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->mRectF:Landroid/graphics/RectF;

    iget v3, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->mCurrentDrawAngle:F

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x3d4c0000    # -90.0f

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 13

    .line 73
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 74
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->mWidth:I

    .line 75
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->mHeight:I

    .line 77
    new-instance v0, Landroid/graphics/LinearGradient;

    iget p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->mWidth:I

    int-to-float v3, p1

    iget p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->mHeight:I

    int-to-float v4, p1

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->mShaderColors:[I

    sget-object v6, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->SECTION_POSITIONS:[F

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->mLinearGradient:Landroid/graphics/LinearGradient;

    .line 78
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 80
    iget p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->mRectPadding:F

    iget p2, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->mStrokeWidth:F

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    add-float/2addr p1, p2

    .line 81
    new-instance p2, Landroid/graphics/RectF;

    iget p3, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->mWidth:I

    int-to-float p3, p3

    sub-float/2addr p3, p1

    iget p4, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->mHeight:I

    int-to-float p4, p4

    sub-float/2addr p4, p1

    invoke-direct {p2, p1, p1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->mRectF:Landroid/graphics/RectF;

    return-void
.end method

.method public setProgressCallBack(Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView$ProgressCallBack;)V
    .registers 2

    .line 40
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->mProgressCallBack:Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView$ProgressCallBack;

    return-void
.end method

.method public startDrawProgress(J)V
    .registers 4

    .line 91
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->mArcStartValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 92
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->mArcStartValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 93
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->mArcStartValueAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView$1;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView$1;-><init>(Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 100
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->mArcStartValueAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView$2;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView$2;-><init>(Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 109
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->mArcStartValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public stopDrawProgress()V
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->mArcStartValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 116
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->mArcStartValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 117
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->mArcStartValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 118
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->mArcStartValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    const/4 v0, 0x0

    .line 119
    iput v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView;->mCurrentDrawAngle:F

    return-void
.end method
