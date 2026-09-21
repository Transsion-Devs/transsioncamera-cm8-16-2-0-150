.class public Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Listener;,
        Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;
    }
.end annotation


# static fields
.field private static final COEFFICIENT_K:D

.field private static final COS_OF_ROTATED_X_DEGREE:D

.field private static final CRITICAL_RATIOS:[F

.field private static final DEFAULT_ZOOM_RATIO:I

.field private static final FADE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final FOCAL_LENGTH_RATIO_THRESHOLD:I

.field private static final GRADIENT_ALPHA:[F

.field private static final LINEAR_DISTANCE_RATIO_THRESHOLD:I

.field private static final LONG_PRESS_TIMEOUT:I

.field private static final PRESET_MAX_UI_RATIO:I

.field private static final PRESET_MIN_UI_RATIO:I

.field private static final PRESET_UI_RATIO_LOG_OFFSET:D

.field private static final RATIO_TEXT_GRADIENT_POSITION_HORIZONTAL:[F

.field private static final RATIO_TEXT_GRADIENT_POSITION_VERTICAL:[F

.field private static final SCROLL_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final TEXT_GRADIENT_POSITION:[F

.field private static final VIBRATE_RATIO_THRESHOLD:I


# instance fields
.field private mBackgroundVerticalMargin:F

.field private mBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mBgDrawableInverted:Landroid/graphics/drawable/Drawable;

.field private mBgDrawableNormal:Landroid/graphics/drawable/Drawable;

.field private mCenterRatioPaint:Landroid/graphics/Paint;

.field private mCenterRatioStrokePaint:Landroid/graphics/Paint;

.field private mCenterRatioSuffixPaint:Landroid/graphics/Paint;

.field private mCenterRatioSuffixStrokePaint:Landroid/graphics/Paint;

.field private mCenterToEndsStretchFactor:F

.field private mCenterX:F

.field private mCenterY:F

.field private mCoefficientK:D

.field private mCriticalTicks:Landroid/util/SparseArray;

.field private mDegreeOffset:F

.field private mDensity:F

.field private mDiscardRotateDegree:F

.field private mFocalLengthBase:F

.field private mFocalLengthBottomMargin:F

.field private mFocalLengthColor:I

.field private mFocalLengthColorInverted:I

.field private mFocalLengthHorizontalGradient:Landroid/graphics/LinearGradient;

.field private mFocalLengthPaint:Landroid/graphics/Paint;

.field private mFocalLengthSelectedPaint:Landroid/graphics/Paint;

.field private mFocalLengthStrokePaint:Landroid/graphics/Paint;

.field private mFocalLengthSuffixPaint:Landroid/graphics/Paint;

.field private mFocalLengthSuffixSelectedPaint:Landroid/graphics/Paint;

.field private mFocalLengthSuffixStrokePaint:Landroid/graphics/Paint;

.field private mFocalLengthVerticalGradient:Landroid/graphics/LinearGradient;

.field private mGradientMargin:F

.field private mGradientMatrix:Landroid/graphics/Matrix;

.field private mInitialPointerId:I

.field private mIsFadingOut:Z

.field private mIsInverted:Z

.field private mIsVibrationEnable:Z

.field private mIsVibrationSupported:Z

.field private mIsZoomRangeLimited:Z

.field private mLastTouchX:F

.field private mLeftEdgeEffect:Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;

.field private mLimitedFocalLengthPaint:Landroid/graphics/Paint;

.field private mLimitedFocalLengthSuffixPaint:Landroid/graphics/Paint;

.field private mLimitedTextColor:I

.field private mLimitedTickAlpha:I

.field private mLimitedTickPaint:Landroid/graphics/Paint;

.field private mLimitedTickRatioPaint:Landroid/graphics/Paint;

.field private mLinearDistanceDegreeThreshold:F

.field private mListener:Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Listener;

.field private mMaxLimitedZoomRatio:I

.field private mMaxRotatableDegree:F

.field private mMaxScrollDegree:F

.field private mMaxZoomRatio:I

.field private mMinLimitedZoomRatio:I

.field private mMinScrollDegree:F

.field private mMinZoomRatio:I

.field private mOrientation:I

.field private mPointerBottomMargin:F

.field private mPointerDrawable:Landroid/graphics/drawable/Drawable;

.field private mPointerHeight:I

.field private mPointerWidth:I

.field private mRatioBottomMargin:F

.field private mRatioTextHorizontalGradient:Landroid/graphics/LinearGradient;

.field private mRatioTextVerticalGradient:Landroid/graphics/LinearGradient;

.field private mRightEdgeEffect:Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;

.field private mRingRadius:F

.field private mRotateAnimator:Lcom/transsion/camera/ui/setting/zoom/RotateAnimator;

.field private mScrollDegree:F

.field private mScrollOnClickAnimator:Landroid/animation/ValueAnimator;

.field private mScrollState:I

.field private mSelectedColor:I

.field private mSelectedFocalLengthVerticalGradient:Landroid/graphics/LinearGradient;

.field private mStickyInDegreeThreshold:F

.field private mStrokeColor:I

.field private mTapFeedbackAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mTextBound:Landroid/graphics/Rect;

.field private mTickHeight:I

.field private mTickPaint:Landroid/graphics/Paint;

.field private mTickRatioPaint:Landroid/graphics/Paint;

.field private mTickRatioStrokePaint:Landroid/graphics/Paint;

.field private mTicks:Landroid/util/SparseArray;

.field private mTopPadding:F

.field private mTouchDownTime:J

.field private mVibrateTicks:Landroid/util/SparseArray;

.field private mViewContentHeight:I

.field private mZoomRatio:I


# direct methods
.method public static synthetic $r8$lambda$ASwMJlblgZ3gT4k1t4RyWPYiat0(Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->lambda$initAnimator$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nLQ1-SoX7W04Kf9DAUSwcMjHVPY(Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->lambda$show$1()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCenterToEndsStretchFactor(Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;F)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mCenterToEndsStretchFactor:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsFadingOut(Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mIsFadingOut:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 53
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ZoomTickRing"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 60
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->LONG_PRESS_TIMEOUT:I

    .line 61
    sget v0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_1X:I

    sput v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->DEFAULT_ZOOM_RATIO:I

    .line 62
    sget v0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_10X:I

    sput v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->FOCAL_LENGTH_RATIO_THRESHOLD:I

    .line 63
    sget v0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_RATIO_UNIT:I

    mul-int/lit8 v1, v0, 0x78

    sput v1, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->LINEAR_DISTANCE_RATIO_THRESHOLD:I

    mul-int/lit8 v1, v0, 0x14

    .line 64
    sput v1, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->VIBRATE_RATIO_THRESHOLD:I

    mul-int/lit8 v1, v0, 0x78

    .line 65
    sput v1, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->PRESET_MAX_UI_RATIO:I

    const v2, 0x3f19999a    # 0.6f

    int-to-float v0, v0

    mul-float/2addr v0, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 66
    sput v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->PRESET_MIN_UI_RATIO:I

    const/4 v2, 0x5

    .line 89
    new-array v3, v2, [F

    fill-array-data v3, :array_98

    sput-object v3, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->TEXT_GRADIENT_POSITION:[F

    const/16 v3, 0x8

    .line 90
    new-array v4, v3, [F

    fill-array-data v4, :array_a6

    sput-object v4, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->RATIO_TEXT_GRADIENT_POSITION_HORIZONTAL:[F

    .line 92
    new-array v4, v3, [F

    fill-array-data v4, :array_ba

    sput-object v4, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->RATIO_TEXT_GRADIENT_POSITION_VERTICAL:[F

    .line 94
    new-array v2, v2, [F

    fill-array-data v2, :array_ce

    sput-object v2, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->GRADIENT_ALPHA:[F

    .line 95
    new-array v2, v3, [F

    fill-array-data v2, :array_dc

    sput-object v2, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->CRITICAL_RATIOS:[F

    const-wide v2, 0x4054c00000000000L    # 83.0

    .line 97
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    sput-wide v2, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->COS_OF_ROTATED_X_DEGREE:D

    int-to-double v1, v1

    .line 98
    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    int-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    sub-double/2addr v1, v3

    sput-wide v1, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->PRESET_UI_RATIO_LOG_OFFSET:D

    const-wide v3, 0x4066800000000000L    # 180.0

    div-double/2addr v3, v1

    .line 100
    sput-wide v3, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->COEFFICIENT_K:D

    .line 105
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const v2, 0x3f28f5c3    # 0.66f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v3, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->FADE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 107
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3dcccccd    # 0.1f

    const v2, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v2, v3, v1, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->SCROLL_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void

    :array_98
    .array-data 4
        0x0
        0x3e4ccccd    # 0.2f
        0x3f000000    # 0.5f
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_a6
    .array-data 4
        0x0
        0x3e4ccccd    # 0.2f
        0x3eb33333    # 0.35f
        0x3ee66666    # 0.45f
        0x3f0ccccd    # 0.55f
        0x3f266666    # 0.65f
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_ba
    .array-data 4
        0x0
        0x3e4ccccd    # 0.2f
        0x3eb33333    # 0.35f
        0x3ef33333    # 0.475f
        0x3f066666    # 0.525f
        0x3f266666    # 0.65f
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_ce
    .array-data 4
        0x0
        0x3e800000    # 0.25f
        0x3f800000    # 1.0f
        0x3e800000    # 0.25f
        0x0
    .end array-data

    :array_dc
    .array-data 4
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40a00000    # 5.0f
        0x41200000    # 10.0f
        0x41a00000    # 20.0f
        0x42480000    # 50.0f
        0x42a00000    # 80.0f
        0x42c80000    # 100.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 233
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 136
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mIsVibrationEnable:Z

    .line 140
    sget p1, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->DEFAULT_ZOOM_RATIO:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mZoomRatio:I

    const/4 p1, 0x0

    .line 149
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mScrollState:I

    const/4 p1, -0x1

    .line 156
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mInitialPointerId:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 164
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mLastTouchX:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 165
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mCenterToEndsStretchFactor:F

    const/high16 p1, 0x43960000    # 300.0f

    .line 168
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mRingRadius:F

    const/high16 p1, 0x3f000000    # 0.5f

    .line 178
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mStickyInDegreeThreshold:F

    const/16 p1, 0x20

    .line 180
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mTickHeight:I

    .line 215
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mTicks:Landroid/util/SparseArray;

    .line 216
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mVibrateTicks:Landroid/util/SparseArray;

    .line 217
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mCriticalTicks:Landroid/util/SparseArray;

    .line 225
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mTextBound:Landroid/graphics/Rect;

    .line 226
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mGradientMatrix:Landroid/graphics/Matrix;

    .line 234
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->initResources()V

    .line 235
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->initAnimator()V

    .line 237
    new-instance p1, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;

    invoke-direct {p1}, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mLeftEdgeEffect:Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;

    .line 238
    new-instance p1, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;

    invoke-direct {p1}, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mRightEdgeEffect:Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;

    return-void
.end method

.method private calculateDegreeByRatio(IF)F
    .registers 7

    .line 606
    sget v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->LINEAR_DISTANCE_RATIO_THRESHOLD:I

    if-gt p1, v0, :cond_17

    .line 607
    iget-wide v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mCoefficientK:D

    int-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    sget v2, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->PRESET_MIN_UI_RATIO:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    sub-double/2addr p0, v2

    mul-double/2addr v0, p0

    double-to-float p0, v0

    sub-float/2addr p0, p2

    return p0

    .line 611
    :cond_17
    iget p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mLinearDistanceDegreeThreshold:F

    sub-int/2addr p1, v0

    int-to-float p1, p1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr p1, v1

    .line 612
    sget v1, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->PRESET_MAX_UI_RATIO:I

    sub-int/2addr v1, v0

    int-to-float v0, v1

    div-float/2addr p1, v0

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mMaxRotatableDegree:F

    sub-float/2addr p0, p2

    mul-float/2addr p1, p0

    add-float/2addr p2, p1

    return p2
.end method

.method private calculateTargetScrollDegree(Landroid/view/MotionEvent;[I)F
    .registers 15

    .line 629
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 630
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->findTapedCriticalTick(F)Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4c

    .line 633
    iget p1, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mValue:I

    .line 634
    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mIsZoomRangeLimited:Z

    if-eqz v2, :cond_14

    iget v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mMinLimitedZoomRatio:I

    goto :goto_16

    :cond_14
    iget v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mMinZoomRatio:I

    :goto_16
    if-eqz v2, :cond_1b

    .line 635
    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mMaxLimitedZoomRatio:I

    goto :goto_1d

    :cond_1b
    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mMaxZoomRatio:I

    .line 633
    :goto_1d
    invoke-static {p1, v3, v2}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result p1

    aput p1, p2, v1

    .line 636
    sget-object p1, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calculateTargetScrollDegree, tapedCriticalTick: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ,targetRatio: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p2, p2, v1

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 638
    iget p1, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mValue:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->getTargetScrollDegreeByRatio(I)F

    move-result p0

    return p0

    .line 643
    :cond_4c
    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mCenterX:F

    sub-float v2, p1, v2

    iget v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mRingRadius:F

    div-float/2addr v2, v3

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v2, v3, v4}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v2

    float-to-double v2, v2

    .line 644
    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v2, v2

    const/high16 v3, 0x43b40000    # 360.0f

    sub-float/2addr v3, v2

    const/high16 v2, 0x43870000    # 270.0f

    sub-float v3, v2, v3

    .line 646
    iget v4, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mScrollDegree:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mMinScrollDegree:F

    iget v5, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mMaxScrollDegree:F

    invoke-static {v3, v4, v5}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v3

    sub-float/2addr v2, v3

    .line 648
    invoke-direct {p0, v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->degreeToZoomRatio(F)I

    move-result v2

    aput v2, p2, v1

    .line 649
    sget-object v2, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calculateTargetScrollDegree, upX: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", targetRatio: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, p2, v1

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 654
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mTicks:Landroid/util/SparseArray;

    aget v4, p2, v1

    invoke-direct {p0, v2, v4}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->findNearestTicksByRatio(Landroid/util/SparseArray;I)[Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;

    move-result-object v2

    .line 655
    array-length v4, v2

    move v7, v1

    :goto_a8
    if-ge v7, v4, :cond_c1

    aget-object v8, v2, v7

    .line 656
    iget v9, v8, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mTickX:F

    sub-float/2addr v9, p1

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, v8, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mTickWidth:F

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    cmpg-float v9, v9, v10

    if-gez v9, :cond_be

    move-object v0, v8

    goto :goto_c1

    :cond_be
    add-int/lit8 v7, v7, 0x1

    goto :goto_a8

    :cond_c1
    :goto_c1
    if-eqz v0, :cond_112

    .line 662
    iget v2, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mValue:I

    .line 663
    iget-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mIsZoomRangeLimited:Z

    if-eqz v3, :cond_cc

    iget v4, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mMinLimitedZoomRatio:I

    goto :goto_ce

    :cond_cc
    iget v4, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mMinZoomRatio:I

    :goto_ce
    if-eqz v3, :cond_d3

    .line 664
    iget v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mMaxLimitedZoomRatio:I

    goto :goto_d5

    :cond_d3
    iget v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mMaxZoomRatio:I

    .line 662
    :goto_d5
    invoke-static {v2, v4, v3}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v2

    aput v2, p2, v1

    .line 665
    sget-object v2, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", targetTick: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mValue:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", tickX: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mTickX:F

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, p2, v1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 669
    iget p1, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mValue:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->getTargetScrollDegreeByRatio(I)F

    move-result p0

    return p0

    :cond_112
    return v3
.end method

.method private checkVibrate(II)V
    .registers 6

    .line 867
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mIsVibrationEnable:Z

    if-nez v0, :cond_5

    goto :goto_56

    .line 870
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_56

    .line 873
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mLeftEdgeEffect:Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mRightEdgeEffect:Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_56

    .line 877
    :cond_1d
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mVibrateTicks:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;

    if-eqz v0, :cond_35

    if-ne p1, p2, :cond_31

    .line 880
    sget-object p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "checkVibrate return for zoom ratio is not changed"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 883
    :cond_31
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->handleVibrate(Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;)V

    return-void

    :cond_35
    const/4 v0, 0x0

    .line 888
    :goto_36
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mVibrateTicks:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_56

    .line 889
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mVibrateTicks:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;

    .line 890
    iget v2, v1, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mValue:I

    if-ge p1, v2, :cond_4c

    if-lt v2, p2, :cond_50

    :cond_4c
    if-le p1, v2, :cond_53

    if-le v2, p2, :cond_53

    .line 892
    :cond_50
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->handleVibrate(Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;)V

    :cond_53
    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    :cond_56
    :goto_56
    return-void
.end method

.method private createTicks(III)V
    .registers 11

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_a4

    .line 512
    new-instance v1, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing-IA;)V

    mul-int v2, v0, p3

    add-int/2addr v2, p2

    .line 513
    iput v2, v1, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mValue:I

    .line 514
    iget v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mMaxZoomRatio:I

    if-le v2, v3, :cond_14

    goto/16 :goto_a4

    .line 517
    :cond_14
    invoke-direct {p0, v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->zoomRatioToDegree(I)F

    move-result v2

    iput v2, v1, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mDegree:F

    .line 519
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->isCriticalTick(Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;)Z

    move-result v2

    if-eqz v2, :cond_2d

    const/4 v2, 0x1

    .line 520
    iput-boolean v2, v1, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mIsCritical:Z

    .line 521
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->updateTickText(Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;)V

    .line 522
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mCriticalTicks:Landroid/util/SparseArray;

    iget v3, v1, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mValue:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 524
    :cond_2d
    iget-object v2, v1, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mTickText:Ljava/lang/String;

    if-eqz v2, :cond_48

    iget v2, v1, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mValue:I

    sget v3, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->FOCAL_LENGTH_RATIO_THRESHOLD:I

    if-gt v2, v3, :cond_48

    .line 525
    invoke-static {v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUtils;->unscaledRatio(I)F

    move-result v2

    iget v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mFocalLengthBase:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mFocalLength:Ljava/lang/String;

    .line 527
    :cond_48
    iget v2, v1, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mValue:I

    sget v3, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->PRESET_MAX_UI_RATIO:I

    const/high16 v4, 0x40400000    # 3.0f

    const/high16 v5, 0x3f800000    # 1.0f

    if-lt v2, v3, :cond_59

    .line 528
    iput v5, v1, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mTickWidth:F

    const/16 v2, 0x33

    .line 529
    iput v2, v1, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mTickAlpha:I

    goto :goto_83

    .line 531
    :cond_59
    sget v6, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->PRESET_MIN_UI_RATIO:I

    sub-int/2addr v2, v6

    int-to-float v2, v2

    mul-float/2addr v2, v5

    sub-int/2addr v3, v6

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 532
    iget-boolean v3, v1, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mIsCritical:Z

    const/high16 v5, 0x40800000    # 4.0f

    if-eqz v3, :cond_68

    goto :goto_6b

    :cond_68
    mul-float v6, v2, v4

    sub-float/2addr v5, v6

    .line 533
    :goto_6b
    iput v5, v1, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mTickWidth:F

    if-eqz v3, :cond_72

    const/16 v2, 0xff

    goto :goto_81

    :cond_72
    const v3, -0x41b33333    # -0.2f

    mul-float/2addr v2, v3

    const v3, 0x3ecccccd    # 0.4f

    add-float/2addr v2, v3

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 535
    :goto_81
    iput v2, v1, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mTickAlpha:I

    .line 537
    :goto_83
    iget v2, v1, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mTickWidth:F

    iget v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mDensity:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v4

    iput v2, v1, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mTickWidth:F

    .line 538
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->updateVibrateType(Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;)V

    .line 539
    iget v2, v1, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mVibrateType:I

    if-eqz v2, :cond_99

    .line 540
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mVibrateTicks:Landroid/util/SparseArray;

    iget v3, v1, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mValue:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 542
    :cond_99
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mTicks:Landroid/util/SparseArray;

    iget v3, v1, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mValue:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_a4
    :goto_a4
    return-void
.end method

.method private degreeToDistance(F)F
    .registers 6

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_6

    return v0

    .line 755
    :cond_6
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v0

    neg-float v0, v0

    .line 756
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mRingRadius:F

    mul-float/2addr v0, p0

    float-to-double v0, v0

    const/high16 p0, 0x3fc00000    # 1.5f

    div-float/2addr p1, p0

    float-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr p0, v2

    sub-double/2addr v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    mul-double/2addr v0, p0

    double-to-float p0, v0

    return p0
.end method

.method private degreeToZoomRatio(F)I
    .registers 6

    .line 854
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mLinearDistanceDegreeThreshold:F

    cmpl-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    if-lez v1, :cond_19

    .line 856
    sget v1, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->LINEAR_DISTANCE_RATIO_THRESHOLD:I

    int-to-float v3, v1

    sub-float/2addr p1, v0

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mMaxRotatableDegree:F

    sub-float/2addr p0, v0

    div-float/2addr p1, p0

    sget p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->PRESET_MAX_UI_RATIO:I

    sub-int/2addr p0, v1

    int-to-float p0, p0

    mul-float/2addr p1, p0

    add-float/2addr v3, p1

    add-float/2addr v3, v2

    float-to-int p0, v3

    return p0

    .line 860
    :cond_19
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mDegreeOffset:F

    add-float/2addr p1, v0

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mMaxRotatableDegree:F

    div-float/2addr p1, p0

    float-to-double p0, p1

    sget-wide v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->PRESET_UI_RATIO_LOG_OFFSET:D

    mul-double/2addr p0, v0

    sget v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->PRESET_MIN_UI_RATIO:I

    int-to-double v0, v0

    .line 861
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    add-double/2addr p0, v0

    .line 862
    invoke-static {p0, p1}, Ljava/lang/Math;->exp(D)D

    move-result-wide p0

    double-to-float p0, p0

    add-float/2addr p0, v2

    float-to-int p0, p0

    return p0
.end method

.method private distanceToDegree(F)F
    .registers 6

    float-to-double v0, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 730
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 731
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mRingRadius:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, p0

    mul-float/2addr v2, p0

    float-to-double v2, v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v0

    .line 732
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

    .line 480
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_e

    .line 481
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    .line 483
    :cond_e
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 484
    sget-object p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "doInvalidate"

    invoke-static {p0, v1, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .registers 10

    .line 1185
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mRingRadius:F

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    .line 1186
    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mCenterY:F

    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mBackgroundVerticalMargin:F

    sub-float/2addr v1, v2

    .line 1187
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mCenterX:F

    iget v4, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mRingRadius:F

    sub-float v5, v3, v4

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    sub-float v7, v1, v0

    add-float/2addr v7, v6

    float-to-int v7, v7

    add-float/2addr v3, v4

    add-float/2addr v3, v6

    float-to-int v3, v3

    add-float/2addr v1, v0

    add-float/2addr v1, v6

    float-to-int v0, v1

    invoke-virtual {v2, v5, v7, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1191
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawPointer(Landroid/graphics/Canvas;)V
    .registers 7

    .line 1160
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mCenterX:F

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mPointerWidth:I

    int-to-float v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v0, v2

    float-to-int v0, v0

    add-int/2addr v1, v0

    .line 1162
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    iget v4, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mPointerBottomMargin:F

    sub-float/2addr v3, v4

    add-float/2addr v3, v2

    float-to-int v2, v3

    .line 1163
    iget v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mPointerHeight:I

    sub-int v3, v2, v3

    .line 1164
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mPointerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v0, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1165
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mPointerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawSelectedZoomRatio(Landroid/graphics/Canvas;)V
    .registers 12

    .line 1169
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mZoomRatio:I

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUtils;->getZoomRatioText(I)Ljava/lang/String;

    move-result-object v0

    .line 1170
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mCenterRatioPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 1171
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mCenterRatioSuffixPaint:Landroid/graphics/Paint;

    const-string v3, "X"

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 1172
    iget v4, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mCenterX:F

    add-float/2addr v2, v1

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    sub-float/2addr v4, v2

    .line 1173
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget v6, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mRatioBottomMargin:F

    sub-float/2addr v2, v6

    .line 1174
    iget-object v6, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mCenterRatioSuffixPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    iget-object v8, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mTextBound:Landroid/graphics/Rect;

    const/4 v9, 0x0

    invoke-virtual {v6, v0, v9, v7, v8}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 1175
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1176
    iget-object v6, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mRotateAnimator:Lcom/transsion/camera/ui/setting/zoom/RotateAnimator;

    iget v7, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mCenterX:F

    iget-object v8, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mTextBound:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v5

    sub-float v5, v2, v8

    invoke-virtual {v6, p1, v7, v5}, Lcom/transsion/camera/ui/setting/zoom/RotateAnimator;->rotate(Landroid/graphics/Canvas;FF)F

    .line 1177
    iget-object v5, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mCenterRatioStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1178
    iget-object v5, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mCenterRatioPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-float/2addr v4, v1

    .line 1179
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mCenterRatioSuffixStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v2, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1180
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mCenterRatioSuffixPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v2, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1181
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawTick(Landroid/graphics/Canvas;Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;FF)V
    .registers 16

    const/high16 v0, 0x43340000    # 180.0f

    cmpg-float v0, p3, v0

    if-lez v0, :cond_6a

    const/high16 v0, 0x43b40000    # 360.0f

    cmpl-float v0, p3, v0

    if-ltz v0, :cond_d

    goto :goto_6a

    :cond_d
    float-to-double v0, p3

    .line 1283
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 1284
    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mCenterX:F

    float-to-double v2, v2

    iget v4, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mRingRadius:F

    float-to-double v4, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    .line 1285
    iget v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mCenterY:F

    float-to-double v3, v3

    iget v5, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mRingRadius:F

    float-to-double v5, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v5, v0

    sget-wide v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->COS_OF_ROTATED_X_DEGREE:D

    mul-double/2addr v5, v0

    sub-double/2addr v3, v5

    double-to-float v9, v3

    .line 1286
    iput v2, p2, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mTickX:F

    .line 1287
    invoke-direct {p0, v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->getTickGradientAlphaFactor(F)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_3b

    goto :goto_6a

    .line 1291
    :cond_3b
    iget-boolean v1, p2, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mIsLimited:Z

    if-eqz v1, :cond_43

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mLimitedTickPaint:Landroid/graphics/Paint;

    :goto_41
    move-object v10, v2

    goto :goto_46

    :cond_43
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mTickPaint:Landroid/graphics/Paint;

    goto :goto_41

    :goto_46
    if-eqz v1, :cond_4b

    .line 1292
    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mLimitedTickAlpha:I

    goto :goto_4d

    :cond_4b
    iget v1, p2, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mTickAlpha:I

    :goto_4d
    int-to-float v1, v1

    mul-float/2addr v1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v1, v0

    float-to-int v0, v1

    .line 1293
    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1294
    iget v0, p2, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mTickWidth:F

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1295
    iget v6, p2, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mTickX:F

    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mTickHeight:I

    int-to-float v0, v0

    sub-float v7, v9, v0

    move v8, v6

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1296
    invoke-direct {p0, v5, p2, p3, p4}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->drawTickText(Landroid/graphics/Canvas;Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;FF)V

    :cond_6a
    :goto_6a
    return-void
.end method

.method private drawTickText(Landroid/graphics/Canvas;Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;FF)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    .line 1301
    iget-object v4, v2, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mTickText:Ljava/lang/String;

    .line 1302
    iget v5, v2, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mTickX:F

    .line 1304
    iget-boolean v6, v2, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mIsLimited:Z

    const/4 v7, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    if-nez v6, :cond_1a

    cmpl-float v6, v3, v8

    if-eqz v6, :cond_1a

    move v6, v7

    goto :goto_1b

    :cond_1a
    move v6, v9

    :goto_1b
    const/high16 v10, 0x40000000    # 2.0f

    if-eqz v4, :cond_82

    .line 1306
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 1307
    iget-object v11, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mTickRatioPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v11

    div-float/2addr v11, v10

    sub-float v11, v5, v11

    .line 1309
    iget-object v12, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    int-to-float v12, v12

    iget v13, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mRatioBottomMargin:F

    sub-float/2addr v12, v13

    .line 1310
    iget-boolean v13, v2, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mIsLimited:Z

    if-eqz v13, :cond_3e

    iget-object v13, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mLimitedTickRatioPaint:Landroid/graphics/Paint;

    goto :goto_40

    :cond_3e
    iget-object v13, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mTickRatioPaint:Landroid/graphics/Paint;

    .line 1311
    :goto_40
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v14

    iget-object v15, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mTextBound:Landroid/graphics/Rect;

    invoke-virtual {v13, v4, v9, v14, v15}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 1312
    iget-object v14, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mTextBound:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    sub-float v14, v12, v14

    if-eqz v6, :cond_59

    .line 1314
    invoke-virtual {v1, v3, v8, v5, v12}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1316
    :cond_59
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mRotateAnimator:Lcom/transsion/camera/ui/setting/zoom/RotateAnimator;

    iget v6, v2, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mTickX:F

    invoke-virtual {v3, v1, v6, v14}, Lcom/transsion/camera/ui/setting/zoom/RotateAnimator;->rotate(Landroid/graphics/Canvas;FF)F

    move-result v3

    .line 1317
    iget-object v6, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mTickRatioStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v6

    neg-float v3, v3

    iget v8, v2, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mTickX:F

    invoke-direct {v0, v6, v3, v8, v14}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->rotateShader(Landroid/graphics/Shader;FFF)V

    .line 1318
    invoke-virtual {v13}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v6

    iget v8, v2, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mTickX:F

    invoke-direct {v0, v6, v3, v8, v14}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->rotateShader(Landroid/graphics/Shader;FFF)V

    .line 1319
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mTickRatioStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v11, v12, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1320
    invoke-virtual {v1, v4, v11, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1321
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_83

    :cond_82
    const/4 v14, 0x0

    .line 1325
    :goto_83
    iget-object v3, v2, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mFocalLength:Ljava/lang/String;

    if-eqz v3, :cond_11d

    .line 1327
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 1328
    iget-object v4, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mFocalLengthPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    .line 1329
    iget-object v6, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mFocalLengthSuffixPaint:Landroid/graphics/Paint;

    const-string v8, "mm"

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    add-float/2addr v6, v4

    div-float/2addr v6, v10

    sub-float/2addr v5, v6

    .line 1332
    iget-object v6, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    iget v10, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mFocalLengthBottomMargin:F

    sub-float/2addr v6, v10

    const/high16 v10, 0x43870000    # 270.0f

    sub-float v10, p3, v10

    .line 1333
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v11, 0x3f000000    # 0.5f

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_b6

    goto :goto_b7

    :cond_b6
    move v7, v9

    .line 1334
    :goto_b7
    iget-object v9, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mRotateAnimator:Lcom/transsion/camera/ui/setting/zoom/RotateAnimator;

    iget v10, v2, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mTickX:F

    invoke-virtual {v9, v1, v10, v14}, Lcom/transsion/camera/ui/setting/zoom/RotateAnimator;->rotate(Landroid/graphics/Canvas;FF)F

    move-result v9

    if-nez v7, :cond_e4

    .line 1337
    iget-object v10, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mFocalLengthStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v10}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v10

    neg-float v11, v9

    iget v12, v2, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mTickX:F

    invoke-direct {v0, v10, v11, v12, v14}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->rotateShader(Landroid/graphics/Shader;FFF)V

    .line 1338
    iget-object v10, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mFocalLengthStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v5, v6, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1339
    iget-object v10, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mFocalLengthSuffixStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v10}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v10

    iget v12, v2, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mTickX:F

    invoke-direct {v0, v10, v11, v12, v14}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->rotateShader(Landroid/graphics/Shader;FFF)V

    add-float v10, v5, v4

    .line 1340
    iget-object v11, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mFocalLengthSuffixStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8, v10, v6, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1343
    :cond_e4
    iget-boolean v10, v2, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mIsLimited:Z

    if-eqz v10, :cond_eb

    iget-object v10, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mLimitedFocalLengthPaint:Landroid/graphics/Paint;

    goto :goto_f2

    :cond_eb
    if-eqz v7, :cond_f0

    .line 1344
    iget-object v10, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mFocalLengthSelectedPaint:Landroid/graphics/Paint;

    goto :goto_f2

    :cond_f0
    iget-object v10, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mFocalLengthPaint:Landroid/graphics/Paint;

    .line 1345
    :goto_f2
    invoke-virtual {v10}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v11

    neg-float v9, v9

    iget v12, v2, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mTickX:F

    invoke-direct {v0, v11, v9, v12, v14}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->rotateShader(Landroid/graphics/Shader;FFF)V

    .line 1346
    invoke-virtual {v1, v3, v5, v6, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1347
    iget-boolean v3, v2, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mIsLimited:Z

    if-eqz v3, :cond_106

    iget-object v3, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mLimitedFocalLengthSuffixPaint:Landroid/graphics/Paint;

    goto :goto_10d

    :cond_106
    if-eqz v7, :cond_10b

    .line 1348
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mFocalLengthSuffixSelectedPaint:Landroid/graphics/Paint;

    goto :goto_10d

    :cond_10b
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mFocalLengthSuffixPaint:Landroid/graphics/Paint;

    .line 1349
    :goto_10d
    invoke-virtual {v3}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v7

    iget v2, v2, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mTickX:F

    invoke-direct {v0, v7, v9, v2, v14}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->rotateShader(Landroid/graphics/Shader;FFF)V

    add-float/2addr v5, v4

    .line 1350
    invoke-virtual {v1, v8, v5, v6, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1351
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :cond_11d
    return-void
.end method

.method private drawTicks(Landroid/graphics/Canvas;)V
    .registers 11

    .line 1203
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mLeftEdgeEffect:Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->isFinished()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mLeftEdgeEffect:Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->computerStretchOffset()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1205
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mCenterToEndsStretchFactor:F

    iget-object v4, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mLeftEdgeEffect:Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;

    invoke-virtual {v4}, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->getStretchFactor()F

    move-result v4

    :goto_1c
    add-float/2addr v4, v1

    mul-float/2addr v0, v4

    goto :goto_3b

    .line 1206
    :cond_1f
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mRightEdgeEffect:Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mRightEdgeEffect:Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->computerStretchOffset()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1208
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mCenterToEndsStretchFactor:F

    iget-object v4, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mRightEdgeEffect:Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;

    invoke-virtual {v4}, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->getStretchFactor()F

    move-result v4

    goto :goto_1c

    .line 1210
    :cond_38
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mCenterToEndsStretchFactor:F

    move v2, v3

    .line 1212
    :goto_3b
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mTicks:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1213
    iget-boolean v4, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mIsZoomRangeLimited:Z

    if-eqz v4, :cond_4a

    iget v5, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mMinLimitedZoomRatio:I

    if-lez v5, :cond_4a

    goto :goto_4c

    .line 1214
    :cond_4a
    iget v5, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mMinZoomRatio:I

    :goto_4c
    if-eqz v4, :cond_53

    .line 1215
    iget v4, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mMaxLimitedZoomRatio:I

    if-lez v4, :cond_53

    goto :goto_55

    .line 1216
    :cond_53
    iget v4, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mMaxZoomRatio:I

    :goto_55
    move v6, v3

    :goto_56
    if-ge v6, v1, :cond_6f

    .line 1219
    iget-object v7, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mTicks:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;

    .line 1220
    iget-boolean v8, v7, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mIsCritical:Z

    if-eqz v8, :cond_65

    goto :goto_6c

    .line 1223
    :cond_65
    invoke-direct {p0, v7, v0, v5, v4}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->getDegreeOnDraw(Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;FII)F

    move-result v8

    .line 1224
    invoke-direct {p0, p1, v7, v8, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->drawTick(Landroid/graphics/Canvas;Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;FF)V

    :goto_6c
    add-int/lit8 v6, v6, 0x1

    goto :goto_56

    .line 1227
    :cond_6f
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mCriticalTicks:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    :goto_75
    if-ge v3, v1, :cond_89

    .line 1229
    iget-object v6, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mCriticalTicks:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;

    .line 1230
    invoke-direct {p0, v6, v0, v5, v4}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->getDegreeOnDraw(Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;FII)F

    move-result v7

    .line 1231
    invoke-direct {p0, p1, v6, v7, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->drawTick(Landroid/graphics/Canvas;Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;FF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_75

    :cond_89
    if-eqz v2, :cond_8e

    .line 1234
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_8e
    return-void
.end method

.method private findNearestTicksByRatio(Landroid/util/SparseArray;I)[Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;
    .registers 9

    .line 702
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const/4 v0, 0x0

    .line 706
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;

    .line 707
    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;

    :goto_13
    if-gt v0, p0, :cond_33

    sub-int v3, p0, v0

    .line 710
    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v0

    .line 711
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;

    .line 713
    iget v5, v4, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mValue:I

    if-ne v5, p2, :cond_27

    move-object v1, v4

    move-object v2, v1

    goto :goto_33

    :cond_27
    if-ge v5, p2, :cond_2e

    add-int/lit8 v3, v3, 0x1

    move v0, v3

    move-object v1, v4

    goto :goto_13

    :cond_2e
    add-int/lit8 v3, v3, -0x1

    move p0, v3

    move-object v2, v4

    goto :goto_13

    .line 726
    :cond_33
    :goto_33
    filled-new-array {v1, v2}, [Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;

    move-result-object p0

    return-object p0
.end method

.method private findTapedCriticalTick(F)Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;
    .registers 9

    .line 685
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mCriticalTicks:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_9
    if-gt v1, v0, :cond_30

    sub-int v2, v0, v1

    .line 687
    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    .line 688
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mCriticalTicks:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;

    .line 689
    iget v4, v3, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mTickX:F

    sub-float v5, p1, v4

    const/high16 v6, 0x41f00000    # 30.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_26

    add-int/lit8 v2, v2, 0x1

    move v1, v2

    goto :goto_9

    :cond_26
    sub-float/2addr v4, p1

    cmpl-float v0, v4, v6

    if-lez v0, :cond_2f

    add-int/lit8 v2, v2, -0x1

    move v0, v2

    goto :goto_9

    :cond_2f
    return-object v3

    :cond_30
    const/4 p0, 0x0

    return-object p0
.end method

.method private findTargetStickyTick(F)Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;
    .registers 6

    .line 811
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mCriticalTicks:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    cmpg-float p1, p1, v1

    if-gez p1, :cond_20

    const/4 p1, 0x0

    :goto_c
    if-ge p1, v0, :cond_36

    .line 815
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mCriticalTicks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;

    .line 816
    iget v2, v1, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mValue:I

    iget v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mZoomRatio:I

    if-le v2, v3, :cond_1d

    return-object v1

    :cond_1d
    add-int/lit8 p1, p1, 0x1

    goto :goto_c

    :cond_20
    add-int/lit8 v0, v0, -0x1

    :goto_22
    if-ltz v0, :cond_36

    .line 822
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mCriticalTicks:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;

    .line 823
    iget v1, p1, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mValue:I

    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mZoomRatio:I

    if-ge v1, v2, :cond_33

    return-object p1

    :cond_33
    add-int/lit8 v0, v0, -0x1

    goto :goto_22

    :cond_36
    const/4 p0, 0x0

    return-object p0
.end method

.method private getDegreeOnDraw(Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;FII)F
    .registers 8

    .line 1239
    iget v0, p1, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mDegree:F

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mScrollDegree:F

    add-float/2addr v0, v1

    .line 1240
    iget v1, p1, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mValue:I

    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mMinLimitedZoomRatio:I

    if-le v1, v2, :cond_32

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mLeftEdgeEffect:Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;

    .line 1241
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_32

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mLeftEdgeEffect:Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;

    .line 1242
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->computerStretchOffset()Z

    move-result v1

    if-eqz v1, :cond_32

    const/high16 p4, 0x43b40000    # 360.0f

    cmpl-float p4, v0, p4

    if-lez p4, :cond_22

    goto :goto_79

    .line 1246
    :cond_22
    iget p4, p1, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mValue:I

    .line 1247
    invoke-direct {p0, p3}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->zoomRatioToDegree(I)F

    move-result v0

    .line 1246
    invoke-direct {p0, p4, p3, v0, p2}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->getStretchDegree(IIFF)F

    move-result p2

    iput p2, p1, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mCurrentDegree:F

    .line 1248
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mScrollDegree:F

    :goto_30
    add-float/2addr p2, p0

    return p2

    .line 1251
    :cond_32
    iget p3, p1, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mValue:I

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mMinLimitedZoomRatio:I

    if-ge p3, v1, :cond_5f

    iget-object p3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mRightEdgeEffect:Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;

    .line 1252
    invoke-virtual {p3}, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->isFinished()Z

    move-result p3

    if-nez p3, :cond_5f

    iget-object p3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mRightEdgeEffect:Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;

    .line 1253
    invoke-virtual {p3}, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->computerStretchOffset()Z

    move-result p3

    if-eqz p3, :cond_5f

    const/high16 p3, 0x43340000    # 180.0f

    cmpg-float p3, v0, p3

    if-gez p3, :cond_50

    const/4 p0, 0x0

    return p0

    .line 1257
    :cond_50
    iget p3, p1, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mValue:I

    .line 1258
    invoke-direct {p0, p4}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->zoomRatioToDegree(I)F

    move-result v0

    .line 1257
    invoke-direct {p0, p3, p4, v0, p2}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->getStretchDegree(IIFF)F

    move-result p2

    iput p2, p1, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mCurrentDegree:F

    .line 1259
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mScrollDegree:F

    goto :goto_30

    .line 1262
    :cond_5f
    iget p3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mCenterToEndsStretchFactor:F

    const/high16 p4, 0x3f800000    # 1.0f

    cmpl-float p3, p3, p4

    if-eqz p3, :cond_79

    .line 1263
    iget p3, p1, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mValue:I

    iget p4, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mZoomRatio:I

    const/high16 v0, 0x43870000    # 270.0f

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mScrollDegree:F

    sub-float/2addr v0, v1

    invoke-direct {p0, p3, p4, v0, p2}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->getStretchDegree(IIFF)F

    move-result p2

    iput p2, p1, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mCurrentDegree:F

    .line 1265
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mScrollDegree:F

    goto :goto_30

    :cond_79
    :goto_79
    return v0
.end method

.method private getStretchDegree(IIFF)F
    .registers 9

    float-to-double v0, p4

    .line 1274
    iget-wide v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mCoefficientK:D

    mul-double/2addr v0, v2

    int-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    int-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    sub-double/2addr p0, v2

    mul-double/2addr v0, p0

    float-to-double p0, p3

    add-double/2addr v0, p0

    double-to-float p0, v0

    return p0
.end method

.method private getTargetScrollDegreeByRatio(I)F
    .registers 3

    .line 676
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->zoomRatioToDegree(I)F

    move-result p1

    const/high16 v0, 0x43870000    # 270.0f

    sub-float/2addr v0, p1

    .line 677
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mMinScrollDegree:F

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mMaxScrollDegree:F

    invoke-static {v0, p1, p0}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p0

    return p0
.end method

.method private getTickGradientAlphaFactor(F)F
    .registers 7

    .line 1365
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mRingRadius:F

    const/high16 v1, 0x41700000    # 15.0f

    sub-float/2addr v0, v1

    .line 1366
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v1, v0

    cmpg-float v3, p1, v1

    if-ltz v3, :cond_4d

    .line 1367
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mCenterX:F

    add-float/2addr p0, v0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_1a

    goto :goto_4d

    :cond_1a
    sub-float/2addr p1, v1

    mul-float/2addr v0, v2

    div-float/2addr p1, v0

    .line 1373
    sget-object p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->TEXT_GRADIENT_POSITION:[F

    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x1

    .line 1374
    aget p0, p0, v1

    move v2, v1

    .line 1375
    :goto_26
    sget-object v3, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->TEXT_GRADIENT_POSITION:[F

    array-length v4, v3

    if-ge v2, v4, :cond_3e

    add-int/lit8 p0, v2, -0x1

    .line 1376
    aget v0, v3, p0

    .line 1377
    aget p0, v3, v2

    cmpg-float v3, v0, p1

    if-gtz v3, :cond_3b

    cmpg-float v3, p1, p0

    if-gez v3, :cond_3b

    move v1, v2

    goto :goto_3e

    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 1383
    :cond_3e
    :goto_3e
    sget-object v2, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->GRADIENT_ALPHA:[F

    add-int/lit8 v3, v1, -0x1

    aget v3, v2, v3

    .line 1384
    aget v1, v2, v1

    sub-float/2addr p1, v0

    sub-float/2addr p0, v0

    div-float/2addr p1, p0

    sub-float/2addr v1, v3

    mul-float/2addr p1, v1

    add-float/2addr v3, p1

    return v3

    :cond_4d
    :goto_4d
    const/4 p0, 0x0

    return p0
.end method

.method private handleOverScroll(F)V
    .registers 4

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1f

    .line 1126
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mRightEdgeEffect:Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1127
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mRightEdgeEffect:Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->onRelease()V

    .line 1129
    :cond_12
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mLeftEdgeEffect:Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;

    neg-float p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->onPull(F)V

    goto :goto_3b

    :cond_1f
    cmpl-float v0, p1, v0

    if-lez v0, :cond_3b

    .line 1131
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mLeftEdgeEffect:Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_30

    .line 1132
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mLeftEdgeEffect:Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->onRelease()V

    .line 1134
    :cond_30
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mRightEdgeEffect:Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->onPull(F)V

    .line 1136
    :cond_3b
    :goto_3b
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    return-void
.end method

.method private handleSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 618
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "handleSingleTapUp"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 619
    new-array v1, v0, [I

    .line 620
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->calculateTargetScrollDegree(Landroid/view/MotionEvent;[I)F

    move-result p1

    const/4 v2, 0x0

    .line 621
    aget v1, v1, v2

    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->notifyZoomRatioChange(I)V

    const/4 v1, 0x2

    .line 622
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->updateScrollState(I)V

    .line 623
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mScrollOnClickAnimator:Landroid/animation/ValueAnimator;

    iget v4, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mScrollDegree:F

    new-array v1, v1, [F

    aput v4, v1, v2

    aput p1, v1, v0

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 624
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mScrollOnClickAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return v0
.end method

.method private handleVibrate(Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;)V
    .registers 4

    .line 898
    sget-object p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleVibrate, type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mVibrateType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 899
    iget p0, p1, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mVibrateType:I

    const/4 p1, 0x2

    if-eq p0, p1, :cond_2b

    const/4 p1, 0x3

    if-eq p0, p1, :cond_21

    return-void

    .line 901
    :cond_21
    invoke-static {}, Lcom/transsion/camera/app/common/vibrate/VibratorController;->getInstance()Lcom/transsion/camera/app/common/vibrate/VibratorController;

    move-result-object p0

    const-string p1, "Cam_scales_weak.he"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/vibrate/VibratorController;->doVibrate(Ljava/lang/String;)V

    return-void

    .line 904
    :cond_2b
    invoke-static {}, Lcom/transsion/camera/app/common/vibrate/VibratorController;->getInstance()Lcom/transsion/camera/app/common/vibrate/VibratorController;

    move-result-object p0

    const-string p1, "Cam_scales_strong.he"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/vibrate/VibratorController;->doVibrate(Ljava/lang/String;)V

    return-void
.end method

.method private initAnimator()V
    .registers 5

    .line 355
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mScrollOnClickAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    .line 356
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 357
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mScrollOnClickAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->SCROLL_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 358
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mScrollOnClickAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 362
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mScrollOnClickAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$1;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 376
    new-instance v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$2;

    const-string v1, ""

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$2;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;Ljava/lang/String;)V

    .line 389
    new-instance v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 v2, 0x0

    const v3, 0x3f8ccccd    # 1.1f

    invoke-direct {v1, v2, v0, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mTapFeedbackAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    const v0, 0x3a83126f    # 0.001f

    .line 390
    invoke-virtual {v1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 391
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mTapFeedbackAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v1, 0x43480000    # 200.0f

    .line 392
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 393
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 395
    new-instance v0, Lcom/transsion/camera/ui/setting/zoom/RotateAnimator;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/zoom/RotateAnimator;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mRotateAnimator:Lcom/transsion/camera/ui/setting/zoom/RotateAnimator;

    return-void
.end method

.method private initResources()V
    .registers 10

    .line 243
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mTickPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    .line 244
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 245
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mTickPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 247
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/transsion/camera/R$color;->zoom_ring_limited_tick_color:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 248
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    iput v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mLimitedTickAlpha:I

    .line 249
    new-instance v3, Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mTickPaint:Landroid/graphics/Paint;

    invoke-direct {v3, v5}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mLimitedTickPaint:Landroid/graphics/Paint;

    .line 250
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 252
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v3

    .line 253
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mTickRatioPaint:Landroid/graphics/Paint;

    .line 254
    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 255
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mTickRatioPaint:Landroid/graphics/Paint;

    const/16 v5, 0x81

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setFlags(I)V

    .line 256
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mTickRatioPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/transsion/camera/R$dimen;->zoom_ring_tick_text_size:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 257
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mTickRatioPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 258
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/transsion/camera/R$color;->zoom_ring_limited_text_color:I

    invoke-virtual {v2, v5, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mLimitedTextColor:I

    .line 259
    new-instance v2, Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mTickRatioPaint:Landroid/graphics/Paint;

    invoke-direct {v2, v5}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mLimitedTickRatioPaint:Landroid/graphics/Paint;

    .line 260
    iget v5, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mLimitedTextColor:I

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 262
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/transsion/camera/R$color;->zoom_text_stroke_color:I

    invoke-virtual {v2, v5, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mStrokeColor:I

    .line 263
    new-instance v2, Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mTickRatioPaint:Landroid/graphics/Paint;

    invoke-direct {v2, v5}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mTickRatioStrokePaint:Landroid/graphics/Paint;

    .line 264
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 265
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mTickRatioStrokePaint:Landroid/graphics/Paint;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 266
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mTickRatioStrokePaint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mStrokeColor:I

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 268
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v7, Lcom/transsion/camera/R$color;->zoom_selected_color:I

    invoke-virtual {v2, v7, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mSelectedColor:I

    .line 269
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mCenterRatioPaint:Landroid/graphics/Paint;

    .line 270
    iget v7, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mSelectedColor:I

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 271
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mCenterRatioPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/transsion/camera/R$dimen;->zoom_ring_ratio_size:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 272
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mCenterRatioPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 273
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mCenterRatioPaint:Landroid/graphics/Paint;

    const-string v7, "tnum"

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setFontFeatureSettings(Ljava/lang/String;)V

    .line 275
    new-instance v2, Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mCenterRatioPaint:Landroid/graphics/Paint;

    invoke-direct {v2, v7}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mCenterRatioStrokePaint:Landroid/graphics/Paint;

    .line 276
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 277
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mCenterRatioStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 278
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mCenterRatioStrokePaint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mStrokeColor:I

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 280
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mCenterRatioSuffixPaint:Landroid/graphics/Paint;

    .line 281
    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mSelectedColor:I

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 282
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mCenterRatioSuffixPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v7, Lcom/transsion/camera/R$dimen;->zoom_ring_ratio_suffix_size:I

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 283
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mCenterRatioSuffixPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 285
    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mCenterRatioSuffixPaint:Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mCenterRatioSuffixStrokePaint:Landroid/graphics/Paint;

    .line 286
    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 287
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mCenterRatioSuffixStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 288
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mCenterRatioSuffixStrokePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mStrokeColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 290
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$color;->zoom_ring_focal_length_color:I

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mFocalLengthColor:I

    .line 291
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$color;->zoom_ring_focal_length_color_inverted:I

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mFocalLengthColorInverted:I

    const/4 v1, 0x0

    .line 293
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 295
    new-instance v1, Landroid/graphics/Paint;

    const/16 v2, 0xc1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mFocalLengthPaint:Landroid/graphics/Paint;

    .line 296
    iget v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mFocalLengthColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 297
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mFocalLengthPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 298
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mFocalLengthPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v7, Lcom/transsion/camera/R$dimen;->zoom_ring_focal_length_size:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 299
    new-instance v1, Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mFocalLengthPaint:Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mFocalLengthSelectedPaint:Landroid/graphics/Paint;

    .line 300
    iget v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mSelectedColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 301
    new-instance v1, Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mFocalLengthPaint:Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mLimitedFocalLengthPaint:Landroid/graphics/Paint;

    .line 302
    iget v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mLimitedTextColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 304
    new-instance v1, Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mFocalLengthPaint:Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mFocalLengthStrokePaint:Landroid/graphics/Paint;

    .line 305
    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 306
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mFocalLengthStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 307
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mFocalLengthStrokePaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mStrokeColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 309
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mFocalLengthSuffixPaint:Landroid/graphics/Paint;

    .line 310
    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mFocalLengthColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 311
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mFocalLengthSuffixPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 312
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mFocalLengthSuffixPaint:Landroid/graphics/Paint;

    .line 313
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$dimen;->zoom_ring_focal_length_suffix_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 312
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 314
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mFocalLengthSuffixPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mFocalLengthSuffixSelectedPaint:Landroid/graphics/Paint;

    .line 315
    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mSelectedColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 316
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mFocalLengthSuffixPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mLimitedFocalLengthSuffixPaint:Landroid/graphics/Paint;

    .line 317
    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mLimitedTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 319
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mFocalLengthSuffixPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mFocalLengthSuffixStrokePaint:Landroid/graphics/Paint;

    .line 320
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 321
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mFocalLengthSuffixStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 322
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mFocalLengthSuffixStrokePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mStrokeColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 324
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mDensity:F

    .line 325
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$drawable;->ic_zoom_ring_bg:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mBgDrawableNormal:Landroid/graphics/drawable/Drawable;

    .line 326
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$drawable;->ic_zoom_ring_bg_inverse:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mBgDrawableInverted:Landroid/graphics/drawable/Drawable;

    .line 327
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mBgDrawableNormal:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 328
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$drawable;->ic_zoom_pointer:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mPointerDrawable:Landroid/graphics/drawable/Drawable;

    .line 329
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mDensity:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mPointerWidth:I

    .line 330
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mPointerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mDensity:F

    mul-float/2addr v0, v2

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mPointerHeight:I

    .line 332
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/R$dimen;->zoom_ring_top_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mTopPadding:F

    .line 333
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/R$dimen;->zoom_ring_pointer_bottom_margin:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mPointerBottomMargin:F

    .line 334
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/R$dimen;->zoom_ring_ratio_bottom_margin:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mRatioBottomMargin:F

    .line 335
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/R$dimen;->zoom_ring_focal_length_bottom_margin:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mFocalLengthBottomMargin:F

    .line 336
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/R$dimen;->zoom_ring_text_gradient_margin:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mGradientMargin:F

    .line 337
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/R$dimen;->zoom_ring_bg_margin:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mBackgroundVerticalMargin:F

    const/high16 v0, 0x42000000    # 32.0f

    .line 339
    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mDensity:F

    mul-float/2addr v2, v0

    div-float/2addr v2, v1

    float-to-int v0, v2

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mTickHeight:I

    return-void
.end method

.method private initShader()V
    .registers 24

    move-object/from16 v0, p0

    .line 927
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mTickRatioPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v1

    if-eqz v1, :cond_b

    return-void

    .line 930
    :cond_b
    iget v1, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mRingRadius:F

    iget v2, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mGradientMargin:F

    sub-float/2addr v1, v2

    .line 931
    iget v2, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mCenterX:F

    sub-float v4, v2, v1

    add-float v6, v2, v1

    .line 934
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mTickRatioPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    sget-object v2, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->GRADIENT_ALPHA:[F

    const/4 v11, 0x1

    aget v3, v2, v11

    invoke-direct {v0, v1, v3}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->updateColorAlpha(IF)I

    move-result v13

    .line 935
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mTickRatioPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    const v3, 0x3f7851ec    # 0.97f

    invoke-direct {v0, v1, v3}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->updateColorAlpha(IF)I

    move-result v14

    .line 936
    new-instance v3, Landroid/graphics/LinearGradient;

    iget v5, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mCenterY:F

    const/16 v16, 0x0

    const/16 v19, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    move/from16 v17, v14

    move/from16 v18, v13

    filled-new-array/range {v12 .. v19}, [I

    move-result-object v8

    sget-object v9, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->RATIO_TEXT_GRADIENT_POSITION_HORIZONTAL:[F

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v7, v5

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v3, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mRatioTextHorizontalGradient:Landroid/graphics/LinearGradient;

    .line 940
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mTickRatioPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 942
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mTickRatioPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    const v3, 0x3f7ae148    # 0.98f

    invoke-direct {v0, v1, v3}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->updateColorAlpha(IF)I

    move-result v14

    move v1, v3

    .line 943
    new-instance v3, Landroid/graphics/LinearGradient;

    iget v5, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mCenterY:F

    move/from16 v17, v14

    filled-new-array/range {v12 .. v19}, [I

    move-result-object v8

    sget-object v9, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->RATIO_TEXT_GRADIENT_POSITION_VERTICAL:[F

    move v7, v5

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object v12, v9

    iput-object v3, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mRatioTextVerticalGradient:Landroid/graphics/LinearGradient;

    .line 948
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mFocalLengthPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v13

    .line 949
    aget v3, v2, v11

    invoke-direct {v0, v13, v3}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->updateColorAlpha(IF)I

    move-result v15

    .line 950
    new-instance v3, Landroid/graphics/LinearGradient;

    iget v5, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mCenterY:F

    const/4 v14, 0x0

    filled-new-array {v14, v15, v13, v15, v14}, [I

    move-result-object v8

    sget-object v9, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->TEXT_GRADIENT_POSITION:[F

    move v7, v5

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object/from16 v22, v9

    iput-object v3, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mFocalLengthHorizontalGradient:Landroid/graphics/LinearGradient;

    .line 954
    iget-object v5, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mFocalLengthPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 955
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mFocalLengthSuffixPaint:Landroid/graphics/Paint;

    iget-object v5, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mFocalLengthHorizontalGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 957
    invoke-direct {v0, v13, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->updateColorAlpha(IF)I

    move-result v16

    .line 958
    new-instance v3, Landroid/graphics/LinearGradient;

    iget v5, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mCenterY:F

    const/16 v18, 0x0

    const/16 v21, 0x0

    move v7, v14

    const/16 v17, 0x0

    move/from16 v19, v16

    move/from16 v20, v15

    move v13, v7

    filled-new-array/range {v14 .. v21}, [I

    move-result-object v8

    move v7, v5

    move-object v9, v12

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v3, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mFocalLengthVerticalGradient:Landroid/graphics/LinearGradient;

    .line 963
    iget v3, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mSelectedColor:I

    aget v5, v2, v11

    invoke-direct {v0, v3, v5}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->updateColorAlpha(IF)I

    move-result v15

    .line 964
    iget v3, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mSelectedColor:I

    invoke-direct {v0, v3, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->updateColorAlpha(IF)I

    move-result v16

    .line 965
    new-instance v3, Landroid/graphics/LinearGradient;

    iget v5, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mCenterY:F

    move/from16 v19, v16

    move/from16 v20, v15

    filled-new-array/range {v14 .. v21}, [I

    move-result-object v8

    move v7, v5

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v3, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mSelectedFocalLengthVerticalGradient:Landroid/graphics/LinearGradient;

    .line 970
    iget v1, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mLimitedTextColor:I

    aget v3, v2, v11

    invoke-direct {v0, v1, v3}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->updateColorAlpha(IF)I

    move-result v1

    .line 971
    new-instance v3, Landroid/graphics/LinearGradient;

    iget v5, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mCenterY:F

    iget v7, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mLimitedTextColor:I

    filled-new-array {v13, v1, v7, v1, v13}, [I

    move-result-object v8

    move v7, v5

    move-object/from16 v9, v22

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 975
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mLimitedTickRatioPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 976
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mLimitedFocalLengthPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 977
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mLimitedFocalLengthSuffixPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 979
    iget v1, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mStrokeColor:I

    aget v2, v2, v11

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->updateColorAlpha(IF)I

    move-result v1

    .line 980
    new-instance v3, Landroid/graphics/LinearGradient;

    iget v5, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mCenterY:F

    iget v2, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mStrokeColor:I

    filled-new-array {v13, v1, v2, v1, v13}, [I

    move-result-object v8

    move v7, v5

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 984
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mTickRatioStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 985
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mFocalLengthStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 986
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mFocalLengthSuffixStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 987
    iget v1, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mOrientation:I

    invoke-direct {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->updateShaderByOrientation(I)V

    return-void
.end method

.method private initTicks(II)V
    .registers 7

    .line 489
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mTicks:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 490
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mVibrateTicks:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 491
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mCriticalTicks:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 492
    sget v0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_RATIO_UNIT:I

    int-to-float v0, v0

    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 493
    sget v1, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->DEFAULT_ZOOM_RATIO:I

    if-ge p1, v1, :cond_26

    sub-int v2, v1, p1

    .line 494
    div-int/2addr v2, v0

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 495
    invoke-direct {p0, v2, p1, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->createTicks(III)V

    :cond_26
    :goto_26
    if-gt v1, p2, :cond_37

    const/16 v2, 0xa

    .line 500
    invoke-direct {p0, v2, v1, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->createTicks(III)V

    int-to-float v1, v1

    .line 501
    sget v2, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_RATIO_UNIT:I

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_26

    :cond_37
    const/high16 v0, 0x43870000    # 270.0f

    .line 503
    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mMaxScrollDegree:F

    .line 504
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mTicks:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;

    iget v1, v1, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mDegree:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mMinScrollDegree:F

    .line 505
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initTicks, mMaxScrollDegree: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mMaxScrollDegree:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mMinScrollDegree: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mMinScrollDegree:F

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ", minZoomRatio: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", maxZoomRatio: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private isCriticalTick(Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;)Z
    .registers 8

    .line 560
    iget v0, p1, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mValue:I

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mMaxZoomRatio:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_24

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mMinZoomRatio:I

    if-ne v0, p0, :cond_c

    goto :goto_24

    .line 564
    :cond_c
    sget-object p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->CRITICAL_RATIOS:[F

    array-length v0, p0

    const/4 v1, 0x0

    move v3, v1

    :goto_11
    if-ge v3, v0, :cond_23

    aget v4, p0, v3

    .line 565
    iget v5, p1, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mValue:I

    invoke-static {v5}, Lcom/transsion/camera/ui/setting/zoom/ZoomUtils;->unscaledRatio(I)F

    move-result v5

    cmpl-float v4, v5, v4

    if-nez v4, :cond_20

    return v2

    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_23
    return v1

    :cond_24
    :goto_24
    return v2
.end method

.method private isInitialPointer(I)Z
    .registers 3

    .line 1071
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mInitialPointerId:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_9

    if-ne p0, p1, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method private isMovingToLeft(F)Z
    .registers 2

    const/4 p0, 0x0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method private isMovingToRight(F)Z
    .registers 2

    const/4 p0, 0x0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$initAnimator$0(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 359
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 360
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->scrollToDegree(F)V

    return-void
.end method

.method private synthetic lambda$show$1()V
    .registers 2

    const v0, 0x3f4ccccd    # 0.8f

    .line 1425
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1426
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    const/4 v0, 0x0

    .line 1427
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private notifyZoomRatioChange(I)V
    .registers 2

    .line 848
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mListener:Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Listener;

    if-eqz p0, :cond_c

    int-to-float p1, p1

    .line 849
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-interface {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Listener;->onZoomRatioChanged(I)V

    :cond_c
    return-void
.end method

.method private performTapFeedbackAnimation(Z)V
    .registers 4

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_6

    move v1, v0

    goto :goto_8

    .line 1116
    :cond_6
    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mCenterToEndsStretchFactor:F

    :goto_8
    if-eqz p1, :cond_d

    const v0, 0x3f8ccccd    # 1.1f

    .line 1118
    :cond_d
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mTapFeedbackAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 1119
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mTapFeedbackAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 1120
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mTapFeedbackAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 1121
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mTapFeedbackAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    return-void
.end method

.method private releaseEdgeEffect()V
    .registers 2

    .line 1140
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mLeftEdgeEffect:Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->onRelease()V

    .line 1141
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mRightEdgeEffect:Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->onRelease()V

    return-void
.end method

.method private releaseEdgeStretch(F)F
    .registers 7

    .line 1083
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mLeftEdgeEffect:Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->getDistance()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/high16 v2, 0x40a00000    # 5.0f

    if-eqz v0, :cond_46

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->isMovingToLeft(F)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 1084
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mLeftEdgeEffect:Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;

    neg-float v3, p1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float/2addr v3, v2

    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->onPullDistance(F)F

    move-result v0

    neg-float v0, v0

    .line 1085
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    cmpl-float v2, v0, p1

    if-lez v2, :cond_32

    goto :goto_33

    :cond_32
    move p1, v0

    .line 1089
    :goto_33
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mLeftEdgeEffect:Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->getDistance()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_42

    .line 1090
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mLeftEdgeEffect:Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->onRelease()V

    .line 1092
    :cond_42
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return p1

    .line 1093
    :cond_46
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mRightEdgeEffect:Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->getDistance()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_88

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->isMovingToRight(F)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 1094
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mRightEdgeEffect:Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v3, p1, v3

    mul-float/2addr v3, v2

    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->onPullDistance(F)F

    move-result v0

    .line 1095
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    cmpg-float v2, v0, p1

    if-gez v2, :cond_74

    goto :goto_75

    :cond_74
    move p1, v0

    .line 1099
    :goto_75
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mRightEdgeEffect:Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->getDistance()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_84

    .line 1100
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mRightEdgeEffect:Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->onRelease()V

    .line 1102
    :cond_84
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return p1

    :cond_88
    return v1
.end method

.method private reset()V
    .registers 2

    .line 1075
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->releaseEdgeEffect()V

    const/4 v0, 0x0

    .line 1076
    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mDiscardRotateDegree:F

    const/high16 v0, -0x40800000    # -1.0f

    .line 1077
    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mLastTouchX:F

    const/4 v0, -0x1

    .line 1078
    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mInitialPointerId:I

    return-void
.end method

.method private rotateShader(Landroid/graphics/Shader;FFF)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    .line 1359
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mGradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 1360
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mGradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2, p3, p4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 1361
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mGradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private scrollByDegree(F)F
    .registers 5

    .line 765
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mMinScrollDegree:F

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mScrollDegree:F

    sub-float/2addr v0, v1

    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mMaxScrollDegree:F

    sub-float/2addr v2, v1

    invoke-static {p1, v0, v2}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v0

    .line 766
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->updateDegreeForSticky(F)F

    move-result p1

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_16

    return v0

    .line 770
    :cond_16
    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mScrollDegree:F

    add-float/2addr v1, p1

    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->scrollToDegree(F)V

    return v0
.end method

.method private scrollToDegree(F)V
    .registers 5

    .line 832
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mScrollDegree:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_7

    goto :goto_31

    .line 835
    :cond_7
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mZoomRatio:I

    .line 836
    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mMinScrollDegree:F

    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mMaxScrollDegree:F

    invoke-static {p1, v1, v2}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mScrollDegree:F

    const/high16 v1, 0x43870000    # 270.0f

    sub-float/2addr v1, p1

    .line 837
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->degreeToZoomRatio(F)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mZoomRatio:I

    .line 838
    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mScrollState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_24

    .line 839
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->notifyZoomRatioChange(I)V

    .line 841
    :cond_24
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->doInvalidate()V

    .line 842
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mScrollState:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_31

    .line 843
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mZoomRatio:I

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->checkVibrate(II)V

    :cond_31
    :goto_31
    return-void
.end method

.method private updateColorAlpha(IF)I
    .registers 4

    .line 991
    invoke-static {p1}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object p0

    .line 992
    invoke-virtual {p0}, Landroid/graphics/Color;->alpha()F

    move-result p1

    mul-float/2addr p1, p2

    .line 993
    invoke-virtual {p0}, Landroid/graphics/Color;->red()F

    move-result p2

    invoke-virtual {p0}, Landroid/graphics/Color;->green()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Color;->blue()F

    move-result p0

    invoke-static {p1, p2, v0, p0}, Landroid/graphics/Color;->argb(FFFF)I

    move-result p0

    return p0
.end method

.method private updateDegreeForSticky(F)F
    .registers 6

    .line 783
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mCriticalTicks:Landroid/util/SparseArray;

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mZoomRatio:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;

    if-nez v0, :cond_2e

    .line 786
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->findTargetStickyTick(F)Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;

    move-result-object v0

    if-nez v0, :cond_13

    goto :goto_2d

    .line 790
    :cond_13
    iget v0, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mDegree:F

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mScrollDegree:F

    add-float/2addr v0, v1

    const/high16 v1, 0x43870000    # 270.0f

    sub-float/2addr v1, v0

    .line 791
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mStickyInDegreeThreshold:F

    cmpg-float p0, v0, p0

    if-gez p0, :cond_2d

    .line 792
    sget-object p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "updateDegreeForSticky, stickyIn"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    :cond_2d
    :goto_2d
    return p1

    .line 798
    :cond_2e
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mDiscardRotateDegree:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-lez v0, :cond_56

    .line 799
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDegreeForSticky, stickyOut, out of threshold:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mDiscardRotateDegree:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 800
    iput v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mDiscardRotateDegree:F

    return p1

    .line 804
    :cond_56
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mDiscardRotateDegree:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mDiscardRotateDegree:F

    .line 805
    sget-object p1, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDegreeForSticky, keep sticky, mDiscardRotateDegree:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mDiscardRotateDegree:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1
.end method

.method private updateRotationVariables(F)V
    .registers 6

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    const/high16 v1, 0x43340000    # 180.0f

    if-eqz v0, :cond_e

    mul-float/2addr v1, p1

    .line 471
    :cond_e
    iput v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mMaxRotatableDegree:F

    if-eqz v0, :cond_17

    float-to-double v0, v1

    .line 472
    sget-wide v2, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->PRESET_UI_RATIO_LOG_OFFSET:D

    div-double/2addr v0, v2

    goto :goto_19

    :cond_17
    sget-wide v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->COEFFICIENT_K:D

    :goto_19
    iput-wide v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mCoefficientK:D

    return-void
.end method

.method private updateShaderByOrientation(I)V
    .registers 4

    .line 1491
    rem-int/lit16 p1, p1, 0xb4

    if-nez p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    if-eqz p1, :cond_c

    .line 1492
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mFocalLengthHorizontalGradient:Landroid/graphics/LinearGradient;

    goto :goto_e

    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mFocalLengthVerticalGradient:Landroid/graphics/LinearGradient;

    .line 1493
    :goto_e
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mFocalLengthPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1494
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mFocalLengthSuffixPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    if-eqz p1, :cond_1d

    .line 1496
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mRatioTextHorizontalGradient:Landroid/graphics/LinearGradient;

    goto :goto_1f

    :cond_1d
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mRatioTextVerticalGradient:Landroid/graphics/LinearGradient;

    .line 1497
    :goto_1f
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mTickRatioPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    if-eqz p1, :cond_28

    const/4 p1, 0x0

    goto :goto_2a

    .line 1499
    :cond_28
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mSelectedFocalLengthVerticalGradient:Landroid/graphics/LinearGradient;

    .line 1500
    :goto_2a
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mFocalLengthSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1501
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mFocalLengthSuffixSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method private updateTickText(Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;)V
    .registers 5

    .line 573
    iget p0, p1, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mValue:I

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUtils;->unscaledRatio(I)F

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p0

    .line 574
    const-string v0, "[.]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 575
    iget v1, p1, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mValue:I

    sget v2, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->DEFAULT_ZOOM_RATIO:I

    if-lt v1, v2, :cond_29

    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_29

    const/4 v1, 0x1

    aget-object v1, v0, v1

    .line 577
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_29

    const/4 p0, 0x0

    .line 578
    aget-object p0, v0, p0

    iput-object p0, p1, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mTickText:Ljava/lang/String;

    return-void

    .line 580
    :cond_29
    iput-object p0, p1, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mTickText:Ljava/lang/String;

    return-void
.end method

.method private updateVibrateType(Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;)V
    .registers 3

    .line 547
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mIsVibrationSupported:Z

    if-nez p0, :cond_5

    goto :goto_1b

    .line 550
    :cond_5
    iget-boolean p0, p1, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mIsCritical:Z

    if-eqz p0, :cond_d

    const/4 p0, 0x2

    .line 551
    iput p0, p1, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mVibrateType:I

    return-void

    .line 554
    :cond_d
    iget p0, p1, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mValue:I

    sget v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->VIBRATE_RATIO_THRESHOLD:I

    if-gt p0, v0, :cond_1b

    sget v0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_RATIO_UNIT:I

    rem-int/2addr p0, v0

    if-nez p0, :cond_1b

    const/4 p0, 0x3

    .line 555
    iput p0, p1, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mVibrateType:I

    :cond_1b
    :goto_1b
    return-void
.end method

.method private zoomRatioToDegree(I)F
    .registers 3

    .line 602
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mDegreeOffset:F

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->calculateDegreeByRatio(IF)F

    move-result p0

    return p0
.end method


# virtual methods
.method public getScrollState()I
    .registers 1

    .line 399
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mScrollState:I

    return p0
.end method

.method public hide(Z)V
    .registers 4

    .line 1447
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    const/high16 v1, 0x3f000000    # 0.5f

    if-nez p1, :cond_1a

    .line 1451
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1452
    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 1453
    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleY(F)V

    const/16 p1, 0x8

    .line 1454
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1a
    const/4 p1, 0x1

    .line 1457
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mIsFadingOut:Z

    .line 1458
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1459
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->FADE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 1460
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    .line 1461
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$4;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$4;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;)V

    .line 1462
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 1477
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1478
    sget-object p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "hide"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public invertColor(Z)V
    .registers 4

    .line 1505
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mIsInverted:Z

    if-eq v0, p1, :cond_53

    .line 1506
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mIsInverted:Z

    if-eqz p1, :cond_b

    .line 1507
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mBgDrawableInverted:Landroid/graphics/drawable/Drawable;

    goto :goto_d

    :cond_b
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mBgDrawableNormal:Landroid/graphics/drawable/Drawable;

    :goto_d
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_14

    const/high16 p1, -0x1000000

    goto :goto_15

    :cond_14
    const/4 p1, -0x1

    .line 1509
    :goto_15
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mTickPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1510
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mTickRatioPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1511
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mTickRatioPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1512
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mIsInverted:Z

    if-eqz p1, :cond_2c

    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mFocalLengthColorInverted:I

    goto :goto_2e

    :cond_2c
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mFocalLengthColor:I

    .line 1513
    :goto_2e
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mFocalLengthPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1514
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mFocalLengthSuffixPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1515
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1516
    sget-object p1, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invertColor, inverted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mIsInverted:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_53
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 3

    .line 1146
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mTicks:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_10

    .line 1147
    sget-object p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onDraw, ticks empty"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1153
    :cond_10
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->drawBackground(Landroid/graphics/Canvas;)V

    .line 1154
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->drawTicks(Landroid/graphics/Canvas;)V

    .line 1155
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->drawSelectedZoomRatio(Landroid/graphics/Canvas;)V

    .line 1156
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->drawPointer(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 7

    .line 911
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 912
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    sub-int p2, p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr p2, v0

    int-to-float p2, p2

    float-to-double v0, p2

    .line 913
    sget-wide v2, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->COS_OF_ROTATED_X_DEGREE:D

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mViewContentHeight:I

    int-to-float v0, v0

    .line 914
    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mTopPadding:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 915
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 917
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mCenterX:F

    .line 918
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mCenterY:F

    div-float p1, p2, v0

    .line 919
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mRingRadius:F

    .line 921
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mLeftEdgeEffect:Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->setWidth(I)V

    .line 922
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mRightEdgeEffect:Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->setWidth(I)V

    .line 923
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->initShader()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 998
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 999
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->isInitialPointer(I)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_36

    .line 1000
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eqz v1, :cond_36

    .line 1001
    sget-object p1, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTouchEvent, not initialPointerId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mInitialPointerId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", pointerId: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v2

    .line 1006
    :cond_36
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_110

    if-eq v1, v2, :cond_ce

    const/4 v0, 0x2

    if-eq v1, v0, :cond_52

    const/4 v0, 0x3

    if-eq v1, v0, :cond_4a

    const/4 v0, 0x6

    if-eq v1, v0, :cond_ce

    goto/16 :goto_14a

    .line 1063
    :cond_4a
    invoke-virtual {p0, v3}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->updateScrollState(I)V

    .line 1064
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->reset()V

    goto/16 :goto_14a

    .line 1021
    :cond_52
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mLastTouchX:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_60

    .line 1022
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mLastTouchX:F

    .line 1024
    :cond_60
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mLastTouchX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    .line 1025
    sget-object v1, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTouchEvent, moveX: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", dx: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", lastTouchX: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mLastTouchX:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1027
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mLastTouchX:F

    .line 1028
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mIsFadingOut:Z

    if-eqz p1, :cond_a3

    .line 1029
    const-string p0, "onTouchEvent, return ACTION_MOVE for fading out"

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v2

    .line 1032
    :cond_a3
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mScrollState:I

    if-nez p1, :cond_aa

    .line 1033
    invoke-virtual {p0, v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->updateScrollState(I)V

    .line 1035
    :cond_aa
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mScrollState:I

    if-ne p1, v2, :cond_14a

    .line 1036
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_14a

    .line 1037
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_14a

    .line 1038
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->releaseEdgeStretch(F)F

    move-result p1

    sub-float/2addr v0, p1

    .line 1040
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->scrollByDistance(F)F

    move-result p1

    sub-float/2addr v0, p1

    const/4 p1, 0x0

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_14a

    .line 1043
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->handleOverScroll(F)V

    goto/16 :goto_14a

    .line 1050
    :cond_ce
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mCenterToEndsStretchFactor:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_d9

    .line 1051
    invoke-direct {p0, v3}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->performTapFeedbackAnimation(Z)V

    .line 1053
    :cond_d9
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mScrollState:I

    if-nez v0, :cond_ef

    .line 1054
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mTouchDownTime:J

    sub-long/2addr v0, v4

    sget v4, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->LONG_PRESS_TIMEOUT:I

    int-to-long v4, v4

    cmp-long v0, v0, v4

    if-gez v0, :cond_ef

    .line 1055
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->handleSingleTapUp(Landroid/view/MotionEvent;)Z

    goto :goto_f2

    .line 1057
    :cond_ef
    invoke-virtual {p0, v3}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->updateScrollState(I)V

    .line 1059
    :goto_f2
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->reset()V

    .line 1060
    sget-object p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTouchEvent, upX: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_14a

    .line 1008
    :cond_110
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mIsFadingOut:Z

    if-eqz v1, :cond_11c

    .line 1009
    sget-object p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onTouchEvent, return ACTION_DOWN for fading out"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v3

    .line 1012
    :cond_11c
    invoke-virtual {p0, v3}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->updateScrollState(I)V

    .line 1013
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mLastTouchX:F

    .line 1014
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mTouchDownTime:J

    .line 1015
    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mInitialPointerId:I

    .line 1016
    invoke-direct {p0, v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->performTapFeedbackAnimation(Z)V

    .line 1017
    sget-object p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTouchEvent, downX: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_14a
    :goto_14a
    return v2
.end method

.method public resetStickyInDegreeThreshold()V
    .registers 2

    const/high16 v0, 0x3f000000    # 0.5f

    .line 779
    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mStickyInDegreeThreshold:F

    return-void
.end method

.method public scrollByDistance(F)F
    .registers 4

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_6

    return v0

    .line 745
    :cond_6
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->distanceToDegree(F)F

    move-result v0

    .line 746
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->scrollByDegree(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_13

    return p1

    .line 747
    :cond_13
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->degreeToDistance(F)F

    move-result p0

    return p0
.end method

.method public setFocalLengthBase(F)V
    .registers 2

    .line 1391
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mFocalLengthBase:F

    return-void
.end method

.method public setLimitedRange(II)V
    .registers 4

    if-gez p1, :cond_4

    .line 411
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mMinZoomRatio:I

    :cond_4
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mMinLimitedZoomRatio:I

    if-gez p2, :cond_a

    .line 412
    iget p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mMaxZoomRatio:I

    :cond_a
    iput p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mMaxLimitedZoomRatio:I

    .line 413
    sget-object p1, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setLimitedRange, min: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mMinLimitedZoomRatio:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", max: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mMaxLimitedZoomRatio:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setListener(Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Listener;)V
    .registers 2

    .line 1400
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mListener:Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Listener;

    return-void
.end method

.method public setOrientation(I)V
    .registers 4

    .line 1482
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mOrientation:I

    if-eq v0, p1, :cond_24

    .line 1483
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mOrientation:I

    .line 1484
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->updateShaderByOrientation(I)V

    .line 1485
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mRotateAnimator:Lcom/transsion/camera/ui/setting/zoom/RotateAnimator;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/RotateAnimator;->setOrientation(I)V

    .line 1486
    sget-object p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOrientation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_24
    return-void
.end method

.method public setStickyInDegreeThreshold(F)V
    .registers 2

    .line 775
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mStickyInDegreeThreshold:F

    return-void
.end method

.method public setVibrationEnable(Z)V
    .registers 2

    .line 476
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mIsVibrationEnable:Z

    return-void
.end method

.method public setVibratorSupport(Z)V
    .registers 2

    .line 1404
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mIsVibrationSupported:Z

    return-void
.end method

.method public setZoomConfig(Lcom/transsion/camera/app/common/ZoomConfig;)V
    .registers 5

    .line 451
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ZoomConfig;->getZoomRange()Landroid/util/Range;

    move-result-object v0

    .line 452
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mMinZoomRatio:I

    if-ne v1, v2, :cond_20

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mMaxZoomRatio:I

    if-eq v1, v2, :cond_58

    .line 453
    :cond_20
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ZoomConfig;->getTickViewDegreeScaleFactor()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->updateRotationVariables(F)V

    .line 454
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mMaxZoomRatio:I

    .line 455
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mMinZoomRatio:I

    const/4 v1, 0x0

    .line 456
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->calculateDegreeByRatio(IF)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mDegreeOffset:F

    .line 457
    sget v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->LINEAR_DISTANCE_RATIO_THRESHOLD:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->zoomRatioToDegree(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mLinearDistanceDegreeThreshold:F

    .line 458
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mMinZoomRatio:I

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mMaxZoomRatio:I

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->initTicks(II)V

    .line 459
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->doInvalidate()V

    .line 461
    :cond_58
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ZoomConfig;->getDefaultZoomRatio()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->setZoomRatio(IZ)V

    .line 462
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ZoomConfig;->getLimitedZoomRange()Landroid/util/Range;

    move-result-object v0

    .line 463
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->setLimitedRange(II)V

    .line 464
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ZoomConfig;->isZoomRangeLimited()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->setZoomRangeLimited(Z)V

    .line 465
    sget-object p1, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setZoomConfig, max: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mMaxZoomRatio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", min: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mMinZoomRatio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDegreeOffset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mDegreeOffset:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setZoomRangeLimited(Z)V
    .registers 6

    .line 418
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mIsZoomRangeLimited:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 422
    :cond_5
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mIsZoomRangeLimited:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_18

    .line 423
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mMinLimitedZoomRatio:I

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mMinZoomRatio:I

    if-lt p1, v1, :cond_16

    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mMaxLimitedZoomRatio:I

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mMaxZoomRatio:I

    if-le p1, v1, :cond_18

    .line 426
    :cond_16
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mIsZoomRangeLimited:Z

    :cond_18
    move p1, v0

    .line 429
    :goto_19
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mTicks:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge p1, v1, :cond_3f

    .line 430
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mTicks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;

    .line 431
    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mIsZoomRangeLimited:Z

    if-eqz v2, :cond_39

    iget v2, v1, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mValue:I

    iget v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mMinLimitedZoomRatio:I

    if-lt v2, v3, :cond_37

    iget v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mMaxLimitedZoomRatio:I

    if-le v2, v3, :cond_39

    :cond_37
    const/4 v2, 0x1

    goto :goto_3a

    :cond_39
    move v2, v0

    :goto_3a
    iput-boolean v2, v1, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Tick;->mIsLimited:Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_19

    .line 436
    :cond_3f
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mIsZoomRangeLimited:Z

    const/high16 v0, 0x43870000    # 270.0f

    if-eqz p1, :cond_4e

    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mMinLimitedZoomRatio:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->zoomRatioToDegree(I)F

    move-result p1

    :goto_4b
    sub-float p1, v0, p1

    goto :goto_55

    .line 437
    :cond_4e
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mMinZoomRatio:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->zoomRatioToDegree(I)F

    move-result p1

    goto :goto_4b

    :goto_55
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mMaxScrollDegree:F

    .line 438
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mIsZoomRangeLimited:Z

    if-eqz p1, :cond_63

    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mMaxLimitedZoomRatio:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->zoomRatioToDegree(I)F

    move-result p1

    :goto_61
    sub-float/2addr v0, p1

    goto :goto_6a

    .line 439
    :cond_63
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mMaxZoomRatio:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->zoomRatioToDegree(I)F

    move-result p1

    goto :goto_61

    :goto_6a
    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mMinScrollDegree:F

    .line 440
    sget-object p1, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setZoomRangeLimited, mMaxLimitedZoomRatio: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mMaxLimitedZoomRatio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMinLimitedZoomRatio: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mMinLimitedZoomRatio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIsZoomRangeLimited:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mIsZoomRangeLimited:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mMaxZoomRatio: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mMaxZoomRatio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMinZoomRatio: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mMinZoomRatio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMinScrollDegree: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mMinScrollDegree:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mMaxScrollDegree: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mMaxScrollDegree:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 447
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->doInvalidate()V

    return-void
.end method

.method public setZoomRatio(IZ)V
    .registers 8

    .line 585
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->zoomRatioToDegree(I)F

    move-result v0

    .line 586
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/high16 v2, 0x43870000    # 270.0f

    if-eqz v1, :cond_1a

    .line 587
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mZoomRatio:I

    sub-float/2addr v2, v0

    .line 588
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mMinScrollDegree:F

    iget p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mMaxScrollDegree:F

    invoke-static {v2, p1, p2}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mScrollDegree:F

    return-void

    .line 591
    :cond_1a
    sget-object v1, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setZoomRatio: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", ratioDegree: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p2, :cond_54

    const/4 p1, 0x2

    .line 593
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->updateScrollState(I)V

    .line 594
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mScrollOnClickAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mScrollDegree:F

    sub-float/2addr v2, v0

    new-array p1, p1, [F

    const/4 v0, 0x0

    aput v1, p1, v0

    const/4 v0, 0x1

    aput v2, p1, v0

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 595
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mScrollOnClickAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_54
    sub-float/2addr v2, v0

    .line 597
    invoke-direct {p0, v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->scrollToDegree(F)V

    return-void
.end method

.method public show(Z)V
    .registers 4

    .line 1408
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p1, :cond_19

    .line 1413
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    .line 1414
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    .line 1415
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 p1, 0x0

    .line 1416
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 1420
    :cond_19
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1421
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->FADE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 1422
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    .line 1423
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;)V

    .line 1424
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$3;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;)V

    .line 1429
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 1442
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1443
    sget-object p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "show"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public updateScrollState(I)V
    .registers 5

    .line 403
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateScrollState, to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mScrollState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 404
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mScrollState:I

    .line 405
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->mListener:Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Listener;

    if-eqz p0, :cond_29

    .line 406
    invoke-interface {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Listener;->onScrollStateChanged(I)V

    :cond_29
    return-void
.end method
