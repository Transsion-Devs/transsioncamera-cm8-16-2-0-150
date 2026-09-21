.class public Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$AccessHelper;,
        Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$Listener;,
        Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$Item;
    }
.end annotation


# static fields
.field private static final FADE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final LONG_PRESS_TIMEOUT:I

.field private static final SCROLL_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAccessHelper:Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$AccessHelper;

.field private final mCamera:Landroid/graphics/Camera;

.field private mCenterX:F

.field private mCenterY:F

.field private mFocalLengthPaint:Landroid/graphics/Paint;

.field private mFocalLengthStrokePaint:Landroid/graphics/Paint;

.field private mFocalLengthSuffixPadding:F

.field private mInitialPointerId:I

.field private mIsFadeAnimating:Z

.field private mItemHeight:F

.field private mItemWidth:F

.field private mItemWidthExpanded:F

.field private mItemWidthNormal:F

.field private final mItems:Ljava/util/List;

.field private mLastTouchX:F

.field private mListener:Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$Listener;

.field private final mMatrixDepth:Landroid/graphics/Matrix;

.field private final mMatrixRotate:Landroid/graphics/Matrix;

.field private mMaxScrollDegree:F

.field private mMinScrollDegree:F

.field private mOrientation:I

.field private mRadius:F

.field private mRotateAnimator:Lcom/transsion/camera/ui/setting/zoom/RotateAnimator;

.field private mScrollDegree:F

.field private mScrollOnClickAnimator:Landroid/animation/ValueAnimator;

.field private mScrollState:I

.field private mSelectedIndex:I

.field private mSelectedPaint:Landroid/graphics/Paint;

.field private mSelectedSuffixPaint:Landroid/graphics/Paint;

.field private mSelectedSuffixSize:F

.field private mSelectedTextSize:F

.field private mStrokeAlpha:I

.field private mSuffixHeight:F

.field private mSuffixPaint:Landroid/graphics/Paint;

.field private mSuffixSize:F

.field private mSuffixStrokePaint:Landroid/graphics/Paint;

.field private mTextSize:F

.field private mTotalItemDegree:F

.field private mTouchDownTime:J

.field private mTouchDownX:F

.field private mTouchSlop:I

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public static synthetic $r8$lambda$Kav6s2o4vmG_bQPFkOFnVydOFUo(Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->lambda$initAnimator$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pm74NUOeWgmUybyhsqoVBVHS72o(Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->lambda$show$1()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmItems(Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mItems:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsFadeAnimating(Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mIsFadeAnimating:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleItemSelected(Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->handleItemSelected(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 44
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FocalLengthZoomBar"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 48
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->LONG_PRESS_TIMEOUT:I

    .line 59
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    const/4 v2, 0x0

    const v3, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->SCROLL_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 61
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const v3, 0x3f28f5c3    # 0.66f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->FADE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 132
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mItems:Ljava/util/List;

    .line 79
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mMatrixRotate:Landroid/graphics/Matrix;

    .line 80
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mMatrixDepth:Landroid/graphics/Matrix;

    .line 81
    new-instance p2, Landroid/graphics/Camera;

    invoke-direct {p2}, Landroid/graphics/Camera;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mCamera:Landroid/graphics/Camera;

    const/4 p2, -0x1

    .line 84
    iput p2, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mSelectedIndex:I

    .line 85
    iput p2, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mInitialPointerId:I

    const/4 p2, 0x0

    .line 87
    iput p2, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mScrollState:I

    const/high16 p2, -0x40800000    # -1.0f

    .line 98
    iput p2, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mSuffixHeight:F

    .line 133
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->initResources()V

    .line 134
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->initAnimator()V

    .line 135
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mTouchSlop:I

    .line 136
    new-instance p1, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$AccessHelper;

    invoke-direct {p1, p0, p0}, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$AccessHelper;-><init>(Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;Landroid/view/View;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mAccessHelper:Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$AccessHelper;

    .line 137
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method private applyTransform(Landroid/graphics/Canvas;Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$Item;FFF)V
    .registers 15

    const/high16 v0, 0x43870000    # 270.0f

    sub-float v0, p3, v0

    .line 381
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v1}, Landroid/graphics/Camera;->save()V

    .line 382
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v1, v0}, Landroid/graphics/Camera;->rotateY(F)V

    .line 383
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mCamera:Landroid/graphics/Camera;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mMatrixRotate:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 384
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    .line 385
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mMatrixRotate:Landroid/graphics/Matrix;

    neg-float v1, p4

    neg-float v2, p5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 386
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mMatrixRotate:Landroid/graphics/Matrix;

    invoke-virtual {v0, p4, p5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 388
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    .line 389
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mRadius:F

    float-to-double v3, v0

    float-to-double v5, p3

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    iget p3, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mRadius:F

    float-to-double v7, p3

    mul-double/2addr v5, v7

    sub-double/2addr v3, v5

    double-to-float p3, v3

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p3, v0

    .line 390
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mCamera:Landroid/graphics/Camera;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4, p3}, Landroid/graphics/Camera;->translate(FFF)V

    .line 391
    iget-object p3, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mCamera:Landroid/graphics/Camera;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mMatrixDepth:Landroid/graphics/Matrix;

    invoke-virtual {p3, v3}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 392
    iget-object p3, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {p3}, Landroid/graphics/Camera;->restore()V

    .line 393
    iget-object p3, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mMatrixDepth:Landroid/graphics/Matrix;

    invoke-virtual {p3, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 394
    iget-object p3, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mMatrixDepth:Landroid/graphics/Matrix;

    invoke-virtual {p3, p4, p5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 396
    iget-object p3, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mMatrixRotate:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mMatrixDepth:Landroid/graphics/Matrix;

    invoke-virtual {p3, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 397
    iget-object p3, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mMatrixRotate:Landroid/graphics/Matrix;

    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    const/4 p1, 0x2

    .line 399
    new-array p1, p1, [F

    const/4 p3, 0x0

    aput p4, p1, p3

    const/4 v1, 0x1

    aput p5, p1, v1

    .line 400
    iget-object p5, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mMatrixRotate:Landroid/graphics/Matrix;

    invoke-virtual {p5, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 401
    aget p1, p1, p3

    iput p1, p2, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$Item;->mCenterX:F

    .line 403
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mItemWidth:F

    div-float p3, p1, v0

    sub-float/2addr p4, p3

    add-float/2addr p1, p4

    .line 405
    new-instance p3, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    int-to-float p5, p5

    invoke-direct {p3, p4, v4, p1, p5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 406
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mMatrixDepth:Landroid/graphics/Matrix;

    invoke-virtual {p0, p3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 407
    iput-object p3, p2, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$Item;->mBounds:Landroid/graphics/RectF;

    return-void
.end method

.method private distanceToDegree(F)F
    .registers 6

    float-to-double v0, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 545
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 546
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mRadius:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, p0

    mul-float/2addr v2, p0

    float-to-double v2, v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v0

    .line 547
    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float p0, v0

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_21

    neg-float p0, p0

    :cond_21
    const/high16 p1, 0x3fc00000    # 1.5f

    mul-float/2addr p0, p1

    return p0
.end method

.method private doInvalidate()V
    .registers 3

    .line 297
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_e

    .line 298
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    .line 300
    :cond_e
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 301
    sget-object p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "doInvalidate"

    invoke-static {p0, v1, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private drawItem(Landroid/graphics/Canvas;Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$Item;)V
    .registers 11

    .line 339
    iget v0, p2, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$Item;->mDegree:F

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mScrollDegree:F

    add-float v5, v0, v1

    const/high16 v0, 0x43870000    # 270.0f

    sub-float v0, v5, v0

    .line 340
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x42b40000    # 90.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_15

    return-void

    :cond_15
    float-to-double v0, v5

    .line 344
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 345
    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mCenterX:F

    float-to-double v2, v2

    iget v4, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mRadius:F

    float-to-double v6, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v6, v0

    add-double/2addr v2, v6

    double-to-float v6, v2

    .line 346
    iget v7, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mCenterY:F

    .line 348
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mRotateAnimator:Lcom/transsion/camera/ui/setting/zoom/RotateAnimator;

    invoke-virtual {v0, p1, v6, v7}, Lcom/transsion/camera/ui/setting/zoom/RotateAnimator;->rotate(Landroid/graphics/Canvas;FF)F

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .line 349
    invoke-direct/range {v2 .. v7}, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->applyTransform(Landroid/graphics/Canvas;Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$Item;FFF)V

    .line 352
    iget p0, v2, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mRadius:F

    iget p1, v2, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mCenterX:F

    sub-float p1, v6, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sub-float/2addr p0, p1

    iget p1, v2, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mRadius:F

    div-float/2addr p0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    mul-float/2addr p0, p1

    add-float/2addr p0, p1

    const/high16 p1, 0x437f0000    # 255.0f

    mul-float/2addr p1, p0

    float-to-int p1, p1

    .line 355
    iget p2, v2, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mStrokeAlpha:I

    int-to-float p2, p2

    mul-float/2addr p2, p0

    float-to-int p0, p2

    .line 358
    iget-boolean p2, v4, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$Item;->mIsSelected:Z

    if-eqz p2, :cond_56

    iget-object p2, v2, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mSelectedPaint:Landroid/graphics/Paint;

    goto :goto_58

    :cond_56
    iget-object p2, v2, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mFocalLengthPaint:Landroid/graphics/Paint;

    .line 359
    :goto_58
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 360
    iget-object v0, v2, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mFocalLengthStrokePaint:Landroid/graphics/Paint;

    iget-boolean v1, v4, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$Item;->mIsSelected:Z

    if-eqz v1, :cond_64

    iget v1, v2, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mSelectedTextSize:F

    goto :goto_66

    :cond_64
    iget v1, v2, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mTextSize:F

    :goto_66
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 361
    iget-object v0, v2, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mFocalLengthStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 362
    iget-object v0, v4, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$Item;->mFocalLength:Ljava/lang/String;

    iget-object v1, v2, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mFocalLengthStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0, v6, v7, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 363
    iget-object v0, v4, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$Item;->mFocalLength:Ljava/lang/String;

    invoke-virtual {v3, v0, v6, v7, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 366
    iget p2, v2, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mFocalLengthSuffixPadding:F

    add-float/2addr v7, p2

    invoke-direct {v2}, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->getSuffixHeight()F

    move-result p2

    add-float/2addr v7, p2

    .line 367
    iget-boolean p2, v4, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$Item;->mIsSelected:Z

    if-eqz p2, :cond_89

    iget-object p2, v2, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mSelectedSuffixPaint:Landroid/graphics/Paint;

    goto :goto_8b

    :cond_89
    iget-object p2, v2, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mSuffixPaint:Landroid/graphics/Paint;

    .line 368
    :goto_8b
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 369
    iget-object p1, v2, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mSuffixStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 370
    iget-object p0, v2, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mSuffixStrokePaint:Landroid/graphics/Paint;

    iget-boolean p1, v4, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$Item;->mIsSelected:Z

    if-eqz p1, :cond_9c

    iget p1, v2, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mSelectedSuffixSize:F

    goto :goto_9e

    :cond_9c
    iget p1, v2, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mSuffixSize:F

    :goto_9e
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 371
    iget-object p0, v2, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mSuffixStrokePaint:Landroid/graphics/Paint;

    const-string p1, "MM"

    invoke-virtual {v3, p1, v6, v7, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 372
    invoke-virtual {v3, p1, v6, v7, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private ensureVibrator()V
    .registers 3

    .line 601
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_12

    .line 602
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mVibrator:Landroid/os/Vibrator;

    :cond_12
    return-void
.end method

.method private getSuffixHeight()F
    .registers 6

    .line 411
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mSuffixHeight:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1c

    .line 412
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 413
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mSuffixPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, "MM"

    invoke-virtual {v1, v4, v2, v3, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 414
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mSuffixHeight:F

    .line 416
    :cond_1c
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mSuffixHeight:F

    return p0
.end method

.method private handleActionUp(Landroid/view/MotionEvent;)V
    .registers 8

    .line 485
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mScrollState:I

    if-nez v0, :cond_16

    .line 486
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mTouchDownTime:J

    sub-long/2addr v0, v2

    sget v2, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->LONG_PRESS_TIMEOUT:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_16

    .line 487
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->handleSingleTapUp(Landroid/view/MotionEvent;)V

    return-void

    .line 491
    :cond_16
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mScrollState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4a

    .line 492
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mItems:Ljava/util/List;

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mSelectedIndex:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$Item;

    const/4 v1, 0x2

    .line 493
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->setScrollState(I)V

    .line 494
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mScrollOnClickAnimator:Landroid/animation/ValueAnimator;

    iget v3, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mScrollDegree:F

    const/high16 v4, 0x43870000    # 270.0f

    iget v5, p1, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$Item;->mDegree:F

    sub-float/2addr v4, v5

    new-array v1, v1, [F

    const/4 v5, 0x0

    aput v3, v1, v5

    aput v4, v1, v0

    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 495
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mScrollOnClickAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 496
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->notifyFocalLengthChanged(Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$Item;)V

    .line 497
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 498
    invoke-virtual {p0, v5}, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->setScrollState(I)V

    :cond_4a
    return-void
.end method

.method private handleItemSelected(I)V
    .registers 9

    .line 518
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mSelectedIndex:I

    if-ne p1, v0, :cond_5

    return-void

    .line 521
    :cond_5
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mSelectedIndex:I

    const/4 p1, 0x0

    move v0, p1

    .line 522
    :goto_9
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_25

    .line 523
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$Item;

    .line 524
    iget v3, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mSelectedIndex:I

    if-ne v3, v0, :cond_1f

    goto :goto_20

    :cond_1f
    move v2, p1

    :goto_20
    iput-boolean v2, v1, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$Item;->mIsSelected:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_25
    const/4 v0, 0x2

    .line 526
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->setScrollState(I)V

    .line 527
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mItems:Ljava/util/List;

    iget v3, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mSelectedIndex:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$Item;

    .line 528
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mScrollOnClickAnimator:Landroid/animation/ValueAnimator;

    iget v4, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mScrollDegree:F

    const/high16 v5, 0x43870000    # 270.0f

    iget v6, v1, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$Item;->mDegree:F

    sub-float/2addr v5, v6

    new-array v0, v0, [F

    aput v4, v0, p1

    aput v5, v0, v2

    invoke-virtual {v3, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 529
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mScrollOnClickAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 531
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mAccessHelper:Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$AccessHelper;

    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mSelectedIndex:I

    invoke-virtual {p1, v0, v2}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 532
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->notifyFocalLengthChanged(Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$Item;)V

    return-void
.end method

.method private handleSingleTapUp(Landroid/view/MotionEvent;)V
    .registers 7

    .line 503
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    move v2, v1

    .line 505
    :goto_7
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2b

    .line 506
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mItems:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$Item;

    .line 507
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v3, v3, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$Item;->mCenterX:F

    sub-float/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v4, v3, v0

    if-gez v4, :cond_28

    move v2, v1

    move v0, v3

    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 513
    :cond_2b
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSingleTapUp, ex:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", targetIndex: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 514
    invoke-direct {p0, v2}, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->handleItemSelected(I)V

    return-void
.end method

.method private initAnimator()V
    .registers 4

    .line 200
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mScrollOnClickAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    .line 201
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 202
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mScrollOnClickAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->SCROLL_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 203
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mScrollOnClickAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 210
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mScrollOnClickAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$1;-><init>(Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 223
    new-instance v0, Lcom/transsion/camera/ui/setting/zoom/RotateAnimator;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/zoom/RotateAnimator;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mRotateAnimator:Lcom/transsion/camera/ui/setting/zoom/RotateAnimator;

    return-void
.end method

.method private initResources()V
    .registers 11

    .line 142
    new-instance v0, Landroid/graphics/Paint;

    const/16 v1, 0xc1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mFocalLengthPaint:Landroid/graphics/Paint;

    .line 143
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/R$dimen;->focal_length_bar_text_size:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mTextSize:F

    .line 144
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mFocalLengthPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 145
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mFocalLengthPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 146
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mFocalLengthPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 147
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mFocalLengthPaint:Landroid/graphics/Paint;

    const-string v3, "tnum"

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFontFeatureSettings(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mFocalLengthPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 150
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/transsion/camera/R$color;->zoom_text_stroke_color:I

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 151
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    iput v5, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mStrokeAlpha:I

    .line 152
    new-instance v5, Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mFocalLengthPaint:Landroid/graphics/Paint;

    invoke-direct {v5, v7}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v5, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mFocalLengthStrokePaint:Landroid/graphics/Paint;

    .line 153
    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 154
    iget-object v5, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mFocalLengthStrokePaint:Landroid/graphics/Paint;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 155
    iget-object v5, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mFocalLengthStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 157
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v9, Lcom/transsion/camera/R$color;->zoom_selected_color:I

    invoke-virtual {v5, v9, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    .line 158
    new-instance v6, Landroid/graphics/Paint;

    iget-object v9, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mFocalLengthPaint:Landroid/graphics/Paint;

    invoke-direct {v6, v9}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v6, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mSelectedPaint:Landroid/graphics/Paint;

    .line 159
    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 160
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v9, Lcom/transsion/camera/R$dimen;->focal_length_bar_selected_text_size:I

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    iput v6, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mSelectedTextSize:F

    .line 161
    iget-object v9, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 163
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mSuffixPaint:Landroid/graphics/Paint;

    .line 164
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v9, Lcom/transsion/camera/R$dimen;->focal_length_bar_suffix_size:I

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    iput v6, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mSuffixSize:F

    .line 165
    iget-object v9, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mSuffixPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 166
    iget-object v6, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mSuffixPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 167
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mSuffixPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 168
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mSuffixPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setFontFeatureSettings(Ljava/lang/String;)V

    .line 169
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mSuffixPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 171
    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mSuffixPaint:Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mSuffixStrokePaint:Landroid/graphics/Paint;

    .line 172
    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 173
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mSuffixStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 174
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mSuffixStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 176
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mSuffixPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mSelectedSuffixPaint:Landroid/graphics/Paint;

    .line 177
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 178
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->focal_length_bar_selected_suffix_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mSelectedSuffixSize:F

    .line 179
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mSelectedSuffixPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 181
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->focal_length_bar_focal_length_suffix_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mFocalLengthSuffixPadding:F

    .line 182
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->focal_length_bar_item_width_expanded:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mItemWidthExpanded:F

    .line 183
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->focal_length_bar_item_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mItemWidthNormal:F

    .line 184
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->focal_length_bar_item_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mItemHeight:F

    return-void
.end method

.method private isInitialPointer(I)Z
    .registers 3

    .line 481
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mInitialPointerId:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_9

    if-ne p0, p1, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$initAnimator$0(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 204
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 205
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->scrollToDegree(F)V

    const/4 p1, 0x0

    .line 206
    :goto_e
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1e

    .line 207
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mAccessHelper:Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$AccessHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateVirtualView(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_e

    :cond_1e
    return-void
.end method

.method private synthetic lambda$show$1()V
    .registers 2

    const v0, 0x3f4ccccd    # 0.8f

    .line 625
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    .line 626
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    const/4 v0, 0x0

    .line 627
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private notifyFocalLengthChanged(Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$Item;)V
    .registers 5

    .line 536
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyFocalLengthChanged, item: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$Item;->mFocalLength:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", ratio:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$Item;->mZoomRatio:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 538
    iget-object v0, p1, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$Item;->mFocalLength:Ljava/lang/String;

    .line 539
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mListener:Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$Listener;

    if-eqz p0, :cond_2d

    .line 540
    iget p1, p1, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$Item;->mZoomRatio:I

    invoke-interface {p0, p1, v0}, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$Listener;->onValueChanged(ILjava/lang/String;)V

    :cond_2d
    return-void
.end method

.method private updateItemSelectedState(Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$Item;Ljava/lang/String;)V
    .registers 4

    .line 273
    iget-object v0, p1, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$Item;->mFocalLength:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_14

    const/4 p2, 0x1

    .line 274
    iput-boolean p2, p1, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$Item;->mIsSelected:Z

    .line 275
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mSelectedIndex:I

    return-void

    :cond_14
    const/4 p0, 0x0

    .line 277
    iput-boolean p0, p1, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$Item;->mIsSelected:Z

    return-void
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 228
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mAccessHelper:Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$AccessHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p0, 0x1

    .line 229
    :goto_12
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchHoverEvent, handled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    invoke-static {p1}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 229
    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method

.method public hide(Z)V
    .registers 4

    const/4 v0, 0x0

    const v1, 0x3f4ccccd    # 0.8f

    if-nez p1, :cond_15

    .line 653
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 654
    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 655
    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleY(F)V

    const/16 p1, 0x8

    .line 656
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_15
    const/4 p1, 0x1

    .line 660
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mIsFadeAnimating:Z

    .line 661
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 662
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->FADE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 663
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x96

    .line 664
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$3;-><init>(Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;)V

    .line 665
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 680
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 681
    sget-object p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "hide start"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    .line 327
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 331
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$Item;

    .line 332
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 333
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->drawItem(Landroid/graphics/Canvas;Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$Item;)V

    .line 334
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_9

    :cond_1f
    return-void
.end method

.method protected onMeasure(II)V
    .registers 7

    .line 307
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mTotalItemDegree:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_b

    .line 308
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void

    .line 312
    :cond_b
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mItemHeight:F

    float-to-int p1, p1

    .line 313
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mItems:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    int-to-float p2, p2

    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mItemWidth:F

    mul-float/2addr p2, v0

    float-to-int p2, p2

    const/high16 v0, 0x43b40000    # 360.0f

    .line 314
    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mTotalItemDegree:F

    div-float/2addr v0, v1

    int-to-float p2, p2

    mul-float/2addr v0, p2

    float-to-double v0, v0

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v0, v2

    double-to-float p2, v0

    .line 317
    iput p2, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mRadius:F

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p2, v0

    float-to-int p2, p2

    int-to-float v1, p2

    div-float/2addr v1, v0

    .line 320
    iput v1, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mCenterX:F

    .line 321
    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mItemHeight:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mCenterY:F

    .line 322
    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 427
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 428
    sget-object p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onTouchEvent, return for not enabled"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 431
    :cond_f
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mScrollState:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1d

    .line 432
    sget-object p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onTouchEvent, return for animating scroll"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v3

    .line 435
    :cond_1d
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mIsFadeAnimating:Z

    if-eqz v0, :cond_29

    .line 436
    sget-object p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onTouchEvent, return for fade animating"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 439
    :cond_29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 440
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->isInitialPointer(I)Z

    move-result v4

    if-nez v4, :cond_5e

    .line 441
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-eqz v4, :cond_5e

    .line 442
    sget-object p1, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouchEvent, not initialPointerId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mInitialPointerId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", pointerId: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v3

    .line 447
    :cond_5e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-eqz v4, :cond_ae

    const/4 v0, -0x1

    if-eq v4, v3, :cond_a8

    if-eq v4, v2, :cond_76

    const/4 v2, 0x3

    if-eq v4, v2, :cond_70

    const/4 v1, 0x6

    if-eq v4, v1, :cond_a8

    goto :goto_be

    .line 473
    :cond_70
    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mInitialPointerId:I

    .line 474
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->setScrollState(I)V

    goto :goto_be

    .line 455
    :cond_76
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mLastTouchX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    .line 456
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mLastTouchX:F

    .line 457
    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mScrollState:I

    if-nez v1, :cond_9c

    .line 458
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mTouchDownX:F

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_9c

    .line 459
    invoke-virtual {p0, v3}, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->setScrollState(I)V

    .line 461
    :cond_9c
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mScrollState:I

    if-ne p1, v3, :cond_be

    .line 462
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->distanceToDegree(F)F

    move-result p1

    .line 463
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->scrollByDegree(F)V

    goto :goto_be

    .line 469
    :cond_a8
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->handleActionUp(Landroid/view/MotionEvent;)V

    .line 470
    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mInitialPointerId:I

    goto :goto_be

    .line 449
    :cond_ae
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mLastTouchX:F

    .line 450
    iput v1, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mTouchDownX:F

    .line 451
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mTouchDownTime:J

    .line 452
    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mInitialPointerId:I

    :cond_be
    :goto_be
    return v3
.end method

.method public scrollByDegree(F)V
    .registers 3

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_6

    return-void

    .line 568
    :cond_6
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mScrollDegree:F

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->scrollToDegree(F)V

    return-void
.end method

.method public scrollToDegree(F)V
    .registers 7

    .line 572
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mScrollDegree:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_7

    return-void

    .line 575
    :cond_7
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mMinScrollDegree:F

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mMaxScrollDegree:F

    invoke-static {p1, v0, v1}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mScrollDegree:F

    .line 576
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mScrollState:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1a

    .line 577
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    return-void

    .line 581
    :cond_1a
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mSelectedIndex:I

    const/4 v0, 0x0

    move v1, v0

    .line 582
    :goto_1e
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4b

    .line 583
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$Item;

    .line 584
    iget v3, v2, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$Item;->mDegree:F

    iget v4, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mScrollDegree:F

    add-float/2addr v3, v4

    const/high16 v4, 0x43870000    # 270.0f

    sub-float/2addr v3, v4

    .line 585
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x40f00000    # 7.5f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_46

    const/4 v3, 0x1

    .line 586
    iput-boolean v3, v2, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$Item;->mIsSelected:Z

    .line 587
    iput v1, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mSelectedIndex:I

    goto :goto_48

    .line 589
    :cond_46
    iput-boolean v0, v2, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$Item;->mIsSelected:Z

    :goto_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 592
    :cond_4b
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mSelectedIndex:I

    if-eq p1, v0, :cond_59

    .line 593
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->ensureVibrator()V

    .line 594
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v0, 0x5

    invoke-virtual {p1, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    .line 597
    :cond_59
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->doInvalidate()V

    return-void
.end method

.method public setListener(Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$Listener;)V
    .registers 2

    .line 693
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mListener:Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$Listener;

    return-void
.end method

.method public setOrientation(I)V
    .registers 4

    .line 685
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mOrientation:I

    if-eq v0, p1, :cond_21

    .line 686
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mOrientation:I

    .line 687
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mRotateAnimator:Lcom/transsion/camera/ui/setting/zoom/RotateAnimator;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/RotateAnimator;->setOrientation(I)V

    .line 688
    sget-object p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOrientation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_21
    return-void
.end method

.method protected setScrollState(I)V
    .registers 5

    .line 235
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mScrollState:I

    if-ne v0, p1, :cond_5

    goto :goto_2e

    .line 238
    :cond_5
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScrollState, to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mScrollState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 239
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mScrollState:I

    .line 240
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mListener:Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$Listener;

    if-eqz p0, :cond_2e

    .line 241
    invoke-interface {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$Listener;->onScrollStateChanged(I)V

    :cond_2e
    :goto_2e
    return-void
.end method

.method public setZoomConfig(Lcom/transsion/camera/app/common/ZoomConfig;)V
    .registers 9

    .line 246
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 247
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ZoomConfig;->getLensInfo()Ljava/util/List;

    move-result-object v0

    .line 248
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ZoomConfig;->getCurrentFocalLength()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_1c

    .line 250
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->getFocalLengths()[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v1

    .line 252
    :cond_1c
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/high16 v3, 0x41700000    # 15.0f

    if-eqz v2, :cond_69

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    .line 253
    new-instance v4, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$Item;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$Item;-><init>(Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar-IA;)V

    .line 254
    iget-object v5, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    mul-float/2addr v5, v3

    iput v5, v4, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$Item;->mDegree:F

    .line 255
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->getFocalLengths()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v1

    iput-object v3, v4, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$Item;->mFocalLength:Ljava/lang/String;

    .line 256
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->getLensType()I

    move-result v3

    iput v3, v4, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$Item;->mLensType:I

    .line 257
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->getCurrentRatio()I

    move-result v3

    if-lez v3, :cond_5a

    .line 258
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->getCurrentRatio()I

    move-result v2

    goto :goto_5e

    :cond_5a
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->getStartRatio()I

    move-result v2

    :goto_5e
    iput v2, v4, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$Item;->mZoomRatio:I

    .line 259
    invoke-direct {p0, v4, p1}, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->updateItemSelectedState(Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$Item;Ljava/lang/String;)V

    .line 260
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mItems:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 263
    :cond_69
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v3

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mTotalItemDegree:F

    .line 264
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mItems:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$Item;

    iget p1, p1, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$Item;->mDegree:F

    const/high16 v0, 0x43870000    # 270.0f

    sub-float p1, v0, p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mMaxScrollDegree:F

    .line 265
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$Item;

    iget p1, p1, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$Item;->mDegree:F

    sub-float p1, v0, p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mMinScrollDegree:F

    .line 266
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mItems:Ljava/util/List;

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mSelectedIndex:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$Item;

    .line 267
    iget p1, p1, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$Item;->mDegree:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mScrollDegree:F

    .line 268
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x5

    if-lt p1, v0, :cond_b2

    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mItemWidthNormal:F

    goto :goto_b4

    :cond_b2
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mItemWidthExpanded:F

    :goto_b4
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mItemWidth:F

    .line 269
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setZoomRatio(I)V
    .registers 7

    .line 282
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mItems:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$Item;

    move v2, v1

    .line 283
    :goto_a
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2b

    .line 284
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mItems:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$Item;

    .line 285
    iget v4, v3, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$Item;->mZoomRatio:I

    if-ne v4, p1, :cond_20

    const/4 v4, 0x1

    goto :goto_21

    :cond_20
    move v4, v1

    :goto_21
    iput-boolean v4, v3, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$Item;->mIsSelected:Z

    if-eqz v4, :cond_28

    .line 288
    iput v2, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mSelectedIndex:I

    move-object v0, v3

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_2b
    const/high16 v1, 0x43870000    # 270.0f

    .line 291
    iget v0, v0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$Item;->mDegree:F

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mScrollDegree:F

    .line 292
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setZoomRatio, ratio: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mScrollDegree: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mScrollDegree:F

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 293
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->doInvalidate()V

    return-void
.end method

.method public show(Z)V
    .registers 4

    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p1, :cond_12

    .line 612
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    .line 613
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    .line 614
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 p1, 0x0

    .line 615
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_12
    const/4 p1, 0x1

    .line 619
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mIsFadeAnimating:Z

    .line 620
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 621
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->FADE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 622
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    .line 623
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;)V

    .line 624
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$2;-><init>(Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;)V

    .line 629
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 643
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 644
    sget-object p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "show start"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public switchSelectedItem(Z)V
    .registers 4

    if-eqz p1, :cond_7

    .line 556
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mSelectedIndex:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    :cond_7
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mSelectedIndex:I

    add-int/lit8 p1, p1, -0x1

    :goto_b
    const/4 v0, -0x1

    if-le p1, v0, :cond_23

    .line 557
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_23

    .line 558
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->handleItemSelected(I)V

    .line 559
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->ensureVibrator()V

    .line 560
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v0, 0x5

    invoke-virtual {p0, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_23
    return-void
.end method
