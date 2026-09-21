.class public abstract Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/ui/setting/exposure/widget/IProgressTraits;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar$OnProgressChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mBackground:Lcom/transsion/camera/ui/setting/exposure/widget/BaseDraw;

.field private mBackgroundVisible:Z

.field private final mDefaultRotateCalculate:Lcom/transsion/camera/ui/setting/exposure/widget/IRotateCalculate;

.field private mLastY:I

.field private mListener:Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar$OnProgressChangeListener;

.field private mMax:I

.field private mMin:I

.field private mMoving:Z

.field private mProgress:I

.field private mRotateCalculate:Lcom/transsion/camera/ui/setting/exposure/widget/IRotateCalculate;

.field private mThumb:Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;

.field private mThumbAnimator:Lcom/transsion/camera/ui/setting/exposure/widget/IThumbAnimator;

.field private final mThumbAnimatorStub:Lcom/transsion/camera/ui/setting/exposure/widget/IThumbAnimator;

.field private final mThumbMoon:Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;

.field private final mThumbSun:Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;

.field private final mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 33
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "BaseSeekBar"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 8

    .line 92
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mMin:I

    const/16 v0, 0x64

    .line 39
    iput v0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mMax:I

    .line 63
    new-instance v0, Lcom/transsion/camera/ui/setting/exposure/widget/animator/ThumbAnimatorStub;

    invoke-direct {v0}, Lcom/transsion/camera/ui/setting/exposure/widget/animator/ThumbAnimatorStub;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mThumbAnimatorStub:Lcom/transsion/camera/ui/setting/exposure/widget/IThumbAnimator;

    .line 64
    new-instance v1, Lcom/transsion/camera/ui/setting/exposure/widget/rotate/RotateCalculate;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/exposure/widget/rotate/RotateCalculate;-><init>(Lcom/transsion/camera/ui/setting/exposure/widget/IProgressTraits;)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mDefaultRotateCalculate:Lcom/transsion/camera/ui/setting/exposure/widget/IRotateCalculate;

    .line 95
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 96
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mTouchSlop:I

    .line 98
    sget-object v2, Lcom/transsion/camera/R$styleable;->BaseSeekBar:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 101
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->buildBackground(Landroid/content/Context;Landroid/content/res/TypedArray;)Lcom/transsion/camera/ui/setting/exposure/widget/BaseDraw;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mBackground:Lcom/transsion/camera/ui/setting/exposure/widget/BaseDraw;

    .line 103
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->buildThumbSun(Landroid/content/Context;Landroid/content/res/TypedArray;)Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mThumbSun:Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;

    .line 104
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->buildThumbMoon(Landroid/content/Context;Landroid/content/res/TypedArray;)Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mThumbMoon:Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;

    .line 105
    iput-object p3, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mThumb:Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;

    .line 107
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 109
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mThumbAnimator:Lcom/transsion/camera/ui/setting/exposure/widget/IThumbAnimator;

    .line 110
    iput-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mRotateCalculate:Lcom/transsion/camera/ui/setting/exposure/widget/IRotateCalculate;

    return-void
.end method

.method private checkValid(I)Z
    .registers 3

    .line 166
    iget v0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mMin:I

    if-lt p1, v0, :cond_a

    iget p0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mMax:I

    if-gt p1, p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method private distanceToProgress(I)I
    .registers 4

    .line 378
    div-int/lit8 p1, p1, 0x2

    .line 379
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mThumb:Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;

    invoke-virtual {v1}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float p1, p1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr p1, v1

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 380
    iget v0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mMax:I

    iget p0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mMin:I

    sub-int/2addr v0, p0

    int-to-float p0, v0

    mul-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private notifyProgressChanged(I)V
    .registers 2

    .line 359
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mListener:Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar$OnProgressChangeListener;

    if-eqz p0, :cond_7

    .line 360
    invoke-interface {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar$OnProgressChangeListener;->onProgressChanged(I)V

    :cond_7
    return-void
.end method

.method private notifyStartTracking()V
    .registers 1

    .line 347
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mListener:Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar$OnProgressChangeListener;

    if-eqz p0, :cond_7

    .line 348
    invoke-interface {p0}, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar$OnProgressChangeListener;->onStartTracking()V

    :cond_7
    return-void
.end method

.method private notifyStopTracking()V
    .registers 1

    .line 353
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mListener:Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar$OnProgressChangeListener;

    if-eqz p0, :cond_7

    .line 354
    invoke-interface {p0}, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar$OnProgressChangeListener;->onStopTracking()V

    :cond_7
    return-void
.end method

.method private onClick(I)V
    .registers 7

    .line 384
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 385
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    .line 386
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    .line 387
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mThumb:Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;

    invoke-virtual {v3}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v1

    if-gt p1, v3, :cond_1d

    .line 388
    iget p1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mMax:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->updateProgress(I)V

    return-void

    :cond_1d
    sub-int v3, v0, v2

    .line 389
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mThumb:Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;

    invoke-virtual {v4}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    if-lt p1, v3, :cond_30

    .line 390
    iget p1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mMin:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->updateProgress(I)V

    return-void

    :cond_30
    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    .line 392
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mThumb:Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;

    invoke-virtual {v2}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->height()I

    move-result v2

    sub-int/2addr v0, v2

    if-lez v0, :cond_57

    .line 394
    iget v2, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mMax:I

    int-to-float v3, v2

    iget v4, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mMin:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    sub-int/2addr p1, v1

    int-to-float p1, p1

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mThumb:Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;

    .line 395
    invoke-virtual {v1}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->height()I

    move-result v1

    int-to-float v1, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    sub-float/2addr p1, v1

    int-to-float v0, v0

    div-float/2addr p1, v0

    mul-float/2addr v2, p1

    sub-float/2addr v3, v2

    float-to-int p1, v3

    .line 396
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->updateProgress(I)V

    :cond_57
    return-void
.end method

.method private onMove(I)V
    .registers 3

    .line 365
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->distanceToProgress(I)I

    move-result p1

    mul-int/lit8 p1, p1, -0x1

    .line 367
    iget v0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mProgress:I

    add-int/2addr p1, v0

    .line 368
    iget v0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mMax:I

    if-le p1, v0, :cond_e

    move p1, v0

    .line 371
    :cond_e
    iget v0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mMin:I

    if-ge p1, v0, :cond_13

    move p1, v0

    .line 374
    :cond_13
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->updateProgress(I)V

    return-void
.end method

.method private progressToDistance(I)I
    .registers 4

    .line 290
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mThumb:Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;

    invoke-virtual {v1}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->height()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    .line 291
    iget v1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mMax:I

    iget p0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mMin:I

    sub-int p0, v1, p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    sub-int/2addr v1, p1

    int-to-float p0, v1

    mul-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method private thumbSun()Z
    .registers 3

    .line 199
    iget v0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mProgress:I

    iget v1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mMin:I

    iget p0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mMax:I

    add-int/2addr v1, p0

    div-int/lit8 v1, v1, 0x2

    if-lt v0, v1, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method private updateProgress(I)V
    .registers 3

    .line 184
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->updateProgressInternal(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 185
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->notifyProgressChanged(I)V

    :cond_9
    return-void
.end method

.method private updateProgressInternal(I)Z
    .registers 3

    .line 170
    iget v0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mProgress:I

    if-eq v0, p1, :cond_e

    .line 171
    iput p1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mProgress:I

    .line 172
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->updateThumb()V

    .line 173
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method private updateThumb()V
    .registers 3

    .line 190
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->thumbSun()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 191
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mThumbSun:Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mThumb:Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;

    goto :goto_f

    .line 193
    :cond_b
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mThumbMoon:Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mThumb:Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;

    .line 195
    :goto_f
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mThumb:Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mRotateCalculate:Lcom/transsion/camera/ui/setting/exposure/widget/IRotateCalculate;

    iget p0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mProgress:I

    invoke-interface {v1, p0}, Lcom/transsion/camera/ui/setting/exposure/widget/IRotateCalculate;->calculate(I)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->rotate(F)V

    return-void
.end method


# virtual methods
.method public backgroundVisible()Z
    .registers 1

    .line 208
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mBackgroundVisible:Z

    return p0
.end method

.method protected abstract buildBackground(Landroid/content/Context;Landroid/content/res/TypedArray;)Lcom/transsion/camera/ui/setting/exposure/widget/BaseDraw;
.end method

.method protected abstract buildThumbMoon(Landroid/content/Context;Landroid/content/res/TypedArray;)Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;
.end method

.method protected abstract buildThumbSun(Landroid/content/Context;Landroid/content/res/TypedArray;)Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;
.end method

.method public getMax()I
    .registers 1

    .line 153
    iget p0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mMax:I

    return p0
.end method

.method public getMin()I
    .registers 1

    .line 142
    iget p0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mMin:I

    return p0
.end method

.method public getProgress()I
    .registers 1

    .line 180
    iget p0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mProgress:I

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 11

    .line 257
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 259
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v5, v0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result p1

    .line 261
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 262
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 264
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    .line 265
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v0

    .line 266
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .line 267
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    .line 269
    iget-boolean v5, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mBackgroundVisible:Z

    if-eqz v5, :cond_3e

    move v5, v0

    .line 270
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mBackground:Lcom/transsion/camera/ui/setting/exposure/widget/BaseDraw;

    sub-int v8, v6, v2

    sub-int/2addr v8, v5

    sub-int v5, v7, v3

    sub-int/2addr v5, v4

    move v4, v8

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/ui/setting/exposure/widget/BaseDraw;->draw(Landroid/graphics/Canvas;IIII)V

    .line 275
    :cond_3e
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mThumb:Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->width()I

    move-result v0

    sub-int/2addr v6, v0

    div-int/lit8 v2, v6, 0x2

    .line 276
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mThumb:Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->width()I

    move-result v0

    add-int v4, v2, v0

    .line 277
    iget v0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mProgress:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->progressToDistance(I)I

    move-result v0

    add-int/2addr v3, v0

    .line 278
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mThumb:Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->height()I

    move-result v0

    add-int/2addr v0, v3

    if-le v0, v7, :cond_61

    move v5, v7

    goto :goto_62

    :cond_61
    move v5, v0

    .line 284
    :goto_62
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mThumb:Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->draw(Landroid/graphics/Canvas;IIII)V

    .line 286
    invoke-virtual {v1, p1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 296
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 297
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    return v2

    :cond_e
    const/4 v1, 0x1

    if-eqz v0, :cond_81

    if-eq v0, v1, :cond_4c

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1b

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4c

    goto/16 :goto_99

    .line 310
    :cond_1b
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 311
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 312
    iget v0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mLastY:I

    sub-int v0, p1, v0

    .line 313
    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mMoving:Z

    if-nez v2, :cond_39

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mTouchSlop:I

    if-le v0, v2, :cond_39

    .line 314
    iput p1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mLastY:I

    .line 315
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mMoving:Z

    .line 317
    :cond_39
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mMoving:Z

    if-eqz v0, :cond_99

    .line 318
    iget v0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mLastY:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->onMove(I)V

    .line 319
    iput p1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mLastY:I

    .line 320
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mBackgroundVisible:Z

    .line 321
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_99

    .line 327
    :cond_4c
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mMoving:Z

    if-nez v0, :cond_5a

    .line 328
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mBackgroundVisible:Z

    .line 329
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->onClick(I)V

    .line 331
    :cond_5a
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mMoving:Z

    .line 332
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 333
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v0, 0x3e8

    invoke-virtual {p1, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 334
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mThumbAnimator:Lcom/transsion/camera/ui/setting/exposure/widget/IThumbAnimator;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    invoke-interface {p1, v0}, Lcom/transsion/camera/ui/setting/exposure/widget/IThumbAnimator;->rotateThumb(F)V

    .line 335
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 336
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mThumbAnimator:Lcom/transsion/camera/ui/setting/exposure/widget/IThumbAnimator;

    invoke-interface {p1, v2}, Lcom/transsion/camera/ui/setting/exposure/widget/IThumbAnimator;->scaleThumb(Z)V

    .line 337
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->notifyStopTracking()V

    goto :goto_99

    .line 302
    :cond_81
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 303
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 304
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mLastY:I

    .line 305
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mThumbAnimator:Lcom/transsion/camera/ui/setting/exposure/widget/IThumbAnimator;

    invoke-interface {p1, v1}, Lcom/transsion/camera/ui/setting/exposure/widget/IThumbAnimator;->scaleThumb(Z)V

    .line 306
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->notifyStartTracking()V

    :cond_99
    :goto_99
    return v1
.end method

.method public setMax(I)V
    .registers 3

    .line 146
    iget v0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mMax:I

    if-eq v0, p1, :cond_9

    .line 147
    iput p1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mMax:I

    .line 148
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_9
    return-void
.end method

.method public setMin(I)V
    .registers 3

    .line 135
    iget v0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mMin:I

    if-eq v0, p1, :cond_9

    .line 136
    iput p1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mMin:I

    .line 137
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_9
    return-void
.end method

.method public setOnProgressChangeListener(Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar$OnProgressChangeListener;)V
    .registers 2

    .line 212
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mListener:Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar$OnProgressChangeListener;

    return-void
.end method

.method public setProgress(I)V
    .registers 5

    .line 157
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->checkValid(I)Z

    move-result v0

    if-nez v0, :cond_31

    .line 158
    sget-object v0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid progress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mMin: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mMin:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mMax: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mMax:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 162
    :cond_31
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->updateProgressInternal(I)Z

    return-void
.end method

.method public setRotateCalculate(Lcom/transsion/camera/ui/setting/exposure/widget/IRotateCalculate;)V
    .registers 2

    if-nez p1, :cond_4

    .line 220
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mDefaultRotateCalculate:Lcom/transsion/camera/ui/setting/exposure/widget/IRotateCalculate;

    :cond_4
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mRotateCalculate:Lcom/transsion/camera/ui/setting/exposure/widget/IRotateCalculate;

    return-void
.end method

.method public setThumbAnimator(Lcom/transsion/camera/ui/setting/exposure/widget/IThumbAnimator;)V
    .registers 2

    if-nez p1, :cond_4

    .line 216
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mThumbAnimatorStub:Lcom/transsion/camera/ui/setting/exposure/widget/IThumbAnimator;

    :cond_4
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mThumbAnimator:Lcom/transsion/camera/ui/setting/exposure/widget/IThumbAnimator;

    return-void
.end method

.method public traitMax()I
    .registers 1

    .line 247
    iget p0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mMax:I

    return p0
.end method

.method public traitMin()I
    .registers 1

    .line 242
    iget p0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mMin:I

    return p0
.end method

.method public traitProgress()I
    .registers 1

    .line 252
    iget p0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mProgress:I

    return p0
.end method

.method public updateBackgroundVisibility(Z)V
    .registers 2

    .line 203
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->mBackgroundVisible:Z

    .line 204
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
