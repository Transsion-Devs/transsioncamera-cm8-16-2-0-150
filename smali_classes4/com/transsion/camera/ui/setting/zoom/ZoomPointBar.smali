.class public Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$DummyType;,
        Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$IType;,
        Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$AccessHelper;,
        Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;,
        Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$FocalLengthInfo;,
        Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$Listener;,
        Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;,
        Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$PointType;,
        Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$AbstractType;
    }
.end annotation


# static fields
.field private static final ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final DIFFERENT_TYPE_SWITCH_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final SAME_TYPE_SWITCH_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final TYPE_SWITCH_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final TYPE_SWITCH_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private mAccessHelper:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$AccessHelper;

.field private mBackgroundColor:I

.field private mBackgroundPadding:F

.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mBarRadius:F

.field private mCenterX:F

.field private mCenterY:F

.field private mCircleColorAlpha:I

.field private mCirclePaint:Landroid/graphics/Paint;

.field private mCurrentType:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$IType;

.field private mFocalLengthBase:F

.field private mFocalLengthPaint:Landroid/graphics/Paint;

.field private mFocalLengthSuffixPaint:Landroid/graphics/Paint;

.field private mFocalLengthSuffixTopMargin:F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private mIsInverted:Z

.field private mIsScrolling:Z

.field private mIsTypeSwitching:Z

.field private mIsZoomRangeLimited:Z

.field private mItemCircleAlpha:I

.field private mItemCircleScaleDownAnimator:Landroid/animation/ValueAnimator;

.field private mItemCircleScaleFactor:F

.field private mItemCircleScaleUpAnimator:Landroid/animation/ValueAnimator;

.field private mItemClickFeedbackAnimatorSet:Landroid/animation/AnimatorSet;

.field private mItemSwitchAnimator:Landroid/animation/ValueAnimator;

.field private mLimitedZoomRange:Landroid/util/Range;

.field private mOrientation:I

.field private mPointPadding:F

.field private mPreType:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$IType;

.field private mRatioTextPaint:Landroid/graphics/Paint;

.field private mRatioTextSize:F

.field private mRotateAnimator:Lcom/transsion/camera/ui/setting/zoom/RotateAnimator;

.field private mSelectCirclePaint:Landroid/graphics/Paint;

.field private mSelectedAlpha:I

.field private mSelectedColor:I

.field private mSelectedIndex:I

.field private mSelectedRatioTextPaint:Landroid/graphics/Paint;

.field private mTextBounds:Landroid/graphics/Rect;

.field private mTypeSwitchFraction:F

.field private mTypeSwitchInScaleFactor:F

.field private mTypeSwitchItemInAlpha:I

.field private mTypeSwitchItemOutAlpha:I

.field private mTypeSwitchingItems:Ljava/util/Set;

.field private mZoomItemRadius:F

.field private mZoomItemWidth:F

.field private mZoomItems:Ljava/util/List;

.field private mZoomListener:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$Listener;

.field private mZoomPointRadius:F


# direct methods
.method public static synthetic $r8$lambda$4KeYRJo4G94RTc8nGH3u_TENWVQ(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->lambda$initAnimator$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$77HP8g-SKutfHPtZKRtFg__m5R4(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->lambda$initAnimator$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GRgYNAHYJFDX35rFqvaob3EpC9s(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->lambda$performTypeSwitchAnimation$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RrlLvm7YG_WKu6q61lFJII2YLtk(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->lambda$performTypeSwitchAnimation$5(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$W9nPBPJsG8tMAWHGDELhM-iSoI4(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->lambda$setZoomConfig$2(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$t470enw8500NwlMFGTBvkgyVwTo(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->lambda$show$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$xmSg8ivP2iQFJVXypQQbviijwYQ(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;ZLandroid/animation/ValueAnimator;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->lambda$performTypeSwitchAnimation$4(ZLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAccessHelper(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$AccessHelper;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mAccessHelper:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$AccessHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBackgroundPadding(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mBackgroundPadding:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBackgroundPaint(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)Landroid/graphics/Paint;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mBackgroundPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBarRadius(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mBarRadius:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCenterX(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mCenterX:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCenterY(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mCenterY:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCircleColorAlpha(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mCircleColorAlpha:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCirclePaint(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)Landroid/graphics/Paint;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mCirclePaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentType(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$IType;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mCurrentType:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$IType;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFocalLengthPaint(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)Landroid/graphics/Paint;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mFocalLengthPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFocalLengthSuffixPaint(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)Landroid/graphics/Paint;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mFocalLengthSuffixPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFocalLengthSuffixTopMargin(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mFocalLengthSuffixTopMargin:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsScrolling(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mIsScrolling:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsTypeSwitching(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mIsTypeSwitching:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmItemCircleAlpha(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mItemCircleAlpha:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmItemCircleScaleFactor(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mItemCircleScaleFactor:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPointPadding(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mPointPadding:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreType(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$IType;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mPreType:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$IType;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRatioTextPaint(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)Landroid/graphics/Paint;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mRatioTextPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRotateAnimator(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)Lcom/transsion/camera/ui/setting/zoom/RotateAnimator;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mRotateAnimator:Lcom/transsion/camera/ui/setting/zoom/RotateAnimator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSelectCirclePaint(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)Landroid/graphics/Paint;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mSelectCirclePaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSelectedAlpha(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mSelectedAlpha:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSelectedIndex(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mSelectedIndex:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSelectedRatioTextPaint(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)Landroid/graphics/Paint;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mSelectedRatioTextPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTextBounds(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)Landroid/graphics/Rect;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mTextBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTypeSwitchFraction(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mTypeSwitchFraction:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTypeSwitchInScaleFactor(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mTypeSwitchInScaleFactor:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTypeSwitchItemInAlpha(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mTypeSwitchItemInAlpha:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTypeSwitchItemOutAlpha(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mTypeSwitchItemOutAlpha:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTypeSwitchingItems(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)Ljava/util/Set;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mTypeSwitchingItems:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmZoomItemRadius(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mZoomItemRadius:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmZoomItemWidth(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mZoomItemWidth:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmZoomItems(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mZoomItems:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmZoomListener(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$Listener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mZoomListener:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$Listener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmZoomPointRadius(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mZoomPointRadius:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmIsScrolling(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mIsScrolling:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsTypeSwitching(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mIsTypeSwitching:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmItemCircleAlpha(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mItemCircleAlpha:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmItemCircleScaleFactor(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;F)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mItemCircleScaleFactor:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPreType(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$IType;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mPreType:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$IType;

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetZoomItemText(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->getZoomItemText(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleItemSelected(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->handleItemSelected(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSingleTapUp(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;Landroid/view/MotionEvent;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->handleSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mnotifyZoomRatio(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->notifyZoomRatio(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mplayItemClickFeedbackAnimation(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->playItemClickFeedbackAnimation()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 6

    .line 49
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ZoomPointBar"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 72
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f28f5c3    # 0.66f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 75
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v3, 0x3dcccccd    # 0.1f

    const v5, 0x3e4ccccd    # 0.2f

    invoke-direct {v1, v5, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v1, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->TYPE_SWITCH_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 77
    sput-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->SAME_TYPE_SWITCH_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 78
    sput-object v1, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->DIFFERENT_TYPE_SWITCH_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 79
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v1, v2, v5, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->TYPE_SWITCH_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 141
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p2, 0xff

    .line 86
    iput p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mItemCircleAlpha:I

    const/4 v0, 0x0

    .line 87
    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mTypeSwitchItemInAlpha:I

    .line 88
    iput p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mTypeSwitchItemOutAlpha:I

    const/high16 p2, 0x3f800000    # 1.0f

    .line 102
    iput p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mItemCircleScaleFactor:F

    .line 129
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mZoomItems:Ljava/util/List;

    .line 130
    new-instance p2, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$DummyType;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$DummyType;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar-IA;)V

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mCurrentType:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$IType;

    .line 133
    new-instance p2, Landroid/util/Range;

    sget v0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_1X:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p2, v1, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mLimitedZoomRange:Landroid/util/Range;

    .line 592
    new-instance p2, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$5;

    invoke-direct {p2, p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$5;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)V

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 142
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mTextBounds:Landroid/graphics/Rect;

    .line 143
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->initResources()V

    .line 144
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->initAnimator()V

    .line 145
    new-instance p2, Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {p2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mGestureDetector:Landroid/view/GestureDetector;

    .line 146
    new-instance p1, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$AccessHelper;

    invoke-direct {p1, p0, p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$AccessHelper;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;Landroid/view/View;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mAccessHelper:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$AccessHelper;

    .line 147
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method private getZoomItemText(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;)Ljava/lang/String;
    .registers 4

    .line 550
    iget p0, p1, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mCurrentRatio:I

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUtils;->getZoomRatioText(I)Ljava/lang/String;

    move-result-object p0

    .line 551
    iget-boolean v0, p1, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mIsSelected:Z

    if-nez v0, :cond_1b

    const-string v0, "0.6"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    .line 552
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 554
    :cond_1b
    iget-boolean p1, p1, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mIsSelected:Z

    if-eqz p1, :cond_30

    .line 555
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "x"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_30
    return-object p0
.end method

.method private getZoomPointNum()I
    .registers 1

    .line 286
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mZoomItems:Ljava/util/List;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method private handleItemSelected(I)V
    .registers 5

    .line 636
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleItemSelected, selectedIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 637
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mZoomItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;

    .line 638
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mIsZoomRangeLimited:Z

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mLimitedZoomRange:Landroid/util/Range;

    iget v0, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mDefaultRatio:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 639
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mCurrentType:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$IType;

    invoke-interface {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$IType;->onLongPressed()Z

    return-void

    .line 642
    :cond_36
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mSelectedIndex:I

    if-ne p1, v0, :cond_40

    .line 643
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mCurrentType:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$IType;

    invoke-interface {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$IType;->onCurrentItemSelected()V

    return-void

    .line 646
    :cond_40
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->onItemSelected(I)V

    return-void
.end method

.method private handleSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 9

    .line 616
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->getZoomPointNum()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mItemClickFeedbackAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_5f

    :cond_10
    const/4 v0, -0x1

    move v3, v0

    move v2, v1

    .line 620
    :goto_13
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mZoomItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_37

    .line 621
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mZoomItems:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;

    iget-object v4, v4, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_34

    move v3, v2

    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 625
    :cond_37
    sget-object p1, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSingleTapUp, selectedIndex: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mSelectedIndex: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mSelectedIndex:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-ne v3, v0, :cond_5a

    return v1

    .line 631
    :cond_5a
    invoke-direct {p0, v3}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->handleItemSelected(I)V

    const/4 p0, 0x1

    return p0

    :cond_5f
    :goto_5f
    return v1
.end method

.method private initAnimator()V
    .registers 8

    .line 211
    new-instance v0, Lcom/transsion/camera/ui/setting/zoom/RotateAnimator;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/zoom/RotateAnimator;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mRotateAnimator:Lcom/transsion/camera/ui/setting/zoom/RotateAnimator;

    const/4 v0, 0x2

    .line 212
    new-array v1, v0, [F

    fill-array-data v1, :array_8e

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mItemSwitchAnimator:Landroid/animation/ValueAnimator;

    .line 213
    sget-object v2, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 214
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mItemSwitchAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 215
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mItemSwitchAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 223
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mItemSwitchAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$1;

    invoke-direct {v3, p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$1;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)V

    invoke-virtual {v1, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 242
    new-instance v1, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$$ExternalSyntheticLambda6;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)V

    .line 246
    new-instance v3, Landroid/animation/ValueAnimator;

    invoke-direct {v3}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mItemCircleScaleDownAnimator:Landroid/animation/ValueAnimator;

    .line 247
    new-array v4, v0, [F

    fill-array-data v4, :array_96

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 248
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mItemCircleScaleDownAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 249
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mItemCircleScaleDownAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 250
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mItemCircleScaleDownAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 252
    new-instance v3, Landroid/animation/ValueAnimator;

    invoke-direct {v3}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mItemCircleScaleUpAnimator:Landroid/animation/ValueAnimator;

    .line 253
    new-array v6, v0, [F

    fill-array-data v6, :array_9e

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 254
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mItemCircleScaleUpAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 255
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mItemCircleScaleUpAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 256
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mItemCircleScaleUpAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 258
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mItemClickFeedbackAnimatorSet:Landroid/animation/AnimatorSet;

    .line 259
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mItemCircleScaleDownAnimator:Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mItemCircleScaleUpAnimator:Landroid/animation/ValueAnimator;

    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x1

    aput-object p0, v0, v2

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    return-void

    nop

    :array_8e
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_96
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
    .end array-data

    :array_9e
    .array-data 4
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initResources()V
    .registers 7

    .line 151
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->zoom_item_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mZoomItemWidth:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 152
    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mZoomItemRadius:F

    .line 153
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->zoom_point_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mZoomPointRadius:F

    .line 154
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->zoom_point_bar_background_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mBackgroundPadding:F

    .line 155
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->zoom_point_bar_point_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mPointPadding:F

    .line 156
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mZoomItemRadius:F

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mBackgroundPadding:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mBarRadius:F

    .line 157
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->zoom_point_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mRatioTextSize:F

    .line 158
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->zoom_point_focal_length_suffix_top_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mFocalLengthSuffixTopMargin:F

    .line 160
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mBackgroundPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 161
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 162
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/R$color;->zoom_point_bar_bg_color:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mBackgroundColor:I

    .line 163
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 165
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/R$color;->zoom_point_bar_circle_color:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 166
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mCircleColorAlpha:I

    .line 167
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mCirclePaint:Landroid/graphics/Paint;

    .line 168
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 169
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 171
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/R$color;->zoom_point_bar_selected_circle_color:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 172
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mSelectedAlpha:I

    .line 173
    iput v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mItemCircleAlpha:I

    .line 174
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mSelectCirclePaint:Landroid/graphics/Paint;

    .line 175
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 176
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mSelectCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 178
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mRatioTextPaint:Landroid/graphics/Paint;

    .line 179
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 180
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mRatioTextPaint:Landroid/graphics/Paint;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mIsInverted:Z

    if-eqz v2, :cond_c4

    const/high16 v2, -0x1000000

    goto :goto_c5

    :cond_c4
    const/4 v2, -0x1

    :goto_c5
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 181
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mRatioTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mRatioTextSize:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 182
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mRatioTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 183
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mRatioTextPaint:Landroid/graphics/Paint;

    const-string v3, "tnum"

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFontFeatureSettings(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/transsion/camera/R$color;->zoom_selected_color:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mSelectedColor:I

    .line 186
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mSelectedRatioTextPaint:Landroid/graphics/Paint;

    .line 187
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 188
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mSelectedRatioTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 189
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mSelectedRatioTextPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mSelectedColor:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 190
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/transsion/camera/R$dimen;->zoom_point_selected_text_size:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 191
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mSelectedRatioTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 192
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mSelectedRatioTextPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 193
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mSelectedRatioTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setFontFeatureSettings(Ljava/lang/String;)V

    .line 195
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mFocalLengthPaint:Landroid/graphics/Paint;

    .line 196
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 197
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mFocalLengthPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 198
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mFocalLengthPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 199
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mFocalLengthPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mSelectedColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 200
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mFocalLengthPaint:Landroid/graphics/Paint;

    const v2, 0x3cf5c28f    # 0.03f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 201
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mFocalLengthPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 203
    new-instance v0, Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mFocalLengthPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mFocalLengthSuffixPaint:Landroid/graphics/Paint;

    .line 205
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/R$dimen;->zoom_point_focal_length_suffix_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 204
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 206
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mFocalLengthSuffixPaint:Landroid/graphics/Paint;

    const v2, 0x3e2e147b    # 0.17f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 207
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mFocalLengthSuffixPaint:Landroid/graphics/Paint;

    const-string v0, "roboto_medium"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

.method private synthetic lambda$initAnimator$0(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 216
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    .line 217
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mSelectedAlpha:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mItemCircleAlpha:I

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p1, v0

    add-float/2addr p1, v0

    .line 220
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mItemCircleScaleFactor:F

    .line 221
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    return-void
.end method

.method private synthetic lambda$initAnimator$1(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 243
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mItemCircleScaleFactor:F

    .line 244
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    return-void
.end method

.method private synthetic lambda$performTypeSwitchAnimation$3(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 396
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mTypeSwitchFraction:F

    .line 397
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    return-void
.end method

.method private synthetic lambda$performTypeSwitchAnimation$4(ZLandroid/animation/ValueAnimator;)V
    .registers 4

    .line 428
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mTypeSwitchItemInAlpha:I

    if-eqz p1, :cond_11

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_19

    .line 431
    :cond_11
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    const/high16 p2, 0x3f000000    # 0.5f

    mul-float/2addr p1, p2

    add-float/2addr p1, p2

    :goto_19
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mTypeSwitchInScaleFactor:F

    .line 433
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    return-void
.end method

.method private synthetic lambda$performTypeSwitchAnimation$5(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 442
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mTypeSwitchItemOutAlpha:I

    .line 443
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    return-void
.end method

.method private synthetic lambda$setZoomConfig$2(Z)V
    .registers 3

    .line 321
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mCurrentType:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$IType;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mPreType:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$IType;

    if-eqz p1, :cond_e

    .line 323
    new-instance p1, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mZoomItems:Ljava/util/List;

    invoke-direct {p1, p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;Ljava/util/List;)V

    goto :goto_15

    :cond_e
    new-instance p1, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$PointType;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mZoomItems:Ljava/util/List;

    invoke-direct {p1, p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$PointType;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;Ljava/util/List;)V

    :goto_15
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mCurrentType:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$IType;

    .line 324
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->switchType()V

    return-void
.end method

.method private synthetic lambda$show$6()V
    .registers 2

    const v0, 0x3f4ccccd    # 0.8f

    .line 516
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    .line 517
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    const/4 v0, 0x0

    .line 518
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    .line 519
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private notifyZoomRatio(I)V
    .registers 2

    .line 663
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mZoomListener:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$Listener;

    if-eqz p0, :cond_7

    .line 664
    invoke-interface {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$Listener;->onZoomRatioChanged(I)V

    :cond_7
    return-void
.end method

.method private onItemSelected(I)V
    .registers 6

    .line 650
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mSelectedIndex:I

    const/4 p1, 0x0

    move v0, p1

    .line 651
    :goto_4
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mZoomItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_23

    .line 652
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mZoomItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;

    .line 653
    iget v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mSelectedIndex:I

    if-ne v3, v0, :cond_1a

    goto :goto_1b

    :cond_1a
    move v2, p1

    :goto_1b
    iput-boolean v2, v1, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mIsSelected:Z

    .line 654
    invoke-virtual {v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->reset()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 656
    :cond_23
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->playItemSwitchAnimator()V

    .line 657
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mZoomItems:Ljava/util/List;

    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mSelectedIndex:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;

    iget p1, p1, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mDefaultRatio:I

    .line 658
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->notifyZoomRatio(I)V

    .line 659
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mAccessHelper:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$AccessHelper;

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mSelectedIndex:I

    invoke-virtual {p1, p0, v2}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    return-void
.end method

.method private playItemClickFeedbackAnimation()V
    .registers 2

    .line 674
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mItemClickFeedbackAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 675
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mItemClickFeedbackAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private playItemSwitchAnimator()V
    .registers 2

    .line 669
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mItemSwitchAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 670
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mItemSwitchAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private switchType()V
    .registers 3

    .line 352
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mCurrentType:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$IType;

    invoke-interface {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$IType;->updateItemPosition()V

    .line 353
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mPreType:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$IType;

    if-eqz v0, :cond_44

    .line 354
    invoke-interface {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$IType;->getType()I

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mPreType:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$IType;

    .line 355
    invoke-interface {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$IType;->getType()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mCurrentType:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$IType;

    invoke-interface {v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$IType;->getType()I

    move-result v1

    if-ne v0, v1, :cond_2c

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mPreType:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$IType;

    .line 356
    invoke-interface {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$IType;->getZoomItemNum()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mCurrentType:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$IType;

    invoke-interface {v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$IType;->getZoomItemNum()I

    move-result v1

    if-ne v0, v1, :cond_2c

    goto :goto_44

    .line 361
    :cond_2c
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->prepareTypeSwitchingItems()V

    .line 362
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mPreType:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$IType;

    invoke-interface {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$IType;->getType()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mCurrentType:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$IType;

    invoke-interface {v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$IType;->getType()I

    move-result v1

    if-ne v0, v1, :cond_3f

    const/4 v0, 0x1

    goto :goto_40

    :cond_3f
    const/4 v0, 0x0

    :goto_40
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->performTypeSwitchAnimation(Z)V

    return-void

    .line 357
    :cond_44
    :goto_44
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private updateSelectedState(I)V
    .registers 7

    .line 330
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mZoomItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    const/4 v2, 0x0

    if-ltz v0, :cond_1b

    .line 331
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mZoomItems:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;

    iget v3, v3, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mDefaultRatio:I

    if-lt p1, v3, :cond_18

    goto :goto_1c

    :cond_18
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1b
    move v0, v2

    .line 336
    :goto_1c
    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mSelectedIndex:I

    move v3, v2

    .line 337
    :goto_1f
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mZoomItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3e

    .line 338
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mZoomItems:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;

    if-ne v3, v0, :cond_36

    .line 340
    iput-boolean v1, v4, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mIsSelected:Z

    .line 341
    iput p1, v4, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mCurrentRatio:I

    goto :goto_3b

    .line 343
    :cond_36
    iput-boolean v2, v4, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mIsSelected:Z

    .line 344
    invoke-virtual {v4}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->reset()V

    :goto_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 347
    :cond_3e
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSelectedState, mSelectedIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mSelectedIndex:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", ratio: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 264
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mAccessHelper:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$AccessHelper;

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

    .line 265
    :goto_12
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchHoverEvent, handled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    invoke-static {p1}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 265
    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method

.method public hide(Z)V
    .registers 4

    const/4 v0, 0x0

    const v1, 0x3f4ccccd    # 0.8f

    if-nez p1, :cond_15

    .line 477
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 478
    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 479
    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleY(F)V

    const/16 p1, 0x8

    .line 480
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 484
    :cond_15
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 485
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 486
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x96

    .line 487
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$3;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)V

    .line 488
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 498
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 499
    sget-object p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "hide start"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public invertColor(Z)V
    .registers 3

    .line 542
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mIsInverted:Z

    if-eq v0, p1, :cond_14

    .line 543
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mIsInverted:Z

    .line 544
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mRatioTextPaint:Landroid/graphics/Paint;

    if-eqz p1, :cond_d

    const/high16 p1, -0x1000000

    goto :goto_e

    :cond_d
    const/4 p1, -0x1

    :goto_e
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 545
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_14
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 296
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mCurrentType:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$IType;

    invoke-interface {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$IType;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 6

    .line 290
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mCenterX:F

    .line 291
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, p2

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mCenterY:F

    return-void
.end method

.method protected onMeasure(II)V
    .registers 5

    .line 272
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mZoomItems:Ljava/util/List;

    if-eqz v0, :cond_30

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_30

    .line 277
    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Landroid/view/View;->getDefaultSize(II)I

    move-result p1

    .line 278
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View;->getDefaultSize(II)I

    move-result v0

    .line 279
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    const/high16 v1, -0x80000000

    if-ne p2, v1, :cond_2c

    .line 280
    iget p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mZoomItemWidth:F

    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mBackgroundPadding:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    add-float/2addr p2, v0

    float-to-int v0, p2

    .line 282
    :cond_2c
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void

    :cond_30
    :goto_30
    const/4 p1, 0x0

    .line 273
    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 562
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 563
    sget-object p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onTouchEvent, return for disabled"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 567
    :cond_f
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mCurrentType:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$IType;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$IType;->isOutOfContent(FF)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 568
    sget-object p1, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onTouchEvent, return for out of content"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 569
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mIsScrolling:Z

    return v1

    .line 573
    :cond_29
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mIsTypeSwitching:Z

    if-eqz v0, :cond_35

    .line 574
    sget-object p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onTouchEvent, return for typeSwitching"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 578
    :cond_35
    invoke-static {p0}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3c

    return v1

    .line 582
    :cond_3c
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTouchEvent, event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-static {v3}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", x: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", y: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 582
    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 584
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 585
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_85

    .line 586
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_87

    .line 587
    :cond_85
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mIsScrolling:Z

    :cond_87
    return v2
.end method

.method protected performTypeSwitchAnimation(Z)V
    .registers 9

    const/4 v0, 0x2

    .line 391
    new-array v1, v0, [F

    fill-array-data v1, :array_92

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0x15e

    .line 392
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 393
    sget-object v4, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->TYPE_SWITCH_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 394
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 395
    new-instance v2, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 399
    new-instance v2, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$2;

    invoke-direct {v2, p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$2;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v2, 0x0

    const/16 v3, 0xff

    .line 426
    filled-new-array {v2, v3}, [I

    move-result-object v4

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 427
    new-instance v5, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;Z)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-eqz p1, :cond_40

    .line 435
    sget-object p1, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->SAME_TYPE_SWITCH_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    goto :goto_42

    .line 436
    :cond_40
    sget-object p1, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->DIFFERENT_TYPE_SWITCH_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 435
    :goto_42
    invoke-virtual {v4, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v5, 0xc8

    .line 437
    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 438
    iput v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mTypeSwitchItemInAlpha:I

    .line 440
    filled-new-array {v3, v2}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 441
    new-instance v2, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)V

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 445
    sget-object v2, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->TYPE_SWITCH_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v5, 0x64

    .line 446
    invoke-virtual {p1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 447
    iput v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mTypeSwitchItemOutAlpha:I

    .line 449
    new-array p0, v0, [F

    fill-array-data p0, :array_9a

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    const-wide/16 v2, 0x96

    .line 450
    invoke-virtual {p0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p0

    .line 451
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 452
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 453
    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 454
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_92
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_9a
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected prepareTypeSwitchingItems()V
    .registers 8

    .line 366
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mCurrentType:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$IType;

    .line 367
    invoke-interface {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$IType;->getZoomItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mPreType:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$IType;

    invoke-interface {v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$IType;->getZoomItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 368
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mTypeSwitchingItems:Ljava/util/Set;

    .line 370
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mCurrentType:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$IType;

    invoke-interface {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$IType;->getZoomItems()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mSelectedIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;

    iget v0, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mDefaultRatio:I

    .line 371
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mTypeSwitchingItems:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_91

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;

    .line 372
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mPreType:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$IType;

    iget v4, v2, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mDefaultRatio:I

    invoke-interface {v3, v4}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$IType;->getItemByRatio(I)Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;

    move-result-object v3

    .line 373
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mCurrentType:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$IType;

    iget v5, v2, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mDefaultRatio:I

    invoke-interface {v4, v5}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$IType;->getItemByRatio(I)Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v3, :cond_70

    if-eqz v4, :cond_70

    const/4 v6, 0x3

    .line 375
    iput v6, v2, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mSwitchState:I

    .line 376
    iget-object v6, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mCurrentType:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$IType;

    invoke-interface {v6}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$IType;->getType()I

    move-result v6

    iput v6, v2, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mSwitchFromType:I

    .line 377
    iget v3, v3, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mCenterX:F

    iput v3, v2, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mStartX:F

    .line 378
    iget v4, v4, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mCenterX:F

    sub-float/2addr v4, v3

    iput v4, v2, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mOffsetX:F

    goto :goto_88

    :cond_70
    if-eqz v3, :cond_7e

    const/4 v3, 0x2

    .line 380
    iput v3, v2, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mSwitchState:I

    .line 381
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mPreType:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$IType;

    invoke-interface {v3}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$IType;->getType()I

    move-result v3

    iput v3, v2, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mSwitchFromType:I

    goto :goto_88

    .line 383
    :cond_7e
    iput v5, v2, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mSwitchState:I

    .line 384
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mCurrentType:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$IType;

    invoke-interface {v3}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$IType;->getType()I

    move-result v3

    iput v3, v2, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mSwitchFromType:I

    .line 386
    :goto_88
    iget v3, v2, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mDefaultRatio:I

    if-ne v3, v0, :cond_8d

    goto :goto_8e

    :cond_8d
    const/4 v5, 0x0

    :goto_8e
    iput-boolean v5, v2, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mIsSelected:Z

    goto :goto_3a

    :cond_91
    return-void
.end method

.method public setFocalLengthBase(F)V
    .registers 2

    .line 683
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mFocalLengthBase:F

    return-void
.end method

.method public setListener(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$Listener;)V
    .registers 2

    .line 679
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mZoomListener:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$Listener;

    return-void
.end method

.method public setOrientation(I)V
    .registers 3

    .line 535
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mOrientation:I

    if-eq v0, p1, :cond_b

    .line 536
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mOrientation:I

    .line 537
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mRotateAnimator:Lcom/transsion/camera/ui/setting/zoom/RotateAnimator;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/RotateAnimator;->setOrientation(I)V

    :cond_b
    return-void
.end method

.method public setZoomConfig(Lcom/transsion/camera/app/common/ZoomConfig;)V
    .registers 11

    .line 300
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mZoomItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 301
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ZoomConfig;->getLensInfo()Ljava/util/List;

    move-result-object v0

    .line 302
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    .line 303
    new-instance v2, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar-IA;)V

    .line 304
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->getCurrentRatio()I

    move-result v3

    if-lez v3, :cond_2a

    .line 305
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->getCurrentRatio()I

    move-result v3

    goto :goto_2e

    :cond_2a
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->getStartRatio()I

    move-result v3

    :goto_2e
    iput v3, v2, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mDefaultRatio:I

    .line 306
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->getFocalLengths()[Ljava/lang/String;

    move-result-object v3

    .line 307
    array-length v4, v3

    new-array v4, v4, [Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$FocalLengthInfo;

    iput-object v4, v2, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mFocalLengthItems:[Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$FocalLengthInfo;

    const/4 v4, 0x0

    .line 308
    :goto_3a
    array-length v5, v3

    if-ge v4, v5, :cond_53

    .line 309
    new-instance v5, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$FocalLengthInfo;

    aget-object v6, v3, v4

    iget v7, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mFocalLengthBase:F

    iget v8, v2, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mDefaultRatio:I

    .line 310
    invoke-static {v6, v7, v8}, Lcom/transsion/camera/ui/setting/zoom/ZoomUtils;->getZoomRatioByFocalLength(Ljava/lang/String;FI)I

    move-result v7

    invoke-direct {v5, p0, v6, v7}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$FocalLengthInfo;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;Ljava/lang/String;I)V

    .line 311
    iget-object v6, v2, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mFocalLengthItems:[Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$FocalLengthInfo;

    aput-object v5, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3a

    .line 313
    :cond_53
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->getLensType()I

    move-result v1

    iput v1, v2, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mLensType:I

    .line 314
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mZoomItems:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 316
    :cond_5f
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ZoomConfig;->getDefaultZoomRatio()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->updateSelectedState(I)V

    .line 317
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ZoomConfig;->isZoomRangeLimited()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mIsZoomRangeLimited:Z

    .line 318
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ZoomConfig;->getLimitedZoomRange()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mLimitedZoomRange:Landroid/util/Range;

    .line 319
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ZoomConfig;->isContinuousZoomSupported()Z

    move-result p1

    .line 320
    new-instance v0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public show(Z)V
    .registers 4

    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p1, :cond_12

    .line 504
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 505
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    .line 506
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    const/4 p1, 0x0

    .line 507
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 511
    :cond_12
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 512
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 513
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    .line 514
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)V

    .line 515
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$4;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$4;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)V

    .line 521
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 530
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 531
    sget-object p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "show start"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public switchSelectedItem(Z)V
    .registers 3

    if-eqz p1, :cond_7

    .line 469
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mSelectedIndex:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    :cond_7
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mSelectedIndex:I

    add-int/lit8 p1, p1, -0x1

    :goto_b
    const/4 v0, -0x1

    if-le p1, v0, :cond_19

    .line 470
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->mZoomItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_19

    .line 471
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->handleItemSelected(I)V

    :cond_19
    return-void
.end method

.method public updateZoomRatio(IZ)V
    .registers 6

    .line 458
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateZoomRatio, ratio: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 459
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->updateSelectedState(I)V

    if-eqz p2, :cond_1f

    .line 462
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->playItemSwitchAnimator()V

    return-void

    .line 465
    :cond_1f
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
