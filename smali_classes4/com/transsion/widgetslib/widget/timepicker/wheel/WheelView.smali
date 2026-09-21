.class public Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;,
        Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;,
        Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnItemSelectedListener;,
        Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$DividerType;,
        Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$CurvedArcDirection;,
        Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$TextAlign;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/view/View;"
    }
.end annotation


# static fields
.field private static final CROSS_SCALE:F = 0.5f

.field public static final CURVED_ARC_DIRECTION_CENTER:I = 0x1

.field public static final CURVED_ARC_DIRECTION_LEFT:I = 0x0

.field public static final CURVED_ARC_DIRECTION_RIGHT:I = 0x2

.field private static final CURVED_DEGREES:F = -140.0f

.field private static final CURVED_TEXT_SCALE:F = 1.375f

.field private static final DEFAULT_CLICK_CONFIRM:J = 0x78L

.field public static final DEFAULT_CURVED_FACTOR:F = 0.75f

.field private static final DEFAULT_DIVIDER_HEIGHT:F

.field private static final DEFAULT_INTEGER_FORMAT:Ljava/lang/String; = "%2d"

.field private static final DEFAULT_LINE_SPACING:F

.field private static final DEFAULT_REFRACT_RATIO:F = 1.0f

.field private static final DEFAULT_SCROLL_DURATION:I = 0xfa

.field private static final DEFAULT_TEXT_BOUNDARY_MARGIN:F = 0.0f

.field private static final DEFAULT_TEXT_SIZE:F

.field private static final DEFAULT_VISIBLE_ITEM:I = 0x5

.field private static final DEPTH_Z:F = 420.0f

.field public static final DIVIDER_TYPE_FILL:I = 0x0

.field public static final DIVIDER_TYPE_WRAP:I = 0x1

.field private static final END_ALPHA:I = 0xff

.field private static final END_COLOR:I = 0x0

.field private static final END_CURVED_DEGREES:F = 0.0f

.field private static final END_SCALE:F = 1.0f

.field private static final MODIFY_SCROLL_DURATION:I = 0x15e

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SCROLLING:I = 0x2

.field private static final START_ALPHA:I = 0x56

.field private static final START_COLOR:I = 0x99

.field private static final START_CURVED_DEGREES:F = 70.0f

.field private static final START_SCALE:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "WheelView"

.field public static final TEXT_ALIGN_CENTER:I = 0x1

.field public static final TEXT_ALIGN_LEFT:I = 0x0

.field public static final TEXT_ALIGN_RIGHT:I = 0x2

.field private static final UNIT_ALPHA:I = 0x54

.field private static final UNIT_COLOR:I = -0x4c

.field private static final UNIT_SCALE:F = 0.2f


# instance fields
.field private isAutoFitTextSize:Z

.field private isCurved:Z

.field private isCyclic:Z

.field private isDrawSelectedRect:Z

.field private isResetSelectedPosition:Z

.field private isShowDivider:Z

.field private isSoundEffect:Z

.field private mAmPmMaxDownPull:F

.field private mAmPmMaxUpPull:F

.field private mAnimatorAmpmReset:Landroid/animation/ValueAnimator;

.field private mAudioManager:Landroid/media/AudioManager;

.field mBaseWidth:F

.field private mBgColor:I

.field private mBoldTypeface:Landroid/graphics/Typeface;

.field private mCalendar:Ljava/util/Calendar;

.field private mCamera:Landroid/graphics/Camera;

.field private mCenterToBaselineY:I

.field private mCenterX:I

.field private mCenterY:I

.field private mClipBottom:I

.field private mClipLeft:I

.field private mClipRight:I

.field private mClipTop:I

.field private mCurrentScrollPosition:I

.field private mCurvedArcDirection:I

.field private mCurvedArcDirectionFactor:F

.field private mCurvedBoldForSelectedItemTypeface:Landroid/graphics/Typeface;

.field private mCurvedNormalItemTypeface:Landroid/graphics/Typeface;

.field private mCustomContentDescription:Ljava/lang/String;

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mDensity:F

.field private mDividerCap:Landroid/graphics/Paint$Cap;

.field private mDividerColor:I

.field private mDividerOffset:F

.field private mDividerPaddingForWrap:F

.field private mDividerSize:F

.field private mDividerType:I

.field private mDownStartTime:J

.field private mDownTouchMoveY:F

.field private mDownTouchScrollOffsetY:F

.field private mDownTouchY:F

.field private mDrawRect:Landroid/graphics/Rect;

.field private mFontMetrics:Landroid/graphics/Paint$FontMetrics;

.field private mFullDeltaRatio:F

.field private mHourWheel:Z

.field private mIs24Format:Z

.field private mIsAmPmWheel:Z

.field private mIsBoldForSelectedItem:Z

.field private mIsCurvedBoldForSelectedItem:Z

.field private mIsNeedMaxPull:Z

.field private mIsRtl:Z

.field public mIsTouchStatus:Z

.field private mItemNormalHeight:I

.field private mItemSelectHeight:I

.field private mLineSpacing:F

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMaxFlingVelocity:I

.field private mMaxScrollY:I

.field private mMinFlingVelocity:I

.field mMinScrollGap:F

.field private mMinScrollY:I

.field private mMinuteWheel:Z

.field private mMonthList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedFling:Z

.field private mNeedMaxDownPull:F

.field private mNeedMaxUpPull:F

.field private mNormalTypeface:Landroid/graphics/Typeface;

.field private mOnItemSelectedListener:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnItemSelectedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnItemSelectedListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mOnWheelChangedListener:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mPreOffsetY:I

.field private mRefractRatio:F

.field private mScrollOffsetY:F

.field private mScrolledY:F

.field private mScroller:Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;

.field protected mScrollerRun:Ljava/lang/Runnable;

.field private mSecondPaint:Landroid/graphics/Paint;

.field private mSelectedItemBottomLimit:I

.field private mSelectedItemPosition:I

.field private mSelectedItemTopLimit:I

.field mSelectedMatrix:Landroid/graphics/Matrix;

.field private mSelectedPaint:Landroid/graphics/Paint;

.field private mSelectedRectColor:I

.field private mSoundHelper:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;

.field private mSpecialOffsetTop:I

.field private mStartX:I

.field private mTempCalendar:Ljava/util/Calendar;

.field private mTextAlign:I

.field private mTextBoundaryMargin:F

.field private mTextFirstColor:I

.field private mTextPaint:Landroid/text/TextPaint;

.field private mTextSecondColor:I

.field private mTextSelectColor:I

.field private mTextSizeFirst:I

.field private mTextSizeSecond:I

.field private mTextSizeSelect:I

.field private mTextThirdColor:I

.field private mTotalHeight:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVisibleItems:I

.field private mWheelHeight:I

.field private mWheelWidth:I

.field private mYearDays:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/high16 v0, 0x40000000    # 2.0f

    .line 59
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->dp2px(F)F

    move-result v0

    sput v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->DEFAULT_LINE_SPACING:F

    const/high16 v0, 0x41700000    # 15.0f

    .line 60
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->sp2px(F)F

    move-result v0

    sput v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->DEFAULT_TEXT_SIZE:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 62
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->dp2px(F)F

    move-result v0

    sput v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->DEFAULT_DIVIDER_HEIGHT:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 275
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 279
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    .line 283
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 93
    new-instance p3, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    .line 94
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSecondPaint:Landroid/graphics/Paint;

    .line 95
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSelectedPaint:Landroid/graphics/Paint;

    .line 122
    sget-object p3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    iput-object p3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDividerCap:Landroid/graphics/Paint$Cap;

    .line 154
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isCurved:Z

    .line 169
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDataList:Ljava/util/List;

    const/4 p3, 0x0

    .line 172
    iput-boolean p3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isResetSelectedPosition:Z

    const/4 v1, 0x0

    .line 185
    iput v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    .line 187
    iput v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrolledY:F

    .line 205
    iput-boolean p3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mIsBoldForSelectedItem:Z

    const/4 v2, 0x0

    .line 207
    iput-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mNormalTypeface:Landroid/graphics/Typeface;

    .line 209
    iput-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mBoldTypeface:Landroid/graphics/Typeface;

    .line 218
    iput-boolean p3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isSoundEffect:Z

    .line 228
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mMonthList:Ljava/util/List;

    .line 235
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSelectedMatrix:Landroid/graphics/Matrix;

    .line 237
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextPaint:Landroid/text/TextPaint;

    const/high16 v0, 0x44340000    # 720.0f

    .line 240
    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mBaseWidth:F

    const/high16 v0, 0x40000000    # 2.0f

    .line 241
    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mMinScrollGap:F

    .line 243
    iput-boolean p3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mNeedFling:Z

    .line 270
    iput v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mFullDeltaRatio:F

    const/16 v0, 0x18

    .line 271
    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSpecialOffsetTop:I

    .line 272
    iput p3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mPreOffsetY:I

    .line 1019
    new-instance p3, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$3;

    invoke-direct {p3, p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$3;-><init>(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;)V

    iput-object p3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollerRun:Ljava/lang/Runnable;

    .line 284
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->initAttrsAndDefault(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 285
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->initValue(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;)Z
    .registers 1

    .line 55
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mIsNeedMaxPull:Z

    return p0
.end method

.method static synthetic access$100(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;)Z
    .registers 1

    .line 55
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isCyclic:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;)Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScroller:Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;)V
    .registers 1

    .line 55
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->invalidateIfYChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;I)Ljava/lang/String;
    .registers 2

    .line 55
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->getDataByIndex(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;)Landroid/graphics/Paint;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSelectedPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;)F
    .registers 1

    .line 55
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mAmPmMaxUpPull:F

    return p0
.end method

.method static synthetic access$402(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;F)F
    .registers 2

    .line 55
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mAmPmMaxUpPull:F

    return p1
.end method

.method static synthetic access$502(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;F)F
    .registers 2

    .line 55
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mAmPmMaxDownPull:F

    return p1
.end method

.method static synthetic access$602(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;F)F
    .registers 2

    .line 55
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mNeedMaxUpPull:F

    return p1
.end method

.method static synthetic access$700(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;)I
    .registers 1

    .line 55
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mMaxScrollY:I

    return p0
.end method

.method static synthetic access$802(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;F)F
    .registers 2

    .line 55
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mNeedMaxDownPull:F

    return p1
.end method

.method static synthetic access$902(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;F)F
    .registers 2

    .line 55
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    return p1
.end method

.method private adjustVisibleItems(I)I
    .registers 2

    .line 1740
    div-int/lit8 p1, p1, 0x2

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    return p0
.end method

.method private animResetAmpmLocation(FF)V
    .registers 9

    cmpl-float v0, p1, p2

    if-nez v0, :cond_5

    return-void

    .line 2574
    :cond_5
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mAnimatorAmpmReset:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-nez v0, :cond_30

    .line 2575
    new-array v0, v1, [F

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mAnimatorAmpmReset:Landroid/animation/ValueAnimator;

    .line 2576
    new-instance v2, Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;

    const/high16 v3, 0x3e800000    # 0.25f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5, v5, v4}, Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2577
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mAnimatorAmpmReset:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2578
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mAnimatorAmpmReset:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$4;

    invoke-direct {v2, p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$4;-><init>(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2590
    :cond_30
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mAnimatorAmpmReset:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    aput p1, v2, v1

    const/4 p1, 0x1

    aput p2, v2, p1

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 2591
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mAnimatorAmpmReset:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private calculateDistanceToEndPoint(F)F
    .registers 5

    .line 1281
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mWheelHeight:I

    div-int/lit8 v2, v1, 0x2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1a

    .line 1282
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    const/4 v0, 0x0

    cmpg-float p0, p0, v0

    if-gez p0, :cond_18

    neg-int p0, v1

    int-to-float p0, p0

    :goto_16
    sub-float/2addr p0, p1

    return p0

    :cond_18
    int-to-float p0, v1

    goto :goto_16

    :cond_1a
    neg-float p0, p1

    return p0
.end method

.method private calculateDrawStart()V
    .registers 4

    .line 602
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextAlign:I

    if-eqz v0, :cond_20

    const/4 v1, 0x2

    if-eq v0, v1, :cond_f

    .line 611
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mStartX:I

    goto :goto_2b

    .line 607
    :cond_f
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextBoundaryMargin:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mStartX:I

    goto :goto_2b

    .line 604
    :cond_20
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextBoundaryMargin:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mStartX:I

    .line 616
    :goto_2b
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float/2addr v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    add-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mCenterToBaselineY:I

    return-void
.end method

.method private calculateItemDistance(I)I
    .registers 3

    .line 1849
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mWheelHeight:I

    mul-int/2addr p1, v0

    int-to-float p1, p1

    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    sub-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private calculateLimitY()V
    .registers 3

    .line 623
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isCyclic:Z

    if-eqz v0, :cond_7

    const/high16 v1, -0x80000000

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    iput v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mMinScrollY:I

    if-eqz v0, :cond_10

    const v0, 0x7fffffff

    goto :goto_1b

    .line 626
    :cond_10
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mWheelHeight:I

    mul-int/2addr v0, v1

    :goto_1b
    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mMaxScrollY:I

    return-void
.end method

.method private calculateTextSize()V
    .registers 3

    .line 523
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextSizeSelect:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 524
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    return-void
.end method

.method private checkPositionForStr(I)Z
    .registers 4

    .line 1237
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    if-ltz p1, :cond_18

    .line 1240
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDataList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    if-le p1, p0, :cond_17

    goto :goto_18

    :cond_17
    return v0

    :cond_18
    :goto_18
    return v1
.end method

.method private dayOfYearToMonthDay(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 2514
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mCalendar:Ljava/util/Calendar;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 2517
    :cond_6
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 2518
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTempCalendar:Ljava/util/Calendar;

    if-nez v0, :cond_14

    .line 2519
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTempCalendar:Ljava/util/Calendar;

    .line 2521
    :cond_14
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTempCalendar:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 2522
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTempCalendar:Ljava/util/Calendar;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 2523
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTempCalendar:Ljava/util/Calendar;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 2525
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mMonthList:Ljava/util/List;

    if-eqz v0, :cond_b6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_b6

    .line 2526
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTempCalendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 2527
    iget-boolean v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mIsRtl:Z

    const-string v2, " "

    const-string v3, "%d"

    if-eqz v1, :cond_7e

    .line 2528
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4, v3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2529
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/transsion/widgetslib/R$string;->day_time_picker:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mMonthList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2531
    :cond_7e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mMonthList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2532
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/transsion/widgetslib/R$string;->day_time_picker:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2535
    :cond_b6
    const-string p0, ""

    return-object p0
.end method

.method private dividedItemHeight()I
    .registers 1

    .line 1328
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mWheelHeight:I

    if-lez p0, :cond_5

    return p0

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method private doScroll(F)V
    .registers 4

    .line 1176
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    .line 1177
    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isCyclic:Z

    if-nez p1, :cond_1e

    .line 1179
    iget p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mMinScrollY:I

    int-to-float v1, p1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_14

    int-to-float p1, p1

    .line 1180
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    return-void

    .line 1181
    :cond_14
    iget p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mMaxScrollY:I

    int-to-float v1, p1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1e

    int-to-float p1, p1

    .line 1182
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    :cond_1e
    return-void
.end method

.method protected static dp2px(F)F
    .registers 3

    .line 2301
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method private drawItem2(Landroid/graphics/Canvas;Landroid/graphics/Paint;IFFIF)V
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p6

    move/from16 v4, p3

    .line 722
    invoke-direct {v0, v4}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->getDataByIndex(I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_11

    return-void

    .line 727
    :cond_11
    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v5

    .line 728
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    sub-float v7, p5, v5

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v7, v8

    .line 731
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v9, v6

    const/4 v10, 0x0

    cmpg-float v11, v9, v10

    if-gez v11, :cond_43

    .line 734
    new-instance v9, Landroid/text/TextPaint;

    invoke-direct {v9, v2}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v11

    int-to-float v11, v11

    sget-object v12, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v4, v9, v11, v12}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 735
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v9, v6

    :cond_43
    cmpl-float v6, v9, v10

    if-lez v6, :cond_49

    mul-float/2addr v9, v8

    goto :goto_4a

    :cond_49
    move v9, v10

    :goto_4a
    add-float v6, p4, v7

    add-float/2addr v6, v5

    .line 741
    iget-boolean v5, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isCurved:Z

    if-eqz v5, :cond_158

    iget v5, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mFullDeltaRatio:F

    cmpl-float v7, v5, v10

    if-eqz v7, :cond_158

    const/high16 v7, 0x3f800000    # 1.0f

    div-float v5, p7, v5

    sub-float/2addr v7, v5

    .line 743
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 747
    iget v8, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSpecialOffsetTop:I

    div-int/lit8 v11, v8, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-nez v5, :cond_70

    rsub-int/lit8 v11, v11, 0x0

    int-to-float v8, v8

    mul-float/2addr v8, v7

    float-to-int v8, v8

    add-int/2addr v11, v8

    int-to-float v8, v11

    goto :goto_8c

    :cond_70
    if-ne v5, v12, :cond_8b

    const/4 v14, -0x1

    if-ne v3, v14, :cond_77

    move v15, v8

    goto :goto_78

    :cond_77
    neg-int v15, v8

    :goto_78
    int-to-float v8, v8

    mul-float/2addr v8, v7

    float-to-int v8, v8

    if-ne v3, v14, :cond_84

    sub-int/2addr v15, v8

    .line 757
    invoke-static {v15, v11}, Ljava/lang/Math;->min(II)I

    move-result v8

    :goto_82
    int-to-float v8, v8

    goto :goto_8c

    :cond_84
    add-int/2addr v15, v8

    neg-int v8, v11

    .line 759
    invoke-static {v15, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_82

    :cond_8b
    move v8, v10

    :goto_8c
    sub-float/2addr v6, v8

    .line 780
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v8, v11

    .line 781
    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v14

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v15

    add-float/2addr v14, v15

    div-float/2addr v14, v11

    add-float/2addr v14, v6

    int-to-float v15, v5

    const v16, 0x3e4ccccd    # 0.2f

    mul-float v15, v15, v16

    const v17, 0x3dcccccd    # 0.1f

    if-gtz v3, :cond_ae

    sub-float v15, v15, v17

    goto :goto_b0

    :cond_ae
    add-float v15, v15, v17

    :goto_b0
    mul-float v16, v16, v7

    if-gtz v3, :cond_b7

    add-float v15, v15, v16

    goto :goto_b9

    :cond_b7
    sub-float v15, v15, v16

    :goto_b9
    const/high16 v16, 0x43d20000    # 420.0f

    mul-float v16, v16, v15

    move/from16 p3, v11

    .line 787
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v11

    if-gtz v3, :cond_c8

    const/high16 v16, 0x430c0000    # 140.0f

    goto :goto_ca

    :cond_c8
    const/high16 v16, -0x3cf40000    # -140.0f

    :goto_ca
    mul-float v15, v15, v16

    .line 790
    iget-object v12, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v12}, Landroid/graphics/Camera;->save()V

    .line 791
    iget-object v12, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v12, v10, v10, v11}, Landroid/graphics/Camera;->translate(FFF)V

    .line 792
    iget-object v10, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v10, v15}, Landroid/graphics/Camera;->rotateX(F)V

    .line 793
    iget-object v10, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mCamera:Landroid/graphics/Camera;

    iget-object v11, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10, v11}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 794
    iget-object v10, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v10}, Landroid/graphics/Camera;->restore()V

    .line 796
    iget-object v10, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v11

    neg-int v11, v11

    int-to-float v11, v11

    div-float v11, v11, p3

    neg-float v12, v14

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 797
    iget-object v10, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10, v8, v14}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 799
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 800
    iget-object v8, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v8}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    mul-int/lit8 v8, v5, 0x54

    if-gtz v3, :cond_109

    rsub-int v8, v8, 0x129

    goto :goto_10b

    :cond_109
    rsub-int v8, v8, 0xd5

    :goto_10b
    const/high16 v10, 0x42a80000    # 84.0f

    mul-float/2addr v7, v10

    float-to-int v7, v7

    if-gtz v3, :cond_113

    sub-int/2addr v8, v7

    goto :goto_114

    :cond_113
    add-int/2addr v8, v7

    :goto_114
    const/16 v3, 0xff

    .line 806
    invoke-static {v8, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    const/16 v8, 0x4b

    if-gt v7, v8, :cond_11f

    move v7, v13

    .line 809
    :cond_11f
    iget v8, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextSelectColor:I

    and-int/2addr v3, v8

    add-int/lit16 v8, v3, -0x99

    .line 810
    div-int/lit8 v8, v8, 0x2

    mul-int/2addr v5, v8

    sub-int/2addr v3, v5

    .line 812
    invoke-static {v7, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 813
    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    const v5, 0xffffff

    and-int/2addr v3, v5

    if-nez v3, :cond_13b

    const/4 v12, 0x1

    goto :goto_13c

    :cond_13b
    move v12, v13

    .line 814
    :goto_13c
    iget-boolean v3, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mIsCurvedBoldForSelectedItem:Z

    if-eqz v3, :cond_145

    .line 816
    iget-object v3, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSecondPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v12}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 818
    :cond_145
    iget-object v3, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSecondPaint:Landroid/graphics/Paint;

    if-eqz v12, :cond_14c

    iget-object v0, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mCurvedBoldForSelectedItemTypeface:Landroid/graphics/Typeface;

    goto :goto_14e

    :cond_14c
    iget-object v0, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mCurvedNormalItemTypeface:Landroid/graphics/Typeface;

    :goto_14e
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 820
    invoke-virtual {v1, v4, v9, v6, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 821
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    return-void

    .line 839
    :cond_158
    invoke-virtual {v1, v4, v9, v6, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private getCurrentPosition()I
    .registers 3

    .line 1298
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, -0x1

    return p0

    .line 1302
    :cond_a
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1f

    .line 1303
    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mWheelHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->dividedItemHeight()I

    move-result v1

    :goto_1b
    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_2a

    .line 1305
    :cond_1f
    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mWheelHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->dividedItemHeight()I

    move-result v1

    goto :goto_1b

    .line 1307
    :goto_2a
    iget-boolean v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isCyclic:Z

    if-eqz v1, :cond_3f

    .line 1308
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    if-gez v0, :cond_3e

    .line 1310
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDataList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/2addr v0, p0

    :cond_3e
    return v0

    :cond_3f
    if-gez v0, :cond_43

    const/4 p0, 0x0

    return p0

    .line 1315
    :cond_43
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_56

    .line 1316
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDataList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0

    :cond_56
    return v0
.end method

.method private getDataByIndex(I)Ljava/lang/String;
    .registers 5

    .line 915
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 921
    :cond_a
    iget-boolean v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isCyclic:Z

    if-eqz v2, :cond_1d

    .line 922
    rem-int/2addr p1, v0

    if-gez p1, :cond_12

    add-int/2addr p1, v0

    .line 926
    :cond_12
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->getDataText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2b

    :cond_1d
    if-ltz p1, :cond_2b

    if-ge p1, v0, :cond_2b

    .line 929
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->getDataText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 933
    :cond_2b
    :goto_2b
    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mYearDays:Z

    if-eqz p1, :cond_3a

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3a

    .line 934
    invoke-direct {p0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->dayOfYearToMonthDay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3a
    return-object v1
.end method

.method private initAttrsAndDefault(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9

    const/4 v0, 0x0

    .line 295
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isAutoFitTextSize:Z

    .line 296
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->isRtl()Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mIsRtl:Z

    const/4 v1, 0x1

    .line 297
    iput v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextAlign:I

    const/4 v2, 0x0

    .line 298
    iput v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextBoundaryMargin:F

    .line 299
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 302
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 304
    sget v4, Lcom/transsion/widgetslib/R$color;->os_wheel_text_select_color:I

    invoke-static {p1, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    iput v4, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextSelectColor:I

    .line 306
    sget v4, Lcom/transsion/widgetslib/R$color;->os_text_quaternary_color:I

    invoke-static {p1, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    iput v4, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextFirstColor:I

    .line 307
    sget v4, Lcom/transsion/widgetslib/R$attr;->os_text_info:I

    sget v5, Lcom/transsion/widgetslib/R$color;->os_text_info_hios:I

    invoke-static {p1, v4, v5}, Lcom/transsion/widgetslib/util/Utils;->getAttrColor(Landroid/content/Context;II)I

    move-result v4

    iput v4, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextSecondColor:I

    .line 308
    sget v4, Lcom/transsion/widgetslib/R$attr;->os_text_info:I

    sget v5, Lcom/transsion/widgetslib/R$color;->os_text_info_hios:I

    invoke-static {p1, v4, v5}, Lcom/transsion/widgetslib/util/Utils;->getAttrColor(Landroid/content/Context;II)I

    move-result v4

    iput v4, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextThirdColor:I

    .line 309
    sget v4, Lcom/transsion/widgetslib/R$color;->os_altitude_secondary_color:I

    invoke-static {p1, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    iput v4, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mBgColor:I

    .line 312
    sget v4, Lcom/transsion/widgetslib/R$attr;->wheelWidth:I

    filled-new-array {v4}, [I

    move-result-object v4

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 313
    sget v4, Lcom/transsion/widgetslib/R$dimen;->picker_wheel_width_hour:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p2, v0, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mWheelWidth:I

    .line 314
    sget v4, Lcom/transsion/widgetslib/R$dimen;->picker_wheel_item_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mWheelHeight:I

    .line 315
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 318
    sget p2, Lcom/transsion/widgetslib/R$dimen;->picker_wheel_text_first:I

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextSizeFirst:I

    .line 320
    sget p2, Lcom/transsion/widgetslib/R$dimen;->picker_wheel_text_first:I

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextSizeSecond:I

    .line 321
    sget p2, Lcom/transsion/widgetslib/R$dimen;->picker_wheel_text_select:I

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextSizeSelect:I

    .line 322
    sget p2, Lcom/transsion/widgetslib/R$dimen;->picker_wheel_item_height:I

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mItemNormalHeight:I

    .line 323
    sget p2, Lcom/transsion/widgetslib/R$dimen;->picker_wheel_item_height_select:I

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mItemSelectHeight:I

    .line 325
    iget-boolean p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isCurved:Z

    if-eqz p2, :cond_9b

    .line 326
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSecondPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextSizeSecond:I

    int-to-float v4, v4

    const/high16 v5, 0x3fb00000    # 1.375f

    mul-float/2addr v4, v5

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_a3

    .line 328
    :cond_9b
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSecondPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextSizeSecond:I

    int-to-float v4, v4

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 330
    :goto_a3
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSecondPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextSecondColor:I

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 332
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSelectedPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextSizeSecond:I

    int-to-float v4, v4

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 339
    sget p2, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->DEFAULT_LINE_SPACING:F

    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mLineSpacing:F

    const/4 p2, 0x5

    .line 340
    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mVisibleItems:I

    .line 342
    invoke-direct {p0, p2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->adjustVisibleItems(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mVisibleItems:I

    .line 343
    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSelectedItemPosition:I

    .line 345
    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mCurrentScrollPosition:I

    .line 346
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isCyclic:Z

    .line 348
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isShowDivider:Z

    .line 349
    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDividerType:I

    .line 350
    sget p2, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->DEFAULT_DIVIDER_HEIGHT:F

    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDividerSize:F

    .line 351
    iget p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextSelectColor:I

    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDividerColor:I

    .line 352
    iput v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDividerPaddingForWrap:F

    .line 354
    iput v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDividerOffset:F

    .line 355
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isDrawSelectedRect:Z

    .line 356
    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSelectedRectColor:I

    .line 358
    iput v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mCurvedArcDirection:I

    const/high16 p2, 0x3f400000    # 0.75f

    .line 359
    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mCurvedArcDirectionFactor:F

    const/high16 p2, 0x3f800000    # 1.0f

    .line 363
    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mRefractRatio:F

    .line 365
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x43b40000    # 360.0f

    mul-float/2addr p2, p1

    .line 366
    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mBaseWidth:F

    const/high16 p2, 0x40000000    # 2.0f

    mul-float/2addr p1, p2

    .line 367
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mMinScrollGap:F

    const/high16 p1, 0x41000000    # 8.0f

    .line 369
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    invoke-static {v1, p1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSpecialOffsetTop:I

    return-void
.end method

.method private initDefaultVolume(Landroid/content/Context;)V
    .registers 3

    .line 500
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_e

    .line 501
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mAudioManager:Landroid/media/AudioManager;

    .line 503
    :cond_e
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setCurrentVolume()V

    return-void
.end method

.method private initValue(Landroid/content/Context;)V
    .registers 4

    .line 424
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 425
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mMaxFlingVelocity:I

    .line 426
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mMinFlingVelocity:I

    .line 428
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v0, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    .line 429
    new-instance v1, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;

    invoke-direct {v1, p1, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScroller:Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;

    .line 430
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDrawRect:Landroid/graphics/Rect;

    .line 431
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mCamera:Landroid/graphics/Camera;

    .line 432
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mMatrix:Landroid/graphics/Matrix;

    .line 433
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDensity:F

    .line 434
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->calculateTextSize()V

    .line 435
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->updateTextAlign()V

    .line 438
    new-instance p1, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$1;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$1;-><init>(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    .line 459
    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 461
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScroller:Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;

    iget-object p1, p1, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$2;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$2;-><init>(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;)V

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    return-void
.end method

.method private initVelocityTracker()V
    .registers 2

    .line 1155
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_a

    .line 1156
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_a
    return-void
.end method

.method private invalidateIfYChanged()V
    .registers 3

    .line 1191
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrolledY:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1d

    .line 1192
    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrolledY:F

    .line 1194
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mOnWheelChangedListener:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;

    if-eqz v1, :cond_12

    float-to-int v0, v0

    .line 1195
    invoke-interface {v1, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;->onWheelScroll(I)V

    .line 1197
    :cond_12
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->onWheelScroll(F)V

    .line 1199
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->observeItemChanged()V

    .line 1200
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1d
    return-void
.end method

.method private isAnimResetAmpmRunning()Z
    .registers 1

    .line 2595
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mAnimatorAmpmReset:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method private observeItemChanged()V
    .registers 6

    .line 1209
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mCurrentScrollPosition:I

    .line 1210
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->getCurrentPosition()I

    move-result v1

    if-eq v0, v1, :cond_3f

    .line 1213
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mOnWheelChangedListener:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;

    if-eqz v2, :cond_23

    iget v3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrolledY:F

    iget v4, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mMinScrollY:I

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_1c

    iget v4, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mMaxScrollY:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-lez v3, :cond_20

    :cond_1c
    iget-boolean v3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isCyclic:Z

    if-nez v3, :cond_23

    .line 1214
    :cond_20
    invoke-interface {v2, v0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;->onWheelItemChanged(II)V

    .line 1216
    :cond_23
    invoke-virtual {p0, v0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->onWheelItemChanged(II)V

    .line 1218
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->playSoundEffect()V

    .line 1220
    iput v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mCurrentScrollPosition:I

    .line 1222
    iput v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSelectedItemPosition:I

    .line 1224
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1225
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mIsTouchStatus:Z

    if-eqz v0, :cond_3f

    .line 1226
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_3f
    return-void
.end method

.method private recalculateCenterToBaselineY()I
    .registers 3

    .line 903
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p0

    .line 905
    iget v0, p0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget p0, p0, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float/2addr p0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p0, v1

    add-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method private recalculateStartX(F)V
    .registers 4

    .line 883
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextAlign:I

    if-eqz v0, :cond_19

    const/4 v1, 0x2

    if-eq v0, v1, :cond_f

    .line 892
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/2addr p1, v1

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mStartX:I

    return-void

    .line 888
    :cond_f
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mStartX:I

    return-void

    :cond_19
    float-to-int p1, p1

    .line 885
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mStartX:I

    return-void
.end method

.method private recycleVelocityTracker()V
    .registers 2

    .line 1164
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_a

    .line 1165
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 1166
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_a
    return-void
.end method

.method private remeasureTextSize(Ljava/lang/String;)I
    .registers 8

    .line 849
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 850
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 851
    iget v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextBoundaryMargin:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    const/high16 v4, 0x41200000    # 10.0f

    div-float v5, v1, v4

    cmpl-float v5, v2, v5

    if-lez v5, :cond_1f

    const/high16 v2, 0x41100000    # 9.0f

    mul-float/2addr v1, v2

    div-float/2addr v1, v4

    div-float v2, v1, v4

    goto :goto_20

    :cond_1f
    sub-float/2addr v1, v2

    :goto_20
    const/4 v4, 0x0

    cmpg-float v5, v1, v4

    if-gtz v5, :cond_28

    .line 860
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mCenterToBaselineY:I

    return p0

    .line 862
    :cond_28
    iget v5, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextSizeSecond:I

    int-to-float v5, v5

    :goto_2b
    cmpl-float v0, v0, v1

    if-lez v0, :cond_43

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v5, v0

    cmpg-float v0, v5, v4

    if-gtz v0, :cond_37

    goto :goto_43

    .line 868
    :cond_37
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 869
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    goto :goto_2b

    :cond_43
    :goto_43
    div-float/2addr v2, v3

    .line 872
    invoke-direct {p0, v2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->recalculateStartX(F)V

    .line 874
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->recalculateCenterToBaselineY()I

    move-result p0

    return p0
.end method

.method private resizeTextSize(Landroid/graphics/Paint;Ljava/lang/String;)V
    .registers 6

    .line 2543
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 2544
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-nez v0, :cond_d

    goto :goto_33

    .line 2548
    :cond_d
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2549
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {p2, v1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    if-le v1, v0, :cond_33

    .line 2551
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    iget v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDensity:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2552
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->resizeTextSize(Landroid/graphics/Paint;Ljava/lang/String;)V

    :cond_33
    :goto_33
    return-void
.end method

.method private setCurrentVolume()V
    .registers 4

    .line 507
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1b

    const/4 v1, 0x2

    .line 509
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 511
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 513
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSoundHelper:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v0, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;->setPlayVolume(F)V

    return-void

    .line 515
    :cond_1b
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSoundHelper:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;

    const v0, 0x3e99999a    # 0.3f

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;->setPlayVolume(F)V

    return-void
.end method

.method protected static sp2px(F)F
    .registers 3

    .line 2311
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method private updateTextAlign()V
    .registers 3

    .line 531
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextAlign:I

    if-eqz v0, :cond_17

    const/4 v1, 0x2

    if-eq v0, v1, :cond_f

    .line 540
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void

    .line 536
    :cond_f
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void

    .line 533
    :cond_17
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method


# virtual methods
.method public abortFinishScroll()V
    .registers 2

    .line 1269
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScroller:Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1270
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScroller:Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->abortAnimation()V

    :cond_d
    return-void
.end method

.method public forceFinishScroll()V
    .registers 2

    .line 1260
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScroller:Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1261
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScroller:Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->forceFinished(Z)V

    :cond_e
    return-void
.end method

.method protected forceStopScroller()V
    .registers 2

    .line 966
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScroller:Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_e

    .line 968
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScroller:Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->forceFinished(Z)V

    :cond_e
    return-void
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "GetContentDescriptionOverride"
        }
    .end annotation

    .line 1033
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mCustomContentDescription:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1034
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mCustomContentDescription:Ljava/lang/String;

    return-object p0

    .line 1037
    :cond_b
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->getSelectedItemPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->checkPositionForStr(I)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1038
    invoke-super {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 1041
    :cond_1a
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->getSelectedItemPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->getDataByIndex(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCurvedArcDirection()I
    .registers 1

    .line 2115
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mCurvedArcDirection:I

    return p0
.end method

.method public getCurvedArcDirectionFactor()F
    .registers 1

    .line 2140
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mCurvedArcDirectionFactor:F

    return p0
.end method

.method public getCurvedBoldForSelectedItemTypeface()Landroid/graphics/Typeface;
    .registers 1

    .line 2616
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mCurvedBoldForSelectedItemTypeface:Landroid/graphics/Typeface;

    return-object p0
.end method

.method public getCurvedNormalItemTypeface()Landroid/graphics/Typeface;
    .registers 1

    .line 2624
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mCurvedNormalItemTypeface:Landroid/graphics/Typeface;

    return-object p0
.end method

.method public getCurvedRefractRatio()F
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2192
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mRefractRatio:F

    return p0
.end method

.method public getCustomContentDescription()Ljava/lang/String;
    .registers 1

    .line 2600
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mCustomContentDescription:Ljava/lang/String;

    return-object p0
.end method

.method public getData()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1418
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDataList:Ljava/util/List;

    return-object p0
.end method

.method protected getDataText(Ljava/lang/Object;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 946
    const-string v0, ""

    if-nez p1, :cond_5

    return-object v0

    .line 948
    :cond_5
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_39

    .line 949
    check-cast p1, Ljava/lang/Integer;

    .line 951
    iget-boolean v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mHourWheel:Z

    const-string v2, "%d"

    const-string v3, "%02d"

    if-eqz v1, :cond_18

    .line 952
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mIs24Format:Z

    if-eqz p0, :cond_1d

    goto :goto_1c

    .line 953
    :cond_18
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mMinuteWheel:Z

    if-eqz p0, :cond_1d

    :goto_1c
    move-object v2, v3

    .line 958
    :cond_1d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, v2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 959
    :cond_39
    instance-of p0, p1, Ljava/lang/String;

    if-eqz p0, :cond_40

    .line 960
    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 962
    :cond_40
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDividerCap()Landroid/graphics/Paint$Cap;
    .registers 1

    .line 2016
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDividerCap:Landroid/graphics/Paint$Cap;

    return-object p0
.end method

.method public getDividerColor()I
    .registers 1

    .line 1890
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDividerColor:I

    return p0
.end method

.method public getDividerHeight()F
    .registers 1

    .line 1921
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDividerSize:F

    return p0
.end method

.method public getDividerPaddingForWrap()F
    .registers 1

    .line 1980
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDividerPaddingForWrap:F

    return p0
.end method

.method public getDividerType()I
    .registers 1

    .line 1956
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDividerType:I

    return p0
.end method

.method public getItemData(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1393
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isPositionInRange(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1394
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDataList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1395
    :cond_d
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2a

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_2a

    .line 1396
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDataList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1397
    :cond_2a
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3c

    if-gez p1, :cond_3c

    .line 1398
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDataList:Ljava/util/List;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_3c
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLineSpacing()F
    .registers 1

    .line 1679
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mLineSpacing:F

    return p0
.end method

.method public getOnItemSelectedListener()Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnItemSelectedListener;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnItemSelectedListener<",
            "TT;>;"
        }
    .end annotation

    .line 2206
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mOnItemSelectedListener:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnItemSelectedListener;

    return-object p0
.end method

.method public getOnWheelChangedListener()Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;
    .registers 1

    .line 2224
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mOnWheelChangedListener:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;

    return-object p0
.end method

.method public getPlayVolume()F
    .registers 1

    .line 1371
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSoundHelper:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;->getPlayVolume()F

    move-result p0

    return p0
.end method

.method public getRefractRatio()F
    .registers 1

    .line 2168
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mRefractRatio:F

    return p0
.end method

.method public getSecondPaint()Landroid/graphics/Paint;
    .registers 1

    .line 393
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSecondPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public getSelectedItemData()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1409
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSelectedItemPosition:I

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->getItemData(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getSelectedItemPosition()I
    .registers 1

    .line 1776
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSelectedItemPosition:I

    return p0
.end method

.method public getSelectedPaint()Landroid/graphics/Paint;
    .registers 1

    .line 397
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSelectedPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public getSelectedRectColor()I
    .registers 1

    .line 2060
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSelectedRectColor:I

    return p0
.end method

.method public getTextAlign()I
    .registers 1

    .line 1618
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextAlign:I

    return p0
.end method

.method public getTextBoundaryMargin()F
    .registers 1

    .line 1645
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextBoundaryMargin:F

    return p0
.end method

.method public getTextSecondColor()I
    .registers 1

    .line 410
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextSecondColor:I

    return p0
.end method

.method public getTextSelectColor()I
    .registers 1

    .line 401
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextSelectColor:I

    return p0
.end method

.method public getTextSizeSecond()I
    .registers 1

    .line 382
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextSizeSecond:I

    return p0
.end method

.method public getTextSizeSelect()I
    .registers 1

    .line 390
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextSizeSelect:I

    return p0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .registers 1

    .line 1561
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public getVisibleItems()I
    .registers 1

    .line 1715
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mVisibleItems:I

    return p0
.end method

.method public getWheelHeight()I
    .registers 1

    .line 546
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mWheelHeight:I

    return p0
.end method

.method public isAutoFitTextSize()Z
    .registers 1

    .line 1542
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isAutoFitTextSize:Z

    return p0
.end method

.method public isCurved()Z
    .registers 1

    .line 2088
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isCurved:Z

    return p0
.end method

.method public isCurvedBoldForSelectedItem()Z
    .registers 1

    .line 2608
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mIsCurvedBoldForSelectedItem:Z

    return p0
.end method

.method public isCyclic()Z
    .registers 1

    .line 1749
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isCyclic:Z

    return p0
.end method

.method public isDrawSelectedRect()Z
    .registers 1

    .line 2041
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isDrawSelectedRect:Z

    return p0
.end method

.method public isPositionInRange(I)Z
    .registers 2

    if-ltz p1, :cond_c

    .line 1859
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDataList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ge p1, p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public isResetSelectedPosition()Z
    .registers 1

    .line 1524
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isResetSelectedPosition:Z

    return p0
.end method

.method public isShowDivider()Z
    .registers 1

    .line 1868
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isShowDivider:Z

    return p0
.end method

.method public isSoundEffect()Z
    .registers 1

    .line 1337
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isSoundEffect:Z

    return p0
.end method

.method public isYearDays()Z
    .registers 1

    .line 2480
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mYearDays:Z

    return p0
.end method

.method modifyScrollerPosition(ZF)F
    .registers 12

    .line 1002
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    add-float/2addr v0, p2

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->dividedItemHeight()I

    move-result v1

    int-to-float v1, v1

    rem-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->calculateDistanceToEndPoint(F)F

    move-result v0

    add-float/2addr p2, v0

    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gez v1, :cond_21

    .line 1004
    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    add-float/2addr v1, p2

    iget v4, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mMinScrollY:I

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-ltz v1, :cond_21

    move v1, v3

    goto :goto_22

    :cond_21
    move v1, v2

    :goto_22
    cmpl-float v4, p2, v0

    if-lez v4, :cond_31

    .line 1006
    iget v4, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    add-float/2addr v4, p2

    iget v5, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mMaxScrollY:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_31

    move v2, v3

    :cond_31
    if-nez v1, :cond_37

    if-eqz v2, :cond_36

    goto :goto_37

    :cond_36
    return v0

    :cond_37
    :goto_37
    if-eqz p1, :cond_46

    .line 1012
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScroller:Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;

    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    float-to-int v5, p0

    float-to-int v7, p2

    const/16 v8, 0x15e

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->startScroll(IIIII)V

    :cond_46
    return p2
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .line 472
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 473
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSoundHelper:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;

    if-eqz p0, :cond_a

    .line 474
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;->release()V

    :cond_a
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 16

    .line 631
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 632
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mBgColor:I

    if-eqz v0, :cond_a

    .line 633
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 635
    :cond_a
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->dividedItemHeight()I

    move-result v0

    .line 636
    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    int-to-float v7, v0

    div-float/2addr v1, v7

    float-to-int v1, v1

    .line 638
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v10, v2, v3

    div-float/2addr v2, v7

    float-to-int v2, v2

    add-int/lit8 v2, v2, 0x4

    shr-int/lit8 v4, v2, 0x1

    sub-int/2addr v1, v4

    add-int/2addr v2, v1

    int-to-float v11, v2

    mul-float v12, v7, v3

    sub-float v2, v10, v12

    .line 646
    iget v3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    sub-float v13, v2, v3

    .line 648
    iget-boolean v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isCurved:Z

    if-eqz v2, :cond_86

    move v2, v1

    :goto_32
    int-to-float v3, v2

    cmpg-float v3, v3, v11

    const/4 v4, 0x0

    if-gez v3, :cond_6e

    mul-int v3, v2, v0

    int-to-float v3, v3

    add-float/2addr v3, v13

    sub-float v5, v10, v3

    sub-float/2addr v5, v12

    .line 654
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v12

    if-gez v5, :cond_6b

    .line 657
    iget v5, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mPreOffsetY:I

    if-nez v5, :cond_50

    sub-float v5, v3, v12

    float-to-int v5, v5

    .line 658
    iput v5, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mPreOffsetY:I

    .line 660
    :cond_50
    iget v5, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mPreOffsetY:I

    if-eqz v5, :cond_67

    int-to-float v6, v5

    sub-float/2addr v3, v6

    int-to-float v5, v5

    div-float/2addr v3, v5

    .line 662
    iget v5, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mFullDeltaRatio:F

    cmpl-float v4, v5, v4

    if-nez v4, :cond_63

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, v3

    .line 663
    iput v4, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mFullDeltaRatio:F

    :cond_63
    move v5, v1

    move v1, v2

    move v9, v3

    goto :goto_70

    :cond_67
    :goto_67
    move v5, v1

    move v1, v2

    move v9, v4

    goto :goto_70

    :cond_6b
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    :cond_6e
    const/4 v2, -0x1

    goto :goto_67

    :goto_70
    int-to-float v2, v5

    cmpg-float v2, v2, v11

    if-gez v2, :cond_d0

    mul-int v2, v5, v0

    int-to-float v2, v2

    add-float v6, v13, v2

    sub-int v8, v5, v1

    .line 673
    iget-object v4, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSecondPaint:Landroid/graphics/Paint;

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v9}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->drawItem2(Landroid/graphics/Canvas;Landroid/graphics/Paint;IFFIF)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_70

    :cond_86
    move-object v2, p0

    move-object v3, p1

    move v5, v1

    :goto_89
    int-to-float p0, v5

    cmpg-float p0, p0, v11

    if-gez p0, :cond_d0

    mul-int p0, v5, v0

    int-to-float p0, p0

    add-float v6, v13, p0

    sub-float p0, v10, v6

    sub-float/2addr p0, v12

    .line 683
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p1, p0, v12

    if-gez p1, :cond_c6

    div-float/2addr p0, v12

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float p0, p1, p0

    .line 687
    iget v1, v2, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextSizeSelect:I

    iget v4, v2, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextSizeSecond:I

    sub-int/2addr v1, v4

    int-to-float v1, v1

    mul-float/2addr v1, p1

    int-to-float v8, v4

    div-float/2addr v1, v8

    mul-float/2addr v1, p0

    add-float/2addr v1, p1

    .line 688
    iget-object p1, v2, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSelectedPaint:Landroid/graphics/Paint;

    int-to-float v4, v4

    mul-float/2addr v1, v4

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 689
    invoke-virtual {v2, p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->textColorScale(F)I

    move-result p0

    .line 690
    iget-object p1, v2, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 691
    iget-object v4, v2, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSelectedPaint:Landroid/graphics/Paint;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->drawItem2(Landroid/graphics/Canvas;Landroid/graphics/Paint;IFFIF)V

    goto :goto_cd

    .line 694
    :cond_c6
    iget-object v4, v2, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSecondPaint:Landroid/graphics/Paint;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->drawItem2(Landroid/graphics/Canvas;Landroid/graphics/Paint;IFFIF)V

    :goto_cd
    add-int/lit8 v5, v5, 0x1

    goto :goto_89

    :cond_d0
    return-void
.end method

.method protected onItemSelected(Ljava/lang/Object;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    return-void
.end method

.method protected onMeasure(II)V
    .registers 7

    .line 563
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mWheelHeight:I

    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mVisibleItems:I

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 564
    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mWheelWidth:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextBoundaryMargin:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x0

    .line 569
    invoke-static {v1, p1, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    .line 570
    invoke-static {v0, p2, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    .line 569
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 7

    .line 575
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 577
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr p4, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 578
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mCenterX:I

    .line 579
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mCenterY:I

    .line 580
    iget p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mWheelHeight:I

    div-int/lit8 p3, p2, 0x2

    sub-int p3, p1, p3

    int-to-float p3, p3

    iget p4, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDividerOffset:F

    sub-float/2addr p3, p4

    float-to-int p3, p3

    iput p3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSelectedItemTopLimit:I

    .line 581
    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    int-to-float p1, p1

    add-float/2addr p1, p4

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSelectedItemBottomLimit:I

    .line 582
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mClipLeft:I

    .line 583
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mClipTop:I

    .line 584
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mClipRight:I

    .line 585
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mClipBottom:I

    .line 587
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->calculateDrawStart()V

    .line 589
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->calculateLimitY()V

    .line 592
    iget p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSelectedItemPosition:I

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->calculateItemDistance(I)I

    move-result p1

    if-lez p1, :cond_7b

    int-to-float p1, p1

    .line 594
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->doScroll(F)V

    :cond_7b
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 19
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1047
    invoke-direct {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isAnimResetAmpmRunning()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    return v2

    .line 1052
    :cond_a
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1c

    :cond_18
    move-object/from16 v3, p1

    goto/16 :goto_16f

    .line 1055
    :cond_1c
    invoke-direct {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->initVelocityTracker()V

    .line 1056
    iget-object v1, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v3, p1

    invoke-virtual {v1, v3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1058
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v4, 0x1

    if-eqz v1, :cond_139

    if-eq v1, v4, :cond_a0

    const/4 v5, 0x2

    if-eq v1, v5, :cond_37

    const/4 v5, 0x3

    if-eq v1, v5, :cond_a0

    goto/16 :goto_16e

    .line 1076
    :cond_37
    iput-boolean v4, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mIsTouchStatus:Z

    .line 1077
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDownTouchMoveY:F

    .line 1078
    iget v3, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDownTouchY:F

    sub-float/2addr v3, v1

    .line 1079
    iget v1, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    iget v5, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mMinScrollY:I

    int-to-float v5, v5

    cmpl-float v5, v1, v5

    if-ltz v5, :cond_53

    iget v5, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mMaxScrollY:I

    int-to-float v5, v5

    cmpg-float v1, v1, v5

    if-gtz v1, :cond_53

    move v2, v4

    .line 1080
    :cond_53
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v5, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTotalHeight:I

    int-to-float v5, v5

    cmpl-float v1, v1, v5

    if-gez v1, :cond_64

    iget-boolean v1, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isCyclic:Z

    if-nez v1, :cond_66

    if-eqz v2, :cond_66

    .line 1081
    :cond_64
    iput-boolean v4, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mNeedFling:Z

    .line 1083
    :cond_66
    iget v1, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDownTouchScrollOffsetY:F

    add-float/2addr v1, v3

    iput v1, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    .line 1086
    iget-boolean v2, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mIsNeedMaxPull:Z

    if-eqz v2, :cond_91

    iget-boolean v2, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isCyclic:Z

    if-nez v2, :cond_91

    .line 1088
    iget-boolean v2, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mIsAmPmWheel:Z

    if-eqz v2, :cond_7a

    iget v3, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mAmPmMaxUpPull:F

    goto :goto_7c

    :cond_7a
    iget v3, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mNeedMaxUpPull:F

    :goto_7c
    if-eqz v2, :cond_81

    .line 1089
    iget v2, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mAmPmMaxDownPull:F

    goto :goto_83

    :cond_81
    iget v2, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mNeedMaxDownPull:F

    :goto_83
    cmpl-float v1, v1, v3

    if-lez v1, :cond_89

    .line 1092
    iput v3, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    .line 1095
    :cond_89
    iget v1, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_91

    .line 1096
    iput v2, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    .line 1101
    :cond_91
    iget-object v1, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mOnWheelChangedListener:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;

    if-eqz v1, :cond_98

    .line 1102
    invoke-interface {v1, v4}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;->onWheelScrollStateChanged(I)V

    .line 1104
    :cond_98
    invoke-virtual {v0, v4}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->onWheelScrollStateChanged(I)V

    .line 1105
    invoke-direct {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->invalidateIfYChanged()V

    goto/16 :goto_16e

    .line 1111
    :cond_a0
    iput-boolean v2, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mIsTouchStatus:Z

    .line 1112
    iget-object v1, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v5, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mMaxFlingVelocity:I

    int-to-float v5, v5

    const/16 v6, 0x3e8

    invoke-virtual {v1, v6, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1113
    iget-object v1, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    const/4 v5, 0x0

    cmpl-float v6, v1, v5

    if-eqz v6, :cond_102

    .line 1114
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mMinFlingVelocity:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_c6

    iget-boolean v6, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mNeedFling:Z

    if-eqz v6, :cond_102

    .line 1116
    :cond_c6
    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->forceStopScroller()V

    .line 1118
    iget-object v7, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScroller:Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;

    iget v3, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    float-to-int v9, v3

    neg-float v1, v1

    float-to-int v11, v1

    iget v14, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mMinScrollY:I

    iget v15, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mMaxScrollY:I

    iget v1, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mWheelHeight:I

    mul-int/lit8 v16, v1, 0xa

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v7 .. v16}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->fling(IIIIIIIII)V

    .line 1121
    iget-object v1, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScroller:Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->getFinalY()I

    move-result v1

    int-to-float v1, v1

    .line 1122
    iget v3, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    .line 1123
    iput v1, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    .line 1124
    invoke-virtual {v0, v2, v5}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->modifyScrollerPosition(ZF)F

    move-result v1

    .line 1125
    iput v3, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    .line 1126
    iget-object v2, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScroller:Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;

    invoke-virtual {v2, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->setFixedFlingValue(F)V

    .line 1127
    iget-object v1, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScroller:Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;

    iget v2, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    invoke-virtual {v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->getFinalY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->startSpring(FF)V

    goto :goto_132

    .line 1129
    :cond_102
    iget-object v1, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScroller:Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;

    iget-object v1, v1, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v1, :cond_115

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_115

    .line 1130
    iget-object v1, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScroller:Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;

    iget-object v1, v1, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 1134
    :cond_115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDownStartTime:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x78

    cmp-long v1, v5, v7

    if-gtz v1, :cond_12b

    .line 1137
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mCenterY:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v2, v1

    :cond_12b
    int-to-float v1, v2

    .line 1139
    invoke-virtual {v0, v4, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->modifyScrollerPosition(ZF)F

    .line 1140
    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->runScroller()V

    .line 1143
    :goto_132
    invoke-direct {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->invalidateIfYChanged()V

    .line 1144
    invoke-direct {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->recycleVelocityTracker()V

    goto :goto_16e

    .line 1062
    :cond_139
    iput-boolean v4, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mIsTouchStatus:Z

    .line 1063
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_148

    .line 1064
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1066
    :cond_148
    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->forceStopScroller()V

    .line 1067
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDownTouchY:F

    .line 1068
    iget v1, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    iput v1, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDownTouchScrollOffsetY:F

    .line 1070
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDownStartTime:J

    .line 1071
    iget-object v1, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSecondPaint:Landroid/graphics/Paint;

    invoke-static {v1}, Lcom/transsion/widgetslib/util/Utils;->measureTextHeight(Landroid/graphics/Paint;)F

    move-result v1

    iget-object v3, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTotalHeight:I

    .line 1072
    iput-boolean v2, v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mNeedFling:Z

    :goto_16e
    return v4

    .line 1053
    :goto_16f
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 3

    .line 480
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_28

    .line 483
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/widgetslib/util/Utils;->isBoldTextAdjustment(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 484
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSecondPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 485
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void

    .line 487
    :cond_1c
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSecondPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 488
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_28
    return-void
.end method

.method protected onWheelItemChanged(II)V
    .registers 3

    return-void
.end method

.method protected onWheelScroll(F)V
    .registers 2

    return-void
.end method

.method protected onWheelScrollStateChanged(I)V
    .registers 2

    return-void
.end method

.method protected onWheelSelected(I)V
    .registers 2

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2

    .line 2559
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    if-nez p1, :cond_f

    .line 2561
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->abortFinishScroll()V

    .line 2562
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->getSelectedItemPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSelectedItemPosition(I)V

    :cond_f
    return-void
.end method

.method public playSoundEffect()V
    .registers 2

    .line 1250
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSoundHelper:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isSoundEffect:Z

    if-eqz v0, :cond_10

    .line 1251
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setCurrentVolume()V

    .line 1252
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSoundHelper:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;->playSoundEffect()V

    :cond_10
    return-void
.end method

.method protected runScroller()V
    .registers 2

    .line 973
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScroller:Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 976
    :cond_9
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollerRun:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method public safeResetScrollOffsetY()V
    .registers 5

    .line 1504
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1505
    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDownTouchScrollOffsetY:F

    iget v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDownTouchY:F

    iget v3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDownTouchMoveY:F

    sub-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDownTouchScrollOffsetY:F

    .line 1506
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->dividedItemHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDownTouchScrollOffsetY:F

    .line 1507
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->dividedItemHeight()I

    move-result v2

    mul-int/2addr v2, v0

    int-to-float v2, v2

    rem-float/2addr v1, v2

    iput v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDownTouchScrollOffsetY:F

    .line 1508
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->dividedItemHeight()I

    move-result v2

    mul-int/2addr v2, v0

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDownTouchScrollOffsetY:F

    .line 1509
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->dividedItemHeight()I

    move-result v2

    mul-int/2addr v2, v0

    int-to-float v0, v2

    rem-float/2addr v1, v0

    iput v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDownTouchScrollOffsetY:F

    .line 1510
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->dividedItemHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr v1, v0

    iput v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDownTouchScrollOffsetY:F

    .line 1511
    iput v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    .line 1512
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDownTouchMoveY:F

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDownTouchY:F

    .line 1513
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mCurrentScrollPosition:I

    .line 1514
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSelectedItemPosition:I

    .line 1515
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->observeItemChanged()V

    return-void
.end method

.method public safeResetScrollOffsetY(I)V
    .registers 5

    .line 1487
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDownTouchScrollOffsetY:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDownTouchY:F

    iget v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDownTouchMoveY:F

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDownTouchScrollOffsetY:F

    .line 1488
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->dividedItemHeight()I

    move-result v1

    int-to-float v1, v1

    rem-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDownTouchScrollOffsetY:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1d

    .line 1489
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->dividedItemHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    :cond_1d
    add-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDownTouchScrollOffsetY:F

    .line 1490
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->dividedItemHeight()I

    move-result v1

    mul-int/2addr v1, p1

    int-to-float p1, v1

    add-float/2addr v0, p1

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDownTouchScrollOffsetY:F

    .line 1491
    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    .line 1492
    iget p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDownTouchMoveY:F

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDownTouchY:F

    .line 1493
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->getCurrentPosition()I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mCurrentScrollPosition:I

    .line 1494
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->getCurrentPosition()I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSelectedItemPosition:I

    .line 1495
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->observeItemChanged()V

    return-void
.end method

.method public safeResetScrollOffsetY(Z)V
    .registers 2

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    goto :goto_5

    :cond_4
    const/4 p1, -0x1

    .line 1477
    :goto_5
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->safeResetScrollOffsetY(I)V

    return-void
.end method

.method public set24HoursFormat(Z)V
    .registers 2

    .line 2506
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mIs24Format:Z

    return-void
.end method

.method public setAmPmWheel(Z)V
    .registers 2

    .line 2497
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mIsAmPmWheel:Z

    .line 2498
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setNeedMaxPullLimit(Z)V

    return-void
.end method

.method public setAutoFitTextSize(Z)V
    .registers 2

    .line 1551
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isAutoFitTextSize:Z

    .line 1552
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setBlackMode()V
    .registers 3

    .line 2632
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$color;->os_altitude_secondary_black_color:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mBgColor:I

    .line 2633
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$color;->os_text_primary_ims_color:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextSelectColor:I

    return-void
.end method

.method public setCurved(Z)V
    .registers 3

    .line 2097
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isCurved:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 2100
    :cond_5
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isCurved:Z

    .line 2101
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->calculateTextSize()V

    .line 2102
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 2103
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCurvedArcDirection(I)V
    .registers 3

    .line 2127
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mCurvedArcDirection:I

    if-ne v0, p1, :cond_5

    return-void

    .line 2130
    :cond_5
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mCurvedArcDirection:I

    .line 2131
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCurvedArcDirectionFactor(F)V
    .registers 4

    .line 2150
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mCurvedArcDirectionFactor:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_e

    :goto_c
    move p1, v0

    goto :goto_15

    :cond_e
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_15

    goto :goto_c

    .line 2158
    :cond_15
    :goto_15
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mCurvedArcDirectionFactor:F

    .line 2159
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCurvedBoldForSelectedItem(Z)V
    .registers 2

    .line 2612
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mIsCurvedBoldForSelectedItem:Z

    return-void
.end method

.method public setCurvedBoldForSelectedItemTypeface(Landroid/graphics/Typeface;)V
    .registers 2

    .line 2620
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mCurvedBoldForSelectedItemTypeface:Landroid/graphics/Typeface;

    return-void
.end method

.method public setCurvedNormalItemTypeface(Landroid/graphics/Typeface;)V
    .registers 2

    .line 2628
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mCurvedNormalItemTypeface:Landroid/graphics/Typeface;

    return-void
.end method

.method public setCurvedRefractRatio(F)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2197
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setRefractRatio(F)V

    return-void
.end method

.method public setCustomContentDescription(Ljava/lang/String;)V
    .registers 2

    .line 2604
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mCustomContentDescription:Ljava/lang/String;

    return-void
.end method

.method public setCyclic(Z)V
    .registers 3

    .line 1758
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isCyclic:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 1761
    :cond_5
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isCyclic:Z

    .line 1763
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->forceFinishScroll()V

    .line 1764
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->calculateLimitY()V

    .line 1766
    iget p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSelectedItemPosition:I

    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mWheelHeight:I

    mul-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    .line 1767
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 1431
    :cond_3
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mIsTouchStatus:Z

    if-nez v0, :cond_44

    .line 1432
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDataList:Ljava/util/List;

    .line 1433
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isResetSelectedPosition:Z

    if-nez v0, :cond_2a

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2a

    .line 1435
    iget p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSelectedItemPosition:I

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_2f

    .line 1436
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDataList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSelectedItemPosition:I

    .line 1438
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mCurrentScrollPosition:I

    goto :goto_2f

    :cond_2a
    const/4 p1, 0x0

    .line 1442
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSelectedItemPosition:I

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mCurrentScrollPosition:I

    .line 1446
    :cond_2f
    :goto_2f
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->calculateTextSize()V

    .line 1447
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->calculateLimitY()V

    .line 1449
    iget p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSelectedItemPosition:I

    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mWheelHeight:I

    mul-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    .line 1450
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 1451
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    .line 1455
    :cond_44
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->safeResetScrollOffsetY()V

    .line 1457
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mWheelHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->dividedItemHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 1458
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_68

    const/4 v0, -0x1

    .line 1459
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->safeResetScrollOffsetY(I)V

    .line 1462
    :cond_68
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDataList:Ljava/util/List;

    .line 1463
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->calculateTextSize()V

    .line 1464
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->calculateLimitY()V

    .line 1466
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 1467
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDividerCap(Landroid/graphics/Paint$Cap;)V
    .registers 3

    .line 2028
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDividerCap:Landroid/graphics/Paint$Cap;

    if-ne v0, p1, :cond_5

    return-void

    .line 2031
    :cond_5
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDividerCap:Landroid/graphics/Paint$Cap;

    .line 2032
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDividerColor(I)V
    .registers 3

    .line 1908
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDividerColor:I

    if-ne v0, p1, :cond_5

    return-void

    .line 1911
    :cond_5
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDividerColor:I

    .line 1912
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDividerColorRes(I)V
    .registers 3

    .line 1899
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setDividerColor(I)V

    return-void
.end method

.method public setDividerHeight(F)V
    .registers 3

    const/4 v0, 0x0

    .line 1930
    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setDividerHeight(FZ)V

    return-void
.end method

.method public setDividerHeight(FZ)V
    .registers 4

    .line 1940
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDividerSize:F

    if-eqz p2, :cond_8

    .line 1941
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->dp2px(F)F

    move-result p1

    :cond_8
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDividerSize:F

    cmpl-float p1, v0, p1

    if-nez p1, :cond_f

    return-void

    .line 1945
    :cond_f
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDividerPaddingForWrap(F)V
    .registers 3

    const/4 v0, 0x0

    .line 1989
    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setDividerPaddingForWrap(FZ)V

    return-void
.end method

.method public setDividerPaddingForWrap(FZ)V
    .registers 4

    .line 1999
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDividerPaddingForWrap:F

    if-eqz p2, :cond_8

    .line 2000
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->dp2px(F)F

    move-result p1

    :cond_8
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDividerPaddingForWrap:F

    cmpl-float p1, v0, p1

    if-nez p1, :cond_f

    return-void

    .line 2004
    :cond_f
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDividerType(I)V
    .registers 3

    .line 1967
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDividerType:I

    if-ne v0, p1, :cond_5

    return-void

    .line 1970
    :cond_5
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDividerType:I

    .line 1971
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDrawSelectedRect(Z)V
    .registers 2

    .line 2050
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isDrawSelectedRect:Z

    .line 2051
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setHourWheel(Z)V
    .registers 2

    .line 2489
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mHourWheel:Z

    return-void
.end method

.method public setLineSpacing(F)V
    .registers 3

    const/4 v0, 0x0

    .line 1688
    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setLineSpacing(FZ)V

    return-void
.end method

.method public setLineSpacing(FZ)V
    .registers 4

    .line 1698
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mLineSpacing:F

    if-eqz p2, :cond_8

    .line 1699
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->dp2px(F)F

    move-result p1

    :cond_8
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mLineSpacing:F

    cmpl-float p1, v0, p1

    if-nez p1, :cond_f

    return-void

    :cond_f
    const/4 p1, 0x0

    .line 1703
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    .line 1704
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->calculateTextSize()V

    .line 1705
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 1706
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setMinuteWheel(Z)V
    .registers 2

    .line 2493
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mMinuteWheel:Z

    return-void
.end method

.method public setMonthList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2510
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mMonthList:Ljava/util/List;

    return-void
.end method

.method public setNeedMaxPullLimit(Z)V
    .registers 2

    .line 2502
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mIsNeedMaxPull:Z

    return-void
.end method

.method public setOnItemSelectedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnItemSelectedListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnItemSelectedListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 2215
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mOnItemSelectedListener:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnItemSelectedListener;

    return-void
.end method

.method public setOnWheelChangedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;)V
    .registers 2

    .line 2233
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mOnWheelChangedListener:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;

    return-void
.end method

.method public setPlayVolume(F)V
    .registers 2

    .line 1380
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSoundHelper:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;

    if-eqz p0, :cond_7

    .line 1381
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;->setPlayVolume(F)V

    :cond_7
    return-void
.end method

.method public setRefractRatio(F)V
    .registers 5

    .line 2177
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mRefractRatio:F

    .line 2178
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mRefractRatio:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v1

    if-lez v2, :cond_d

    .line 2180
    iput v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mRefractRatio:F

    goto :goto_14

    :cond_d
    const/4 v2, 0x0

    cmpg-float p1, p1, v2

    if-gez p1, :cond_14

    .line 2182
    iput v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mRefractRatio:F

    .line 2184
    :cond_14
    :goto_14
    iget p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mRefractRatio:F

    cmpl-float p1, v0, p1

    if-nez p1, :cond_1b

    return-void

    .line 2187
    :cond_1b
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setResetSelectedPosition(Z)V
    .registers 2

    .line 1533
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isResetSelectedPosition:Z

    return-void
.end method

.method public setSelectedItemPosition(I)V
    .registers 3

    const/4 v0, 0x0

    .line 1785
    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSelectedItemPosition(IZ)V

    return-void
.end method

.method public setSelectedItemPosition(IZ)V
    .registers 4

    const/4 v0, 0x0

    .line 1795
    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSelectedItemPosition(IZI)V

    return-void
.end method

.method public setSelectedItemPosition(IZI)V
    .registers 11

    .line 1810
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isPositionInRange(I)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_d

    .line 1815
    :cond_7
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->calculateItemDistance(I)I

    move-result v5

    if-nez v5, :cond_e

    :goto_d
    return-void

    .line 1820
    :cond_e
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mIsTouchStatus:Z

    if-nez v0, :cond_15

    .line 1821
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->abortFinishScroll()V

    :cond_15
    if-eqz p2, :cond_2c

    .line 1826
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScroller:Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;

    iget p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    float-to-int v3, p1

    if-lez p3, :cond_20

    :goto_1e
    move v6, p3

    goto :goto_23

    :cond_20
    const/16 p3, 0xfa

    goto :goto_1e

    :goto_23
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->startScroll(IIIII)V

    .line 1828
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->invalidateIfYChanged()V

    return-void

    :cond_2c
    int-to-float p2, v5

    .line 1832
    invoke-direct {p0, p2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->doScroll(F)V

    .line 1833
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSelectedItemPosition:I

    .line 1835
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mOnItemSelectedListener:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnItemSelectedListener;

    if-eqz p2, :cond_41

    .line 1836
    iget-object p3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDataList:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget p3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSelectedItemPosition:I

    invoke-interface {p2, p0, p1, p3}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnItemSelectedListener;->onItemSelected(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;Ljava/lang/Object;I)V

    .line 1838
    :cond_41
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDataList:Ljava/util/List;

    iget p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSelectedItemPosition:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSelectedItemPosition:I

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->onItemSelected(Ljava/lang/Object;I)V

    .line 1839
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mOnWheelChangedListener:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;

    if-eqz p1, :cond_57

    .line 1840
    iget p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSelectedItemPosition:I

    invoke-interface {p1, p2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;->onWheelSelected(I)V

    .line 1842
    :cond_57
    iget p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSelectedItemPosition:I

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->onWheelSelected(I)V

    .line 1843
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->invalidateIfYChanged()V

    return-void
.end method

.method public setSelectedRectColor(I)V
    .registers 2

    .line 2078
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSelectedRectColor:I

    .line 2079
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSelectedRectColorRes(I)V
    .registers 3

    .line 2069
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSelectedRectColor(I)V

    return-void
.end method

.method public setShowDivider(Z)V
    .registers 3

    .line 1877
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isShowDivider:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 1880
    :cond_5
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isShowDivider:Z

    .line 1881
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSoundEffect(Z)V
    .registers 3

    if-eqz p1, :cond_17

    .line 1346
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isSoundEffect:Z

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSoundHelper:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;

    if-nez v0, :cond_17

    .line 1347
    invoke-static {}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;->obtain()Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSoundHelper:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;

    .line 1348
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->initDefaultVolume(Landroid/content/Context;)V

    .line 1350
    :cond_17
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isSoundEffect:Z

    return-void
.end method

.method public setSoundEffectResource(I)V
    .registers 3

    .line 1360
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSoundHelper:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;

    if-eqz v0, :cond_b

    .line 1361
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;->load(Landroid/content/Context;I)V

    :cond_b
    return-void
.end method

.method public setTextAlign(I)V
    .registers 3

    .line 1630
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextAlign:I

    if-ne v0, p1, :cond_5

    return-void

    .line 1633
    :cond_5
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextAlign:I

    .line 1634
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->updateTextAlign()V

    .line 1635
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->calculateDrawStart()V

    .line 1636
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTextBoundaryMargin(F)V
    .registers 3

    const/4 v0, 0x0

    .line 1654
    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setTextBoundaryMargin(FZ)V

    return-void
.end method

.method public setTextBoundaryMargin(FZ)V
    .registers 4

    .line 1664
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextBoundaryMargin:F

    if-eqz p2, :cond_8

    .line 1665
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->dp2px(F)F

    move-result p1

    :cond_8
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextBoundaryMargin:F

    cmpl-float p1, v0, p1

    if-nez p1, :cond_f

    return-void

    .line 1669
    :cond_f
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 1670
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTextSecondColor(I)V
    .registers 3

    .line 414
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextSecondColor:I

    .line 415
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSecondPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 416
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTextSelectColor(I)V
    .registers 2

    .line 405
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextSelectColor:I

    .line 406
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTextSizeSecond(I)V
    .registers 4

    .line 373
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextSizeSecond:I

    .line 374
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isCurved:Z

    if-eqz v0, :cond_10

    .line 375
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSecondPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3fb00000    # 1.375f

    int-to-float p1, p1

    mul-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_16

    .line 377
    :cond_10
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSecondPaint:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 379
    :goto_16
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTextSizeSelect(I)V
    .registers 3

    .line 385
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextSizeSelect:I

    .line 386
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSelectedPaint:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 387
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .registers 3

    const/4 v0, 0x0

    .line 1570
    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setTypeface(Landroid/graphics/Typeface;Z)V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;Z)V
    .registers 4

    if-eqz p1, :cond_4f

    .line 1580
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-ne v0, p1, :cond_b

    goto :goto_4f

    .line 1584
    :cond_b
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->forceFinishScroll()V

    .line 1585
    iput-boolean p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mIsBoldForSelectedItem:Z

    if-eqz p2, :cond_33

    .line 1588
    invoke-virtual {p1}, Landroid/graphics/Typeface;->isBold()Z

    move-result p2

    if-eqz p2, :cond_22

    const/4 p2, 0x0

    .line 1589
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mNormalTypeface:Landroid/graphics/Typeface;

    .line 1590
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mBoldTypeface:Landroid/graphics/Typeface;

    goto :goto_2b

    .line 1592
    :cond_22
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mNormalTypeface:Landroid/graphics/Typeface;

    const/4 p2, 0x1

    .line 1593
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mBoldTypeface:Landroid/graphics/Typeface;

    .line 1596
    :goto_2b
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mBoldTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_38

    .line 1598
    :cond_33
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1600
    :goto_38
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->calculateTextSize()V

    .line 1601
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->calculateDrawStart()V

    .line 1603
    iget p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSelectedItemPosition:I

    iget p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mWheelHeight:I

    mul-int/2addr p1, p2

    int-to-float p1, p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    .line 1604
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->calculateLimitY()V

    .line 1605
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 1606
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_4f
    :goto_4f
    return-void
.end method

.method public setVisibleItems(I)V
    .registers 3

    .line 1724
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mVisibleItems:I

    if-ne v0, p1, :cond_5

    return-void

    .line 1727
    :cond_5
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->adjustVisibleItems(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mVisibleItems:I

    const/4 p1, 0x0

    .line 1728
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    .line 1729
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 1730
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setWheelBackgroundColor(I)V
    .registers 2

    .line 2539
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mBgColor:I

    return-void
.end method

.method public setWheelHeight(I)V
    .registers 2

    .line 550
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mWheelHeight:I

    .line 551
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setYearDays(Ljava/util/Calendar;Z)V
    .registers 3

    .line 2484
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mCalendar:Ljava/util/Calendar;

    .line 2485
    iput-boolean p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mYearDays:Z

    return-void
.end method

.method textColorScale(F)I
    .registers 10

    .line 699
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextSecondColor:I

    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextSelectColor:I

    if-ne v0, p0, :cond_7

    return p0

    :cond_7
    const/high16 v1, -0x1000000

    and-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x18

    const/high16 v3, 0xff0000

    and-int v4, v0, v3

    ushr-int/lit8 v4, v4, 0x10

    const v5, 0xff00

    and-int v6, v0, v5

    ushr-int/lit8 v6, v6, 0x8

    and-int/lit16 v0, v0, 0xff

    and-int/2addr v1, p0

    ushr-int/lit8 v1, v1, 0x18

    and-int/2addr v3, p0

    ushr-int/lit8 v3, v3, 0x10

    and-int/2addr v5, p0

    ushr-int/lit8 v5, v5, 0x8

    and-int/lit16 p0, p0, 0xff

    int-to-float v7, v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    add-float/2addr v7, v1

    float-to-int v1, v7

    int-to-float v2, v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v3, v6

    sub-int/2addr v5, v6

    int-to-float v4, v5

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v4, v0

    sub-int/2addr p0, v0

    int-to-float p0, p0

    mul-float/2addr p0, p1

    add-float/2addr v4, p0

    float-to-int p0, v4

    shl-int/lit8 p1, v1, 0x18

    shl-int/lit8 v0, v2, 0x10

    or-int/2addr p1, v0

    shl-int/lit8 v0, v3, 0x8

    or-int/2addr p1, v0

    or-int/2addr p0, p1

    return p0
.end method

.method protected updateScroller()V
    .registers 5

    .line 980
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScroller:Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->computeScrollOffset()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 984
    :cond_9
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    .line 985
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScroller:Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->isFinished()Z

    move-result v1

    .line 987
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScroller:Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;

    invoke-virtual {v2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->getCurrY()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScroller:Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;

    invoke-virtual {v3}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->getFixedFlingValue()F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    .line 992
    iget-boolean v3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isCyclic:Z

    if-nez v3, :cond_2b

    if-eqz v1, :cond_2b

    .line 993
    invoke-direct {p0, v0, v2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->animResetAmpmLocation(FF)V

    return-void

    .line 995
    :cond_2b
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->invalidateIfYChanged()V

    return-void
.end method
