.class public Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;
.super Lcom/transsion/camera/app/ui/widget/CommonParamsControlView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$OnSeekBarChangeListener;,
        Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$DimenInfo;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private isCenterXAnimation:Z

.field private isEnterActionMove:Z

.field private isTouchMove:Z

.field private isTouchOnThumb:Z

.field private mBetweenTextAndThumb:I

.field private mCenterThumbHalfLen:F

.field private mCurrentThumbInHalfWidth:F

.field private mCurrentThumbInScale:F

.field private mCurrentThumbOutScale:F

.field private mDimenInfo:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$DimenInfo;

.field private mFromThumbCenterX:F

.field private mFromThumbHalfLen:F

.field private mIsBeingDragged:Z

.field private mLastMotionX:F

.field private mLeft:F

.field private mListener:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$OnSeekBarChangeListener;

.field private mMaxThumbInHalfWidth:F

.field private mMaxThumbInScale:F

.field private mMaxThumbStokeScale:F

.field private mNeedDragEnd:Z

.field private mNeedToDrawOptimalDrawable:Z

.field private mOptimalDotDrawable:Landroid/graphics/drawable/Drawable;

.field private mOptimalDotHeight:I

.field private mOptimalDotWidth:I

.field private mOptimalProgress:I

.field private mOrientation:I

.field private mPreThumbCenterX:F

.field private mProgress:I

.field private mProgressMax:I

.field private mProgressMin:I

.field private mProgressRange:I

.field private mReversed:Z

.field private mRight:F

.field private final mRunnable:Ljava/lang/Runnable;

.field private mScreenFormType:I

.field private mSeekBarLineHalfHeight:F

.field private mSeekBarLineHeight:I

.field private mSeekBarPrimaryDrawable:Landroid/graphics/drawable/Drawable;

.field private mSeekBarSecondaryDrawable:Landroid/graphics/drawable/Drawable;

.field private mShowProgressText:Z

.field private mSourceThumbInHalfHeight:F

.field private mSourceThumbInHalfWidth:F

.field private mSupportProgressList:[I

.field private mSupportProgressText:Z

.field private mTextBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mTextBgHeight:I

.field private mTextBgWidth:I

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextSize:F

.field private mThumbCenterX:F

.field private mThumbCenterXTrackAnimator:Lcom/transsion/widgetslib/anim/TrackAnimator;

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mThumbHalfHeight:F

.field private mThumbHeight:I

.field private mThumbInScaleAnimator:Landroid/animation/ValueAnimator;

.field private mThumbInsideColor:I

.field private mThumbIntervalAnimator:Landroid/animation/ValueAnimator;

.field private mThumbOutColor:I

.field private mThumbPaint:Landroid/graphics/Paint;

.field private mThumbStokeWidth:F

.field private mThumbWidth:I

.field private mThumbWidthAnimator:Landroid/animation/ValueAnimator;

.field private mThumbWidthTrackAnimator:Lcom/transsion/widgetslib/anim/TrackAnimator;

.field private mToThumbCenterX:F

.field private mToThumbHalfLen:F

.field private mTouchSlop:I

.field private mTouchThumbX:F

.field private mTouchXDown:F

.field private mTouchXMove:F

.field private mUseOffInsteadZero:Z

.field private onSeekBarTouchMoveListener:Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$OnTouchMoveListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCenterThumbHalfLen(Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mCenterThumbHalfLen:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentThumbInScale(Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mCurrentThumbInScale:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFromThumbCenterX(Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mFromThumbCenterX:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFromThumbHalfLen(Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mFromThumbHalfLen:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMaxThumbInScale(Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mMaxThumbInScale:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMaxThumbStokeScale(Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mMaxThumbStokeScale:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNeedDragEnd(Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mNeedDragEnd:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmThumbCenterX(Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbCenterX:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmToThumbCenterX(Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mToThumbCenterX:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmToThumbHalfLen(Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mToThumbHalfLen:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fputisCenterXAnimation(Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->isCenterXAnimation:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrentThumbInHalfWidth(Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;F)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mCurrentThumbInHalfWidth:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrentThumbInScale(Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;F)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mCurrentThumbInScale:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrentThumbOutScale(Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;F)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mCurrentThumbOutScale:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNeedDragEnd(Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mNeedDragEnd:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmShowProgressText(Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mShowProgressText:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmThumbCenterX(Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;F)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbCenterX:F

    return-void
.end method

.method static bridge synthetic -$$Nest$mtrackTouchEvent(Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;FZ)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->trackTouchEvent(FZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 33
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "BiDiSeekBar"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 13

    .line 209
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/CommonParamsControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mIsBeingDragged:Z

    const/4 v1, 0x1

    .line 67
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mSupportProgressText:Z

    .line 68
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mUseOffInsteadZero:Z

    .line 73
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mScreenFormType:I

    const/4 v2, -0x1

    .line 74
    iput v2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mOrientation:I

    const/high16 v3, 0x3f800000    # 1.0f

    .line 87
    iput v3, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mCurrentThumbInScale:F

    .line 88
    iput v3, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mCurrentThumbOutScale:F

    .line 89
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->isCenterXAnimation:Z

    .line 92
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->isEnterActionMove:Z

    .line 93
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->isTouchMove:Z

    .line 100
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->isTouchOnThumb:Z

    .line 111
    new-instance v4, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$1;

    invoke-direct {v4, p0}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$1;-><init>(Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;)V

    iput-object v4, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mRunnable:Ljava/lang/Runnable;

    .line 937
    new-array v4, v0, [I

    iput-object v4, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mSupportProgressList:[I

    .line 210
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    .line 211
    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    iput v4, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTouchSlop:I

    .line 212
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->cw_seekbar_thumb:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 213
    sget v4, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->cw_seekbar_optimal_indicator:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mOptimalDotDrawable:Landroid/graphics/drawable/Drawable;

    .line 214
    sget v4, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->cw_seekbar_text_bg:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 215
    sget v4, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->cw_seekbar_secondary:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mSeekBarSecondaryDrawable:Landroid/graphics/drawable/Drawable;

    .line 216
    sget v4, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->cw_seekbar_primary:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mSeekBarPrimaryDrawable:Landroid/graphics/drawable/Drawable;

    .line 217
    sget v4, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->cw_seekbar_indicator_text_color:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    .line 218
    sget v5, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->cw_seekbar_indicator_text_shadow_color:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getColor(I)I

    move-result v5

    .line 220
    new-instance v6, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$DimenInfo;

    invoke-direct {v6, p1}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$DimenInfo;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mDimenInfo:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$DimenInfo;

    .line 221
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->updateDimension()V

    .line 223
    sget-object v6, Lcom/transsion/camera/featurelibs/commonwidget/R$styleable;->BiDiSeekBar:[I

    invoke-virtual {p1, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 224
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    move v6, v0

    :goto_80
    if-ge v6, p2, :cond_a2

    .line 226
    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v7

    .line 227
    sget v8, Lcom/transsion/camera/featurelibs/commonwidget/R$styleable;->BiDiSeekBar_supportText:I

    if-ne v7, v8, :cond_93

    .line 228
    iget-boolean v8, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mSupportProgressText:Z

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mSupportProgressText:Z

    goto :goto_9f

    .line 229
    :cond_93
    sget v8, Lcom/transsion/camera/featurelibs/commonwidget/R$styleable;->BiDiSeekBar_useOffInsteadZero:I

    if-ne v7, v8, :cond_9f

    .line 230
    iget-boolean v8, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mUseOffInsteadZero:Z

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mUseOffInsteadZero:Z

    :cond_9f
    :goto_9f
    add-int/lit8 v6, v6, 0x1

    goto :goto_80

    .line 233
    :cond_a2
    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$styleable;->BiDiSeekBar_supportText:I

    iget-boolean v6, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mSupportProgressText:Z

    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mSupportProgressText:Z

    .line 234
    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$styleable;->BiDiSeekBar_useOffInsteadZero:I

    iget-boolean v6, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mUseOffInsteadZero:Z

    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mUseOffInsteadZero:Z

    .line 235
    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$styleable;->BiDiSeekBar_thumbInsideColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbInsideColor:I

    .line 236
    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$styleable;->BiDiSeekBar_thumbOutColor:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbOutColor:I

    .line 237
    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$styleable;->BiDiSeekBar_thumbInWidth:I

    const/16 v2, 0x18

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    .line 238
    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$styleable;->BiDiSeekBar_thumbOutWidth:I

    const/16 v6, 0x2a

    invoke-virtual {p1, v2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 239
    sget v6, Lcom/transsion/camera/featurelibs/commonwidget/R$styleable;->BiDiSeekBar_thumbInMaxWidth:I

    const/16 v7, 0x48

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    .line 240
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 243
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextPaint:Landroid/graphics/Paint;

    .line 244
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 245
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v8, 0x41000000    # 8.0f

    invoke-virtual {p1, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 246
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextPaint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextSize:F

    invoke-virtual {p1, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 247
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextPaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 248
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 249
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 250
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v3, v3, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    sub-int p1, v2, p2

    int-to-float p1, p1

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr p1, v4

    .line 252
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbStokeWidth:F

    const/4 v5, 0x0

    cmpg-float p1, p1, v5

    if-gez p1, :cond_120

    .line 254
    iput v5, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbStokeWidth:F

    :cond_120
    int-to-float p1, p2

    mul-float v9, p1, v4

    .line 256
    iput v9, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mSourceThumbInHalfWidth:F

    if-ge v6, p2, :cond_128

    goto :goto_129

    :cond_128
    move p2, v6

    :goto_129
    int-to-float p2, p2

    mul-float/2addr p2, v4

    .line 260
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mMaxThumbInHalfWidth:F

    .line 261
    iput v9, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mSourceThumbInHalfHeight:F

    .line 262
    iput v9, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mCurrentThumbInHalfWidth:F

    const/high16 p2, 0x3fa00000    # 1.25f

    .line 263
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mMaxThumbInScale:F

    .line 265
    iget v6, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbStokeWidth:F

    cmpl-float v5, v6, v5

    if-eqz v5, :cond_148

    int-to-float v5, v2

    const v9, 0x3f924923

    mul-float/2addr v5, v9

    mul-float/2addr p1, p2

    sub-float/2addr v5, p1

    const/high16 p1, 0x40000000    # 2.0f

    mul-float/2addr v6, p1

    div-float/2addr v5, v6

    .line 266
    iput v5, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mMaxThumbStokeScale:F

    .line 269
    :cond_148
    iget p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mMaxThumbStokeScale:F

    cmpg-float p1, p1, v3

    if-gez p1, :cond_150

    .line 270
    iput v3, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mMaxThumbStokeScale:F

    .line 273
    :cond_150
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_18e

    .line 274
    iput v2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbHeight:I

    .line 275
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbPaint:Landroid/graphics/Paint;

    .line 276
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 277
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 278
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 279
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 280
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 282
    new-instance p1, Lcom/transsion/widgetslib/anim/TrackAnimator;

    invoke-direct {p1}, Lcom/transsion/widgetslib/anim/TrackAnimator;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbWidthTrackAnimator:Lcom/transsion/widgetslib/anim/TrackAnimator;

    .line 283
    new-instance p1, Lcom/transsion/widgetslib/anim/TrackAnimator;

    invoke-direct {p1}, Lcom/transsion/widgetslib/anim/TrackAnimator;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbCenterXTrackAnimator:Lcom/transsion/widgetslib/anim/TrackAnimator;

    .line 284
    invoke-virtual {p1, v4}, Lcom/transsion/widgetslib/anim/TrackAnimator;->setMaxSpeedFractor(F)V

    .line 285
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbCenterXTrackAnimator:Lcom/transsion/widgetslib/anim/TrackAnimator;

    invoke-virtual {p1, v4}, Lcom/transsion/widgetslib/anim/TrackAnimator;->setMinSpeedFractor(F)V

    :cond_18e
    const/16 p1, 0x64

    const/16 p2, -0x64

    .line 287
    invoke-direct {p0, p1, v0, p2, v0}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->setRange(IIII)V

    return-void
.end method

.method private attemptClaimDrag()V
    .registers 2

    .line 678
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 679
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_e
    return-void
.end method

.method private calThumbCxWhenSeekStepSection(F)F
    .registers 4

    .line 986
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mLeft:F

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_7

    return v0

    .line 989
    :cond_7
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mRight:F

    cmpl-float v0, p1, p0

    if-ltz v0, :cond_e

    return p0

    :cond_e
    return p1
.end method

.method private calculateFinalProgress(I)I
    .registers 3

    .line 720
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->shouldFilterProgress()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 721
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mSupportProgressList:[I

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->findNearestProgress([II)I

    move-result p0

    return p0

    :cond_d
    return p1
.end method

.method private computePositionByProgress(I)Landroid/graphics/PointF;
    .registers 5

    .line 385
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mProgressRange:I

    if-lez v0, :cond_5c

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mProgressMax:I

    if-gt p1, v1, :cond_5c

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mProgressMin:I

    if-ge p1, v1, :cond_d

    goto :goto_5c

    :cond_d
    sub-int/2addr p1, v1

    int-to-float p1, p1

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 391
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    .line 393
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mReversed:Z

    if-eqz v1, :cond_31

    .line 394
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    int-to-float v0, v0

    mul-float/2addr v0, p1

    sub-float/2addr v1, v0

    goto :goto_3a

    :cond_31
    int-to-float v0, v0

    mul-float/2addr v0, p1

    .line 396
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    int-to-float p1, p1

    add-float v1, v0, p1

    .line 398
    :goto_3a
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbHalfHeight:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mSeekBarLineHalfHeight:F

    sub-float/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p1, p0

    const/4 p0, 0x0

    cmpg-float v0, v1, p0

    if-gez v0, :cond_51

    move v1, p0

    :cond_51
    cmpg-float v0, p1, p0

    if-gez v0, :cond_56

    move p1, p0

    .line 405
    :cond_56
    new-instance p0, Landroid/graphics/PointF;

    invoke-direct {p0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0

    :cond_5c
    :goto_5c
    const/4 p0, 0x0

    return-object p0
.end method

.method private createThumbInScaleAnimator(FF)Landroid/animation/ValueAnimator;
    .registers 6

    const/4 v0, 0x2

    .line 1032
    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0xfa

    .line 1033
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1034
    new-instance p2, Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3e800000    # 0.25f

    invoke-direct {p2, v2, v0, v0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1035
    new-instance p2, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$2;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$2;-><init>(Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method private createThumbIntervalAnimator()Landroid/animation/ValueAnimator;
    .registers 7

    const/4 v0, 0x3

    .line 1116
    new-array v0, v0, [F

    fill-array-data v0, :array_32

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    .line 1117
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1118
    new-instance v1, Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;

    const v2, 0x3ecccccd    # 0.4f

    const v3, 0x3e4ccccd    # 0.2f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v3, v5}, Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1119
    new-instance v1, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$4;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$4;-><init>(Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1133
    new-instance v1, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$5;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$5;-><init>(Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    nop

    :array_32
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private createThumbWidthAnimator(FF)Landroid/animation/ValueAnimator;
    .registers 7

    const/4 v0, 0x2

    .line 1066
    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0xfa

    .line 1067
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1068
    new-instance p2, Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;

    const v0, 0x3e4ccccd    # 0.2f

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3ecccccd    # 0.4f

    const/4 v3, 0x0

    invoke-direct {p2, v2, v3, v0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1069
    new-instance p2, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$3;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$3;-><init>(Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method private drawNormal(Landroid/graphics/Canvas;)V
    .registers 4

    .line 610
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mProgress:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->computePositionByProgress(I)Landroid/graphics/PointF;

    move-result-object v0

    .line 611
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mOptimalProgress:I

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->computePositionByProgress(I)Landroid/graphics/PointF;

    move-result-object v1

    if-eqz v0, :cond_24

    if-nez v1, :cond_11

    goto :goto_24

    .line 615
    :cond_11
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->drawProgressBackGround(Landroid/graphics/Canvas;Landroid/graphics/PointF;)V

    .line 616
    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->drawProgress(Landroid/graphics/Canvas;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 617
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->drawOptimalIndicator(Landroid/graphics/Canvas;Landroid/graphics/PointF;)V

    .line 618
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->drawThumb(Landroid/graphics/Canvas;Landroid/graphics/PointF;)V

    .line 619
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mSupportProgressText:Z

    if-eqz v1, :cond_24

    .line 620
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->drawText(Landroid/graphics/Canvas;Landroid/graphics/PointF;)V

    :cond_24
    :goto_24
    return-void
.end method

.method private drawOptimalIndicator(Landroid/graphics/Canvas;Landroid/graphics/PointF;)V
    .registers 7

    .line 373
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mNeedToDrawOptimalDrawable:Z

    if-eqz v0, :cond_34

    .line 374
    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mOptimalDotWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 375
    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mOptimalDotHeight:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    sub-float/2addr p2, v1

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mSeekBarLineHalfHeight:F

    add-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 376
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mOptimalDotWidth:I

    add-int/2addr v1, v0

    .line 377
    iget v2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mOptimalDotHeight:I

    add-int/2addr v2, p2

    .line 378
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v0, p2, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 379
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mOptimalDotDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 380
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mOptimalDotDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_34
    return-void
.end method

.method private drawProgress(Landroid/graphics/Canvas;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .registers 8

    .line 336
    iget v0, p3, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    .line 337
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 340
    iget v2, p3, Landroid/graphics/PointF;->y:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 341
    iget v3, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mSeekBarLineHeight:I

    add-int/2addr v3, v2

    if-gez v1, :cond_24

    .line 343
    iget p2, p3, Landroid/graphics/PointF;->x:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 344
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p3

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    :goto_22
    add-int/2addr p3, p2

    goto :goto_33

    .line 346
    :cond_24
    iget p2, p2, Landroid/graphics/PointF;->x:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 347
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p3

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    goto :goto_22

    .line 349
    :goto_33
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2, v2, p3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 350
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mSeekBarPrimaryDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 351
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mSeekBarPrimaryDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawProgressBackGround(Landroid/graphics/Canvas;Landroid/graphics/PointF;)V
    .registers 7

    .line 325
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 326
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 327
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    .line 328
    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 329
    iget v2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mSeekBarLineHeight:I

    add-int/2addr v2, p2

    .line 330
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v1, p2, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 331
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mSeekBarSecondaryDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 332
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mSeekBarSecondaryDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawProgressUI4(Landroid/graphics/Canvas;Landroid/graphics/PointF;)V
    .registers 7

    .line 355
    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbCenterX:F

    sub-float/2addr v0, v1

    .line 356
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 359
    iget v2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 360
    iget v3, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mSeekBarLineHeight:I

    add-int/2addr v3, v2

    if-gez v1, :cond_1b

    .line 362
    iget p2, p2, Landroid/graphics/PointF;->x:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    goto :goto_21

    .line 364
    :cond_1b
    iget p2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbCenterX:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 366
    :goto_21
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v0, p2

    .line 367
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p2, v2, v0, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 368
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mSeekBarPrimaryDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 369
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mSeekBarPrimaryDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawText(Landroid/graphics/Canvas;Landroid/graphics/PointF;)V
    .registers 5

    .line 445
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mShowProgressText:Z

    if-nez v0, :cond_5

    return-void

    .line 448
    :cond_5
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mScreenFormType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2e

    .line 449
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_14

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mScreenFormType:I

    if-eqz v0, :cond_2e

    :cond_14
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mScreenFormType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2e

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2e

    const/4 v1, 0x7

    if-ne v0, v1, :cond_20

    goto :goto_2e

    .line 459
    :cond_20
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 460
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->drawTextNormal(Landroid/graphics/Canvas;Landroid/graphics/PointF;)V

    return-void

    .line 462
    :cond_2a
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->drawTextNormalUI4(Landroid/graphics/Canvas;Landroid/graphics/PointF;)V

    return-void

    .line 453
    :cond_2e
    :goto_2e
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-nez v0, :cond_38

    .line 454
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->drawTextRotate(Landroid/graphics/Canvas;Landroid/graphics/PointF;)V

    return-void

    .line 456
    :cond_38
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->drawTextRotateUI4(Landroid/graphics/Canvas;Landroid/graphics/PointF;)V

    return-void
.end method

.method private drawTextNormal(Landroid/graphics/Canvas;Landroid/graphics/PointF;)V
    .registers 8

    .line 468
    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextBgWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v1, 0x0

    .line 469
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 470
    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbHalfHeight:F

    sub-float/2addr p2, v1

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mBetweenTextAndThumb:I

    int-to-float v1, v1

    sub-float/2addr p2, v1

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextBgHeight:I

    int-to-float v1, v1

    sub-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 471
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextBgWidth:I

    add-int/2addr v1, v0

    .line 472
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 473
    iget v3, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextBgHeight:I

    add-int/2addr v3, p2

    .line 474
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v0, p2, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 475
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 476
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 477
    iget p2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mProgress:I

    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->calculateFinalProgress(I)I

    move-result p2

    .line 478
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 479
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mUseOffInsteadZero:Z

    if-eqz v1, :cond_52

    if-nez p2, :cond_52

    .line 480
    const-string v0, "OFF"

    .line 482
    :cond_52
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p2

    .line 483
    iget v1, p2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget p2, p2, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float p2, v1, p2

    div-float/2addr p2, v2

    sub-float/2addr p2, v1

    .line 484
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, p2

    .line 485
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result p2

    int-to-float p2, p2

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, v1, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawTextNormalUI4(Landroid/graphics/Canvas;Landroid/graphics/PointF;)V
    .registers 8

    .line 489
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbCenterX:F

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextBgWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v1, 0x0

    .line 490
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 491
    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbHalfHeight:F

    sub-float/2addr p2, v1

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mBetweenTextAndThumb:I

    int-to-float v1, v1

    sub-float/2addr p2, v1

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextBgHeight:I

    int-to-float v1, v1

    sub-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 492
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextBgWidth:I

    add-int/2addr v1, v0

    .line 493
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 494
    iget v3, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextBgHeight:I

    add-int/2addr v3, p2

    .line 495
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v0, p2, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 496
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 497
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 498
    iget p2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mProgress:I

    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->calculateFinalProgress(I)I

    move-result p2

    .line 499
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 500
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mUseOffInsteadZero:Z

    if-eqz v1, :cond_52

    if-nez p2, :cond_52

    .line 501
    const-string v0, "OFF"

    .line 503
    :cond_52
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p2

    .line 504
    iget v1, p2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget p2, p2, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float p2, v1, p2

    div-float/2addr p2, v2

    sub-float/2addr p2, v1

    .line 505
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, p2

    .line 506
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result p2

    int-to-float p2, p2

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, v1, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawTextRotate(Landroid/graphics/Canvas;Landroid/graphics/PointF;)V
    .registers 15

    .line 511
    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextBgHeight:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v1, 0x0

    .line 512
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 513
    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbHalfHeight:F

    sub-float/2addr p2, v3

    iget v3, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mBetweenTextAndThumb:I

    int-to-float v3, v3

    sub-float/2addr p2, v3

    iget v3, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextBgWidth:I

    int-to-float v3, v3

    sub-float/2addr p2, v3

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 514
    iget v3, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextBgHeight:I

    add-int/2addr v3, v0

    .line 515
    iget v4, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextBgWidth:I

    add-int/2addr v4, p2

    .line 516
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v0, p2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 518
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float v9, p2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float v10, p2

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result p1

    .line 519
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v6, p2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 p2, 0x3f800000    # 1.0f

    .line 520
    invoke-virtual {v6, p2, p2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 521
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mScreenFormType:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_5a

    const/16 v1, -0x5a

    goto :goto_74

    :cond_5a
    const/4 v3, 0x7

    if-ne v0, v3, :cond_69

    .line 524
    iget p2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mOrientation:I

    const/16 v0, 0x5a

    if-eq p2, v0, :cond_67

    const/16 v0, 0x10e

    if-ne p2, v0, :cond_74

    :cond_67
    move v1, p2

    goto :goto_74

    :cond_69
    const/4 v3, 0x4

    if-eq v0, v3, :cond_6f

    const/4 v3, 0x5

    if-ne v0, v3, :cond_74

    :cond_6f
    const/high16 v0, -0x40800000    # -1.0f

    .line 529
    invoke-virtual {v6, v0, p2}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_74
    :goto_74
    int-to-float p2, v1

    .line 531
    invoke-virtual {v6, p2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 532
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextBgDrawable:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextBgWidth:I

    neg-int v1, v0

    div-int/lit8 v1, v1, 0x2

    iget v3, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextBgHeight:I

    neg-int v4, v3

    div-int/lit8 v4, v4, 0x2

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p2, v1, v4, v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 533
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 535
    iget p2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mProgress:I

    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->calculateFinalProgress(I)I

    move-result p2

    .line 536
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 537
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mUseOffInsteadZero:Z

    if-eqz v0, :cond_a4

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mProgress:I

    if-nez v0, :cond_a4

    .line 538
    const-string p2, "OFF"

    .line 540
    :cond_a4
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 541
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v0, v1, v0

    div-float/2addr v0, v2

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    .line 542
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, p2, v1, v0, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 544
    invoke-virtual {v6, p1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private drawTextRotateUI4(Landroid/graphics/Canvas;Landroid/graphics/PointF;)V
    .registers 15

    .line 549
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbCenterX:F

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextBgHeight:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v1, 0x0

    .line 550
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 551
    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbHalfHeight:F

    sub-float/2addr p2, v3

    iget v3, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mBetweenTextAndThumb:I

    int-to-float v3, v3

    sub-float/2addr p2, v3

    iget v3, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextBgWidth:I

    int-to-float v3, v3

    sub-float/2addr p2, v3

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 552
    iget v3, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextBgHeight:I

    add-int/2addr v3, v0

    .line 553
    iget v4, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextBgWidth:I

    add-int/2addr v4, p2

    .line 554
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v0, p2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 556
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float v9, p2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float v10, p2

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result p1

    .line 557
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v6, p2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 p2, 0x3f800000    # 1.0f

    .line 558
    invoke-virtual {v6, p2, p2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 559
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mScreenFormType:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_5a

    const/16 v1, -0x5a

    goto :goto_7a

    :cond_5a
    const/4 v3, 0x7

    if-ne v0, v3, :cond_69

    .line 562
    iget p2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mOrientation:I

    const/16 v0, 0x5a

    if-eq p2, v0, :cond_67

    const/16 v0, 0x10e

    if-ne p2, v0, :cond_7a

    :cond_67
    move v1, p2

    goto :goto_7a

    :cond_69
    const/4 v3, 0x4

    if-eq v0, v3, :cond_75

    const/4 v3, 0x5

    if-ne v0, v3, :cond_70

    goto :goto_75

    :cond_70
    if-nez v0, :cond_7a

    .line 569
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mOrientation:I

    goto :goto_7a

    :cond_75
    :goto_75
    const/high16 v0, -0x40800000    # -1.0f

    .line 567
    invoke-virtual {v6, v0, p2}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_7a
    :goto_7a
    int-to-float p2, v1

    .line 571
    invoke-virtual {v6, p2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 572
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextBgDrawable:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextBgWidth:I

    neg-int v1, v0

    div-int/lit8 v1, v1, 0x2

    iget v3, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextBgHeight:I

    neg-int v4, v3

    div-int/lit8 v4, v4, 0x2

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p2, v1, v4, v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 573
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 575
    iget p2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mProgress:I

    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->calculateFinalProgress(I)I

    move-result p2

    .line 576
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 577
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mUseOffInsteadZero:Z

    if-eqz v0, :cond_aa

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mProgress:I

    if-nez v0, :cond_aa

    .line 578
    const-string p2, "OFF"

    .line 580
    :cond_aa
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 581
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v0, v1, v0

    div-float/2addr v0, v2

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    .line 582
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, p2, v1, v0, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 584
    invoke-virtual {v6, p1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private drawThumb(Landroid/graphics/Canvas;Landroid/graphics/PointF;)V
    .registers 7

    .line 409
    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 410
    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbHalfHeight:F

    sub-float/2addr p2, v1

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mSeekBarLineHalfHeight:F

    add-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 411
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbWidth:I

    add-int/2addr v1, v0

    .line 412
    iget v2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbHeight:I

    add-int/2addr v2, p2

    .line 413
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v0, p2, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 414
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 415
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawThumbUI4(Landroid/graphics/Canvas;Landroid/graphics/PointF;)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 422
    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v2, v0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mSourceThumbInHalfHeight:F

    iget v3, v0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mCurrentThumbInScale:F

    mul-float v4, v2, v3

    sub-float v4, v1, v4

    iget v5, v0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mSeekBarLineHalfHeight:F

    add-float v8, v4, v5

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float v10, v1, v5

    .line 424
    iget v1, v0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbCenterX:F

    iget v2, v0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mCurrentThumbInHalfWidth:F

    mul-float v4, v2, v3

    sub-float v4, v1, v4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 426
    iget v2, v0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbStokeWidth:F

    iget v3, v0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mCurrentThumbOutScale:F

    mul-float/2addr v2, v3

    .line 427
    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 428
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v9

    sub-float v1, v7, v2

    const/4 v3, 0x0

    .line 429
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v12

    sub-float v13, v8, v2

    add-float v1, v9, v2

    .line 431
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v14

    add-float v15, v10, v2

    .line 433
    iget v1, v0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mSourceThumbInHalfHeight:F

    iget v3, v0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mCurrentThumbInScale:F

    mul-float/2addr v1, v3

    add-float v16, v1, v2

    .line 436
    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbPaint:Landroid/graphics/Paint;

    iget v3, v0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbOutColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 437
    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbPaint:Landroid/graphics/Paint;

    move/from16 v17, v16

    move-object/from16 v11, p1

    move-object/from16 v18, v2

    invoke-virtual/range {v11 .. v18}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 438
    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbPaint:Landroid/graphics/Paint;

    iget v3, v0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbInsideColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 439
    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 440
    iget-object v13, v0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbPaint:Landroid/graphics/Paint;

    move v12, v1

    move-object/from16 v6, p1

    move v11, v1

    invoke-virtual/range {v6 .. v13}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 441
    iget-object v0, v0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method private drawUI4(Landroid/graphics/Canvas;)V
    .registers 5

    .line 625
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mProgress:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->computePositionByProgress(I)Landroid/graphics/PointF;

    move-result-object v0

    .line 626
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mOptimalProgress:I

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->computePositionByProgress(I)Landroid/graphics/PointF;

    move-result-object v1

    if-eqz v0, :cond_35

    if-nez v1, :cond_11

    goto :goto_35

    .line 631
    :cond_11
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->isCenterXAnimation:Z

    if-nez v2, :cond_19

    .line 632
    iget v2, v0, Landroid/graphics/PointF;->x:F

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbCenterX:F

    .line 634
    :cond_19
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->updateThumbWidthAndCenterXTrack()Z

    move-result v2

    .line 635
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->drawProgressBackGround(Landroid/graphics/Canvas;Landroid/graphics/PointF;)V

    .line 636
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->drawProgressUI4(Landroid/graphics/Canvas;Landroid/graphics/PointF;)V

    .line 637
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->drawOptimalIndicator(Landroid/graphics/Canvas;Landroid/graphics/PointF;)V

    .line 638
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->drawThumbUI4(Landroid/graphics/Canvas;Landroid/graphics/PointF;)V

    .line 639
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mSupportProgressText:Z

    if-eqz v1, :cond_30

    .line 640
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->drawText(Landroid/graphics/Canvas;Landroid/graphics/PointF;)V

    :cond_30
    if-eqz v2, :cond_35

    .line 643
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_35
    :goto_35
    return-void
.end method

.method private static findNearestProgress([II)I
    .registers 6

    .line 948
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_6

    return v1

    .line 950
    :cond_6
    aget v0, p0, v1

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 951
    :goto_d
    array-length v3, p0

    if-ge v2, v3, :cond_20

    .line 952
    aget v3, p0, v2

    sub-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v3, v0, :cond_1d

    .line 954
    aget v0, p0, v2

    move v1, v0

    move v0, v3

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_20
    return v1
.end method

.method private getThumbHalfSizeOnTouchDown()F
    .registers 3

    .line 996
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mSourceThumbInHalfWidth:F

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mMaxThumbInScale:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbStokeWidth:F

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mMaxThumbStokeScale:F

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    return v0
.end method

.method private isInRange(I)Z
    .registers 4

    .line 154
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mProgressRange:I

    const/4 v1, 0x0

    if-lez v0, :cond_15

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mProgressMax:I

    if-gt p1, v0, :cond_15

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mProgressMin:I

    if-ge p1, v0, :cond_e

    goto :goto_15

    .line 157
    :cond_e
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mProgress:I

    if-ne p0, p1, :cond_13

    return v1

    :cond_13
    const/4 p0, 0x1

    return p0

    :cond_15
    :goto_15
    return v1
.end method

.method private isThumbIntervalAnimationRun()Z
    .registers 1

    .line 1162
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbIntervalAnimator:Landroid/animation/ValueAnimator;

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

.method private onDownThumbAnimation(Landroid/view/MotionEvent;)V
    .registers 4

    .line 839
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mLeft:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mRight:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTouchXDown:F

    .line 840
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->getThumbHalfSizeOnTouchDown()F

    move-result v0

    .line 842
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbCenterX:F

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, v0

    const/4 v0, 0x0

    if-gtz p1, :cond_28

    const/4 p1, 0x1

    goto :goto_29

    :cond_28
    move p1, v0

    :goto_29
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->isTouchOnThumb:Z

    if-eqz p1, :cond_35

    .line 844
    iget p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbCenterX:F

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->trackTouchEvent(FZ)V

    .line 845
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_35
    return-void
.end method

.method private onMoveThumbAnimation(Landroid/view/MotionEvent;)V
    .registers 10

    .line 851
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->isEnterActionMove:Z

    const/4 v1, 0x1

    if-nez v0, :cond_19

    const/high16 v0, 0x3f800000    # 1.0f

    .line 852
    iget v2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mMaxThumbInScale:F

    invoke-direct {p0, v0, v2}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->startThumbScaleAnimator(FF)V

    .line 853
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTouchThumbX:F

    .line 854
    iget p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbCenterX:F

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mPreThumbCenterX:F

    move-object v2, p0

    goto/16 :goto_11a

    .line 857
    :cond_19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->calThumbCxWhenSeekStepSection(F)F

    move-result v4

    .line 858
    sget-object v0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMoveThumbAnimation, event.getX():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", x:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", isTouchOnThumb:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->isTouchOnThumb:Z

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 859
    iget p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTouchXDown:F

    sub-float p1, v4, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTouchXMove:F

    .line 862
    iget p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mPreThumbCenterX:F

    sub-float p1, v4, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/UIUtils;->dp2Px(Landroid/content/res/Resources;I)I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    const/4 v0, 0x0

    if-ltz p1, :cond_81

    iget p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTouchXMove:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/transsion/camera/utils/UIUtils;->dp2Px(Landroid/content/res/Resources;I)I

    move-result v2

    int-to-float v2, v2

    cmpl-float p1, p1, v2

    if-gtz p1, :cond_84

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->isTouchMove:Z

    if-eqz p1, :cond_81

    goto :goto_84

    :cond_81
    move-object v2, p0

    goto/16 :goto_eb

    .line 864
    :cond_84
    :goto_84
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->isTouchMove:Z

    if-nez p1, :cond_96

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->isTouchOnThumb:Z

    if-nez p1, :cond_96

    .line 865
    iget v3, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbCenterX:F

    const-wide/16 v5, 0xfa

    const/4 v7, 0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->startThumbIntervalAnimation(FFJZ)V

    goto :goto_e6

    :cond_96
    move-object v2, p0

    .line 868
    iget p0, v2, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTouchThumbX:F

    sub-float p0, v4, p0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    .line 869
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/UIUtils;->dp2Px(Landroid/content/res/Resources;I)I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, p0, p1

    if-gez p1, :cond_ad

    const/4 p0, 0x0

    :cond_ad
    const p1, 0x3fa66666    # 1.3f

    mul-float/2addr p0, p1

    .line 873
    iget p1, v2, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mSourceThumbInHalfWidth:F

    add-float/2addr p1, p0

    .line 874
    iget p0, v2, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mMaxThumbInHalfWidth:F

    cmpl-float v3, p1, p0

    if-lez v3, :cond_bb

    move p1, p0

    .line 878
    :cond_bb
    invoke-direct {v2}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->isThumbIntervalAnimationRun()Z

    move-result p0

    if-eqz p0, :cond_c6

    .line 879
    iput v4, v2, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mToThumbCenterX:F

    .line 880
    iput p1, v2, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mToThumbHalfLen:F

    goto :goto_e6

    .line 882
    :cond_c6
    iget-object p0, v2, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbCenterXTrackAnimator:Lcom/transsion/widgetslib/anim/TrackAnimator;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/anim/TrackAnimator;->isRunning()Z

    move-result p0

    if-nez p0, :cond_d7

    iget-object p0, v2, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbWidthTrackAnimator:Lcom/transsion/widgetslib/anim/TrackAnimator;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/anim/TrackAnimator;->isRunning()Z

    move-result p0

    if-nez p0, :cond_d7

    move v0, v1

    .line 883
    :cond_d7
    iget p0, v2, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mCurrentThumbInHalfWidth:F

    invoke-direct {v2, p0, p1}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->startThumbWidthTrackAnimator(FF)V

    .line 884
    iget p0, v2, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbCenterX:F

    invoke-direct {v2, p0, v4}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->startThumbCenterXTrackAnimator(FF)V

    if-eqz v0, :cond_e6

    .line 886
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 890
    :cond_e6
    :goto_e6
    iput v4, v2, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mPreThumbCenterX:F

    .line 891
    iput-boolean v1, v2, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->isTouchMove:Z

    goto :goto_118

    .line 894
    :goto_eb
    invoke-direct {v2}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->isThumbIntervalAnimationRun()Z

    move-result p0

    if-nez p0, :cond_118

    iget p0, v2, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mCurrentThumbInHalfWidth:F

    iget p1, v2, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mSourceThumbInHalfWidth:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_118

    .line 895
    iget-object p0, v2, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbCenterXTrackAnimator:Lcom/transsion/widgetslib/anim/TrackAnimator;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/anim/TrackAnimator;->isRunning()Z

    move-result p0

    if-nez p0, :cond_10c

    iget-object p0, v2, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbWidthTrackAnimator:Lcom/transsion/widgetslib/anim/TrackAnimator;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/anim/TrackAnimator;->isRunning()Z

    move-result p0

    if-nez p0, :cond_10c

    move v0, v1

    .line 896
    :cond_10c
    iget p0, v2, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mCurrentThumbInHalfWidth:F

    iget p1, v2, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mSourceThumbInHalfWidth:F

    invoke-direct {v2, p0, p1}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->startThumbWidthTrackAnimator(FF)V

    if-eqz v0, :cond_118

    .line 898
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 902
    :cond_118
    :goto_118
    iput v4, v2, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTouchThumbX:F

    .line 904
    :goto_11a
    iput-boolean v1, v2, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->isEnterActionMove:Z

    return-void
.end method

.method private onUpOrCancelThumbAnimation(Landroid/view/MotionEvent;)V
    .registers 8

    .line 908
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbWidthTrackAnimator:Lcom/transsion/widgetslib/anim/TrackAnimator;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/anim/TrackAnimator;->end()V

    .line 909
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbCenterXTrackAnimator:Lcom/transsion/widgetslib/anim/TrackAnimator;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/anim/TrackAnimator;->end()V

    .line 911
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->calThumbCxWhenSeekStepSection(F)F

    move-result v2

    .line 913
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->isEnterActionMove:Z

    if-eqz p1, :cond_3a

    .line 914
    iget p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mCurrentThumbInScale:F

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->startThumbScaleAnimator(FF)V

    .line 915
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->isThumbIntervalAnimationRun()Z

    move-result p1

    if-eqz p1, :cond_27

    .line 917
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mSourceThumbInHalfWidth:F

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mToThumbHalfLen:F

    :cond_27
    if-nez p1, :cond_3a

    .line 919
    iget p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mCurrentThumbInHalfWidth:F

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mSourceThumbInHalfWidth:F

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_3a

    .line 920
    iget p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mCurrentThumbInHalfWidth:F

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mSourceThumbInHalfWidth:F

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->startThumbWidthAnimator(FF)V

    .line 923
    :cond_3a
    iget p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbCenterX:F

    invoke-static {p1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_63

    .line 924
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->isEnterActionMove:Z

    if-eqz p1, :cond_65

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->isThumbIntervalAnimationRun()Z

    move-result p1

    if-eqz p1, :cond_65

    iget p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mPreThumbCenterX:F

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/UIUtils;->dp2Px(Landroid/content/res/Resources;I)I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_65

    .line 925
    iput v2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mToThumbCenterX:F

    :cond_63
    move-object v0, p0

    goto :goto_8e

    .line 927
    :cond_65
    sget-object p1, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpOrCancelThumbAnimation, startThumbIntervalAnimation, mThumbCenterX:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbCenterX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", thumbCenterX:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 928
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbCenterX:F

    const-wide/16 v3, 0xfa

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->startThumbIntervalAnimation(FFJZ)V

    .line 931
    :goto_8e
    iput v2, v0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mPreThumbCenterX:F

    const/4 p0, 0x0

    .line 933
    iput-boolean p0, v0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->isEnterActionMove:Z

    .line 934
    iput-boolean p0, v0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->isTouchMove:Z

    return-void
.end method

.method private setProgress(I)V
    .registers 4

    .line 196
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->isInRange(I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 197
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mProgress:I

    .line 198
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mListener:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_10

    const/4 v1, 0x0

    .line 199
    invoke-interface {v0, p1, v1}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$OnSeekBarChangeListener;->onProgressChanged(IZ)V

    .line 202
    :cond_10
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-nez p1, :cond_19

    .line 203
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_19
    return-void
.end method

.method private setRange(IIII)V
    .registers 5

    .line 140
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mProgressMax:I

    .line 141
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mProgressMin:I

    .line 142
    iput p3, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mOptimalProgress:I

    .line 143
    invoke-direct {p0, p4}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->calculateFinalProgress(I)I

    move-result p4

    iput p4, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mProgress:I

    if-le p3, p2, :cond_14

    if-ge p3, p1, :cond_14

    const/4 p3, 0x1

    .line 145
    iput-boolean p3, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mNeedToDrawOptimalDrawable:Z

    goto :goto_17

    :cond_14
    const/4 p3, 0x0

    .line 147
    iput-boolean p3, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mNeedToDrawOptimalDrawable:Z

    :goto_17
    sub-int/2addr p1, p2

    .line 149
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mProgressRange:I

    .line 150
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method private shouldFilterProgress()Z
    .registers 2

    .line 944
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mSupportProgressList:[I

    array-length p0, p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_7

    return v0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method private startDelayHideProgressText()V
    .registers 4

    .line 164
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 165
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startDrag(Landroid/view/MotionEvent;)V
    .registers 4

    const/4 v0, 0x1

    .line 728
    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    .line 730
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_f

    .line 732
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 735
    :cond_f
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mIsBeingDragged:Z

    .line 736
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->trackTouchEvent(FZ)V

    .line 737
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->attemptClaimDrag()V

    return-void
.end method

.method private startShowProgressText()V
    .registers 2

    const/4 v0, 0x1

    .line 169
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mShowProgressText:Z

    .line 170
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private startThumbCenterXTrackAnimator(FF)V
    .registers 4

    .line 1009
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbCenterXTrackAnimator:Lcom/transsion/widgetslib/anim/TrackAnimator;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/anim/TrackAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1010
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbCenterXTrackAnimator:Lcom/transsion/widgetslib/anim/TrackAnimator;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/anim/TrackAnimator;->set(F)V

    .line 1012
    :cond_d
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbCenterXTrackAnimator:Lcom/transsion/widgetslib/anim/TrackAnimator;

    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/anim/TrackAnimator;->setTargValue(F)V

    return-void
.end method

.method private startThumbIntervalAnimation(FFJZ)V
    .registers 9

    .line 1084
    sget-object v0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startThumbIntervalAnimation, fromCenterX:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", toCenterX:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", dragEnd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1085
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->isCenterXAnimation:Z

    .line 1086
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbIntervalAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_34

    .line 1087
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->createThumbIntervalAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbIntervalAnimator:Landroid/animation/ValueAnimator;

    goto :goto_45

    .line 1089
    :cond_34
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 1090
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbIntervalAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1091
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->createThumbIntervalAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbIntervalAnimator:Landroid/animation/ValueAnimator;

    .line 1094
    :cond_45
    :goto_45
    iput-boolean p5, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mNeedDragEnd:Z

    .line 1095
    iget-object p5, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbIntervalAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p5, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sub-float p3, p2, p1

    .line 1096
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    .line 1097
    iget p4, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mSourceThumbInHalfWidth:F

    cmpl-float p5, p3, p4

    if-lez p5, :cond_68

    sub-float/2addr p3, p4

    const p5, 0x3e3851ec    # 0.18f

    mul-float/2addr p3, p5

    add-float/2addr p3, p4

    .line 1101
    iget p5, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mMaxThumbInHalfWidth:F

    cmpl-float v0, p3, p5

    if-lez v0, :cond_65

    move p3, p5

    .line 1104
    :cond_65
    iput p3, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mCenterThumbHalfLen:F

    goto :goto_6a

    .line 1106
    :cond_68
    iput p4, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mCenterThumbHalfLen:F

    .line 1108
    :goto_6a
    iget p3, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mCurrentThumbInHalfWidth:F

    iput p3, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mFromThumbHalfLen:F

    .line 1109
    iput p4, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mToThumbHalfLen:F

    .line 1110
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mFromThumbCenterX:F

    .line 1111
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mToThumbCenterX:F

    .line 1112
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbIntervalAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private startThumbScaleAnimator(FF)V
    .registers 6

    .line 1017
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbInScaleAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_b

    .line 1018
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->createThumbInScaleAnimator(FF)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbInScaleAnimator:Landroid/animation/ValueAnimator;

    goto :goto_2b

    .line 1020
    :cond_b
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1021
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbInScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1022
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->createThumbInScaleAnimator(FF)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbInScaleAnimator:Landroid/animation/ValueAnimator;

    goto :goto_2b

    .line 1024
    :cond_1d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbInScaleAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 1027
    :goto_2b
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbInScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private startThumbWidthAnimator(FF)V
    .registers 6

    .line 1051
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbWidthAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_b

    .line 1052
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->createThumbWidthAnimator(FF)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbWidthAnimator:Landroid/animation/ValueAnimator;

    goto :goto_2b

    .line 1054
    :cond_b
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1055
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbWidthAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1056
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->createThumbWidthAnimator(FF)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbWidthAnimator:Landroid/animation/ValueAnimator;

    goto :goto_2b

    .line 1058
    :cond_1d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbWidthAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 1061
    :goto_2b
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbWidthAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private startThumbWidthTrackAnimator(FF)V
    .registers 4

    .line 1001
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbWidthTrackAnimator:Lcom/transsion/widgetslib/anim/TrackAnimator;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/anim/TrackAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1002
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbWidthTrackAnimator:Lcom/transsion/widgetslib/anim/TrackAnimator;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/anim/TrackAnimator;->set(F)V

    .line 1004
    :cond_d
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbWidthTrackAnimator:Lcom/transsion/widgetslib/anim/TrackAnimator;

    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/anim/TrackAnimator;->setTargValue(F)V

    return-void
.end method

.method private trackTouchEvent(FZ)V
    .registers 8

    .line 684
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 685
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 686
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int v1, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 691
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mReversed:Z

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz v2, :cond_36

    .line 692
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    if-ge p1, v2, :cond_21

    goto :goto_4c

    .line 694
    :cond_21
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int v2, v0, v2

    if-le p1, v2, :cond_2b

    :goto_29
    move v3, v4

    goto :goto_4c

    .line 697
    :cond_2b
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    sub-int/2addr v0, p1

    int-to-float p1, v0

    :goto_32
    int-to-float v0, v1

    div-float v3, p1, v0

    goto :goto_4c

    .line 700
    :cond_36
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    if-ge p1, v2, :cond_3d

    goto :goto_29

    .line 702
    :cond_3d
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    if-le p1, v0, :cond_45

    goto :goto_4c

    .line 705
    :cond_45
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    goto :goto_32

    .line 709
    :goto_4c
    iget p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mProgressRange:I

    int-to-float p1, p1

    mul-float/2addr v3, p1

    iget p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mProgressMin:I

    int-to-float p1, p1

    add-float/2addr v3, p1

    add-float/2addr v4, v3

    .line 711
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result p1

    if-eqz p2, :cond_5f

    .line 713
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->calculateFinalProgress(I)I

    move-result p1

    .line 715
    :cond_5f
    sget-object v0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "trackTouchEvent, dragEnd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", realProgress:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 716
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->setProgress(I)V

    return-void
.end method

.method private updateDimension()V
    .registers 4

    const/4 v0, 0x7

    .line 291
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mScreenFormType:I

    if-ne v0, v1, :cond_6a

    .line 292
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x40100000    # 2.25f

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3c23d70a    # 0.01f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6a

    .line 293
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mDimenInfo:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$DimenInfo;

    iget v1, v0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$DimenInfo;->mBetweenTextAndThumb:I

    int-to-float v1, v1

    const v2, 0x3faaaaab

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mBetweenTextAndThumb:I

    .line 294
    iget v1, v0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$DimenInfo;->mOptimalDotWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mOptimalDotWidth:I

    .line 295
    iget v1, v0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$DimenInfo;->mOptimalDotHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mOptimalDotHeight:I

    .line 296
    iget v1, v0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$DimenInfo;->mSeekBarLineHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mSeekBarLineHeight:I

    .line 297
    iget v1, v0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$DimenInfo;->mTextBgWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextBgWidth:I

    .line 298
    iget v0, v0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$DimenInfo;->mTextBgHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextBgHeight:I

    .line 299
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-nez v0, :cond_62

    .line 300
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mDimenInfo:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$DimenInfo;

    iget v1, v0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$DimenInfo;->mThumbWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbWidth:I

    .line 301
    iget v0, v0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$DimenInfo;->mThumbHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbHeight:I

    .line 303
    :cond_62
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mDimenInfo:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$DimenInfo;

    iget v0, v0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$DimenInfo;->mTextSize:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextSize:F

    goto :goto_9a

    .line 305
    :cond_6a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mDimenInfo:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$DimenInfo;

    iget v1, v0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$DimenInfo;->mBetweenTextAndThumb:I

    iput v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mBetweenTextAndThumb:I

    .line 306
    iget v1, v0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$DimenInfo;->mOptimalDotWidth:I

    iput v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mOptimalDotWidth:I

    .line 307
    iget v1, v0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$DimenInfo;->mOptimalDotHeight:I

    iput v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mOptimalDotHeight:I

    .line 308
    iget v1, v0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$DimenInfo;->mSeekBarLineHeight:I

    iput v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mSeekBarLineHeight:I

    .line 309
    iget v1, v0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$DimenInfo;->mTextBgWidth:I

    iput v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextBgWidth:I

    .line 310
    iget v0, v0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$DimenInfo;->mTextBgHeight:I

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextBgHeight:I

    .line 311
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-nez v0, :cond_94

    .line 312
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mDimenInfo:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$DimenInfo;

    iget v1, v0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$DimenInfo;->mThumbWidth:I

    iput v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbWidth:I

    .line 313
    iget v0, v0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$DimenInfo;->mThumbHeight:I

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbHeight:I

    .line 315
    :cond_94
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mDimenInfo:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$DimenInfo;

    iget v0, v0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$DimenInfo;->mTextSize:F

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextSize:F

    .line 317
    :goto_9a
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbHeight:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbHalfHeight:F

    .line 318
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mSeekBarLineHeight:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mSeekBarLineHalfHeight:F

    .line 319
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_b1

    .line 320
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextSize:F

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_b1
    return-void
.end method

.method private updateThumbWidthAndCenterXTrack()Z
    .registers 5

    .line 1172
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->isThumbIntervalAnimationRun()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_40

    .line 1173
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbWidthTrackAnimator:Lcom/transsion/widgetslib/anim/TrackAnimator;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/anim/TrackAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1174
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbWidthTrackAnimator:Lcom/transsion/widgetslib/anim/TrackAnimator;

    const v2, 0x3d83126f    # 0.064f

    invoke-virtual {v0, v2}, Lcom/transsion/widgetslib/anim/TrackAnimator;->update(F)Z

    move-result v0

    .line 1175
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbWidthTrackAnimator:Lcom/transsion/widgetslib/anim/TrackAnimator;

    invoke-virtual {v2}, Lcom/transsion/widgetslib/anim/TrackAnimator;->getAnimatedValue()F

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mCurrentThumbInHalfWidth:F

    goto :goto_22

    :cond_21
    move v0, v1

    .line 1177
    :goto_22
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbCenterXTrackAnimator:Lcom/transsion/widgetslib/anim/TrackAnimator;

    invoke-virtual {v2}, Lcom/transsion/widgetslib/anim/TrackAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 1178
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbCenterXTrackAnimator:Lcom/transsion/widgetslib/anim/TrackAnimator;

    const v3, 0x3e83126f    # 0.256f

    invoke-virtual {v2, v3}, Lcom/transsion/widgetslib/anim/TrackAnimator;->update(F)Z

    move-result v2

    or-int/2addr v0, v2

    .line 1179
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbCenterXTrackAnimator:Lcom/transsion/widgetslib/anim/TrackAnimator;

    invoke-virtual {v2}, Lcom/transsion/widgetslib/anim/TrackAnimator;->getAnimatedValue()F

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbCenterX:F

    .line 1180
    invoke-direct {p0, v2, v1}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->trackTouchEvent(FZ)V

    :cond_3f
    return v0

    :cond_40
    return v1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 3

    .line 589
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 590
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-nez v0, :cond_d

    .line 591
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->drawNormal(Landroid/graphics/Canvas;)V

    return-void

    .line 593
    :cond_d
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->drawUI4(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 4

    .line 599
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    const/4 v0, 0x0

    .line 600
    invoke-static {v0, p1, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    .line 601
    invoke-static {v0, p2, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    .line 602
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 604
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mLeft:F

    .line 605
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mRight:F

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 743
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    invoke-static {p0}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_e

    return v1

    .line 747
    :cond_e
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_15

    return v1

    .line 751
    :cond_15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_da

    if-eq v0, v2, :cond_9a

    const/4 v3, 0x2

    if-eq v0, v3, :cond_47

    const/4 v3, 0x3

    if-eq v0, v3, :cond_26

    goto/16 :goto_f3

    .line 821
    :cond_26
    invoke-static {p0}, Lcom/transsion/camera/utils/MultiTouchManager;->stopTouching(Landroid/view/View;)V

    .line 822
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->onSeekBarTouchMoveListener:Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$OnTouchMoveListener;

    if-eqz v0, :cond_30

    .line 823
    invoke-interface {v0}, Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$OnTouchMoveListener;->onTouchMoveStop()V

    .line 825
    :cond_30
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mIsBeingDragged:Z

    if-eqz v0, :cond_39

    .line 826
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mIsBeingDragged:Z

    .line 827
    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 829
    :cond_39
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 830
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->onUpOrCancelThumbAnimation(Landroid/view/MotionEvent;)V

    .line 832
    :cond_42
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_f3

    .line 764
    :cond_47
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->onSeekBarTouchMoveListener:Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$OnTouchMoveListener;

    if-eqz v0, :cond_4e

    .line 765
    invoke-interface {v0}, Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$OnTouchMoveListener;->onTouchMoveStart()V

    .line 767
    :cond_4e
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-nez v0, :cond_78

    .line 768
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mIsBeingDragged:Z

    if-eqz v0, :cond_61

    .line 769
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->trackTouchEvent(FZ)V

    goto/16 :goto_f3

    .line 771
    :cond_61
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 772
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mLastMotionX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_f3

    .line 773
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->startDrag(Landroid/view/MotionEvent;)V

    goto/16 :goto_f3

    .line 777
    :cond_78
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mIsBeingDragged:Z

    if-nez v0, :cond_96

    .line 778
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 779
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mLastMotionX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_96

    .line 780
    invoke-virtual {p0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 781
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mIsBeingDragged:Z

    .line 782
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->attemptClaimDrag()V

    .line 785
    :cond_96
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->onMoveThumbAnimation(Landroid/view/MotionEvent;)V

    goto :goto_f3

    .line 790
    :cond_9a
    invoke-static {p0}, Lcom/transsion/camera/utils/MultiTouchManager;->stopTouching(Landroid/view/View;)V

    .line 791
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->onSeekBarTouchMoveListener:Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$OnTouchMoveListener;

    if-eqz v0, :cond_a4

    .line 792
    invoke-interface {v0}, Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$OnTouchMoveListener;->onTouchMoveStop()V

    .line 794
    :cond_a4
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-nez v0, :cond_c7

    .line 795
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mIsBeingDragged:Z

    if-eqz v0, :cond_bb

    .line 796
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-direct {p0, p1, v2}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->trackTouchEvent(FZ)V

    .line 797
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mIsBeingDragged:Z

    .line 798
    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_d3

    .line 802
    :cond_bb
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mIsBeingDragged:Z

    .line 803
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-direct {p0, p1, v2}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->trackTouchEvent(FZ)V

    .line 804
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mIsBeingDragged:Z

    goto :goto_d3

    .line 807
    :cond_c7
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->onUpOrCancelThumbAnimation(Landroid/view/MotionEvent;)V

    .line 808
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mIsBeingDragged:Z

    if-eqz p1, :cond_d3

    .line 809
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mIsBeingDragged:Z

    .line 810
    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 813
    :cond_d3
    :goto_d3
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->startDelayHideProgressText()V

    .line 817
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_f3

    .line 753
    :cond_da
    invoke-static {p0}, Lcom/transsion/camera/utils/MultiTouchManager;->startTouching(Landroid/view/View;)V

    .line 754
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mLastMotionX:F

    .line 755
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-nez v0, :cond_ed

    .line 756
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->startDrag(Landroid/view/MotionEvent;)V

    goto :goto_f0

    .line 758
    :cond_ed
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->onDownThumbAnimation(Landroid/view/MotionEvent;)V

    .line 760
    :goto_f0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->startShowProgressText()V

    :cond_f3
    :goto_f3
    return v2
.end method

.method public reverse(Z)V
    .registers 3

    .line 174
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mReversed:Z

    if-eq v0, p1, :cond_9

    .line 175
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mReversed:Z

    .line 176
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_9
    return-void
.end method

.method public setOnSeekBarChangeListener(Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$OnSeekBarChangeListener;)V
    .registers 2

    .line 126
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mListener:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method public setOnTouchMoveListener(Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$OnTouchMoveListener;)V
    .registers 2

    .line 131
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->onSeekBarTouchMoveListener:Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$OnTouchMoveListener;

    return-void
.end method

.method public setOrientation(I)V
    .registers 2

    .line 674
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mOrientation:I

    return-void
.end method

.method public setSupportProgressList([I)V
    .registers 2

    .line 940
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mSupportProgressList:[I

    return-void
.end method

.method public updateProgressText(II)V
    .registers 4

    .line 187
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mScreenFormType:I

    .line 188
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->updateDimension()V

    const/4 p1, 0x1

    if-eq p1, p2, :cond_10

    const/4 v0, 0x4

    if-eq v0, p2, :cond_10

    const/4 v0, 0x5

    if-ne v0, p2, :cond_f

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    .line 189
    :cond_10
    :goto_10
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->reverse(Z)V

    .line 192
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public updateSeekBarData(IIII)V
    .registers 5

    .line 181
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->startShowProgressText()V

    .line 182
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->startDelayHideProgressText()V

    .line 183
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->setRange(IIII)V

    return-void
.end method
