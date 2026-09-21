.class public Lcom/transsion/camera/app/ui/widget/GraduationView;
.super Lcom/transsion/camera/app/ui/widget/CommonParamsControlView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/widget/GraduationView$OnUIStateChangedListener;,
        Lcom/transsion/camera/app/ui/widget/GraduationView$OnProgressChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final sGraduationStyleArray:[Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;


# instance fields
.field private mAnimatedValue:F

.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mAntiVideoRestrict4K30FPS:Z

.field private mCoordinateCorrected:Z

.field private mCursor:Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;

.field private mCursorDirectionCoordinate:I

.field private mCursorDownCoordinate:I

.field private final mCursorHelper:Lcom/transsion/camera/app/ui/widget/graduated/CursorHelper;

.field private mCursorMoveCount:I

.field private mCursorTitleDrawables:Ljava/util/List;

.field private mCursorTitleTexts:Ljava/util/List;

.field private mDownNotFromView:Z

.field private mFakeMotionEvent:Z

.field private final mGraduationHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

.field private mGraduations:Ljava/util/List;

.field private mIndependentCursorIndexList:Ljava/util/List;

.field private mIndicatorRotateDegree:I

.field private mInitialTouchX:I

.field private mInteractiveListener:Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$IInteractiveListener;

.field private final mInterpolator:Landroid/view/animation/PathInterpolator;

.field private mIsLimitMode:Z

.field private mIsNormalCamera:Z

.field private mIsTeleCamera:Z

.field private mIsWideCamera:Z

.field private mLastSelected:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

.field private mLastTouchX:I

.field private mLastValue:I

.field private mLastVibrateValue:I

.field private mListener:Lcom/transsion/camera/app/ui/widget/GraduationView$OnProgressChangeListener;

.field private mMaxGraduationsCoordinate:I

.field private mMaxWideRecordingProgress:I

.field private mMinGraduationsCoordinate:I

.field private mMoving:Z

.field private mNeedAnimate:Z

.field private mOnTouchMoveListener:Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$OnTouchMoveListener;

.field private mOnUIStateListener:Lcom/transsion/camera/app/ui/widget/GraduationView$OnUIStateChangedListener;

.field private mPauseIndependentIndex:I

.field private mProgress:I

.field private mRanges:Ljava/util/List;

.field private mRangesCursor:Ljava/util/List;

.field private mRecordingMainMaxGraduation:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

.field private mRecordingMaxGraduation:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

.field private mRecordingMinGraduation:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

.field private mRecordingTeleMinGraduation:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

.field private mRecordingWideProgress:I

.field private mReversed:Z

.field private mStartVideoRecording:Z

.field private mStyle:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

.field private mTeleMinProgress:I

.field private final mTouchSlop:I

.field private mTouching:Z

.field private final mVibrator:Landroid/os/Vibrator;


# direct methods
.method public static synthetic $r8$lambda$1HvYjswXxLDw9Qd6S53C5Lvaa-Q(Lcom/transsion/camera/app/ui/widget/GraduationView;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/GraduationView;->lambda$animate$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAnimatedValue(Lcom/transsion/camera/app/ui/widget/GraduationView;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mAnimatedValue:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmAnimatedValue(Lcom/transsion/camera/app/ui/widget/GraduationView;F)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mAnimatedValue:F

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/ui/widget/GraduationView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 26

    .line 56
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "GraduationView"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/widget/GraduationView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 86
    sget-object v2, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->NONE:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    sget-object v3, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->ZOOM_MIN_60_MAX_1000:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    sget-object v4, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->ZOOM_MIN_60_MAX_1500:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    sget-object v5, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->ZOOM_MIN_60_MAX_2000:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    sget-object v6, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->ZOOM_MIN_60_MAX_2500:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    sget-object v7, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->ZOOM_MIN_60_MAX_3000:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    sget-object v8, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->ZOOM_MIN_60_MAX_6000:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    sget-object v9, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->ZOOM_MIN_100_MAX_400:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    sget-object v10, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->ZOOM_MIN_100_MAX_800:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    sget-object v11, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->ZOOM_MIN_100_MAX_1000:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    sget-object v12, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->ZOOM_MIN_100_MAX_1500:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    sget-object v13, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->ZOOM_MIN_100_MAX_2000:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    sget-object v14, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->ZOOM_MIN_100_MAX_2500:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    sget-object v15, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->ZOOM_MIN_100_MAX_3000:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    sget-object v16, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->ZOOM_MIN_100_MAX_6000:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    sget-object v17, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->PORTRAIT_BLUR:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    sget-object v18, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->SUPER_MOON:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    sget-object v19, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->PROFESSIONAL:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    sget-object v20, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->PMASTER_BLUR:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    sget-object v21, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->ZOOM_MIN_60_MAX_300:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    sget-object v22, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->ZOOM_MIN_60_MAX_600:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    sget-object v23, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->ZOOM_MIN_100_MAX_300:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    sget-object v24, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->ZOOM_MIN_100_MAX_600:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    sget-object v25, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->ZOOM_MIN_60_MAX_10000:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    filled-new-array/range {v2 .. v25}, [Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/app/ui/widget/GraduationView;->sGraduationStyleArray:[Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 202
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/app/ui/widget/GraduationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    .line 207
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/transsion/camera/app/ui/widget/GraduationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 8

    .line 212
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/widget/CommonParamsControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/16 v0, 0x4e20

    .line 72
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mMaxWideRecordingProgress:I

    const/4 v1, -0x1

    .line 137
    iput v1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mPauseIndependentIndex:I

    const/4 v1, 0x0

    .line 138
    iput v1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursorDownCoordinate:I

    .line 139
    iput v1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursorDirectionCoordinate:I

    .line 152
    iput v1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursorMoveCount:I

    const/4 v2, 0x0

    .line 153
    iput-object v2, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mIndependentCursorIndexList:Ljava/util/List;

    .line 159
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mStartVideoRecording:Z

    .line 160
    iput v1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mRecordingWideProgress:I

    const/16 v2, 0x7530

    .line 161
    iput v2, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mTeleMinProgress:I

    .line 162
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mIsWideCamera:Z

    .line 163
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mIsNormalCamera:Z

    .line 164
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mIsTeleCamera:Z

    .line 165
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mIsLimitMode:Z

    .line 166
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mAntiVideoRestrict4K30FPS:Z

    .line 737
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mFakeMotionEvent:Z

    .line 214
    new-instance v2, Lcom/transsion/camera/app/ui/widget/graduated/CursorHelper;

    invoke-direct {v2, p1}, Lcom/transsion/camera/app/ui/widget/graduated/CursorHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursorHelper:Lcom/transsion/camera/app/ui/widget/graduated/CursorHelper;

    .line 215
    new-instance v2, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    invoke-direct {v2, p1}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mGraduationHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    .line 217
    sget-object v2, Lcom/transsion/camera/featurelibs/commonwidget/R$styleable;->GraduationView:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 220
    sget p3, Lcom/transsion/camera/featurelibs/commonwidget/R$styleable;->GraduationView_graduationStyle:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 222
    sget-object p4, Lcom/transsion/camera/app/ui/widget/GraduationView;->sGraduationStyleArray:[Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    aget-object p3, p4, p3

    invoke-virtual {p0, p3}, Lcom/transsion/camera/app/ui/widget/GraduationView;->setStyle(Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;)V

    .line 224
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 227
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    .line 228
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mTouchSlop:I

    .line 230
    const-string/jumbo p2, "vibrator"

    .line 231
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mVibrator:Landroid/os/Vibrator;

    .line 233
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/4 p2, 0x0

    const/high16 p3, 0x3f800000    # 1.0f

    const/high16 p4, 0x3e800000    # 0.25f

    invoke-direct {p1, p4, p2, p2, p3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mInterpolator:Landroid/view/animation/PathInterpolator;

    .line 235
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mAntiVideoRestrict4K30FPS:Z

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mAntiVideoRestrict4K30FPS:Z

    if-eqz p1, :cond_79

    const/16 v0, 0x2328

    .line 236
    :cond_79
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mMaxWideRecordingProgress:I

    return-void
.end method

.method private animate(Z)V
    .registers 5

    .line 887
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mNeedAnimate:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_c

    move v2, v1

    goto :goto_d

    :cond_c
    move v2, v0

    :goto_d
    if-eqz p1, :cond_10

    goto :goto_11

    :cond_10
    move v0, v1

    .line 894
    :goto_11
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/GraduationView;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 895
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    :cond_1c
    const/4 p1, 0x2

    .line 898
    new-array p1, p1, [F

    const/4 v1, 0x0

    aput v2, p1, v1

    const/4 v1, 0x1

    aput v0, p1, v1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xfa

    .line 899
    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 900
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 901
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/camera/app/ui/widget/GraduationView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/widget/GraduationView$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/widget/GraduationView;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 905
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/camera/app/ui/widget/GraduationView$1;

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/app/ui/widget/GraduationView$1;-><init>(Lcom/transsion/camera/app/ui/widget/GraduationView;F)V

    invoke-virtual {p1, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 912
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private calculateCursorScale()F
    .registers 2

    .line 734
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mAnimatedValue:F

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p0, v0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p0, v0

    return p0
.end method

.method private cancelAnimate()V
    .registers 2

    .line 880
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/GraduationView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 881
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 882
    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mAnimator:Landroid/animation/ValueAnimator;

    :cond_e
    return-void
.end method

.method private coordinateCursorPause(I)V
    .registers 5

    .line 956
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mGraduationHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->getPauseGraduation()Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mCoordinate:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 957
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursorDownCoordinate:I

    if-gt v1, v0, :cond_1b

    if-ne v1, v0, :cond_15

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursorDirectionCoordinate:I

    if-lez v1, :cond_15

    goto :goto_1b

    .line 972
    :cond_15
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursor:Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->offset(I)V

    return-void

    .line 959
    :cond_1b
    :goto_1b
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursor:Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->mCoordinate:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    add-int/2addr v2, p1

    if-ge v2, v0, :cond_27

    .line 960
    iput v0, v1, Landroid/graphics/Point;->x:I

    return-void

    .line 962
    :cond_27
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->offset(I)V

    return-void
.end method

.method private coordinateToGraduation(I)Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;
    .registers 6

    .line 994
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mRanges:Ljava/util/List;

    .line 995
    sget-object v1, Lcom/transsion/camera/app/ui/widget/GraduationView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rangeX"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 996
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursorMoveCount:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_1f

    .line 997
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mRangesCursor:Ljava/util/List;

    :cond_1f
    const/4 p0, 0x0

    if-nez v0, :cond_23

    return-object p0

    .line 1003
    :cond_23
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/widget/graduated/range/IRange;

    .line 1005
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/ui/widget/graduated/range/IRange;->coordinateToGraduation(I)Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    move-result-object v1

    if-eqz v1, :cond_27

    return-object v1

    :cond_3a
    return-object p0
.end method

.method private correctCoordinate(II)V
    .registers 8

    .line 453
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mGraduationHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->getContentWidth()I

    move-result v0

    .line 454
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mGraduationHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->getContentHeight()I

    move-result v1

    .line 457
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    sub-int/2addr p1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    sub-int/2addr p1, v2

    .line 459
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr p2, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr p2, v2

    .line 461
    sget-object v2, Lcom/transsion/camera/app/ui/widget/GraduationView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "correctCoordinate widthAvailable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", heightAvailable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", contentWidth: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", contentHeight: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-lt p1, v0, :cond_58

    .line 466
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mGraduationHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    .line 467
    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->getExceptedHeight()I

    move-result v3

    if-ge p2, v3, :cond_5d

    .line 468
    :cond_58
    const-string v3, "size is too small!!!"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 471
    :cond_5d
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v2, p1

    .line 473
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    sub-int v0, p2, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    .line 476
    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/app/ui/widget/GraduationView;->correctGraduationsCoordinate(II)V

    .line 478
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/GraduationView;->updateGraduationsCoordinateRange()V

    .line 481
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    .line 480
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/GraduationView;->correctCursorCoordinate(I)V

    .line 483
    iget p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mProgress:I

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/GraduationView;->updateCursorToProgress(IZ)V

    return-void
.end method

.method private correctCursor(I)V
    .registers 6

    .line 1039
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/GraduationView;->coordinateToGraduation(I)Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_3a

    .line 1043
    :cond_7
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mIsLimitMode:Z

    const/16 v1, 0x7530

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mStartVideoRecording:Z

    if-eqz v0, :cond_13

    move v0, v1

    goto :goto_16

    :cond_13
    const v0, 0x186a0

    .line 1045
    :goto_16
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mStartVideoRecording:Z

    if-eqz v2, :cond_3b

    .line 1046
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mIsWideCamera:Z

    if-eqz v2, :cond_25

    iget v2, p1, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mValue:I

    iget v3, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mMaxWideRecordingProgress:I

    if-le v2, v3, :cond_25

    goto :goto_3a

    .line 1048
    :cond_25
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mIsNormalCamera:Z

    if-eqz v2, :cond_32

    iget v2, p1, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mValue:I

    const/16 v3, 0x2710

    if-lt v2, v3, :cond_3a

    if-le v2, v0, :cond_32

    goto :goto_3a

    .line 1051
    :cond_32
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mIsTeleCamera:Z

    if-eqz v0, :cond_3b

    iget v0, p1, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mValue:I

    if-ge v0, v1, :cond_3b

    :cond_3a
    :goto_3a
    return-void

    .line 1056
    :cond_3b
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursor:Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;

    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->mCoordinate:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p1, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mCoordinate:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    if-eq v1, v2, :cond_52

    .line 1058
    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->updateCoordinateX(I)V

    .line 1060
    iget v0, p1, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mValue:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/GraduationView;->updateCursorTextAndDrable(I)V

    .line 1061
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1064
    :cond_52
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/GraduationView;->vibrateIfNeeded(Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;)V

    .line 1065
    sget-object v0, Lcom/transsion/camera/app/ui/widget/GraduationView$2;->$SwitchMap$com$transsion$camera$app$ui$widget$graduated$GraduationStyle:[I

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mStyle:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_7a

    goto :goto_72

    .line 1081
    :pswitch_63
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    iget v1, p1, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mValue:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(ILjava/lang/String;)V

    .line 1084
    :goto_72
    iget p1, p1, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mValue:I

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/GraduationView;->notifyProgressChanged(IZ)V

    return-void

    nop

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
    .end packed-switch
.end method

.method private correctCursorCoordinate(I)V
    .registers 5

    .line 511
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mGraduations:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    .line 512
    iget-object v0, v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mCoordinate:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 513
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mGraduations:Ljava/util/List;

    .line 514
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    .line 515
    iget-object v1, v1, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mCoordinate:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    .line 517
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursor:Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;

    invoke-virtual {v2, v0, v1}, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->setCoordinateRange(II)V

    .line 519
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursor:Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->updateCoordinate(II)V

    return-void
.end method

.method private correctGraduationsCoordinate(II)V
    .registers 5

    .line 488
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mRanges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/widget/graduated/range/IRange;

    .line 489
    invoke-interface {v1, p1, p2}, Lcom/transsion/camera/app/ui/widget/graduated/range/IRange;->offset(II)V

    goto :goto_6

    .line 492
    :cond_16
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mRangesCursor:Ljava/util/List;

    if-nez p0, :cond_1b

    goto :goto_2f

    .line 495
    :cond_1b
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/graduated/range/IRange;

    .line 496
    invoke-interface {v0, p1, p2}, Lcom/transsion/camera/app/ui/widget/graduated/range/IRange;->offset(II)V

    goto :goto_1f

    :cond_2f
    :goto_2f
    return-void
.end method

.method private createCursorAndGraduations()V
    .registers 7

    .line 406
    sget-object v0, Lcom/transsion/camera/app/ui/widget/GraduationView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "createCursorAndGraduations start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 407
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 409
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursorHelper:Lcom/transsion/camera/app/ui/widget/graduated/CursorHelper;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mStyle:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    invoke-virtual {v3, v4}, Lcom/transsion/camera/app/ui/widget/graduated/CursorHelper;->createCursor(Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;)Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursor:Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;

    .line 410
    iget v3, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursorMoveCount:I

    if-lez v3, :cond_1e

    .line 411
    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mGraduationHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    invoke-virtual {v4, v3}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->setCursorMoveCount(I)V

    .line 413
    :cond_1e
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mGraduationHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mIndependentCursorIndexList:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->setIndependentCursorIndexList(Ljava/util/List;)V

    .line 414
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mGraduationHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursorTitleTexts:Ljava/util/List;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursorTitleDrawables:Ljava/util/List;

    invoke-virtual {v3, v4, v5}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->setCursorTitleContents(Ljava/util/List;Ljava/util/List;)V

    .line 415
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mGraduationHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    iget v4, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mPauseIndependentIndex:I

    invoke-virtual {v3, v4}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->setPauseIndependentIndex(I)V

    .line 416
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mGraduationHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mStyle:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    iget-boolean v5, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mReversed:Z

    .line 417
    invoke-virtual {v3, v4, v5}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->createGraduations(Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;Z)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mGraduations:Ljava/util/List;

    .line 418
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/GraduationView;->updateRecordingGraduation()V

    .line 419
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mGraduationHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->getRanges()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mRanges:Ljava/util/List;

    .line 420
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mGraduationHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->getCursorRanges()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mRangesCursor:Ljava/util/List;

    .line 422
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 423
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createCursorAndGraduations end | elapseTime: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private drawCursor(Landroid/graphics/Canvas;)V
    .registers 3

    .line 730
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursor:Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/GraduationView;->calculateCursorScale()F

    move-result p0

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->draw(Landroid/graphics/Canvas;F)V

    return-void
.end method

.method private drawGraduations(Landroid/graphics/Canvas;)V
    .registers 6

    .line 696
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mGraduations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    .line 698
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/widget/GraduationView;->graduationOffset(Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;)F

    move-result v2

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursor:Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;

    .line 697
    invoke-virtual {v1, p1, v2, v3}, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->draw(Landroid/graphics/Canvas;FLcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;)V

    goto :goto_6

    :cond_1c
    return-void
.end method

.method private graduationOffset(Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;)F
    .registers 5

    .line 703
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/GraduationView;->isGraduationAnimNeeded()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 706
    :cond_8
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mTouching:Z

    if-nez v0, :cond_13

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/GraduationView;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_13

    return v1

    .line 710
    :cond_13
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mGraduationHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    .line 711
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->getAnimTranslateMax()I

    move-result v0

    .line 712
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mGraduationHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    .line 713
    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->getAnimDistanceThreshold()I

    move-result v2

    .line 715
    iget-object p1, p1, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mCoordinate:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursor:Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->mCoordinate:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->x:I

    sub-int/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    if-lt p0, v2, :cond_31

    return v1

    :cond_31
    sub-int p0, v2, p0

    int-to-float p0, p0

    const/high16 p1, 0x3f800000    # 1.0f

    mul-float/2addr p0, p1

    int-to-float v1, v2

    div-float/2addr p0, v1

    int-to-float v0, v0

    mul-float/2addr p0, v0

    mul-float/2addr p0, p1

    return p0
.end method

.method private initCursorAndGraduations()V
    .registers 3

    const/4 v0, 0x0

    .line 393
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCoordinateCorrected:Z

    .line 395
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/GraduationView;->createCursorAndGraduations()V

    .line 396
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mIndicatorRotateDegree:I

    if-eqz v0, :cond_d

    .line 397
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/GraduationView;->rotateIndicatorInternal(I)V

    .line 399
    :cond_d
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/GraduationView;->isSizeAvailable()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 400
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/widget/GraduationView;->correctCoordinate(II)V

    const/4 v0, 0x1

    .line 401
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCoordinateCorrected:Z

    :cond_21
    return-void
.end method

.method private invalidDownEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 869
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    .line 870
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mMinGraduationsCoordinate:I

    add-int/lit8 v0, v0, -0x19

    if-lt p1, v0, :cond_14

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mMaxGraduationsCoordinate:I

    add-int/lit8 p0, p0, 0x19

    if-le p1, p0, :cond_12

    goto :goto_14

    :cond_12
    const/4 p0, 0x0

    return p0

    :cond_14
    :goto_14
    const/4 p0, 0x1

    return p0
.end method

.method private isAnimating()Z
    .registers 1

    .line 875
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_c

    .line 876
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method private isGraduationAnimNeeded()Z
    .registers 2

    .line 726
    sget-object v0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->PROFESSIONAL:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mStyle:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    if-eq v0, p0, :cond_c

    sget-object v0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->PMASTER_BLUR:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    if-eq v0, p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method private isNeedVibrate()Z
    .registers 2

    .line 989
    invoke-static {}, Lcom/transsion/camera/app/common/vibrate/VibratorController;->getInstance()Lcom/transsion/camera/app/common/vibrate/VibratorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/vibrate/VibratorController;->isSupport()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportVibrate(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    return p0

    :cond_17
    :goto_17
    const/4 p0, 0x1

    return p0
.end method

.method private isSizeAvailable()Z
    .registers 2

    .line 449
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_e

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    if-lez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$animate$0(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 902
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mAnimatedValue:F

    .line 903
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private measureHeight(I)I
    .registers 5

    .line 634
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 635
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_d

    return p1

    .line 642
    :cond_d
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mGraduationHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    .line 643
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->getExceptedHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursorHelper:Lcom/transsion/camera/app/ui/widget/graduated/CursorHelper;

    .line 644
    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/widget/graduated/CursorHelper;->getExceptedHeight()F

    move-result v2

    .line 642
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 645
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 646
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    add-int/2addr v2, p0

    int-to-float p0, v2

    add-float/2addr p0, v1

    float-to-int p0, p0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_32

    .line 649
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    :cond_32
    return p0
.end method

.method private measureWidth(I)I
    .registers 5

    .line 613
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 614
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 616
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mRanges:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v2, :cond_2f

    if-gtz v1, :cond_15

    goto :goto_2f

    .line 622
    :cond_15
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    add-int/2addr v1, v2

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mGraduationHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    .line 623
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->getContentWidth()I

    move-result p0

    add-int/2addr v1, p0

    const/high16 p0, -0x80000000

    if-ne v0, p0, :cond_2e

    .line 626
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_2e
    return v1

    :cond_2f
    :goto_2f
    return p1
.end method

.method private moveCursorToLimit(Z)V
    .registers 4

    .line 916
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mIsWideCamera:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1f

    .line 917
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursor:Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mRecordingMaxGraduation:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mCoordinate:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->updateCoordinateX(I)V

    .line 918
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mRecordingMaxGraduation:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    iget p1, p1, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mValue:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/GraduationView;->updateCursorTextAndDrable(I)V

    .line 919
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mRecordingMaxGraduation:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    iget p1, p1, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mValue:I

    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/app/ui/widget/GraduationView;->notifyProgressChanged(IZ)V

    return-void

    .line 920
    :cond_1f
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mIsNormalCamera:Z

    if-eqz v0, :cond_59

    if-eqz p1, :cond_3f

    .line 922
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursor:Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mRecordingMainMaxGraduation:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mCoordinate:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->updateCoordinateX(I)V

    .line 923
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mRecordingMainMaxGraduation:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    iget p1, p1, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mValue:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/GraduationView;->updateCursorTextAndDrable(I)V

    .line 924
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mRecordingMainMaxGraduation:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    iget p1, p1, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mValue:I

    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/app/ui/widget/GraduationView;->notifyProgressChanged(IZ)V

    return-void

    .line 926
    :cond_3f
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursor:Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mRecordingMinGraduation:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mCoordinate:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->updateCoordinateX(I)V

    .line 927
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mRecordingMinGraduation:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    iget p1, p1, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mValue:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/GraduationView;->updateCursorTextAndDrable(I)V

    .line 928
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mRecordingMinGraduation:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    iget p1, p1, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mValue:I

    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/app/ui/widget/GraduationView;->notifyProgressChanged(IZ)V

    return-void

    .line 930
    :cond_59
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mIsTeleCamera:Z

    if-eqz p1, :cond_76

    .line 931
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursor:Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mRecordingTeleMinGraduation:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mCoordinate:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->updateCoordinateX(I)V

    .line 932
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mRecordingTeleMinGraduation:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    iget p1, p1, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mValue:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/GraduationView;->updateCursorTextAndDrable(I)V

    .line 933
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mRecordingTeleMinGraduation:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    iget p1, p1, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mValue:I

    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/app/ui/widget/GraduationView;->notifyProgressChanged(IZ)V

    :cond_76
    return-void
.end method

.method private notifyProgressChanged(IZ)V
    .registers 6

    .line 1088
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mProgress:I

    if-ne v0, p1, :cond_5

    goto :goto_39

    .line 1091
    :cond_5
    sget-object v0, Lcom/transsion/camera/app/ui/widget/GraduationView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyProgressChanged progress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mProgress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mProgress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1093
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mProgress:I

    .line 1094
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mListener:Lcom/transsion/camera/app/ui/widget/GraduationView$OnProgressChangeListener;

    if-eqz v0, :cond_39

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_34

    goto :goto_39

    .line 1097
    :cond_34
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mListener:Lcom/transsion/camera/app/ui/widget/GraduationView$OnProgressChangeListener;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/GraduationView$OnProgressChangeListener;->onProgressChanged(IZ)V

    :cond_39
    :goto_39
    return-void
.end method

.method private onClick(I)V
    .registers 2

    .line 1034
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/GraduationView;->correctCursor(I)V

    return-void
.end method

.method private onMove(I)V
    .registers 3

    .line 938
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mGraduationHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->getPauseGraduation()Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 939
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/GraduationView;->coordinateCursorPause(I)V

    goto :goto_11

    .line 941
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursor:Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->offset(I)V

    .line 943
    :goto_11
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursor:Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->mCoordinate:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    .line 944
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/GraduationView;->coordinateToGraduation(I)Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    move-result-object p1

    if-nez p1, :cond_1e

    return-void

    .line 950
    :cond_1e
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/GraduationView;->vibrateIfNeeded(Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;)V

    .line 951
    iget v0, p1, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mValue:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/GraduationView;->updateCursorTextAndDrable(I)V

    .line 952
    iget p1, p1, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mValue:I

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/GraduationView;->notifyProgressChanged(IZ)V

    return-void
.end method

.method private progressToGraduation(I)Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;
    .registers 5

    .line 1015
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mRanges:Ljava/util/List;

    .line 1016
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursorMoveCount:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_9

    .line 1017
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mRangesCursor:Ljava/util/List;

    :cond_9
    const/4 p0, 0x0

    if-nez v0, :cond_d

    return-object p0

    .line 1023
    :cond_d
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/widget/graduated/range/IRange;

    .line 1025
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/ui/widget/graduated/range/IRange;->valueToGraduation(I)Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    move-result-object v1

    if-eqz v1, :cond_11

    return-object v1

    :cond_24
    return-object p0
.end method

.method private reverseInternal()V
    .registers 5

    .line 380
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/GraduationView;->initCursorAndGraduations()V

    .line 382
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mStartVideoRecording:Z

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mIsWideCamera:Z

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/ui/widget/GraduationView;->updateSeekBarStyle(ZZ)V

    .line 383
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mIsTeleCamera:Z

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mIsNormalCamera:Z

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mIsLimitMode:Z

    iget v3, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mTeleMinProgress:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/transsion/camera/app/ui/widget/GraduationView;->setCurrentLimitations(ZZZI)V

    .line 384
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private rotateIndicatorInternal(I)V
    .registers 3

    .line 362
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursor:Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->rotateIndicator(I)V

    .line 363
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mGraduationHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->rotateIndicator(I)V

    .line 364
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private setCursorTitleContents(Ljava/util/List;Ljava/util/List;)V
    .registers 4

    .line 565
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursorTitleTexts:Ljava/util/List;

    if-nez v0, :cond_c

    .line 566
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursorTitleTexts:Ljava/util/List;

    goto :goto_f

    .line 568
    :cond_c
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 571
    :goto_f
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursorTitleDrawables:Ljava/util/List;

    if-nez v0, :cond_1b

    .line 572
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursorTitleDrawables:Ljava/util/List;

    goto :goto_1e

    .line 574
    :cond_1b
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 576
    :goto_1e
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursorTitleTexts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eqz p2, :cond_2a

    .line 578
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursorTitleDrawables:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2a
    return-void
.end method

.method private updateCursorTextAndDrable(I)V
    .registers 5

    .line 549
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursorTitleTexts:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_1d

    .line 550
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursorTitleTexts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 551
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursor:Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;

    invoke-virtual {v2, v0}, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->setText(Ljava/lang/String;)V

    .line 552
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursor:Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 555
    :cond_1d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursorTitleDrawables:Ljava/util/List;

    if-eqz v0, :cond_3b

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_3b

    .line 556
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursorTitleDrawables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_3b

    .line 558
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursor:Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 559
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursor:Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->setText(Ljava/lang/String;)V

    :cond_3b
    return-void
.end method

.method private updateCursorToProgress(IZ)V
    .registers 6

    .line 524
    sget-object v0, Lcom/transsion/camera/app/ui/widget/GraduationView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCursorToProgress progress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",needVibrate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2b

    .line 526
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursor:Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->updateCoordinateX(I)V

    .line 527
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    .line 530
    :cond_2b
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/GraduationView;->progressToGraduation(I)Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    move-result-object p1

    .line 531
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mIsWideCamera:Z

    if-eqz v0, :cond_44

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mStartVideoRecording:Z

    if-eqz v0, :cond_44

    if-eqz p1, :cond_44

    .line 532
    iget v0, p1, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mValue:I

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mMaxWideRecordingProgress:I

    if-ne v0, v1, :cond_44

    .line 533
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/GraduationView;->updateRecordingGraduation()V

    .line 534
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mRecordingMaxGraduation:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    :cond_44
    if-eqz p1, :cond_5c

    if-eqz p2, :cond_4b

    .line 539
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/GraduationView;->vibrateIfNeeded(Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;)V

    .line 541
    :cond_4b
    iget p2, p1, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mValue:I

    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/widget/GraduationView;->updateCursorTextAndDrable(I)V

    .line 542
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursor:Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mCoordinate:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {p2, p1}, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->updateCoordinateX(I)V

    .line 544
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_5c
    return-void
.end method

.method private updateGraduationsCoordinateRange()V
    .registers 3

    .line 501
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mGraduations:Ljava/util/List;

    if-eqz v0, :cond_2f

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_c

    goto :goto_2f

    .line 504
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mGraduations:Ljava/util/List;

    const/4 v1, 0x0

    .line 505
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mCoordinate:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mMinGraduationsCoordinate:I

    .line 506
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mGraduations:Ljava/util/List;

    .line 507
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mCoordinate:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mMaxGraduationsCoordinate:I

    :cond_2f
    :goto_2f
    return-void
.end method

.method private updateRecordingGraduation()V
    .registers 7

    .line 427
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mIsLimitMode:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mStartVideoRecording:Z

    if-eqz v0, :cond_b

    const/16 v0, 0x7530

    goto :goto_e

    :cond_b
    const v0, 0x186a0

    .line 429
    :goto_e
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mVideoZoomOnlySupport4X:Z

    if-eqz v1, :cond_19

    const v0, 0x9c40

    .line 432
    :cond_19
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mGraduations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1f
    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    .line 433
    iget v3, v2, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mValue:I

    iget v4, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mTeleMinProgress:I

    if-ne v3, v4, :cond_38

    iget v5, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mMaxWideRecordingProgress:I

    if-le v4, v5, :cond_38

    .line 434
    iput-object v2, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mRecordingTeleMinGraduation:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    goto :goto_1f

    :cond_38
    const/16 v5, 0x2710

    if-ne v3, v5, :cond_3f

    .line 436
    iput-object v2, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mRecordingMinGraduation:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    goto :goto_1f

    :cond_3f
    if-ne v3, v0, :cond_44

    .line 438
    iput-object v2, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mRecordingMainMaxGraduation:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    goto :goto_1f

    .line 439
    :cond_44
    iget v5, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mMaxWideRecordingProgress:I

    if-ne v3, v5, :cond_1f

    .line 440
    iput-object v2, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mRecordingMaxGraduation:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    if-gt v4, v5, :cond_1f

    .line 442
    iput-object v2, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mRecordingTeleMinGraduation:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    goto :goto_1f

    :cond_4f
    return-void
.end method

.method private vibrate(I)V
    .registers 6

    .line 258
    invoke-static {}, Lcom/transsion/camera/app/common/vibrate/VibratorController;->getInstance()Lcom/transsion/camera/app/common/vibrate/VibratorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/vibrate/VibratorController;->isSupport()Z

    move-result v0

    const/16 v1, 0x1770

    const/16 v2, 0x2710

    if-eqz v0, :cond_32

    .line 259
    const-string v0, "cam_focus.he"

    if-ne p1, v2, :cond_1e

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mLastVibrateValue:I

    if-eq v2, p1, :cond_1e

    .line 260
    invoke-static {}, Lcom/transsion/camera/app/common/vibrate/VibratorController;->getInstance()Lcom/transsion/camera/app/common/vibrate/VibratorController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/vibrate/VibratorController;->doVibrate(Ljava/lang/String;)V

    goto :goto_2f

    :cond_1e
    if-eq p1, v1, :cond_24

    .line 261
    rem-int/lit16 v1, p1, 0x2710

    if-nez v1, :cond_2f

    :cond_24
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mLastVibrateValue:I

    if-eq v1, p1, :cond_2f

    .line 262
    invoke-static {}, Lcom/transsion/camera/app/common/vibrate/VibratorController;->getInstance()Lcom/transsion/camera/app/common/vibrate/VibratorController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/vibrate/VibratorController;->doVibrate(Ljava/lang/String;)V

    .line 264
    :cond_2f
    :goto_2f
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mLastVibrateValue:I

    return-void

    .line 267
    :cond_32
    sget-object v0, Lcom/transsion/camera/app/ui/widget/GraduationView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "GraduationView use os Vibrator"

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 268
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v3

    iget-boolean v3, v3, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsRotorMotor:Z

    if-eqz v3, :cond_47

    .line 269
    const-string p0, "rotor motor does not need to vibrate"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 272
    :cond_47
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v3}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v3

    if-nez v3, :cond_56

    .line 273
    const-string/jumbo p0, "vibrator is not support!!!"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 276
    :cond_56
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_62

    .line 277
    const-string p0, "GraduationView is not visible!!!"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 280
    :cond_62
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportVibrate(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 281
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mLastValue:I

    if-ne v0, p1, :cond_71

    goto :goto_7b

    .line 284
    :cond_71
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isVibrateWhenCloseTouch(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7c

    :goto_7b
    return-void

    :cond_7c
    const/4 v0, -0x1

    if-ne p1, v2, :cond_8c

    .line 288
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mVibrator:Landroid/os/Vibrator;

    const-wide/32 v2, 0x78a27632    # 9.999458884E-315

    .line 289
    invoke-static {v2, v3, v0}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v0

    .line 288
    invoke-virtual {v1, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    goto :goto_9e

    :cond_8c
    if-eq p1, v1, :cond_92

    .line 290
    rem-int/lit16 v1, p1, 0x2710

    if-nez v1, :cond_9e

    .line 291
    :cond_92
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mVibrator:Landroid/os/Vibrator;

    const-wide/32 v2, 0x78a27631    # 9.99945888E-315

    .line 292
    invoke-static {v2, v3, v0}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v0

    .line 291
    invoke-virtual {v1, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    .line 294
    :cond_9e
    :goto_9e
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mLastValue:I

    return-void

    .line 296
    :cond_a1
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v0, 0x28

    const/4 p1, 0x1

    .line 297
    invoke-static {v0, v1, p1}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object p1

    .line 296
    invoke-virtual {p0, p1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    return-void
.end method

.method private vibrateIfNeeded(Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;)V
    .registers 3

    .line 978
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mLastSelected:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    if-ne v0, p1, :cond_5

    goto :goto_11

    .line 981
    :cond_5
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mLastSelected:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    .line 982
    iget-boolean v0, p1, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mVibrate:Z

    if-nez v0, :cond_12

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/GraduationView;->isNeedVibrate()Z

    move-result v0

    if-nez v0, :cond_12

    :goto_11
    return-void

    .line 985
    :cond_12
    iget p1, p1, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mValue:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/GraduationView;->vibrate(I)V

    return-void
.end method


# virtual methods
.method public getCurrentProgress()I
    .registers 1

    .line 1125
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mProgress:I

    return p0
.end method

.method public getIsTouch()Z
    .registers 1

    .line 1121
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mTouching:Z

    return p0
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .line 1116
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1117
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/GraduationView;->cancelAnimate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 9

    .line 667
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 669
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

    .line 671
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/widget/GraduationView;->drawGraduations(Landroid/graphics/Canvas;)V

    .line 673
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/widget/GraduationView;->drawCursor(Landroid/graphics/Canvas;)V

    .line 675
    invoke-virtual {v1, p1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 3

    .line 605
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 607
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/GraduationView;->measureWidth(I)I

    move-result p1

    .line 608
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/widget/GraduationView;->measureHeight(I)I

    move-result p2

    .line 606
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 8

    .line 658
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 659
    sget-object v0, Lcom/transsion/camera/app/ui/widget/GraduationView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSizeChanged w: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", h: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", oldw: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", oldh: "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 661
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/GraduationView;->correctCoordinate(II)V

    const/4 p1, 0x1

    .line 662
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCoordinateCorrected:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    .line 747
    invoke-static {p0}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 750
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1d5

    .line 751
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_16

    goto/16 :goto_1d5

    .line 754
    :cond_16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_19c

    if-eq v0, v2, :cond_153

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4e

    const/4 p1, 0x3

    if-eq v0, p1, :cond_27

    goto/16 :goto_1d4

    .line 850
    :cond_27
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mTouching:Z

    if-eqz p1, :cond_1d4

    .line 851
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mMoving:Z

    .line 852
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mTouching:Z

    .line 853
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursor:Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->mCoordinate:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/GraduationView;->correctCursor(I)V

    .line 854
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mOnUIStateListener:Lcom/transsion/camera/app/ui/widget/GraduationView$OnUIStateChangedListener;

    if-eqz p1, :cond_3f

    .line 855
    invoke-interface {p1, v1}, Lcom/transsion/camera/app/ui/widget/GraduationView$OnUIStateChangedListener;->onUIStateChanged(Z)V

    .line 857
    :cond_3f
    invoke-direct {p0, v2}, Lcom/transsion/camera/app/ui/widget/GraduationView;->animate(Z)V

    .line 858
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 859
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mInteractiveListener:Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$IInteractiveListener;

    if-eqz p0, :cond_1d4

    .line 860
    invoke-interface {p0, v1}, Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$IInteractiveListener;->onInteractive(Z)V

    goto/16 :goto_1d4

    .line 777
    :cond_4e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    .line 778
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mInitialTouchX:I

    sub-int v0, p1, v0

    .line 779
    iget-boolean v4, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mDownNotFromView:Z

    if-eqz v4, :cond_61

    if-gez v0, :cond_61

    iget v4, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mTouchSlop:I

    mul-int/2addr v4, v3

    goto :goto_63

    :cond_61
    iget v4, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mTouchSlop:I

    .line 780
    :goto_63
    iget v3, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mLastTouchX:I

    sub-int v3, p1, v3

    .line 781
    iget-boolean v5, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mStartVideoRecording:Z

    if-eqz v5, :cond_129

    .line 782
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mLastTouchX:I

    .line 783
    iget-boolean v5, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mIsWideCamera:Z

    if-eqz v5, :cond_9d

    iget-boolean v5, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mReversed:Z

    if-nez v5, :cond_83

    iget-object v5, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursor:Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;

    invoke-virtual {v5, v3}, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->calcaulateNextCoordinate(I)I

    move-result v5

    iget-object v6, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mRecordingMaxGraduation:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    iget-object v6, v6, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mCoordinate:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    if-ge v5, v6, :cond_95

    :cond_83
    iget-boolean v5, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mReversed:Z

    if-eqz v5, :cond_9d

    iget-object v5, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursor:Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;

    .line 784
    invoke-virtual {v5, v3}, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->calcaulateNextCoordinate(I)I

    move-result v5

    iget-object v6, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mRecordingMaxGraduation:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    iget-object v6, v6, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mCoordinate:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    if-ge v5, v6, :cond_9d

    .line 785
    :cond_95
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/widget/GraduationView;->moveCursorToLimit(Z)V

    .line 786
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_1d4

    .line 788
    :cond_9d
    iget-boolean v5, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mIsNormalCamera:Z

    if-eqz v5, :cond_f9

    .line 789
    iget-boolean v5, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mReversed:Z

    if-eqz v5, :cond_b3

    iget-object v5, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursor:Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;

    invoke-virtual {v5, v3}, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->calcaulateNextCoordinate(I)I

    move-result v5

    iget-object v6, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mRecordingMinGraduation:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    iget-object v6, v6, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mCoordinate:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    if-gt v5, v6, :cond_c5

    :cond_b3
    iget-boolean v5, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mReversed:Z

    if-nez v5, :cond_cd

    iget-object v5, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursor:Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;

    .line 790
    invoke-virtual {v5, v3}, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->calcaulateNextCoordinate(I)I

    move-result v5

    iget-object v6, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mRecordingMinGraduation:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    iget-object v6, v6, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mCoordinate:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    if-ge v5, v6, :cond_cd

    .line 791
    :cond_c5
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/widget/GraduationView;->moveCursorToLimit(Z)V

    .line 792
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_1d4

    .line 794
    :cond_cd
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mReversed:Z

    if-eqz v1, :cond_df

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursor:Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;

    invoke-virtual {v1, v3}, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->calcaulateNextCoordinate(I)I

    move-result v1

    iget-object v5, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mRecordingMainMaxGraduation:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    iget-object v5, v5, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mCoordinate:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    if-lt v1, v5, :cond_f1

    :cond_df
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mReversed:Z

    if-nez v1, :cond_129

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursor:Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;

    .line 795
    invoke-virtual {v1, v3}, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->calcaulateNextCoordinate(I)I

    move-result v1

    iget-object v5, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mRecordingMainMaxGraduation:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    iget-object v5, v5, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mCoordinate:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    if-le v1, v5, :cond_129

    .line 796
    :cond_f1
    invoke-direct {p0, v2}, Lcom/transsion/camera/app/ui/widget/GraduationView;->moveCursorToLimit(Z)V

    .line 797
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_1d4

    .line 800
    :cond_f9
    iget-boolean v5, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mIsTeleCamera:Z

    if-eqz v5, :cond_129

    iget-boolean v5, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mReversed:Z

    if-nez v5, :cond_10f

    iget-object v5, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursor:Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;

    invoke-virtual {v5, v3}, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->calcaulateNextCoordinate(I)I

    move-result v5

    iget-object v6, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mRecordingTeleMinGraduation:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    iget-object v6, v6, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mCoordinate:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    if-lt v5, v6, :cond_121

    :cond_10f
    iget-boolean v5, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mReversed:Z

    if-eqz v5, :cond_129

    iget-object v5, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursor:Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;

    .line 801
    invoke-virtual {v5, v3}, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->calcaulateNextCoordinate(I)I

    move-result v5

    iget-object v6, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mRecordingTeleMinGraduation:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    iget-object v6, v6, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mCoordinate:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    if-le v5, v6, :cond_129

    .line 802
    :cond_121
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/widget/GraduationView;->moveCursorToLimit(Z)V

    .line 803
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_1d4

    .line 807
    :cond_129
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mMoving:Z

    if-nez v1, :cond_137

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, v4, :cond_137

    .line 808
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mMoving:Z

    .line 809
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursorDirectionCoordinate:I

    .line 811
    :cond_137
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mMoving:Z

    if-eqz v0, :cond_141

    .line 812
    invoke-direct {p0, v3}, Lcom/transsion/camera/app/ui/widget/GraduationView;->onMove(I)V

    .line 813
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 815
    :cond_141
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mOnUIStateListener:Lcom/transsion/camera/app/ui/widget/GraduationView$OnUIStateChangedListener;

    if-eqz v0, :cond_148

    .line 816
    invoke-interface {v0, v2}, Lcom/transsion/camera/app/ui/widget/GraduationView$OnUIStateChangedListener;->onUIStateChanged(Z)V

    .line 818
    :cond_148
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mLastTouchX:I

    .line 819
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mOnTouchMoveListener:Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$OnTouchMoveListener;

    if-eqz p0, :cond_1d4

    .line 820
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$OnTouchMoveListener;->onTouchMoveStart()V

    goto/16 :goto_1d4

    .line 825
    :cond_153
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mMoving:Z

    if-eqz v0, :cond_161

    .line 826
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursor:Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->mCoordinate:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/GraduationView;->correctCursor(I)V

    goto :goto_16d

    .line 828
    :cond_161
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mFakeMotionEvent:Z

    if-nez v0, :cond_16d

    .line 829
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/GraduationView;->onClick(I)V

    .line 831
    :cond_16d
    :goto_16d
    invoke-direct {p0, v2}, Lcom/transsion/camera/app/ui/widget/GraduationView;->animate(Z)V

    .line 832
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 833
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mMoving:Z

    .line 834
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mTouching:Z

    .line 835
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mOnUIStateListener:Lcom/transsion/camera/app/ui/widget/GraduationView$OnUIStateChangedListener;

    if-eqz p1, :cond_17e

    .line 836
    invoke-interface {p1, v1}, Lcom/transsion/camera/app/ui/widget/GraduationView$OnUIStateChangedListener;->onUIStateChanged(Z)V

    .line 838
    :cond_17e
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mInteractiveListener:Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$IInteractiveListener;

    if-eqz p1, :cond_185

    .line 839
    invoke-interface {p1, v1}, Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$IInteractiveListener;->onInteractive(Z)V

    .line 841
    :cond_185
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mOnTouchMoveListener:Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$OnTouchMoveListener;

    if-eqz p1, :cond_18c

    .line 842
    invoke-interface {p1}, Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$OnTouchMoveListener;->onTouchMoveStop()V

    .line 844
    :cond_18c
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mStartVideoRecording:Z

    if-eqz p1, :cond_1d4

    .line 845
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mIsWideCamera:Z

    if-eqz p1, :cond_197

    const/16 p1, 0x3c

    goto :goto_199

    :cond_197
    const/16 p1, 0x69

    :goto_199
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mRecordingWideProgress:I

    goto :goto_1d4

    .line 756
    :cond_19c
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mFakeMotionEvent:Z

    if-nez v0, :cond_1a7

    .line 757
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/GraduationView;->invalidDownEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1a7

    return v1

    .line 760
    :cond_1a7
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mFakeMotionEvent:Z

    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mDownNotFromView:Z

    .line 761
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mMoving:Z

    .line 762
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mTouching:Z

    .line 763
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mInitialTouchX:I

    .line 764
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursor:Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->mCoordinate:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursorDownCoordinate:I

    .line 765
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mLastTouchX:I

    .line 766
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/widget/GraduationView;->animate(Z)V

    .line 767
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 768
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mInteractiveListener:Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$IInteractiveListener;

    if-eqz p1, :cond_1cd

    .line 769
    invoke-interface {p1, v2}, Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$IInteractiveListener;->onInteractive(Z)V

    .line 771
    :cond_1cd
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mOnUIStateListener:Lcom/transsion/camera/app/ui/widget/GraduationView$OnUIStateChangedListener;

    if-eqz p0, :cond_1d4

    .line 772
    invoke-interface {p0, v2}, Lcom/transsion/camera/app/ui/widget/GraduationView$OnUIStateChangedListener;->onUIStateChanged(Z)V

    :cond_1d4
    :goto_1d4
    return v2

    .line 752
    :cond_1d5
    :goto_1d5
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 3

    .line 1103
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_9

    .line 1105
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    .line 1107
    :cond_9
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/GraduationView;->cancelAnimate()V

    const/4 p1, 0x0

    .line 1108
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mMoving:Z

    .line 1109
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mTouching:Z

    const/4 p1, 0x0

    .line 1110
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mAnimatedValue:F

    return-void
.end method

.method public reverse(Z)V
    .registers 3

    .line 368
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mReversed:Z

    if-eq v0, p1, :cond_9

    .line 369
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mReversed:Z

    .line 370
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/GraduationView;->reverseInternal()V

    :cond_9
    return-void
.end method

.method public rotateIndicator(I)V
    .registers 3

    .line 354
    rem-int/lit16 p1, p1, 0x168

    .line 355
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mIndicatorRotateDegree:I

    if-eq v0, p1, :cond_b

    .line 356
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mIndicatorRotateDegree:I

    .line 357
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/GraduationView;->rotateIndicatorInternal(I)V

    :cond_b
    return-void
.end method

.method public setAnimatedValForZoom(Z)V
    .registers 2

    if-eqz p1, :cond_7

    const/high16 p1, 0x3f800000    # 1.0f

    .line 1131
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mAnimatedValue:F

    return-void

    :cond_7
    const/4 p1, 0x0

    .line 1133
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mAnimatedValue:F

    .line 1134
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCurrentLimitations(ZZZI)V
    .registers 5

    .line 685
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mIsTeleCamera:Z

    .line 686
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mIsNormalCamera:Z

    .line 687
    iput-boolean p3, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mIsLimitMode:Z

    .line 688
    iput p4, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mTeleMinProgress:I

    .line 689
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/GraduationView;->updateRecordingGraduation()V

    .line 690
    iget-object p3, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mGraduationHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    if-eqz p3, :cond_16

    .line 691
    iget-boolean p4, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mIsLimitMode:Z

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mTeleMinProgress:I

    invoke-virtual {p3, p1, p2, p4, p0}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->setCurrentLimitations(ZZZI)V

    :cond_16
    return-void
.end method

.method public setCursorMoveCount(I)V
    .registers 2

    .line 302
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursorMoveCount:I

    return-void
.end method

.method public setCursorTitleContents([Ljava/lang/String;[Landroid/graphics/drawable/Drawable;)V
    .registers 3

    if-eqz p2, :cond_e

    .line 311
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/GraduationView;->setCursorTitleContents(Ljava/util/List;Ljava/util/List;)V

    return-void

    .line 313
    :cond_e
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/GraduationView;->setCursorTitleContents(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public setFakeMotionEvent(Z)V
    .registers 2

    .line 740
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mFakeMotionEvent:Z

    return-void
.end method

.method public setIndependentCursorIndexList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 306
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mIndependentCursorIndexList:Ljava/util/List;

    return-void
.end method

.method public setInteractiveListener(Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$IInteractiveListener;)V
    .registers 2

    .line 253
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mInteractiveListener:Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$IInteractiveListener;

    return-void
.end method

.method public setNeedAnimate(Z)V
    .registers 2

    .line 388
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mNeedAnimate:Z

    return-void
.end method

.method public setOnProgressChangeListener(Lcom/transsion/camera/app/ui/widget/GraduationView$OnProgressChangeListener;)V
    .registers 2

    .line 242
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mListener:Lcom/transsion/camera/app/ui/widget/GraduationView$OnProgressChangeListener;

    return-void
.end method

.method public setOnTouchMoveListener(Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$OnTouchMoveListener;)V
    .registers 2

    .line 248
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mOnTouchMoveListener:Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$OnTouchMoveListener;

    return-void
.end method

.method public setOnUIStateListener(Lcom/transsion/camera/app/ui/widget/GraduationView$OnUIStateChangedListener;)V
    .registers 2

    .line 184
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mOnUIStateListener:Lcom/transsion/camera/app/ui/widget/GraduationView$OnUIStateChangedListener;

    return-void
.end method

.method public setPauseIndependentIndex(I)V
    .registers 2

    .line 318
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mPauseIndependentIndex:I

    return-void
.end method

.method public setProgress(I)V
    .registers 3

    .line 583
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mStyle:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->getGraduationMinValue()I

    move-result v0

    if-lez v0, :cond_2c

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mStyle:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->getGraduationMaxValue()I

    move-result v0

    if-lez v0, :cond_2c

    .line 584
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mStyle:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->getGraduationMinValue()I

    move-result v0

    if-ge p1, v0, :cond_1e

    .line 585
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mStyle:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->getGraduationMinValue()I

    move-result p1

    .line 587
    :cond_1e
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mStyle:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->getGraduationMaxValue()I

    move-result v0

    if-le p1, v0, :cond_2c

    .line 588
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mStyle:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->getGraduationMaxValue()I

    move-result p1

    :cond_2c
    const/4 v0, 0x1

    .line 591
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/GraduationView;->setProgress(IZ)V

    return-void
.end method

.method public setProgress(IZ)V
    .registers 6

    .line 595
    sget-object v0, Lcom/transsion/camera/app/ui/widget/GraduationView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProgress progress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mCoordinateCorrected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCoordinateCorrected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 596
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mProgress:I

    .line 597
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCoordinateCorrected:Z

    if-eqz v0, :cond_29

    .line 598
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/GraduationView;->updateCursorToProgress(IZ)V

    :cond_29
    return-void
.end method

.method public setRecordWideProgress(IZ)V
    .registers 3

    .line 173
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mRecordingWideProgress:I

    .line 174
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mIsWideCamera:Z

    return-void
.end method

.method public setStartVideoRecording(Z)V
    .registers 2

    .line 169
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mStartVideoRecording:Z

    return-void
.end method

.method public setStyle(Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;)V
    .registers 5

    .line 322
    sget-object v0, Lcom/transsion/camera/app/ui/widget/GraduationView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStyle style: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mStyle:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    if-ne v0, p1, :cond_1f

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mCursorMoveCount:I

    if-nez v0, :cond_1f

    return-void

    .line 327
    :cond_1f
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mStyle:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    const/4 p1, 0x1

    .line 328
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mNeedAnimate:Z

    .line 330
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/GraduationView;->initCursorAndGraduations()V

    .line 332
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public updateScreenFormType(IZ)V
    .registers 7

    .line 344
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mGraduationHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->updateScreenFormType(IZ)V

    const/4 p2, 0x0

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v2, p1, :cond_12

    if-eq v1, p1, :cond_12

    if-ne v0, p1, :cond_10

    goto :goto_12

    :cond_10
    move v3, p2

    goto :goto_13

    :cond_12
    :goto_12
    move v3, v2

    .line 345
    :goto_13
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/widget/GraduationView;->reverse(Z)V

    if-eq v2, p1, :cond_1c

    if-eq v1, p1, :cond_1c

    if-ne v0, p1, :cond_1e

    :cond_1c
    const/16 p2, -0x5a

    .line 348
    :cond_1e
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/widget/GraduationView;->rotateIndicator(I)V

    return-void
.end method

.method public updateSeekBarStyle(ZZ)V
    .registers 3

    .line 679
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/GraduationView;->mGraduationHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    if-eqz p0, :cond_7

    .line 680
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->updateRecordingSeekBarColor(ZZ)V

    :cond_7
    return-void
.end method
