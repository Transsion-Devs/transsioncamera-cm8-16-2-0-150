.class public Lcom/transsion/camera/app/ui/widget/SmoothZoomView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/widget/SmoothZoomView$SmoothUIStateChangeListener;,
        Lcom/transsion/camera/app/ui/widget/SmoothZoomView$SmoothInteractiveListener;,
        Lcom/transsion/camera/app/ui/widget/SmoothZoomView$SmoothProgressChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAlreadyBlocked:Z

.field private mAngle:F

.field private mBackPressed:Z

.field private mBaseFocalLength:F

.field private mBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mBlockProgress:I

.field private final mBorderColor:I

.field private mCheckBlockRatio:F

.field private mContext:Landroid/content/Context;

.field private mCurTouchPointId:I

.field private mCurrentMoveX:F

.field private mCurrentRatioTextSize:F

.field private mCurrentZoomRatio:Ljava/lang/String;

.field private mCurrentZoomRatioPaint:Landroid/graphics/Paint;

.field private mCursorDrawable:Landroid/graphics/drawable/Drawable;

.field private mCursorHeight:F

.field private mCursorWidth:F

.field private mDescriptionTextPaint:Landroid/graphics/Paint;

.field private mDescriptionTextShaderPaint:Landroid/graphics/Paint;

.field private mDiscFactory:Lcom/transsion/camera/app/ui/widget/disc/factory/IDiscFactory;

.field private mDsSuffixTextSize:F

.field private mDsTextShader:Landroid/graphics/LinearGradient;

.field private mEffectShader:Landroid/graphics/LinearGradient;

.field private mEffectiveTickPaint:Landroid/graphics/Paint;

.field private mEndPoint:F

.field private mInteractiveListener:Lcom/transsion/camera/app/ui/widget/SmoothZoomView$SmoothInteractiveListener;

.field private final mInvalidColor:I

.field private mInvalidShader:Landroid/graphics/LinearGradient;

.field private mInvalidTickPaint:Landroid/graphics/Paint;

.field private mIsBeingHidden:Z

.field private mIsLeftScroll:Z

.field private mIsMainCamera:Z

.field private mIsMoveLeftLimit:Z

.field private mIsMoveRightLimit:Z

.field private mIsSatCamera:Z

.field private mIsTeleCamera:Z

.field private mIsTouchZoomTick:Z

.field private mIsVideoStartRecording:Z

.field private mIsWideCamera:Z

.field private mLastMoveX:F

.field private mLastValue:I

.field private mLastZoomRatio:Ljava/lang/String;

.field private mLongRadius:F

.field private mMajorSfTextSize:F

.field private mMaxDampingParameter:F

.field private final mMiddleColor:I

.field private mMinDampingParameter:F

.field private mMoveRadians:D

.field private mMoveSpeed:F

.field private final mNormalColor:I

.field private mNormalTextSize:F

.field private mOrientation:I

.field private mRectF:Landroid/graphics/RectF;

.field private mRectMajorHeight:F

.field private mRectNormalHeight:F

.field private mRectWidth:F

.field private mScrollBlockScrollX:F

.field private mScrollBlocked:Z

.field private mScrollLeft:Z

.field private mSelectValue:I

.field private mSfDescriptionTextPaint:Landroid/graphics/Paint;

.field private mSfDescriptionTextShaderPaint:Landroid/graphics/Paint;

.field private mSfDsTextShader:Landroid/graphics/LinearGradient;

.field private final mShadowColor:I

.field private mShortRadius:F

.field private mSmoothZoomStyle:Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;

.field private mStartAngle:F

.field private mStartPoint:F

.field private mSuffixTextPaint:Landroid/graphics/Paint;

.field private mSuffixTextSize:F

.field private mTeleMinValue:I

.field private mTickBorderPaint:Landroid/graphics/Paint;

.field private mTickBorderShader:Landroid/graphics/LinearGradient;

.field private mTickBorderTextShader:Landroid/graphics/LinearGradient;

.field private mTickBottomDistance:F

.field private mTickCount:I

.field private mTickTextPaint:Landroid/graphics/Paint;

.field private mTickTextShader:Landroid/graphics/LinearGradient;

.field private mTickTextShaderPaint:Landroid/graphics/Paint;

.field private mTickZoomList:Ljava/util/ArrayList;

.field private mUIStateChangeListener:Lcom/transsion/camera/app/ui/widget/SmoothZoomView$SmoothUIStateChangeListener;

.field private mUpdateScrollBlockX:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVibrateArrays:[I

.field private mViewPadding:F

.field private mViewProgressChangeListener:Lcom/transsion/camera/app/ui/widget/SmoothZoomView$SmoothProgressChangeListener;

.field private mViewTickHeight:F

.field private mViewTickWidth:F

.field private mViewWidth:F

.field private mXVelocity:F

.field private mZoomBgHeight:F

.field private mZoomRationList:Ljava/util/List;

.field private mZoomViewHeight:I


# direct methods
.method public static synthetic $r8$lambda$m2v8_E_lVHZ9TqMU64dQ8x-4V_c(Lcom/transsion/camera/app/ui/widget/SmoothZoomView;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->lambda$startSelectedAnimator$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 37
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 173
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    const-string p2, "#000000"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mShadowColor:I

    .line 49
    const-string p2, "#00FFFFFF"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mNormalColor:I

    .line 50
    const-string p2, "#FFFFFFFF"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mMiddleColor:I

    .line 51
    const-string p2, "#2E000000"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mBorderColor:I

    .line 52
    const-string p2, "#99FFFFFF"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mInvalidColor:I

    const/4 p2, 0x0

    .line 79
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mBlockProgress:I

    const/16 v0, 0x2710

    .line 80
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSelectValue:I

    .line 81
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mLastValue:I

    .line 82
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mOrientation:I

    const v0, 0x3f75c28f    # 0.96f

    .line 115
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mCheckBlockRatio:F

    .line 133
    const-string v0, "1"

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mCurrentZoomRatio:Ljava/lang/String;

    .line 139
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mCurTouchPointId:I

    .line 174
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mContext:Landroid/content/Context;

    .line 175
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->init()V

    return-void
.end method

.method public static calculateColor(Ljava/lang/String;Ljava/lang/String;F)Ljava/lang/String;
    .registers 11

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 658
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x5

    .line 659
    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x7

    .line 660
    invoke-virtual {p0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    .line 661
    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    .line 663
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 664
    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 665
    invoke-virtual {p1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 666
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    sub-int/2addr v0, v2

    int-to-float v0, v0

    mul-float/2addr v0, p2

    int-to-float v2, v2

    add-float/2addr v0, v2

    float-to-int v0, v0

    sub-int/2addr v1, v5

    int-to-float v1, v1

    mul-float/2addr v1, p2

    int-to-float v2, v5

    add-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr v4, v7

    int-to-float v2, v4

    mul-float/2addr v2, p2

    int-to-float v3, v7

    add-float/2addr v2, v3

    float-to-int v2, v2

    sub-int/2addr p1, p0

    int-to-float p1, p1

    mul-float/2addr p1, p2

    int-to-float p0, p0

    add-float/2addr p1, p0

    float-to-int p0, p1

    .line 672
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "#"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->getHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->getHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->getHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->getHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private calculateDefaultAngle(F)D
    .registers 6

    .line 809
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDiscFactory:Lcom/transsion/camera/app/ui/widget/disc/factory/IDiscFactory;

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/ui/widget/disc/factory/IDiscFactory;->getIndex(F)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1b

    .line 811
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickCount:I

    int-to-double v0, p0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v2, v0

    int-to-double p0, p1

    mul-double/2addr v2, p0

    const-wide p0, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr p0, v2

    return-wide p0

    :cond_1b
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method private calculateModeAngleDifference()D
    .registers 5

    .line 925
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickCount:I

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickZoomList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v0, v1, :cond_1f

    .line 926
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickCount:I

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickZoomList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickCount:I

    int-to-double v2, p0

    div-double/2addr v0, v2

    return-wide v0

    :cond_1f
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private calculateMoveAngle(Landroid/view/MotionEvent;)V
    .registers 8

    if-eqz p1, :cond_b0

    .line 932
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mIsTouchZoomTick:Z

    if-nez v0, :cond_8

    goto/16 :goto_b0

    .line 936
    :cond_8
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mXVelocity:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x43fa0000    # 500.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_17

    .line 937
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mMinDampingParameter:F

    goto :goto_19

    .line 939
    :cond_17
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mMaxDampingParameter:F

    .line 941
    :goto_19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    .line 942
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mScrollBlocked:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_63

    const v1, 0x3f7d70a4    # 0.99f

    .line 943
    iput v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mCheckBlockRatio:F

    .line 944
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mUpdateScrollBlockX:Z

    if-eqz v1, :cond_4b

    .line 945
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mScrollBlockScrollX:F

    .line 946
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mUpdateScrollBlockX:Z

    .line 947
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mCurrentZoomRatio:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->findClosestValue(F)F

    move-result v1

    const v3, 0x461c4000    # 10000.0f

    mul-float/2addr v1, v3

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->getSelectedZoomDegree(F)F

    move-result v1

    iput v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mAngle:F

    .line 948
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mCurrentZoomRatio:Ljava/lang/String;

    iput-object v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mLastZoomRatio:Ljava/lang/String;

    .line 949
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mLastValue:I

    iput v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mBlockProgress:I

    .line 951
    :cond_4b
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mScrollBlockScrollX:F

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v1, v0

    if-lez v0, :cond_b0

    .line 952
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mZoomViewHeight:I

    int-to-float v0, v0

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->getAngle(FF)F

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mStartAngle:F

    .line 953
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mScrollBlocked:Z

    return-void

    :cond_63
    const v0, 0x3f75c28f    # 0.96f

    .line 957
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mCheckBlockRatio:F

    const/4 v0, 0x1

    .line 958
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mAlreadyBlocked:Z

    .line 959
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mUpdateScrollBlockX:Z

    .line 960
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mZoomViewHeight:I

    int-to-float v1, v1

    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->getAngle(FF)F

    move-result p1

    .line 961
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mStartAngle:F

    sub-float v1, p1, v1

    .line 963
    sget-object v3, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[calculateMoveAngle:] : ,min : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDiscFactory:Lcom/transsion/camera/app/ui/widget/disc/factory/IDiscFactory;

    invoke-interface {v5, v2}, Lcom/transsion/camera/app/ui/widget/disc/factory/IDiscFactory;->getValue(I)F

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",max : "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDiscFactory:Lcom/transsion/camera/app/ui/widget/disc/factory/IDiscFactory;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickZoomList:Ljava/util/ArrayList;

    .line 964
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-interface {v2, v5}, Lcom/transsion/camera/app/ui/widget/disc/factory/IDiscFactory;->getValue(I)F

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 963
    invoke-static {v3, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 965
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mAngle:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mAngle:F

    .line 966
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mStartAngle:F

    :cond_b0
    :goto_b0
    return-void
.end method

.method private calculateMoveProgress()V
    .registers 7

    .line 991
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDiscFactory:Lcom/transsion/camera/app/ui/widget/disc/factory/IDiscFactory;

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mAngle:F

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSelectValue:I

    int-to-float v2, v2

    invoke-direct {p0, v2}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->calculateDefaultAngle(F)D

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/transsion/camera/app/ui/widget/disc/factory/IDiscFactory;->calculateProgress(FD)D

    move-result-wide v0

    .line 992
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    div-int/lit8 v2, v2, 0xa

    mul-int/lit8 v2, v2, 0xa

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mLastValue:I

    .line 993
    sget-object v2, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[calculateMoveProgress],mLastValue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mLastValue:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",progress: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 994
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    div-int/lit8 v4, v4, 0xa

    mul-int/lit8 v4, v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 993
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 995
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mViewProgressChangeListener:Lcom/transsion/camera/app/ui/widget/SmoothZoomView$SmoothProgressChangeListener;

    if-eqz p0, :cond_53

    .line 996
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    div-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0xa

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView$SmoothProgressChangeListener;->onProgressChanged(I)V

    :cond_53
    return-void
.end method

.method private calculateRadians(I)F
    .registers 9

    const v0, 0x461c4000    # 10000.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v2, 0x2710

    if-gt p1, v2, :cond_22

    const v2, 0x45bb8000    # 6000.0f

    .line 245
    invoke-direct {p0, v2}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->calculateDefaultAngle(F)D

    move-result-wide v2

    double-to-float v2, v2

    .line 246
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->calculateDefaultAngle(F)D

    move-result-wide v3

    double-to-float p0, v3

    add-int/lit16 p1, p1, -0x1770

    int-to-float p1, p1

    mul-float/2addr p1, v1

    const/high16 v0, 0x457a0000    # 4000.0f

    div-float/2addr p1, v0

    sub-float p0, v2, p0

    mul-float/2addr p1, p0

    sub-float/2addr v2, p1

    return v2

    :cond_22
    const v3, 0x469c4000    # 20000.0f

    const/16 v4, 0x4e20

    if-gt p1, v4, :cond_3c

    .line 249
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->calculateDefaultAngle(F)D

    move-result-wide v4

    double-to-float v4, v4

    .line 250
    invoke-direct {p0, v3}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->calculateDefaultAngle(F)D

    move-result-wide v5

    double-to-float p0, v5

    sub-int/2addr p1, v2

    int-to-float p1, p1

    mul-float/2addr p1, v1

    div-float/2addr p1, v0

    sub-float p0, v4, p0

    mul-float/2addr p1, p0

    sub-float/2addr v4, p1

    return v4

    :cond_3c
    const v0, 0xc350

    const v2, 0x47435000    # 50000.0f

    if-gt p1, v0, :cond_5a

    .line 253
    invoke-direct {p0, v3}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->calculateDefaultAngle(F)D

    move-result-wide v5

    double-to-float v0, v5

    .line 254
    invoke-direct {p0, v2}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->calculateDefaultAngle(F)D

    move-result-wide v2

    double-to-float p0, v2

    sub-int/2addr p1, v4

    int-to-float p1, p1

    mul-float/2addr p1, v1

    const v1, 0x46ea6000    # 30000.0f

    div-float/2addr p1, v1

    sub-float p0, v0, p0

    mul-float/2addr p1, p0

    sub-float/2addr v0, p1

    return v0

    :cond_5a
    const v3, 0x186a0

    if-gt p1, v3, :cond_75

    .line 257
    invoke-direct {p0, v2}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->calculateDefaultAngle(F)D

    move-result-wide v3

    double-to-float v3, v3

    const v4, 0x47c35000    # 100000.0f

    .line 258
    invoke-direct {p0, v4}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->calculateDefaultAngle(F)D

    move-result-wide v4

    double-to-float p0, v4

    sub-int/2addr p1, v0

    int-to-float p1, p1

    mul-float/2addr p1, v1

    div-float/2addr p1, v2

    sub-float p0, v3, p0

    mul-float/2addr p1, p0

    sub-float/2addr v3, p1

    return v3

    :cond_75
    const/4 p0, 0x0

    return p0
.end method

.method private checkZoomRatioBlock(FLjava/lang/String;)V
    .registers 9

    .line 637
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDiscFactory:Lcom/transsion/camera/app/ui/widget/disc/factory/IDiscFactory;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSmoothZoomStyle:Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;->getMinValue()I

    move-result v1

    int-to-float v1, v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/ui/widget/disc/factory/IDiscFactory;->getIndex(F)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_12

    move v0, v1

    .line 641
    :cond_12
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickZoomList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomTickPanel;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomTickPanel;->getTickText()Ljava/lang/String;

    move-result-object v0

    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 642
    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDiscFactory:Lcom/transsion/camera/app/ui/widget/disc/factory/IDiscFactory;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSmoothZoomStyle:Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;

    invoke-virtual {v5}, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;->getMaxValue()I

    move-result v5

    int-to-float v5, v5

    invoke-interface {v4, v5}, Lcom/transsion/camera/app/ui/widget/disc/factory/IDiscFactory;->getIndex(F)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v2, :cond_3c

    .line 644
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickZoomList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v4, v2, -0x1

    .line 646
    :cond_3c
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickZoomList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomTickPanel;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomTickPanel;->getTickText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 647
    iget v3, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mCheckBlockRatio:F

    cmpl-float p1, p1, v3

    if-lez p1, :cond_8e

    aget-object p1, v0, v1

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8e

    aget-object p1, v2, v1

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8e

    iget p1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mBlockProgress:I

    iget p2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mLastValue:I

    if-eq p1, p2, :cond_8e

    .line 648
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mAlreadyBlocked:Z

    if-eqz p1, :cond_8e

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mScrollLeft:Z

    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mIsLeftScroll:Z

    if-ne p1, p2, :cond_86

    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mCurrentZoomRatio:Ljava/lang/String;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mLastZoomRatio:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8e

    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mZoomRationList:Ljava/util/List;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mCurrentZoomRatio:Ljava/lang/String;

    .line 649
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8e

    .line 650
    :cond_86
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mIsLeftScroll:Z

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mScrollLeft:Z

    .line 651
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mScrollBlocked:Z

    .line 652
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mAlreadyBlocked:Z

    :cond_8e
    return-void
.end method

.method private drawBackGround(Landroid/graphics/Canvas;)V
    .registers 9

    .line 388
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mViewWidth:F

    neg-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v3, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mZoomViewHeight:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mViewTickHeight:F

    div-float/2addr v4, v2

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mZoomBgHeight:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mViewWidth:F

    div-float/2addr v4, v2

    iget v5, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mZoomViewHeight:I

    .line 389
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mViewTickHeight:F

    div-float/2addr v6, v2

    sub-float/2addr v5, v6

    .line 388
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 390
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mRectF:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v1, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v1, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v1, v1

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 391
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawCursor(Landroid/graphics/Canvas;)V
    .registers 15

    .line 395
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mCursorWidth:F

    neg-float v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 396
    iget v3, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mViewTickHeight:F

    div-float/2addr v3, v2

    iget v4, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mCursorHeight:F

    sub-float/2addr v3, v4

    const/high16 v5, 0x40e00000    # 7.0f

    sub-float/2addr v3, v5

    .line 397
    iget-object v5, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mCursorDrawable:Landroid/graphics/drawable/Drawable;

    float-to-int v6, v1

    float-to-int v7, v3

    add-float/2addr v0, v1

    float-to-int v0, v0

    add-float/2addr v4, v3

    float-to-int v3, v4

    invoke-virtual {v5, v6, v7, v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 399
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mCursorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 401
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mCurrentZoomRatio:Ljava/lang/String;

    const-string v3, "1"

    if-nez v0, :cond_2c

    .line 402
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mCurrentZoomRatioPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    goto :goto_32

    .line 404
    :cond_2c
    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mCurrentZoomRatioPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 406
    :goto_32
    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSuffixTextPaint:Landroid/graphics/Paint;

    const-string v5, "X"

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    .line 407
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 408
    iget v6, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mOrientation:I

    int-to-float v6, v6

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 409
    iget-object v6, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mCurrentZoomRatioPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    add-float v6, v0, v4

    div-float/2addr v6, v2

    sub-float v7, v1, v6

    sub-float/2addr v0, v4

    div-float/2addr v0, v2

    add-float v4, v1, v0

    .line 412
    iget v8, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mViewTickHeight:F

    neg-float v9, v8

    const/high16 v10, 0x41000000    # 8.0f

    div-float/2addr v9, v10

    .line 413
    iget v11, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mOrientation:I

    const/16 v12, 0xb4

    if-ne v11, v12, :cond_6a

    neg-float v1, v1

    sub-float v7, v1, v6

    add-float v4, v1, v0

    div-float v0, v8, v2

    div-float/2addr v8, v10

    sub-float/2addr v0, v8

    div-float/2addr v3, v2

    sub-float v9, v0, v3

    .line 418
    :cond_6a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mCurrentZoomRatio:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mCurrentZoomRatioPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v7, v9, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 419
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSuffixTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v4, v9, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 420
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 421
    sget-object p1, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[drawCursor],  width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mCurrentZoomRatio : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mCurrentZoomRatio:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private drawDescText(Ljava/lang/String;FFFLandroid/graphics/Canvas;)V
    .registers 11

    .line 566
    invoke-virtual {p5}, Landroid/graphics/Canvas;->save()I

    .line 567
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mOrientation:I

    int-to-float v0, v0

    invoke-virtual {p5, v0}, Landroid/graphics/Canvas;->rotate(F)V

    add-float v0, p3, p4

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float v2, p2, v0

    div-float/2addr p4, v1

    add-float v3, p2, p4

    div-float/2addr p3, v1

    sub-float/2addr v3, p3

    .line 571
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mOrientation:I

    const/16 v4, 0xb4

    if-ne v1, v4, :cond_2d

    neg-float p2, p2

    sub-float v2, p2, v0

    add-float/2addr p2, p4

    sub-float v3, p2, p3

    .line 574
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDescriptionTextPaint:Landroid/graphics/Paint;

    const-string p3, "14"

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p2

    const/high16 p3, -0x3ee00000    # -10.0f

    add-float/2addr p2, p3

    goto :goto_2f

    :cond_2d
    const/high16 p2, 0x41100000    # 9.0f

    .line 576
    :goto_2f
    iget-object p3, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDescriptionTextShaderPaint:Landroid/graphics/Paint;

    invoke-virtual {p5, p1, v2, p2, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 577
    iget-object p3, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDescriptionTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p5, p1, v2, p2, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 578
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSfDescriptionTextShaderPaint:Landroid/graphics/Paint;

    const-string p3, "mm"

    invoke-virtual {p5, p3, v3, p2, p1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 579
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSfDescriptionTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p5, p3, v3, p2, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 580
    invoke-virtual {p5}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawEffectiveTicks(Landroid/graphics/Canvas;)V
    .registers 20

    move-object/from16 v0, p0

    .line 474
    sget-object v1, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SmoothZoomView, drawEffectiveTicks,mTickCount : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 475
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mEffectiveTickPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mEffectShader:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 476
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mInvalidTickPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mInvalidShader:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 477
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickTextPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickTextShader:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 478
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickTextShaderPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickBorderTextShader:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 479
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickBorderPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickBorderShader:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 480
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDescriptionTextPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDsTextShader:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 481
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDescriptionTextShaderPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSfDsTextShader:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 482
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSfDescriptionTextPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDsTextShader:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 483
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSfDescriptionTextShaderPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSfDsTextShader:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 v6, 0x0

    move v4, v6

    .line 485
    :goto_5b
    iget v1, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickCount:I

    if-ge v4, v1, :cond_20c

    int-to-double v2, v4

    const-wide v7, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v7

    int-to-double v9, v1

    div-double/2addr v2, v9

    sub-double v1, v7, v2

    .line 486
    iget v3, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mAngle:F

    float-to-double v9, v3

    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    iget v3, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mMoveSpeed:F

    float-to-double v11, v3

    mul-double/2addr v9, v11

    sub-double/2addr v1, v9

    iget-wide v9, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mMoveRadians:D

    sub-double/2addr v1, v9

    .line 487
    iget v3, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mLongRadius:F

    float-to-double v9, v3

    iget v3, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mStartPoint:F

    float-to-double v11, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v11, v13

    add-double/2addr v9, v11

    double-to-float v9, v9

    .line 488
    iget v3, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mShortRadius:F

    float-to-double v10, v3

    iget v3, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mEndPoint:F

    float-to-double v12, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v16, v16, v14

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    add-double v16, v16, v14

    mul-double v12, v12, v16

    add-double/2addr v10, v12

    double-to-float v10, v10

    .line 490
    iget v3, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mRectWidth:F

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v3, v11

    sub-float v3, v9, v3

    iget v5, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mViewWidth:F

    div-float/2addr v5, v11

    sub-float v5, v3, v5

    .line 491
    iget-object v3, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickZoomList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v4, v3, :cond_164

    .line 492
    iget-object v3, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickZoomList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomTickPanel;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomTickPanel;->getTickText()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_164

    .line 494
    const-string v12, "_"

    invoke-virtual {v3, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 495
    iget-object v12, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickTextPaint:Landroid/graphics/Paint;

    iget v13, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mNormalTextSize:F

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 496
    iget-object v12, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickTextShaderPaint:Landroid/graphics/Paint;

    iget v13, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mNormalTextSize:F

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 497
    iget-object v12, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDescriptionTextPaint:Landroid/graphics/Paint;

    iget v13, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSuffixTextSize:F

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 498
    iget-object v12, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDescriptionTextShaderPaint:Landroid/graphics/Paint;

    iget v13, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSuffixTextSize:F

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 499
    iget-object v12, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSfDescriptionTextPaint:Landroid/graphics/Paint;

    iget v13, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDsSuffixTextSize:F

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 500
    iget-object v12, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSfDescriptionTextShaderPaint:Landroid/graphics/Paint;

    iget v13, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDsSuffixTextSize:F

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 501
    iget-object v12, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickTextPaint:Landroid/graphics/Paint;

    aget-object v13, v3, v6

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v12

    const-wide/16 v13, 0x0

    cmpl-double v13, v1, v13

    if-lez v13, :cond_164

    cmpg-double v1, v1, v7

    if-gez v1, :cond_164

    .line 503
    iget-boolean v1, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mIsVideoStartRecording:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_11b

    iget-boolean v1, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mIsSatCamera:Z

    if-nez v1, :cond_11b

    move v1, v2

    .line 504
    aget-object v2, v3, v6

    aget-object v3, v3, v1

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->drawRecordingText(Landroid/graphics/Canvas;Ljava/lang/String;Ljava/lang/String;IF)V

    move v7, v4

    move-object v5, v1

    goto :goto_167

    :cond_11b
    move v1, v2

    move v7, v4

    move v2, v5

    move-object/from16 v5, p1

    .line 506
    invoke-direct {v0, v3, v2}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->dynamicModifyPaintColor([Ljava/lang/String;F)V

    div-float v4, v12, v11

    sub-float v4, v2, v4

    .line 508
    aget-object v8, v3, v6

    invoke-direct {v0, v8, v4, v12, v5}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->drawMajorText(Ljava/lang/String;FFLandroid/graphics/Canvas;)V

    .line 509
    aget-object v4, v3, v1

    const-string v8, "null"

    invoke-static {v4, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_167

    .line 510
    iget-object v4, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSfDescriptionTextPaint:Landroid/graphics/Paint;

    const-string v8, "mm"

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    .line 511
    iget-object v8, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDescriptionTextPaint:Landroid/graphics/Paint;

    aget-object v12, v3, v1

    invoke-virtual {v8, v12}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    .line 512
    iget-object v12, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDescriptionTextPaint:Landroid/graphics/Paint;

    const/16 v13, 0x99

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 513
    iget-object v12, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDescriptionTextShaderPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 514
    iget-object v12, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSfDescriptionTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 515
    iget-object v12, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSfDescriptionTextShaderPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 516
    aget-object v1, v3, v1

    move v3, v4

    move v4, v8

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->drawDescText(Ljava/lang/String;FFFLandroid/graphics/Canvas;)V

    goto :goto_167

    :cond_164
    move-object/from16 v5, p1

    move v7, v4

    .line 523
    :cond_167
    :goto_167
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickZoomList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/high16 v2, 0x40800000    # 4.0f

    const/high16 v3, 0x40c00000    # 6.0f

    if-ge v7, v1, :cond_1dd

    .line 524
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickZoomList:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomTickPanel;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomTickPanel;->getTickText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_184

    iget v1, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mRectMajorHeight:F

    goto :goto_186

    :cond_184
    iget v1, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mRectNormalHeight:F

    .line 525
    :goto_186
    iget v4, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mRectWidth:F

    div-float/2addr v4, v11

    sub-float/2addr v9, v4

    iget v4, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mViewWidth:F

    div-float/2addr v4, v11

    sub-float/2addr v9, v4

    div-float v4, v1, v11

    sub-float/2addr v10, v4

    .line 526
    iget v4, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mViewTickHeight:F

    div-float/2addr v4, v11

    sub-float/2addr v10, v4

    sub-float/2addr v10, v2

    iget v2, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickBottomDistance:F

    add-float/2addr v10, v2

    .line 527
    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickZoomList:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomTickPanel;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomTickPanel;->getTickText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1b2

    .line 528
    iget v2, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mRectMajorHeight:F

    iget v4, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mRectNormalHeight:F

    sub-float/2addr v2, v4

    div-float/2addr v2, v11

    sub-float/2addr v10, v2

    iget v2, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickBottomDistance:F

    div-float/2addr v2, v11

    add-float/2addr v10, v2

    .line 530
    :cond_1b2
    iget v2, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mRectWidth:F

    add-float/2addr v2, v9

    add-float/2addr v1, v10

    .line 532
    iget-boolean v4, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mIsVideoStartRecording:Z

    if-eqz v4, :cond_1c9

    iget-boolean v4, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mIsSatCamera:Z

    if-nez v4, :cond_1c9

    .line 533
    iget-object v3, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v3, v9, v10, v2, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 534
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mRectF:Landroid/graphics/RectF;

    invoke-direct {v0, v5, v7, v1}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->drawRecordingTicks(Landroid/graphics/Canvas;ILandroid/graphics/RectF;)V

    goto :goto_208

    .line 536
    :cond_1c9
    iget-object v4, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v4, v9, v10, v2, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 537
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mRectF:Landroid/graphics/RectF;

    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mEffectiveTickPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 538
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mRectF:Landroid/graphics/RectF;

    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_208

    .line 541
    :cond_1dd
    iget v1, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mRectWidth:F

    div-float v4, v1, v11

    sub-float/2addr v9, v4

    iget v4, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mViewWidth:F

    div-float/2addr v4, v11

    sub-float/2addr v9, v4

    .line 542
    iget v4, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mRectNormalHeight:F

    div-float v8, v4, v11

    sub-float/2addr v10, v8

    iget v8, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mViewTickHeight:F

    div-float/2addr v8, v11

    sub-float/2addr v10, v8

    sub-float/2addr v10, v2

    iget v2, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickBottomDistance:F

    add-float/2addr v10, v2

    add-float/2addr v1, v9

    add-float/2addr v4, v10

    .line 545
    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v2, v9, v10, v1, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 546
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mRectF:Landroid/graphics/RectF;

    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mInvalidTickPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 547
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mRectF:Landroid/graphics/RectF;

    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_208
    add-int/lit8 v4, v7, 0x1

    goto/16 :goto_5b

    :cond_20c
    return-void
.end method

.method private drawInvalidTicks(Landroid/graphics/Canvas;)V
    .registers 12

    .line 684
    sget-object v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SmoothZoomView, drawInvalidTicks"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 685
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mInvalidTickPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 686
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mInvalidTickPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mInvalidShader:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 v0, 0x1

    .line 688
    :goto_15
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickCount:I

    if-gt v0, v1, :cond_8b

    int-to-double v2, v0

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    int-to-double v6, v1

    div-double/2addr v2, v6

    add-double/2addr v2, v4

    .line 689
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mAngle:F

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mMoveSpeed:F

    float-to-double v6, v1

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mMoveRadians:D

    sub-double/2addr v2, v4

    .line 690
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mLongRadius:F

    float-to-double v4, v1

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mStartPoint:F

    float-to-double v6, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v1, v4

    .line 691
    iget v4, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mShortRadius:F

    float-to-double v4, v4

    iget v6, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mEndPoint:F

    float-to-double v6, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v2, v8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v8

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    double-to-float v2, v4

    .line 693
    iget v3, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mRectWidth:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, v3, v4

    sub-float/2addr v1, v5

    iget v5, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mViewWidth:F

    div-float/2addr v5, v4

    sub-float/2addr v1, v5

    .line 694
    iget v5, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mRectNormalHeight:F

    div-float v6, v5, v4

    sub-float/2addr v2, v6

    iget v6, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mViewTickHeight:F

    div-float/2addr v6, v4

    sub-float/2addr v2, v6

    const/high16 v4, 0x40800000    # 4.0f

    sub-float/2addr v2, v4

    iget v4, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickBottomDistance:F

    add-float/2addr v2, v4

    add-float/2addr v3, v1

    add-float/2addr v5, v2

    .line 698
    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v4, v1, v2, v3, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 699
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mRectF:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mInvalidTickPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-virtual {p1, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 700
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mRectF:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_8b
    return-void
.end method

.method private drawMajorText(Ljava/lang/String;FFLandroid/graphics/Canvas;)V
    .registers 10

    .line 553
    invoke-virtual {p4}, Landroid/graphics/Canvas;->save()I

    .line 554
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mOrientation:I

    int-to-float v0, v0

    invoke-virtual {p4, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 555
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mViewTickHeight:F

    neg-float v1, v0

    const/high16 v2, 0x41000000    # 8.0f

    div-float/2addr v1, v2

    .line 556
    iget v3, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mOrientation:I

    const/16 v4, 0xb4

    if-ne v3, v4, :cond_27

    neg-float p2, p2

    sub-float/2addr p2, p3

    const/high16 p3, 0x40000000    # 2.0f

    div-float p3, v0, p3

    div-float/2addr v0, v2

    sub-float/2addr p3, v0

    .line 558
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickTextPaint:Landroid/graphics/Paint;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    sub-float v1, p3, v0

    .line 560
    :cond_27
    iget-object p3, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickTextShaderPaint:Landroid/graphics/Paint;

    invoke-virtual {p4, p1, p2, v1, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 561
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p4, p1, p2, v1, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 562
    invoke-virtual {p4}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawRecordingText(Landroid/graphics/Canvas;Ljava/lang/String;Ljava/lang/String;IF)V
    .registers 14

    .line 705
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDiscFactory:Lcom/transsion/camera/app/ui/widget/disc/factory/IDiscFactory;

    invoke-interface {v0, p4}, Lcom/transsion/camera/app/ui/widget/disc/factory/IDiscFactory;->getValue(I)F

    move-result p4

    .line 706
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 707
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDescriptionTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 708
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSfDescriptionTextPaint:Landroid/graphics/Paint;

    const-string v2, "mm"

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v0, v1

    sub-float v1, p5, v1

    .line 710
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mIsWideCamera:Z

    const-string v3, "null"

    const/16 v4, 0x99

    if-eqz v2, :cond_ae

    const v2, 0x469c4000    # 20000.0f

    cmpg-float p4, p4, v2

    if-gtz p4, :cond_5b

    .line 712
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p4, p5}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->dynamicModifyPaintColor([Ljava/lang/String;F)V

    .line 713
    invoke-direct {p0, p2, v1, v0, p1}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->drawMajorText(Ljava/lang/String;FFLandroid/graphics/Canvas;)V

    .line 714
    invoke-static {p3, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1bc

    .line 715
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDescriptionTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 716
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDescriptionTextShaderPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 717
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSfDescriptionTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 718
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSfDescriptionTextShaderPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    move-object v2, p0

    move-object v7, p1

    move-object v3, p3

    move v4, p5

    .line 719
    invoke-direct/range {v2 .. v7}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->drawDescText(Ljava/lang/String;FFFLandroid/graphics/Canvas;)V

    return-void

    :cond_5b
    move-object v2, p0

    move-object v7, p1

    move v4, p5

    move-object p0, v3

    move-object v3, p3

    .line 722
    iget-object p1, v2, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickTextPaint:Landroid/graphics/Paint;

    iget-object p3, v2, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mContext:Landroid/content/Context;

    sget p4, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->default_major_graduation_un_select_color:I

    invoke-virtual {p3, p4}, Landroid/content/Context;->getColor(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 723
    invoke-direct {v2, p2, v1, v0, v7}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->drawMajorText(Ljava/lang/String;FFLandroid/graphics/Canvas;)V

    .line 724
    invoke-static {v3, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1bc

    .line 725
    iget-object p0, v2, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDescriptionTextPaint:Landroid/graphics/Paint;

    iget-object p1, v2, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mContext:Landroid/content/Context;

    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->default_major_graduation_un_select_color:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 726
    iget-object p0, v2, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDescriptionTextShaderPaint:Landroid/graphics/Paint;

    iget-object p1, v2, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mContext:Landroid/content/Context;

    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->default_major_graduation_un_select_color:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 727
    iget-object p0, v2, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSfDescriptionTextPaint:Landroid/graphics/Paint;

    iget-object p1, v2, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mContext:Landroid/content/Context;

    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->default_major_graduation_un_select_color:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 728
    iget-object p0, v2, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSfDescriptionTextShaderPaint:Landroid/graphics/Paint;

    iget-object p1, v2, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mContext:Landroid/content/Context;

    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->default_major_graduation_un_select_color:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 729
    invoke-direct/range {v2 .. v7}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->drawDescText(Ljava/lang/String;FFFLandroid/graphics/Canvas;)V

    return-void

    :cond_ae
    move-object v2, p0

    move-object v7, p1

    move-object p0, v3

    move p1, v4

    move-object v3, p3

    move v4, p5

    .line 732
    iget-boolean p3, v2, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mIsMainCamera:Z

    if-eqz p3, :cond_13c

    const p3, 0x461c4000    # 10000.0f

    cmpl-float p3, p4, p3

    if-ltz p3, :cond_ee

    const p3, 0x47c35000    # 100000.0f

    cmpg-float p3, p4, p3

    if-gtz p3, :cond_ee

    .line 734
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p3

    invoke-direct {v2, p3, v4}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->dynamicModifyPaintColor([Ljava/lang/String;F)V

    .line 735
    invoke-direct {v2, p2, v1, v0, v7}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->drawMajorText(Ljava/lang/String;FFLandroid/graphics/Canvas;)V

    .line 736
    invoke-static {v3, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1bc

    .line 737
    iget-object p0, v2, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDescriptionTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 738
    iget-object p0, v2, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDescriptionTextShaderPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 739
    iget-object p0, v2, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSfDescriptionTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 740
    iget-object p0, v2, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSfDescriptionTextShaderPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 741
    invoke-direct/range {v2 .. v7}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->drawDescText(Ljava/lang/String;FFFLandroid/graphics/Canvas;)V

    return-void

    .line 744
    :cond_ee
    iget-object p1, v2, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickTextPaint:Landroid/graphics/Paint;

    iget-object p3, v2, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mContext:Landroid/content/Context;

    sget p4, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->default_major_graduation_un_select_color:I

    invoke-virtual {p3, p4}, Landroid/content/Context;->getColor(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 745
    invoke-direct {v2, p2, v1, v0, v7}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->drawMajorText(Ljava/lang/String;FFLandroid/graphics/Canvas;)V

    .line 746
    invoke-static {v3, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1bc

    .line 747
    iget-object p0, v2, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDescriptionTextPaint:Landroid/graphics/Paint;

    iget-object p1, v2, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mContext:Landroid/content/Context;

    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->default_major_graduation_un_select_color:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 748
    iget-object p0, v2, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDescriptionTextShaderPaint:Landroid/graphics/Paint;

    iget-object p1, v2, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mContext:Landroid/content/Context;

    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->default_major_graduation_un_select_color:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 749
    iget-object p0, v2, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSfDescriptionTextPaint:Landroid/graphics/Paint;

    iget-object p1, v2, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mContext:Landroid/content/Context;

    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->default_major_graduation_un_select_color:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 750
    iget-object p0, v2, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSfDescriptionTextShaderPaint:Landroid/graphics/Paint;

    iget-object p1, v2, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mContext:Landroid/content/Context;

    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->default_major_graduation_un_select_color:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 751
    invoke-direct/range {v2 .. v7}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->drawDescText(Ljava/lang/String;FFFLandroid/graphics/Canvas;)V

    return-void

    .line 754
    :cond_13c
    iget-boolean p3, v2, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mIsTeleCamera:Z

    if-eqz p3, :cond_1bc

    .line 755
    iget p3, v2, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTeleMinValue:I

    int-to-float p3, p3

    cmpl-float p3, p4, p3

    if-ltz p3, :cond_16f

    .line 756
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p3

    invoke-direct {v2, p3, v4}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->dynamicModifyPaintColor([Ljava/lang/String;F)V

    .line 757
    invoke-direct {v2, p2, v1, v0, v7}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->drawMajorText(Ljava/lang/String;FFLandroid/graphics/Canvas;)V

    .line 758
    invoke-static {v3, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1bc

    .line 759
    iget-object p0, v2, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDescriptionTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 760
    iget-object p0, v2, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDescriptionTextShaderPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 761
    iget-object p0, v2, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSfDescriptionTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 762
    iget-object p0, v2, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSfDescriptionTextShaderPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 763
    invoke-direct/range {v2 .. v7}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->drawDescText(Ljava/lang/String;FFFLandroid/graphics/Canvas;)V

    return-void

    .line 766
    :cond_16f
    iget-object p1, v2, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickTextPaint:Landroid/graphics/Paint;

    iget-object p3, v2, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mContext:Landroid/content/Context;

    sget p4, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->default_major_graduation_un_select_color:I

    invoke-virtual {p3, p4}, Landroid/content/Context;->getColor(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 767
    invoke-direct {v2, p2, v1, v0, v7}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->drawMajorText(Ljava/lang/String;FFLandroid/graphics/Canvas;)V

    .line 768
    invoke-static {v3, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1bc

    .line 769
    iget-object p0, v2, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDescriptionTextPaint:Landroid/graphics/Paint;

    iget-object p1, v2, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mContext:Landroid/content/Context;

    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->default_major_graduation_un_select_color:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 770
    iget-object p0, v2, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDescriptionTextShaderPaint:Landroid/graphics/Paint;

    iget-object p1, v2, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mContext:Landroid/content/Context;

    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->default_major_graduation_un_select_color:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 771
    iget-object p0, v2, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSfDescriptionTextPaint:Landroid/graphics/Paint;

    iget-object p1, v2, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mContext:Landroid/content/Context;

    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->default_major_graduation_un_select_color:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 772
    iget-object p0, v2, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSfDescriptionTextShaderPaint:Landroid/graphics/Paint;

    iget-object p1, v2, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mContext:Landroid/content/Context;

    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->default_major_graduation_un_select_color:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 773
    invoke-direct/range {v2 .. v7}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->drawDescText(Ljava/lang/String;FFFLandroid/graphics/Canvas;)V

    :cond_1bc
    return-void
.end method

.method private drawRecordingTicks(Landroid/graphics/Canvas;ILandroid/graphics/RectF;)V
    .registers 6

    .line 780
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDiscFactory:Lcom/transsion/camera/app/ui/widget/disc/factory/IDiscFactory;

    invoke-interface {v0, p2}, Lcom/transsion/camera/app/ui/widget/disc/factory/IDiscFactory;->getValue(I)F

    move-result p2

    .line 781
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mIsWideCamera:Z

    const/high16 v1, 0x40c00000    # 6.0f

    if-eqz v0, :cond_29

    const v0, 0x469c4000    # 20000.0f

    cmpg-float p2, p2, v0

    if-gtz p2, :cond_1e

    .line 783
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mEffectiveTickPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v1, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 784
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v1, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void

    .line 786
    :cond_1e
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mInvalidTickPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v1, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 787
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v1, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void

    .line 789
    :cond_29
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mIsMainCamera:Z

    if-eqz v0, :cond_51

    const v0, 0x461c4000    # 10000.0f

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_46

    const v0, 0x47c35000    # 100000.0f

    cmpg-float p2, p2, v0

    if-gtz p2, :cond_46

    .line 791
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mEffectiveTickPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v1, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 792
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v1, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void

    .line 794
    :cond_46
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mInvalidTickPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v1, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 795
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v1, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void

    .line 797
    :cond_51
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mIsTeleCamera:Z

    if-eqz v0, :cond_71

    .line 798
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTeleMinValue:I

    int-to-float v0, v0

    cmpl-float p2, p2, v0

    if-ltz p2, :cond_67

    .line 799
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mEffectiveTickPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v1, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 800
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v1, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void

    .line 802
    :cond_67
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mInvalidTickPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v1, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 803
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v1, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_71
    return-void
.end method

.method private drawTick(Landroid/graphics/Canvas;)V
    .registers 4

    .line 430
    sget-object v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SmoothZoomView, drawTick"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 431
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->drawEffectiveTicks(Landroid/graphics/Canvas;)V

    .line 432
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->drawInvalidTicks(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private dynamicModifyPaintColor([Ljava/lang/String;F)V
    .registers 14

    .line 585
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mZoomRationList:Ljava/util/List;

    const/4 v1, 0x0

    aget-object v2, p1, v1

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v0, :cond_122

    .line 586
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mRectWidth:F

    div-float/2addr v0, v3

    add-float/2addr p2, v0

    .line 587
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v4, 0x42c80000    # 100.0f

    cmpg-float v0, v0, v4

    if-gez v0, :cond_ea

    .line 588
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickTextPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 v0, 0x0

    cmpl-float v6, p2, v0

    if-lez v6, :cond_2c

    sub-float p2, v4, p2

    :goto_2a
    div-float/2addr p2, v4

    goto :goto_37

    .line 593
    :cond_2c
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    sub-float p2, v4, p2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    goto :goto_2a

    .line 595
    :goto_37
    const-string v4, "#FFFFFFFF"

    invoke-static {v4, v4, p2}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->calculateColor(Ljava/lang/String;Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v4

    const v6, 0x3f733333    # 0.95f

    cmpl-float v6, p2, v6

    if-ltz v6, :cond_68

    .line 597
    iget-object v6, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDescriptionTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 598
    iget-object v6, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSfDescriptionTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 599
    iget-object v5, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDescriptionTextPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mContext:Landroid/content/Context;

    sget v7, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->scroller_text_selected_color:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 600
    iget-object v5, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSfDescriptionTextPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mContext:Landroid/content/Context;

    sget v7, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->scroller_text_selected_color:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 602
    :cond_68
    aget-object v5, p1, v1

    invoke-direct {p0, p2, v5}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->checkZoomRatioBlock(FLjava/lang/String;)V

    .line 603
    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v1, 0x1

    const-wide v5, 0x3fb999999999999aL    # 0.1

    if-le p1, v1, :cond_a6

    .line 604
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickTextShaderPaint:Landroid/graphics/Paint;

    float-to-double v7, p2

    cmpl-double v1, v7, v5

    if-lez v1, :cond_84

    move v5, v0

    goto :goto_85

    :cond_84
    move v5, v2

    :goto_85
    iget v6, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mShadowColor:I

    invoke-virtual {p1, v5, v3, v3, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 605
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDescriptionTextShaderPaint:Landroid/graphics/Paint;

    if-lez v1, :cond_90

    move v5, v0

    goto :goto_91

    :cond_90
    move v5, v2

    :goto_91
    iget v6, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mShadowColor:I

    invoke-virtual {p1, v5, v3, v3, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 606
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSfDescriptionTextShaderPaint:Landroid/graphics/Paint;

    if-lez v1, :cond_9b

    goto :goto_9c

    :cond_9b
    move v0, v2

    :goto_9c
    iget v5, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mShadowColor:I

    invoke-virtual {p1, v0, v3, v3, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    if-lez v1, :cond_a4

    goto :goto_d5

    :cond_a4
    move v2, p2

    goto :goto_d5

    .line 609
    :cond_a6
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickTextShaderPaint:Landroid/graphics/Paint;

    float-to-double v7, p2

    const-wide v9, 0x3fd999999999999aL    # 0.4

    cmpl-double v1, v7, v9

    if-lez v1, :cond_b4

    move v9, v0

    goto :goto_b5

    :cond_b4
    move v9, v2

    :goto_b5
    iget v10, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mShadowColor:I

    invoke-virtual {p1, v9, v3, v3, v10}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 610
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDescriptionTextShaderPaint:Landroid/graphics/Paint;

    cmpl-double v5, v7, v5

    if-lez v5, :cond_c2

    move v6, v0

    goto :goto_c3

    :cond_c2
    move v6, v2

    :goto_c3
    iget v7, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mShadowColor:I

    invoke-virtual {p1, v6, v3, v3, v7}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 611
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSfDescriptionTextShaderPaint:Landroid/graphics/Paint;

    if-lez v5, :cond_cd

    goto :goto_ce

    :cond_cd
    move v0, v2

    :goto_ce
    iget v5, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mShadowColor:I

    invoke-virtual {p1, v0, v3, v3, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    if-lez v1, :cond_a4

    .line 614
    :goto_d5
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickTextPaint:Landroid/graphics/Paint;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 615
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickTextPaint:Landroid/graphics/Paint;

    const/high16 p1, 0x437f0000    # 255.0f

    mul-float/2addr v2, p1

    float-to-int p1, v2

    rsub-int p1, p1, 0xff

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void

    .line 617
    :cond_ea
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDescriptionTextShaderPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mShadowColor:I

    invoke-virtual {p1, v2, v3, v3, p2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 618
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSfDescriptionTextShaderPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mShadowColor:I

    invoke-virtual {p1, v2, v3, v3, p2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 619
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickTextShaderPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mShadowColor:I

    invoke-virtual {p1, v2, v3, v3, p2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 620
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickTextPaint:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickTextShader:Landroid/graphics/LinearGradient;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 621
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDescriptionTextPaint:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDsTextShader:Landroid/graphics/LinearGradient;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 622
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSfDescriptionTextPaint:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDsTextShader:Landroid/graphics/LinearGradient;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 623
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickTextPaint:Landroid/graphics/Paint;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mContext:Landroid/content/Context;

    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->default_major_graduation_color:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    .line 626
    :cond_122
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDescriptionTextShaderPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mShadowColor:I

    invoke-virtual {p1, v2, v3, v3, p2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 627
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSfDescriptionTextShaderPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mShadowColor:I

    invoke-virtual {p1, v2, v3, v3, p2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 628
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickTextShaderPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mShadowColor:I

    invoke-virtual {p1, v2, v3, v3, p2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 629
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickTextPaint:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickTextShader:Landroid/graphics/LinearGradient;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 630
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDescriptionTextPaint:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDsTextShader:Landroid/graphics/LinearGradient;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 631
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSfDescriptionTextPaint:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDsTextShader:Landroid/graphics/LinearGradient;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 632
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickTextPaint:Landroid/graphics/Paint;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mContext:Landroid/content/Context;

    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->default_major_graduation_color:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private findClosestValue(F)F
    .registers 8

    .line 970
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mZoomRationList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sub-float v2, v0, p1

    .line 971
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 973
    :goto_13
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mZoomRationList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_36

    .line 974
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mZoomRationList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    sub-float v4, v3, p1

    .line 975
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v5, v4, v2

    if-gez v5, :cond_33

    move v0, v3

    move v2, v4

    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_36
    return v0
.end method

.method private getAngle(FF)F
    .registers 5

    float-to-double p0, p1

    float-to-double v0, p2

    .line 900
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static getHexString(I)Ljava/lang/String;
    .registers 3

    .line 676
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    .line 677
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    .line 678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1c
    return-object p0
.end method

.method private getSelectedZoomDegree(F)F
    .registers 6

    .line 985
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    .line 986
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDiscFactory:Lcom/transsion/camera/app/ui/widget/disc/factory/IDiscFactory;

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/ui/widget/disc/factory/IDiscFactory;->getIndex(F)I

    move-result p1

    int-to-double v0, p1

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    iget p1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickCount:I

    int-to-double v2, p1

    div-double/2addr v0, v2

    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v2, v0

    iget p1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSelectValue:I

    int-to-float p1, p1

    .line 987
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->calculateDefaultAngle(F)D

    move-result-wide v0

    sub-double/2addr v2, v0

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mMoveSpeed:F

    float-to-double p0, p0

    div-double/2addr v2, p0

    .line 986
    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method private getZoomRatio(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1076
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 1077
    rem-int/lit16 p1, p0, 0x2710

    const-string v0, "%d"

    if-nez p1, :cond_1b

    .line 1078
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    div-int/lit16 p0, p0, 0x2710

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v0, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1080
    :cond_1b
    rem-int/lit16 p1, p0, 0x3e8

    const/16 v1, 0x1f4

    if-ne p1, v1, :cond_38

    add-int/lit16 p0, p0, -0x1f4

    .line 1082
    rem-int/lit16 p1, p0, 0x2710

    if-nez p1, :cond_38

    .line 1083
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    div-int/lit16 p0, p0, 0x2710

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v0, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1086
    :cond_38
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%d."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    div-int/lit16 v1, p0, 0x2710

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    div-int/lit16 p0, p0, 0x3e8

    rem-int/lit8 p0, p0, 0xa

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v0, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private handleActionMoveEvent()V
    .registers 15

    .line 905
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mAngle:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mMoveSpeed:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSelectValue:I

    int-to-float v2, v2

    invoke-direct {p0, v2}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->calculateDefaultAngle(F)D

    move-result-wide v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    sub-double v2, v4, v2

    const-wide v6, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v2, v6

    cmpl-double v0, v0, v2

    if-lez v0, :cond_25

    const/4 v0, 0x1

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    :goto_26
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mIsMoveLeftLimit:Z

    .line 906
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mAngle:F

    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mMoveSpeed:F

    float-to-double v10, v0

    mul-double/2addr v8, v10

    .line 907
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->calculateModeAngleDifference()D

    move-result-wide v10

    add-double/2addr v10, v4

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickCount:I

    add-int/lit8 v3, v0, -0x1

    int-to-double v12, v3

    mul-double/2addr v12, v4

    int-to-double v1, v0

    div-double/2addr v12, v1

    sub-double/2addr v10, v12

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSelectValue:I

    int-to-float v0, v0

    .line 908
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->calculateDefaultAngle(F)D

    move-result-wide v0

    sub-double/2addr v10, v0

    sub-double/2addr v10, v6

    cmpg-double v0, v8, v10

    if-gez v0, :cond_50

    const/4 v1, 0x1

    goto :goto_51

    :cond_50
    const/4 v1, 0x0

    :goto_51
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mIsMoveRightLimit:Z

    .line 909
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mIsVideoStartRecording:Z

    if-eqz v0, :cond_5f

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mIsSatCamera:Z

    if-nez v0, :cond_5f

    .line 910
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->handleRecordingMoveAction()V

    goto :goto_b6

    .line 912
    :cond_5f
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mIsMoveLeftLimit:Z

    if-eqz v0, :cond_7b

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mIsLeftScroll:Z

    if-nez v0, :cond_7b

    .line 913
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSelectValue:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->calculateDefaultAngle(F)D

    move-result-wide v0

    sub-double/2addr v6, v0

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mMoveSpeed:F

    float-to-double v0, v0

    div-double/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mAngle:F

    goto :goto_9e

    :cond_7b
    if-eqz v1, :cond_9e

    .line 914
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mIsLeftScroll:Z

    if-eqz v0, :cond_9e

    .line 915
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickCount:I

    int-to-double v0, v0

    div-double/2addr v4, v0

    sub-double/2addr v4, v6

    .line 916
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->calculateModeAngleDifference()D

    move-result-wide v0

    add-double/2addr v4, v0

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSelectValue:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->calculateDefaultAngle(F)D

    move-result-wide v0

    sub-double/2addr v4, v0

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mMoveSpeed:F

    float-to-double v0, v0

    div-double/2addr v4, v0

    .line 915
    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mAngle:F

    .line 918
    :cond_9e
    :goto_9e
    sget-object v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleActionMoveEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mAngle:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 920
    :goto_b6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private handleRecordingMoveAction()V
    .registers 15

    .line 1013
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mIsWideCamera:Z

    const-wide v3, 0x3ff921fb54442d18L    # 1.5707963267948966

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    if-eqz v0, :cond_80

    .line 1014
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mAngle:F

    float-to-double v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mMoveSpeed:F

    float-to-double v9, v0

    mul-double/2addr v7, v9

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDiscFactory:Lcom/transsion/camera/app/ui/widget/disc/factory/IDiscFactory;

    const v9, 0x469c4000    # 20000.0f

    .line 1015
    invoke-interface {v0, v9}, Lcom/transsion/camera/app/ui/widget/disc/factory/IDiscFactory;->getIndex(F)I

    move-result v0

    int-to-double v10, v0

    mul-double/2addr v10, v5

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickCount:I

    int-to-double v12, v0

    div-double/2addr v10, v12

    sub-double v10, v5, v10

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSelectValue:I

    int-to-float v0, v0

    .line 1016
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->calculateDefaultAngle(F)D

    move-result-wide v12

    sub-double/2addr v10, v12

    sub-double/2addr v10, v3

    cmpg-double v0, v7, v10

    if-gez v0, :cond_39

    const/4 v1, 0x1

    goto :goto_3a

    :cond_39
    const/4 v1, 0x0

    .line 1017
    :goto_3a
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mIsMoveLeftLimit:Z

    if-eqz v0, :cond_56

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mIsLeftScroll:Z

    if-nez v0, :cond_56

    .line 1018
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSelectValue:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->calculateDefaultAngle(F)D

    move-result-wide v0

    sub-double/2addr v3, v0

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mMoveSpeed:F

    float-to-double v0, v0

    div-double/2addr v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mAngle:F

    return-void

    :cond_56
    if-eqz v1, :cond_20c

    .line 1019
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mIsLeftScroll:Z

    if-eqz v0, :cond_20c

    .line 1020
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickCount:I

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDiscFactory:Lcom/transsion/camera/app/ui/widget/disc/factory/IDiscFactory;

    invoke-interface {v1, v9}, Lcom/transsion/camera/app/ui/widget/disc/factory/IDiscFactory;->getIndex(F)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-double v0, v0

    mul-double/2addr v0, v5

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickCount:I

    int-to-double v5, v2

    div-double/2addr v0, v5

    sub-double/2addr v0, v3

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSelectValue:I

    int-to-float v2, v2

    .line 1021
    invoke-direct {p0, v2}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->calculateDefaultAngle(F)D

    move-result-wide v2

    sub-double/2addr v0, v2

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mMoveSpeed:F

    float-to-double v2, v2

    div-double/2addr v0, v2

    .line 1020
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mAngle:F

    return-void

    .line 1023
    :cond_80
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mIsMainCamera:Z

    if-eqz v0, :cond_12d

    .line 1024
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mAngle:F

    float-to-double v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mMoveSpeed:F

    float-to-double v9, v0

    mul-double/2addr v7, v9

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDiscFactory:Lcom/transsion/camera/app/ui/widget/disc/factory/IDiscFactory;

    const v9, 0x461c4000    # 10000.0f

    .line 1025
    invoke-interface {v0, v9}, Lcom/transsion/camera/app/ui/widget/disc/factory/IDiscFactory;->getIndex(F)I

    move-result v0

    int-to-double v10, v0

    mul-double/2addr v10, v5

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickCount:I

    int-to-double v12, v0

    div-double/2addr v10, v12

    sub-double v10, v5, v10

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSelectValue:I

    int-to-float v0, v0

    .line 1026
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->calculateDefaultAngle(F)D

    move-result-wide v12

    sub-double/2addr v10, v12

    sub-double/2addr v10, v3

    cmpl-double v0, v7, v10

    if-lez v0, :cond_af

    const/4 v0, 0x1

    goto :goto_b0

    :cond_af
    const/4 v0, 0x0

    .line 1027
    :goto_b0
    iget v7, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mAngle:F

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    iget v10, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mMoveSpeed:F

    float-to-double v10, v10

    mul-double/2addr v7, v10

    iget-object v10, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDiscFactory:Lcom/transsion/camera/app/ui/widget/disc/factory/IDiscFactory;

    const v11, 0x47c35000    # 100000.0f

    .line 1028
    invoke-interface {v10, v11}, Lcom/transsion/camera/app/ui/widget/disc/factory/IDiscFactory;->getIndex(F)I

    move-result v10

    int-to-double v12, v10

    mul-double/2addr v12, v5

    iget v10, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickCount:I

    int-to-double v1, v10

    div-double/2addr v12, v1

    sub-double v1, v5, v12

    iget v10, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSelectValue:I

    int-to-float v10, v10

    .line 1029
    invoke-direct {p0, v10}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->calculateDefaultAngle(F)D

    move-result-wide v12

    sub-double/2addr v1, v12

    sub-double/2addr v1, v3

    cmpg-double v1, v7, v1

    if-gez v1, :cond_db

    const/4 v1, 0x1

    goto :goto_dc

    :cond_db
    const/4 v1, 0x0

    :goto_dc
    if-eqz v0, :cond_103

    .line 1030
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mIsLeftScroll:Z

    if-nez v0, :cond_103

    .line 1031
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDiscFactory:Lcom/transsion/camera/app/ui/widget/disc/factory/IDiscFactory;

    invoke-interface {v0, v9}, Lcom/transsion/camera/app/ui/widget/disc/factory/IDiscFactory;->getIndex(F)I

    move-result v0

    int-to-double v0, v0

    mul-double/2addr v0, v5

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickCount:I

    int-to-double v5, v2

    div-double/2addr v0, v5

    sub-double/2addr v3, v0

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSelectValue:I

    int-to-float v0, v0

    .line 1032
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->calculateDefaultAngle(F)D

    move-result-wide v0

    sub-double/2addr v3, v0

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mMoveSpeed:F

    float-to-double v0, v0

    div-double/2addr v3, v0

    .line 1031
    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mAngle:F

    return-void

    :cond_103
    if-eqz v1, :cond_20c

    .line 1033
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mIsLeftScroll:Z

    if-eqz v0, :cond_20c

    .line 1034
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickCount:I

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDiscFactory:Lcom/transsion/camera/app/ui/widget/disc/factory/IDiscFactory;

    invoke-interface {v1, v11}, Lcom/transsion/camera/app/ui/widget/disc/factory/IDiscFactory;->getIndex(F)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-double v0, v0

    mul-double/2addr v0, v5

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickCount:I

    int-to-double v5, v2

    div-double/2addr v0, v5

    sub-double/2addr v0, v3

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSelectValue:I

    int-to-float v2, v2

    .line 1035
    invoke-direct {p0, v2}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->calculateDefaultAngle(F)D

    move-result-wide v2

    sub-double/2addr v0, v2

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mMoveSpeed:F

    float-to-double v2, v2

    div-double/2addr v0, v2

    .line 1034
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mAngle:F

    return-void

    .line 1037
    :cond_12d
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mIsTeleCamera:Z

    if-eqz v0, :cond_20c

    .line 1039
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDiscFactory:Lcom/transsion/camera/app/ui/widget/disc/factory/IDiscFactory;

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTeleMinValue:I

    int-to-float v1, v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/ui/widget/disc/factory/IDiscFactory;->getIndex(F)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_167

    .line 1040
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mAngle:F

    float-to-double v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mMoveSpeed:F

    float-to-double v9, v0

    mul-double/2addr v7, v9

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDiscFactory:Lcom/transsion/camera/app/ui/widget/disc/factory/IDiscFactory;

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTeleMinValue:I

    int-to-float v2, v2

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/ui/widget/disc/factory/IDiscFactory;->getIndex(F)I

    move-result v0

    int-to-double v9, v0

    mul-double/2addr v9, v5

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickCount:I

    int-to-double v11, v0

    div-double/2addr v9, v11

    sub-double v9, v5, v9

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSelectValue:I

    int-to-float v0, v0

    .line 1041
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->calculateDefaultAngle(F)D

    move-result-wide v11

    sub-double/2addr v9, v11

    sub-double/2addr v9, v3

    cmpl-double v0, v7, v9

    if-lez v0, :cond_1e7

    goto :goto_190

    .line 1043
    :cond_167
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mAngle:F

    float-to-double v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mMoveSpeed:F

    float-to-double v9, v0

    mul-double/2addr v7, v9

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDiscFactory:Lcom/transsion/camera/app/ui/widget/disc/factory/IDiscFactory;

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTeleMinValue:I

    int-to-float v2, v2

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/ui/widget/disc/factory/IDiscFactory;->getIndexF(F)F

    move-result v0

    float-to-double v9, v0

    mul-double/2addr v9, v5

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickCount:I

    int-to-double v11, v0

    div-double/2addr v9, v11

    sub-double v9, v5, v9

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSelectValue:I

    int-to-float v0, v0

    .line 1044
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->calculateDefaultAngle(F)D

    move-result-wide v11

    sub-double/2addr v9, v11

    sub-double/2addr v9, v3

    cmpl-double v0, v7, v9

    if-lez v0, :cond_1e7

    .line 1046
    :goto_190
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mIsLeftScroll:Z

    if-nez v0, :cond_1e7

    .line 1047
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDiscFactory:Lcom/transsion/camera/app/ui/widget/disc/factory/IDiscFactory;

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTeleMinValue:I

    int-to-float v2, v2

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/ui/widget/disc/factory/IDiscFactory;->getIndex(F)I

    move-result v0

    if-eq v0, v1, :cond_1c3

    .line 1048
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDiscFactory:Lcom/transsion/camera/app/ui/widget/disc/factory/IDiscFactory;

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTeleMinValue:I

    int-to-float v1, v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/ui/widget/disc/factory/IDiscFactory;->getIndex(F)I

    move-result v0

    int-to-double v0, v0

    mul-double/2addr v0, v5

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickCount:I

    int-to-double v5, v2

    div-double/2addr v0, v5

    sub-double/2addr v3, v0

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSelectValue:I

    int-to-float v0, v0

    .line 1049
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->calculateDefaultAngle(F)D

    move-result-wide v0

    sub-double/2addr v3, v0

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mMoveSpeed:F

    float-to-double v0, v0

    div-double/2addr v3, v0

    .line 1048
    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mAngle:F

    return-void

    .line 1051
    :cond_1c3
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDiscFactory:Lcom/transsion/camera/app/ui/widget/disc/factory/IDiscFactory;

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTeleMinValue:I

    int-to-float v1, v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/ui/widget/disc/factory/IDiscFactory;->getIndexF(F)F

    move-result v0

    float-to-double v0, v0

    mul-double/2addr v0, v5

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickCount:I

    int-to-double v5, v2

    div-double/2addr v0, v5

    sub-double/2addr v3, v0

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSelectValue:I

    int-to-float v0, v0

    .line 1052
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->calculateDefaultAngle(F)D

    move-result-wide v0

    sub-double/2addr v3, v0

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mMoveSpeed:F

    float-to-double v0, v0

    div-double/2addr v3, v0

    .line 1051
    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mAngle:F

    return-void

    .line 1054
    :cond_1e7
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mIsMoveRightLimit:Z

    if-eqz v0, :cond_20c

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mIsLeftScroll:Z

    if-eqz v0, :cond_20c

    .line 1055
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickCount:I

    int-to-double v0, v0

    div-double/2addr v5, v0

    sub-double/2addr v5, v3

    .line 1056
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->calculateModeAngleDifference()D

    move-result-wide v0

    add-double/2addr v5, v0

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSelectValue:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->calculateDefaultAngle(F)D

    move-result-wide v0

    sub-double/2addr v5, v0

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mMoveSpeed:F

    float-to-double v0, v0

    div-double/2addr v5, v0

    .line 1055
    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mAngle:F

    :cond_20c
    return-void
.end method

.method private init()V
    .registers 12

    .line 276
    sget-object v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SmoothZoomView, initResources"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 277
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mRectF:Landroid/graphics/RectF;

    .line 278
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->ic_zoom_disc_bg:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 279
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->ic_zoom_cursor_bg:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mCursorDrawable:Landroid/graphics/drawable/Drawable;

    .line 280
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$array;->smooth_zoom_tick_resources:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mZoomRationList:Ljava/util/List;

    .line 281
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$array;->smooth_zoom_vibrator_tick_resources:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mVibrateArrays:[I

    .line 282
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->smooth_zoom_view_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mViewTickHeight:F

    .line 283
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->smooth_zoom_view_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mViewTickWidth:F

    .line 284
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->smooth_zoom_view_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mViewPadding:F

    .line 285
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->smooth_zoom_normal_tick_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mRectNormalHeight:F

    .line 286
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->smooth_zoom_major_tick_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mRectMajorHeight:F

    .line 287
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->smooth_zoom_normal_tick_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mRectWidth:F

    .line 288
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->smooth_zoom_cursor_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mCursorWidth:F

    .line 289
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->smooth_zoom_cursor_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mCursorHeight:F

    .line 290
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->smooth_zoom_other_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mNormalTextSize:F

    .line 291
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->smooth_zoom_major_suffix_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mMajorSfTextSize:F

    .line 292
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->smooth_zoom_suffix_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSuffixTextSize:F

    .line 293
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->smooth_zoom_ds_suffix_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDsSuffixTextSize:F

    .line 294
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->smooth_zoom_select_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mCurrentRatioTextSize:F

    .line 295
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->smooth_zoom_tick_bottom_distance:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickBottomDistance:F

    .line 296
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->smooth_zoom_bg_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mZoomBgHeight:F

    .line 297
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->smooth_zoom_limit_distance:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mMaxDampingParameter:F

    .line 298
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->smooth_zoom_quick_limit_distance:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mMinDampingParameter:F

    const/4 v1, 0x1

    .line 300
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mUpdateScrollBlockX:Z

    .line 301
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mAlreadyBlocked:Z

    .line 303
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mEffectiveTickPaint:Landroid/graphics/Paint;

    .line 304
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mInvalidTickPaint:Landroid/graphics/Paint;

    .line 305
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickTextPaint:Landroid/graphics/Paint;

    .line 306
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSuffixTextPaint:Landroid/graphics/Paint;

    .line 307
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDescriptionTextPaint:Landroid/graphics/Paint;

    .line 308
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSfDescriptionTextPaint:Landroid/graphics/Paint;

    .line 309
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mCurrentZoomRatioPaint:Landroid/graphics/Paint;

    .line 310
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickBorderPaint:Landroid/graphics/Paint;

    .line 311
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickTextShaderPaint:Landroid/graphics/Paint;

    .line 312
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDescriptionTextShaderPaint:Landroid/graphics/Paint;

    .line 313
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSfDescriptionTextShaderPaint:Landroid/graphics/Paint;

    .line 315
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mEffectiveTickPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mContext:Landroid/content/Context;

    sget v4, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->default_major_graduation_color:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 316
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mEffectiveTickPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 318
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mInvalidTickPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mContext:Landroid/content/Context;

    sget v5, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->smooth_zoom_invalid_tick_color:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 319
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mInvalidTickPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 321
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickTextPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mContext:Landroid/content/Context;

    sget v5, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->default_major_graduation_color:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 322
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickTextPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v4, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 323
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 325
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickTextShaderPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 326
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickTextShaderPaint:Landroid/graphics/Paint;

    invoke-static {v4, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 327
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickTextShaderPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 328
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickTextShaderPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mShadowColor:I

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x40000000    # 2.0f

    invoke-virtual {v2, v7, v8, v8, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 330
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSuffixTextPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mContext:Landroid/content/Context;

    sget v9, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->scroller_text_selected_color:I

    invoke-virtual {v6, v9}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 331
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSuffixTextPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mMajorSfTextSize:F

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 332
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSuffixTextPaint:Landroid/graphics/Paint;

    invoke-static {v4, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 333
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSuffixTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 335
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDescriptionTextPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mContext:Landroid/content/Context;

    sget v9, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->default_major_graduation_color:I

    invoke-virtual {v6, v9}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 336
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDescriptionTextPaint:Landroid/graphics/Paint;

    const/16 v6, 0xcc

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 337
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDescriptionTextPaint:Landroid/graphics/Paint;

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 338
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDescriptionTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 340
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDescriptionTextShaderPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 341
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDescriptionTextShaderPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 342
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDescriptionTextShaderPaint:Landroid/graphics/Paint;

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 343
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDescriptionTextShaderPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 344
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDescriptionTextShaderPaint:Landroid/graphics/Paint;

    iget v9, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mShadowColor:I

    invoke-virtual {v2, v7, v8, v8, v9}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 346
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSfDescriptionTextPaint:Landroid/graphics/Paint;

    iget-object v9, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mContext:Landroid/content/Context;

    sget v10, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->default_major_graduation_color:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getColor(I)I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 347
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSfDescriptionTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 348
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSfDescriptionTextPaint:Landroid/graphics/Paint;

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 349
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSfDescriptionTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 351
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSfDescriptionTextShaderPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 352
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSfDescriptionTextShaderPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 353
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSfDescriptionTextShaderPaint:Landroid/graphics/Paint;

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 354
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSfDescriptionTextShaderPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 355
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSfDescriptionTextShaderPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mShadowColor:I

    invoke-virtual {v2, v7, v8, v8, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 357
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mCurrentZoomRatioPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mContext:Landroid/content/Context;

    sget v9, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->scroller_text_selected_color:I

    invoke-virtual {v6, v9}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 358
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mCurrentZoomRatioPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mCurrentRatioTextSize:F

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 359
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mCurrentZoomRatioPaint:Landroid/graphics/Paint;

    invoke-static {v4, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 360
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mCurrentZoomRatioPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 361
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mCurrentZoomRatioPaint:Landroid/graphics/Paint;

    const-string v6, "#2E000000"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v7, v8, v8, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 363
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 364
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickBorderPaint:Landroid/graphics/Paint;

    invoke-static {v4, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 365
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 368
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->initShader()V

    .line 369
    const-string p0, "SmoothZoomView, initResources, over!"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private initShader()V
    .registers 19

    move-object/from16 v0, p0

    .line 436
    new-instance v1, Landroid/graphics/LinearGradient;

    iget v5, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mViewTickHeight:F

    iget v2, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mNormalColor:I

    iget v3, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mMiddleColor:I

    filled-new-array {v2, v3, v2}, [I

    move-result-object v6

    const/4 v9, 0x3

    new-array v7, v9, [F

    fill-array-data v7, :array_f6

    sget-object v17, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v8, v17

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v1, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mEffectShader:Landroid/graphics/LinearGradient;

    .line 441
    new-instance v10, Landroid/graphics/LinearGradient;

    iget v14, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mViewTickHeight:F

    iget v1, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mNormalColor:I

    iget v2, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mInvalidColor:I

    filled-new-array {v1, v2, v1}, [I

    move-result-object v15

    new-array v1, v9, [F

    fill-array-data v1, :array_100

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v16, v1

    invoke-direct/range {v10 .. v17}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v10, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mInvalidShader:Landroid/graphics/LinearGradient;

    .line 446
    new-instance v10, Landroid/graphics/LinearGradient;

    iget v14, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mViewTickHeight:F

    iget v1, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mNormalColor:I

    iget v2, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mBorderColor:I

    filled-new-array {v1, v2, v1}, [I

    move-result-object v15

    new-array v1, v9, [F

    fill-array-data v1, :array_10a

    move-object/from16 v16, v1

    invoke-direct/range {v10 .. v17}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v10, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickBorderShader:Landroid/graphics/LinearGradient;

    .line 451
    new-instance v10, Landroid/graphics/LinearGradient;

    iget v1, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mViewTickWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v1, v2

    iget v4, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mViewPadding:F

    const/high16 v5, 0x40800000    # 4.0f

    mul-float v6, v4, v5

    sub-float/2addr v3, v6

    neg-float v11, v3

    iget v3, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mViewTickHeight:F

    neg-float v3, v3

    const/high16 v6, 0x41000000    # 8.0f

    div-float v12, v3, v6

    div-float/2addr v1, v2

    mul-float/2addr v4, v5

    sub-float v13, v1, v4

    iget v1, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mNormalColor:I

    iget v3, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mMiddleColor:I

    filled-new-array {v1, v3, v1}, [I

    move-result-object v15

    new-array v1, v9, [F

    fill-array-data v1, :array_114

    const/4 v14, 0x0

    move-object/from16 v16, v1

    invoke-direct/range {v10 .. v17}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v10, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickTextShader:Landroid/graphics/LinearGradient;

    .line 456
    new-instance v10, Landroid/graphics/LinearGradient;

    iget v1, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mViewTickWidth:F

    div-float v3, v1, v2

    iget v4, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mViewPadding:F

    mul-float v7, v4, v5

    sub-float/2addr v3, v7

    neg-float v11, v3

    iget v3, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mViewTickHeight:F

    neg-float v3, v3

    div-float v12, v3, v6

    div-float/2addr v1, v2

    mul-float/2addr v4, v5

    sub-float v13, v1, v4

    iget v1, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mNormalColor:I

    iget v3, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mBorderColor:I

    filled-new-array {v1, v3, v1}, [I

    move-result-object v15

    new-array v1, v9, [F

    fill-array-data v1, :array_11e

    move-object/from16 v16, v1

    invoke-direct/range {v10 .. v17}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v10, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickBorderTextShader:Landroid/graphics/LinearGradient;

    .line 461
    new-instance v10, Landroid/graphics/LinearGradient;

    iget v1, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mViewTickWidth:F

    div-float v3, v1, v2

    iget v4, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mViewPadding:F

    mul-float v6, v4, v5

    sub-float/2addr v3, v6

    neg-float v11, v3

    div-float/2addr v1, v2

    mul-float/2addr v4, v5

    sub-float v13, v1, v4

    iget v1, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mNormalColor:I

    iget v3, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mMiddleColor:I

    filled-new-array {v1, v3, v1}, [I

    move-result-object v15

    new-array v1, v9, [F

    fill-array-data v1, :array_128

    const/4 v12, 0x0

    move-object/from16 v16, v1

    invoke-direct/range {v10 .. v17}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v10, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDsTextShader:Landroid/graphics/LinearGradient;

    .line 466
    new-instance v10, Landroid/graphics/LinearGradient;

    iget v1, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mViewTickWidth:F

    div-float v3, v1, v2

    iget v4, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mViewPadding:F

    mul-float v6, v4, v5

    sub-float/2addr v3, v6

    neg-float v11, v3

    div-float/2addr v1, v2

    mul-float/2addr v4, v5

    sub-float v13, v1, v4

    iget v1, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mNormalColor:I

    iget v2, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mBorderColor:I

    filled-new-array {v1, v2, v1}, [I

    move-result-object v15

    new-array v1, v9, [F

    fill-array-data v1, :array_132

    move-object/from16 v16, v1

    invoke-direct/range {v10 .. v17}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v10, v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSfDsTextShader:Landroid/graphics/LinearGradient;

    return-void

    :array_f6
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_100
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_10a
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_114
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_11e
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_128
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_132
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initZoomFactory(Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;)V
    .registers 2

    .line 373
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSmoothZoomStyle:Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;

    .line 374
    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;->getZoomFactory(Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;)Lcom/transsion/camera/app/ui/widget/disc/factory/BaseDiscZoomFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDiscFactory:Lcom/transsion/camera/app/ui/widget/disc/factory/IDiscFactory;

    .line 375
    invoke-interface {p1}, Lcom/transsion/camera/app/ui/widget/disc/factory/IDiscFactory;->calculateTickInformation()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickZoomList:Ljava/util/ArrayList;

    .line 376
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDiscFactory:Lcom/transsion/camera/app/ui/widget/disc/factory/IDiscFactory;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/widget/disc/factory/IDiscFactory;->getTickCount()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTickCount:I

    .line 377
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDiscFactory:Lcom/transsion/camera/app/ui/widget/disc/factory/IDiscFactory;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/widget/disc/factory/IDiscFactory;->getMoveSpeed()F

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mMoveSpeed:F

    .line 378
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDiscFactory:Lcom/transsion/camera/app/ui/widget/disc/factory/IDiscFactory;

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mBaseFocalLength:F

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/ui/widget/disc/factory/IDiscFactory;->setBaseFocalLength(F)V

    return-void
.end method

.method private judgeIsNeedVibrator(I)Z
    .registers 4

    .line 1118
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mVibrateArrays:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 1119
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 1120
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mVibrateArrays:[I

    invoke-static {p0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p0

    if-ltz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    return v1
.end method

.method private synthetic lambda$startSelectedAnimator$0(Landroid/animation/ValueAnimator;)V
    .registers 4

    .line 1066
    const-string v0, "moveAngle"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v0, p1

    iput-wide v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mMoveRadians:D

    .line 1067
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public initDiscBean(Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;)V
    .registers 2

    .line 183
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->initZoomFactory(Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;)V

    return-void
.end method

.method public onBackPressed(Z)V
    .registers 2

    .line 892
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mBackPressed:Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5

    .line 266
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 267
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 268
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mViewWidth:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mViewTickHeight:F

    div-float/2addr v2, v1

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 269
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->drawBackGround(Landroid/graphics/Canvas;)V

    .line 270
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->drawTick(Landroid/graphics/Canvas;)V

    .line 271
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->drawCursor(Landroid/graphics/Canvas;)V

    .line 272
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 5

    .line 199
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 200
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mViewWidth:F

    .line 201
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->new_camera_focal_text_padding_bottom:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mZoomViewHeight:I

    .line 202
    sget-object p1, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSmoothMeasure,mViewWidth: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mViewWidth:F

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ",mViewHeight: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mViewTickHeight:F

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 203
    iget p1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mViewWidth:F

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mStartPoint:F

    .line 204
    iget p1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mViewTickHeight:F

    div-float v0, p1, p2

    const/high16 v1, 0x42480000    # 50.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mEndPoint:F

    .line 205
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mViewWidth:F

    div-float/2addr v0, p2

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mLongRadius:F

    div-float/2addr p1, p2

    .line 206
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mShortRadius:F

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 426
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 819
    sget-object v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[smoothOnTouchEvent: ] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 820
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mBackPressed:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_20

    return v2

    .line 826
    :cond_20
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mIsBeingHidden:Z

    const/4 v3, 0x1

    if-nez v1, :cond_fe

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2d

    goto/16 :goto_fe

    .line 831
    :cond_2d
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_37

    .line 832
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 834
    :cond_37
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_d7

    const/4 v4, 0x0

    if-eq v1, v3, :cond_b2

    const/4 v5, 0x2

    if-eq v1, v5, :cond_48

    const/4 p1, 0x3

    if-eq v1, p1, :cond_b2

    goto/16 :goto_fe

    .line 846
    :cond_48
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mCurTouchPointId:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    if-eq v1, v5, :cond_73

    .line 847
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pointer id changed, mCurTouchPointId"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mCurTouchPointId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " getPointerId:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v2

    .line 850
    :cond_73
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mInteractiveListener:Lcom/transsion/camera/app/ui/widget/SmoothZoomView$SmoothInteractiveListener;

    if-eqz v0, :cond_7a

    .line 851
    invoke-interface {v0, v3}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView$SmoothInteractiveListener;->onInteractive(Z)V

    .line 853
    :cond_7a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 854
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 855
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mXVelocity:F

    .line 856
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mCurrentMoveX:F

    .line 857
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mLastMoveX:F

    sub-float v1, v0, v1

    cmpg-float v1, v1, v4

    if-gez v1, :cond_9d

    move v2, v3

    :cond_9d
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mIsLeftScroll:Z

    .line 858
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mLastMoveX:F

    .line 859
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->calculateMoveAngle(Landroid/view/MotionEvent;)V

    .line 860
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->handleActionMoveEvent()V

    .line 861
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->calculateMoveProgress()V

    .line 862
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mUIStateChangeListener:Lcom/transsion/camera/app/ui/widget/SmoothZoomView$SmoothUIStateChangeListener;

    if-eqz p0, :cond_fe

    .line 863
    invoke-interface {p0, v3}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView$SmoothUIStateChangeListener;->onUIStateChanged(Z)V

    goto :goto_fe

    .line 868
    :cond_b2
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mUpdateScrollBlockX:Z

    .line 869
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mAlreadyBlocked:Z

    .line 870
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mInteractiveListener:Lcom/transsion/camera/app/ui/widget/SmoothZoomView$SmoothInteractiveListener;

    if-eqz p1, :cond_bd

    .line 871
    invoke-interface {p1, v2}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView$SmoothInteractiveListener;->onInteractive(Z)V

    .line 873
    :cond_bd
    iput v4, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mLastMoveX:F

    .line 874
    iput v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mBlockProgress:I

    .line 875
    iput v4, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mCurrentMoveX:F

    .line 876
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mIsTouchZoomTick:Z

    .line 877
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mUIStateChangeListener:Lcom/transsion/camera/app/ui/widget/SmoothZoomView$SmoothUIStateChangeListener;

    if-eqz p1, :cond_cc

    .line 878
    invoke-interface {p1, v2}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView$SmoothUIStateChangeListener;->onUIStateChanged(Z)V

    .line 880
    :cond_cc
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_fe

    .line 881
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 882
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_fe

    .line 836
    :cond_d7
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mIsTouchZoomTick:Z

    .line 837
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mZoomViewHeight:I

    int-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->getAngle(FF)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mStartAngle:F

    .line 838
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mLastMoveX:F

    .line 839
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mCurTouchPointId:I

    .line 840
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mUIStateChangeListener:Lcom/transsion/camera/app/ui/widget/SmoothZoomView$SmoothUIStateChangeListener;

    if-eqz v0, :cond_f9

    .line 841
    invoke-interface {v0, v3}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView$SmoothUIStateChangeListener;->onUIStateChanged(Z)V

    .line 843
    :cond_f9
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_fe
    :goto_fe
    return v3
.end method

.method public setCurrentIsWhichCamera(ZZZ)V
    .registers 4

    .line 1007
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mIsWideCamera:Z

    .line 1008
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mIsMainCamera:Z

    .line 1009
    iput-boolean p3, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mIsTeleCamera:Z

    return-void
.end method

.method public setCurrentZoomRatio(Ljava/lang/String;Z)V
    .registers 4

    if-eqz p2, :cond_9

    .line 188
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->getZoomRatio(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mCurrentZoomRatio:Ljava/lang/String;

    return-void

    :cond_9
    if-eqz p1, :cond_1a

    .line 190
    const-string/jumbo p2, "x"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 191
    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 193
    :cond_1a
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mCurrentZoomRatio:Ljava/lang/String;

    return-void
.end method

.method public setFocalLength(F)V
    .registers 2

    .line 384
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mBaseFocalLength:F

    return-void
.end method

.method public setInteractiveListener(Lcom/transsion/camera/app/ui/widget/SmoothZoomView$SmoothInteractiveListener;)V
    .registers 2

    .line 161
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mInteractiveListener:Lcom/transsion/camera/app/ui/widget/SmoothZoomView$SmoothInteractiveListener;

    return-void
.end method

.method public setIsBeingHidden(Z)V
    .registers 2

    .line 896
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mIsBeingHidden:Z

    return-void
.end method

.method public setSelectValue(IZ)V
    .registers 9

    .line 210
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDiscFactory:Lcom/transsion/camera/app/ui/widget/disc/factory/IDiscFactory;

    if-nez v0, :cond_c

    .line 211
    sget-object p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "Zoom Factory is null !!!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 214
    :cond_c
    invoke-interface {v0}, Lcom/transsion/camera/app/ui/widget/disc/factory/IDiscFactory;->getZoomMaxValue()I

    move-result v0

    if-ge v0, p1, :cond_19

    .line 215
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDiscFactory:Lcom/transsion/camera/app/ui/widget/disc/factory/IDiscFactory;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/widget/disc/factory/IDiscFactory;->getZoomMaxValue()I

    move-result p1

    goto :goto_27

    .line 216
    :cond_19
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDiscFactory:Lcom/transsion/camera/app/ui/widget/disc/factory/IDiscFactory;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/widget/disc/factory/IDiscFactory;->getZoomMinValue()I

    move-result v0

    if-le v0, p1, :cond_27

    .line 217
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDiscFactory:Lcom/transsion/camera/app/ui/widget/disc/factory/IDiscFactory;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/widget/disc/factory/IDiscFactory;->getZoomMinValue()I

    move-result p1

    .line 219
    :cond_27
    :goto_27
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDiscFactory:Lcom/transsion/camera/app/ui/widget/disc/factory/IDiscFactory;

    int-to-float v1, p1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/ui/widget/disc/factory/IDiscFactory;->getIndex(F)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6b

    .line 220
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSelectValue:I

    const/4 p1, 0x0

    .line 221
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mAngle:F

    .line 222
    iget p1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mLastValue:I

    int-to-float p1, p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->calculateDefaultAngle(F)D

    move-result-wide v2

    double-to-float p1, v2

    .line 223
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDiscFactory:Lcom/transsion/camera/app/ui/widget/disc/factory/IDiscFactory;

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mLastValue:I

    int-to-float v2, v2

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/ui/widget/disc/factory/IDiscFactory;->getIndex(F)I

    move-result v0

    if-ne v0, v1, :cond_4f

    .line 224
    iget p1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mLastValue:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->calculateRadians(I)F

    move-result p1

    :cond_4f
    if-eqz p2, :cond_5d

    .line 227
    iget p2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSelectValue:I

    int-to-float p2, p2

    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->calculateDefaultAngle(F)D

    move-result-wide v0

    double-to-float p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->startSelectedAnimator(FF)V

    goto :goto_66

    .line 229
    :cond_5d
    iget p1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSelectValue:I

    int-to-float p1, p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->calculateDefaultAngle(F)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mMoveRadians:D

    .line 231
    :goto_66
    iget p1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSelectValue:I

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mLastValue:I

    goto :goto_ab

    .line 233
    :cond_6b
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDiscFactory:Lcom/transsion/camera/app/ui/widget/disc/factory/IDiscFactory;

    int-to-double v1, p1

    iget v3, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mAngle:F

    iget p2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mSelectValue:I

    int-to-float p2, p2

    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->calculateDefaultAngle(F)D

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Lcom/transsion/camera/app/ui/widget/disc/factory/IDiscFactory;->calculateAngle(DFD)D

    move-result-wide v0

    double-to-float p2, v0

    iput p2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mAngle:F

    .line 234
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mLastValue:I

    .line 235
    sget-object p1, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setSelectValue: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mAngle:F

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ",radians: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mAngle:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mMoveSpeed:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 237
    :goto_ab
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setStartVideoRecording(ZIZ)V
    .registers 4

    .line 1001
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mIsVideoStartRecording:Z

    .line 1002
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mTeleMinValue:I

    .line 1003
    iput-boolean p3, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mIsSatCamera:Z

    return-void
.end method

.method public setUIStateChangeListener(Lcom/transsion/camera/app/ui/widget/SmoothZoomView$SmoothUIStateChangeListener;)V
    .registers 2

    .line 157
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mUIStateChangeListener:Lcom/transsion/camera/app/ui/widget/SmoothZoomView$SmoothUIStateChangeListener;

    return-void
.end method

.method public setViewProgressChangeListener(Lcom/transsion/camera/app/ui/widget/SmoothZoomView$SmoothProgressChangeListener;)V
    .registers 2

    .line 165
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mViewProgressChangeListener:Lcom/transsion/camera/app/ui/widget/SmoothZoomView$SmoothProgressChangeListener;

    return-void
.end method

.method public setZoomViewOrientation(I)V
    .registers 3

    .line 1091
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mOrientation:I

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_a

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_d

    :cond_a
    const/4 p1, 0x0

    .line 1093
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mOrientation:I

    .line 1095
    :cond_d
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public startSelectedAnimator(FF)V
    .registers 6

    .line 1062
    sget-object v0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[startSelectedAnimator],startRatio: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",endRatio: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 1063
    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const-string p1, "moveAngle"

    invoke-static {p1, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    .line 1064
    filled-new-array {p1}, [Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 1065
    new-instance p2, Lcom/transsion/camera/app/ui/widget/SmoothZoomView$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/widget/SmoothZoomView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1069
    new-instance p0, Landroid/view/animation/PathInterpolator;

    const p2, 0x3dcccccd    # 0.1f

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3e4ccccd    # 0.2f

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, p2, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x1f4

    .line 1070
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1071
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public vibrate(IZ)V
    .registers 5

    .line 1099
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mIsVideoStartRecording:Z

    if-nez v0, :cond_6f

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_6f

    .line 1103
    :cond_b
    invoke-static {}, Lcom/transsion/camera/app/common/vibrate/VibratorController;->getInstance()Lcom/transsion/camera/app/common/vibrate/VibratorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/vibrate/VibratorController;->isSupport()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 1104
    sget-object p2, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "smoothVibrate,progress : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1105
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mDiscFactory:Lcom/transsion/camera/app/ui/widget/disc/factory/IDiscFactory;

    if-eqz p0, :cond_3f

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/widget/disc/factory/IDiscFactory;->isMajorTick(I)Z

    move-result p0

    if-eqz p0, :cond_3f

    .line 1106
    invoke-static {}, Lcom/transsion/camera/app/common/vibrate/VibratorController;->getInstance()Lcom/transsion/camera/app/common/vibrate/VibratorController;

    move-result-object p0

    const-string p1, "Cam_scales_strong.he"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/vibrate/VibratorController;->doVibrate(Ljava/lang/String;)V

    return-void

    :cond_3f
    const/16 p0, 0x7d0

    if-gt p1, p0, :cond_6e

    .line 1107
    rem-int/lit8 p1, p1, 0x64

    if-nez p1, :cond_6e

    .line 1108
    invoke-static {}, Lcom/transsion/camera/app/common/vibrate/VibratorController;->getInstance()Lcom/transsion/camera/app/common/vibrate/VibratorController;

    move-result-object p0

    const-string p1, "Cam_scales_weak.he"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/vibrate/VibratorController;->doVibrate(Ljava/lang/String;)V

    return-void

    :cond_51
    if-eqz p2, :cond_6e

    .line 1110
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->judgeIsNeedVibrator(I)Z

    move-result p1

    if-eqz p1, :cond_6e

    .line 1111
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->mContext:Landroid/content/Context;

    const-string/jumbo p1, "vibrator"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    const-wide/16 p1, 0x28

    const/4 v0, 0x1

    .line 1113
    invoke-static {p1, p2, v0}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object p1

    .line 1112
    invoke-virtual {p0, p1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    :cond_6e
    return-void

    .line 1100
    :cond_6f
    :goto_6f
    sget-object p0, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "SmoothZoomView is not visible or is VideoRecording!!!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
