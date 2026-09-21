.class public Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/widget/IRotatable;


# static fields
.field private static final SCALE:F


# instance fields
.field private imageMatrix:Landroid/graphics/Matrix;

.field private mAnimationEndTime:J

.field private mAnimationStartTime:J

.field private mClockwise:Z

.field private mCurrentDegree:I

.field private mEnableAnimation:Z

.field private mRotateListener:Lcom/transsion/camera/app/ui/widget/IRotatable$RotateListener;

.field private mScale:F

.field private mStartDegree:I

.field private mTargetDegree:I

.field private final roundRectPath:Landroid/graphics/Path;


# direct methods
.method public static synthetic $r8$lambda$gvTZv3hqOkzN89oNFcsXSmAHHBE(Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;Lcom/transsion/camera/app/ui/widget/IRotatable$RotateListener;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;->lambda$onDraw$0(Lcom/transsion/camera/app/ui/widget/IRotatable$RotateListener;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 21
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;->SCALE:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 41
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 24
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;->mCurrentDegree:I

    .line 25
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;->mStartDegree:I

    .line 26
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;->mTargetDegree:I

    .line 28
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;->mClockwise:Z

    const/4 p1, 0x1

    .line 29
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;->mEnableAnimation:Z

    const-wide/16 p1, 0x0

    .line 32
    iput-wide p1, p0, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;->mAnimationStartTime:J

    .line 33
    iput-wide p1, p0, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;->mAnimationEndTime:J

    .line 34
    sget p1, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;->SCALE:F

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;->mScale:F

    .line 48
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;->imageMatrix:Landroid/graphics/Matrix;

    .line 49
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;->roundRectPath:Landroid/graphics/Path;

    return-void
.end method

.method private synthetic lambda$onDraw$0(Lcom/transsion/camera/app/ui/widget/IRotatable$RotateListener;)V
    .registers 3

    .line 95
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;->mCurrentDegree:I

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/ui/widget/IRotatable$RotateListener;->onRotateEnd(I)V

    const/4 p1, 0x0

    .line 96
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;->mRotateListener:Lcom/transsion/camera/app/ui/widget/IRotatable$RotateListener;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 12

    .line 61
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_8

    goto/16 :goto_e7

    .line 63
    :cond_8
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-lez v1, :cond_e7

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-lez v1, :cond_e7

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_e7

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-gtz v1, :cond_22

    goto/16 :goto_e7

    .line 65
    :cond_22
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;->roundRectPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 66
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;->roundRectPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v5, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v6, v1

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v3

    int-to-float v7, v3

    invoke-static {v1}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v1

    int-to-float v8, v1

    sget-object v9, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 67
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;->roundRectPath:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 70
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;->mCurrentDegree:I

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;->mTargetDegree:I

    if-eq v1, v2, :cond_7e

    .line 71
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    .line 72
    iget-wide v3, p0, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;->mAnimationEndTime:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_7a

    .line 73
    iget-wide v3, p0, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;->mAnimationStartTime:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    .line 74
    iget v2, p0, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;->mStartDegree:I

    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;->mClockwise:Z

    if-eqz v3, :cond_65

    goto :goto_66

    :cond_65
    neg-int v1, v1

    :goto_66
    mul-int/lit16 v1, v1, 0x10e

    div-int/lit16 v1, v1, 0x3e8

    add-int/2addr v2, v1

    if-ltz v2, :cond_70

    .line 76
    rem-int/lit16 v2, v2, 0x168

    goto :goto_74

    :cond_70
    rem-int/lit16 v2, v2, 0x168

    add-int/lit16 v2, v2, 0x168

    .line 77
    :goto_74
    iput v2, p0, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;->mCurrentDegree:I

    .line 78
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_7e

    .line 80
    :cond_7a
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;->mTargetDegree:I

    iput v1, p0, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;->mCurrentDegree:I

    .line 84
    :cond_7e
    :goto_7e
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;->imageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 85
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    .line 86
    iget v3, p0, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;->mScale:F

    mul-float/2addr v1, v3

    .line 87
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;->imageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 88
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;->imageMatrix:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;->mScale:F

    sub-float/2addr v3, v2

    neg-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v3, v5

    iget v5, p0, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;->mScale:F

    sub-float/2addr v5, v2

    neg-float v2, v5

    div-float/2addr v2, v4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v2, v5

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 89
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;->imageMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;->mCurrentDegree:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    invoke-virtual {v1, v2, v3, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 90
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;->imageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 91
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 93
    iget p1, p0, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;->mCurrentDegree:I

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;->mTargetDegree:I

    if-ne p1, v0, :cond_e7

    .line 94
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;->mRotateListener:Lcom/transsion/camera/app/ui/widget/IRotatable$RotateListener;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_e7
    :goto_e7
    return-void
.end method

.method public resetImageViewScale()V
    .registers 2

    .line 56
    sget v0, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;->SCALE:F

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;->mScale:F

    return-void
.end method

.method public setImageViewScale(F)V
    .registers 2

    .line 52
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;->mScale:F

    return-void
.end method

.method public setOrientation(IZLcom/transsion/camera/app/ui/widget/IRotatable$RotateListener;)V
    .registers 6

    .line 103
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;->mEnableAnimation:Z

    if-ltz p1, :cond_7

    .line 105
    rem-int/lit16 p1, p1, 0x168

    goto :goto_b

    :cond_7
    rem-int/lit16 p1, p1, 0x168

    add-int/lit16 p1, p1, 0x168

    .line 106
    :goto_b
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;->mTargetDegree:I

    if-ne p1, v0, :cond_10

    return-void

    :cond_10
    if-eqz p3, :cond_14

    .line 111
    iput-object p3, p0, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;->mRotateListener:Lcom/transsion/camera/app/ui/widget/IRotatable$RotateListener;

    .line 113
    :cond_14
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;->mTargetDegree:I

    if-eqz p2, :cond_46

    .line 115
    iget p1, p0, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;->mCurrentDegree:I

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;->mStartDegree:I

    .line 116
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;->mAnimationStartTime:J

    .line 118
    iget p3, p0, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;->mTargetDegree:I

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;->mCurrentDegree:I

    sub-int/2addr p3, v0

    if-ltz p3, :cond_2a

    goto :goto_2c

    :cond_2a
    add-int/lit16 p3, p3, 0x168

    :goto_2c
    const/16 v0, 0xb4

    if-le p3, v0, :cond_32

    add-int/lit16 p3, p3, -0x168

    :cond_32
    if-ltz p3, :cond_36

    const/4 v0, 0x1

    goto :goto_37

    :cond_36
    const/4 v0, 0x0

    .line 125
    :goto_37
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;->mClockwise:Z

    .line 126
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    mul-int/lit16 p3, p3, 0x3e8

    div-int/lit16 p3, p3, 0x10e

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;->mAnimationEndTime:J

    goto :goto_48

    .line 128
    :cond_46
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;->mCurrentDegree:I

    .line 131
    :goto_48
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
