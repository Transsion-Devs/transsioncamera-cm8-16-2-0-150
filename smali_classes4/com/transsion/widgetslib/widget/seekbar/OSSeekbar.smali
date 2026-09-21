.class public Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$Companion;,
        Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;,
        Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OnProgressChangedListener;
    }
.end annotation


# static fields
.field private static final ALIGNCENTER:I = 0x1

.field private static final ALIGNLEFT:I = 0x0

.field private static final ALIGNRIGHT:I = 0x2

.field public static final Companion:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$Companion;

.field private static final EXTRA_PADDING:I = 0x8

.field private static final MIN_HEIGHT_HIOS:I = 0x1e

.field private static final MIN_HEIGHT_NO_HIOS:I = 0x14

.field private static final TAG:Ljava/lang/String;

.field private static final THUMB_INTER_TRANSLATION_DURATION:I = 0xfa

.field private static final THUMB_INTER_TRAN_DURATION_HIOS:I = 0xfa

.field private static final THUMB_INTER_TRAN_ON_THUMB_DURATION_HIOS:I = 0xc8

.field private static final TRACK_DEFAULT_HEIGHT_HIOS:I = 0x4


# instance fields
.field private isCenterXAnimation:Z

.field private isEnterActionMove:Z

.field private isNoThumb:Z

.field private isThumbOnDragging:Z

.field private isTouchMove:Z

.field private isTouchOnThumb:Z

.field private mCenterThumbHalfLen:F

.field private final mContext:Landroid/content/Context;

.field private mCurrentScaleFactor:F

.field private mCurrentSourceSecondTTrackWidth:F

.field private mCurrentSourceTrackWidth:F

.field private mCurrentThumbHalfWidth:F

.field private mCurrentThumbInHalfWidth:F

.field private mCurrentThumbInScal:F

.field private mCurrentThumbOutScal:F

.field private mDelta:F

.field private mFromScaleFactor:F

.field private mFromThumbCenterX:F

.field private mFromThumbHalfLen:F

.field private mFromTrackWidth:F

.field private mFromUpEvent:Z

.field private mLeft:F

.field private mLeftIcon:Landroid/widget/ImageView;

.field private mMaxThumbInHalfWidth:F

.field private mMaxThumbInScal:F

.field private mMaxThumbStokeScal:F

.field private mOSSeekBarBuilder:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;

.field private final mPaint:Landroid/graphics/Paint;

.field private mPreThumbCenterX:F

.field private mProgress:F

.field private mRight:F

.field private mRightIcon:Landroid/widget/ImageView;

.field private mSecondTrackColor:I

.field private mSecondTrackColorDisable:I

.field private mSourceSecondTTrackWidth:F

.field private mSourceThumbInHalfHeight:F

.field private mSourceThumbInHalfWidth:F

.field private mSourceTrackWidth:F

.field private mThumbCenterX:F

.field private final mThumbCenterXTrackAnimator:Lcom/transsion/widgetslib/anim/TrackAnimator;

.field private mThumbCenterY:F

.field private mThumbHalfWidth:F

.field private mThumbInScalAnimator:Landroid/animation/ValueAnimator;

.field private mThumbInsideColor:I

.field private mThumbInsideColorAlpha:I

.field private mThumbInsideColorDisable:I

.field private mThumbInsideUnAbleColorHios:I

.field private mThumbIntervalAnimator:Landroid/animation/ValueAnimator;

.field private mThumbOutColor:I

.field private mThumbOutColorDisable:I

.field private final mThumbPaint:Landroid/graphics/Paint;

.field private mThumbScalType:I

.field private mThumbStokeWidth:F

.field private mThumbWidthAnimator:Landroid/animation/ValueAnimator;

.field private final mThumbWidthTrackAnimator:Lcom/transsion/widgetslib/anim/TrackAnimator;

.field private mToThumbCenterX:F

.field private mToThumbHalfLen:F

.field private mTouchThumbX:F

.field private mTouchXDown:F

.field private mTouchXMove:F

.field private mTrackColor:I

.field private mTrackLength:F

.field private mTrackWidthMax:F

.field private max:F

.field private min:F

.field private onProgressChangedListener:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OnProgressChangedListener;

.field private onlyHiOSStyle:Z

.field private thumbDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public static synthetic $r8$lambda$4UImsmyNGVr-jdWYffWis7Wc8tw(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->createThumbIntervalAnimatorHios$lambda$4(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cEvyAPyWS50yOE5wZBFnOY6fzGo(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->createThumbWidthAnimator$lambda$2(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ffy9jkonU_wPgDI3xs6PvP8R788(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->createThumbInScalAnimator$lambda$3(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xsyhfT349cVIP9yx_4xu_0wcgBA(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->onSizeChanged$lambda$0(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->Companion:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$Companion;

    .line 1601
    const-class v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 9

    .line 0
    const-string v0, "mContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    .line 0
    const-string v0, "mContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    const-string v0, "mContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mContext:Landroid/content/Context;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 87
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mCurrentThumbInScal:F

    .line 92
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mCurrentThumbOutScal:F

    .line 100
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mCurrentScaleFactor:F

    .line 101
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mFromScaleFactor:F

    const/16 v0, 0xff

    .line 136
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbInsideColorAlpha:I

    .line 163
    new-instance v0, Lcom/transsion/widgetslib/anim/TrackAnimator;

    invoke-direct {v0}, Lcom/transsion/widgetslib/anim/TrackAnimator;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbWidthTrackAnimator:Lcom/transsion/widgetslib/anim/TrackAnimator;

    .line 168
    new-instance v0, Lcom/transsion/widgetslib/anim/TrackAnimator;

    invoke-direct {v0}, Lcom/transsion/widgetslib/anim/TrackAnimator;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbCenterXTrackAnimator:Lcom/transsion/widgetslib/anim/TrackAnimator;

    .line 200
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getConfigBuilder()Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->build()V

    .line 201
    sget-object v1, Lcom/transsion/widgetslib/R$styleable;->OSSeekbar:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "mContext.obtainStyledAtt\u2026Seekbar, defStyleAttr, 0)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSSeekbar_osSeekbarOnlyHiOSStyle:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->onlyHiOSStyle:Z

    if-eqz p2, :cond_56

    .line 204
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getConfigBuilder()Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->initHiOS()Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->build()V

    .line 205
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSSeekbar_osSeekbarNoThumb:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isNoThumb:Z

    .line 208
    :cond_56
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSSeekbar_osSeekbarMin:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->min:F

    .line 209
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSSeekbar_osSeekbarMax:I

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->max:F

    .line 210
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSSeekbar_osSeekbarProgress:I

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->min:F

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mProgress:F

    .line 211
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSSeekbar_android_enabled:I

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 212
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSSeekbar_osSeekbarThumb:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 214
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSSeekbar_osSeekbarTrackColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_9b

    .line 215
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSSeekbar_osSeekbarTrackColor:I

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mTrackColor:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->setTrackColor(I)V

    .line 217
    :cond_9b
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSSeekbar_osSeekbarSecondTrackColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_ae

    .line 218
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSSeekbar_osSeekbarSecondTrackColor:I

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mSecondTrackColor:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->setSecondTrackColor(I)V

    .line 220
    :cond_ae
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 221
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    .line 222
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 223
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 224
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 225
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbPaint:Landroid/graphics/Paint;

    .line 226
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 227
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 228
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 229
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/high16 p1, 0x3e800000    # 0.25f

    .line 230
    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/anim/TrackAnimator;->setMaxSpeedFractor(F)V

    .line 231
    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/anim/TrackAnimator;->setMinSpeedFractor(F)V

    .line 232
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->initConfigByPriority()V

    .line 234
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->isRtl()Z

    move-result p1

    if-eqz p1, :cond_f7

    invoke-virtual {p0}, Landroid/view/View;->getRotation()F

    move-result p1

    cmpg-float p1, p1, p3

    if-nez p1, :cond_f7

    const/high16 p1, 0x43340000    # 180.0f

    .line 235
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    :cond_f7
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_5

    const/4 p2, 0x0

    :cond_5
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_a

    const/4 p3, 0x0

    .line 36
    :cond_a
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$calculateProgress(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;F)F
    .registers 2

    .line 36
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->calculateProgress(F)F

    move-result p0

    return p0
.end method

.method public static final synthetic access$getMCenterThumbHalfLen$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)F
    .registers 1

    .line 36
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mCenterThumbHalfLen:F

    return p0
.end method

.method public static final synthetic access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)Landroid/content/Context;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getMFromThumbCenterX$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)F
    .registers 1

    .line 36
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mFromThumbCenterX:F

    return p0
.end method

.method public static final synthetic access$getMFromThumbHalfLen$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)F
    .registers 1

    .line 36
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mFromThumbHalfLen:F

    return p0
.end method

.method public static final synthetic access$getMThumbCenterX$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)F
    .registers 1

    .line 36
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbCenterX:F

    return p0
.end method

.method public static final synthetic access$getMToThumbCenterX$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)F
    .registers 1

    .line 36
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mToThumbCenterX:F

    return p0
.end method

.method public static final synthetic access$getMToThumbHalfLen$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)F
    .registers 1

    .line 36
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mToThumbHalfLen:F

    return p0
.end method

.method public static final synthetic access$getOnProgressChangedListener$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OnProgressChangedListener;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->onProgressChangedListener:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OnProgressChangedListener;

    return-object p0
.end method

.method public static final synthetic access$setCenterXAnimation$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;Z)V
    .registers 2

    .line 36
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isCenterXAnimation:Z

    return-void
.end method

.method public static final synthetic access$setMCurrentThumbInHalfWidth$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;F)V
    .registers 2

    .line 36
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mCurrentThumbInHalfWidth:F

    return-void
.end method

.method public static final synthetic access$setMProgress$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;F)V
    .registers 2

    .line 36
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mProgress:F

    return-void
.end method

.method public static final synthetic access$setMThumbCenterX$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;F)V
    .registers 2

    .line 36
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbCenterX:F

    return-void
.end method

.method private final calThumbCxWhenSeekStepSection(F)F
    .registers 4

    .line 1132
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mLeft:F

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_7

    return v0

    .line 1133
    :cond_7
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mRight:F

    cmpl-float v0, p1, p0

    if-ltz v0, :cond_e

    return p0

    :cond_e
    return p1
.end method

.method private final calculateProgress(F)F
    .registers 4

    .line 1142
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mLeft:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mDelta:F

    mul-float/2addr p1, v0

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mTrackLength:F

    div-float/2addr p1, v0

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->min:F

    add-float/2addr p1, v0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_11

    return v0

    .line 1145
    :cond_11
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->max:F

    cmpl-float v0, p1, p0

    if-lez v0, :cond_18

    return p0

    :cond_18
    return p1
.end method

.method private final createThumbInScalAnimator(FF)Landroid/animation/ValueAnimator;
    .registers 6

    const/4 v0, 0x2

    .line 1016
    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0xfa

    .line 1017
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1018
    new-instance p2, Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3e800000    # 0.25f

    invoke-direct {p2, v2, v0, v0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1019
    new-instance p2, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1028
    const-string p0, "valueAnimator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private static final createThumbInScalAnimator$lambda$3(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;Landroid/animation/ValueAnimator;)V
    .registers 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1020
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mCurrentThumbInScal:F

    .line 1022
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mMaxThumbInScal:F

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-nez v1, :cond_23

    goto :goto_2e

    :cond_23
    const/4 v1, 0x1

    int-to-float v1, v1

    .line 1024
    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mMaxThumbStokeScal:F

    sub-float v2, v1, v2

    mul-float/2addr p1, v2

    div-float/2addr p1, v0

    add-float/2addr v1, p1

    .line 1023
    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mCurrentThumbOutScal:F

    .line 1026
    :goto_2e
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private final createThumbIntervalAnimator()Landroid/animation/ValueAnimator;
    .registers 7

    const/4 v0, 0x3

    .line 1037
    new-array v0, v0, [F

    fill-array-data v0, :array_36

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    .line 1038
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1039
    new-instance v1, Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;

    const v2, 0x3ecccccd    # 0.4f

    const v3, 0x3e4ccccd    # 0.2f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v3, v5}, Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1040
    new-instance v1, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$createThumbIntervalAnimator$1;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$createThumbIntervalAnimator$1;-><init>(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1059
    new-instance v1, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$createThumbIntervalAnimator$2;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$createThumbIntervalAnimator$2;-><init>(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1076
    const-string p0, "valueAnimator"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :array_36
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private final createThumbIntervalAnimatorHios()Landroid/animation/ValueAnimator;
    .registers 3

    const/4 v0, 0x3

    .line 1085
    new-array v0, v0, [F

    fill-array-data v0, :array_20

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1086
    new-instance v1, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1108
    new-instance v1, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$createThumbIntervalAnimatorHios$2;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$createThumbIntervalAnimatorHios$2;-><init>(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1125
    const-string p0, "valueAnimator"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :array_20
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static final createThumbIntervalAnimatorHios$lambda$4(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;Landroid/animation/ValueAnimator;)V
    .registers 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1087
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 1089
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mFromThumbCenterX:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mToThumbCenterX:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbCenterX:F

    .line 1092
    iget-boolean v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mFromUpEvent:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2e

    .line 1093
    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mFromScaleFactor:F

    int-to-float v3, v2

    sub-float/2addr v3, v1

    mul-float/2addr v3, p1

    add-float/2addr v1, v3

    goto :goto_33

    .line 1095
    :cond_2e
    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mFromScaleFactor:F

    mul-float v3, p1, v1

    sub-float/2addr v1, v3

    .line 1092
    :goto_33
    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mCurrentScaleFactor:F

    .line 1097
    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->calculateProgress(F)F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mProgress:F

    .line 1098
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->onProgressChangedListener:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OnProgressChangedListener;

    if-eqz v0, :cond_4a

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getProgress()I

    move-result v1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getProgressFloat()F

    move-result v3

    invoke-interface {v0, p0, v1, v3, v2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OnProgressChangedListener;->onProgressChanged(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;IFZ)V

    .line 1100
    :cond_4a
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mFromUpEvent:Z

    if-eqz v0, :cond_57

    .line 1101
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mFromTrackWidth:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mSourceTrackWidth:F

    sub-float v1, v0, v1

    mul-float/2addr v1, p1

    sub-float/2addr v0, v1

    goto :goto_5e

    .line 1103
    :cond_57
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mFromTrackWidth:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mTrackWidthMax:F

    sub-float/2addr v1, v0

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    .line 1100
    :goto_5e
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mCurrentSourceTrackWidth:F

    .line 1105
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mCurrentSourceSecondTTrackWidth:F

    .line 1106
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private final createThumbWidthAnimator(FF)Landroid/animation/ValueAnimator;
    .registers 7

    const/4 v0, 0x2

    .line 998
    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0xfa

    .line 999
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1000
    new-instance p2, Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;

    const v0, 0x3e4ccccd    # 0.2f

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3ecccccd    # 0.4f

    const/4 v3, 0x0

    invoke-direct {p2, v2, v3, v0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1001
    new-instance p2, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1005
    const-string p0, "valueAnimator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private static final createThumbWidthAnimator$lambda$2(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;Landroid/animation/ValueAnimator;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1002
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mCurrentThumbInHalfWidth:F

    .line 1003
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private final drawHIOS(Landroid/graphics/Canvas;)V
    .registers 11

    .line 329
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mLeft:F

    .line 330
    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mRight:F

    .line 331
    iget v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbCenterY:F

    .line 332
    iget-boolean v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isThumbOnDragging:Z

    const/4 v3, 0x2

    if-nez v2, :cond_3c

    iget-boolean v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isCenterXAnimation:Z

    if-nez v2, :cond_3c

    .line 333
    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mTrackLength:F

    iget v5, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mDelta:F

    div-float/2addr v2, v5

    iget v5, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mProgress:F

    iget v6, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->min:F

    sub-float v7, v5, v6

    mul-float/2addr v2, v7

    add-float/2addr v2, v0

    iput v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbCenterX:F

    .line 334
    iget-boolean v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isNoThumb:Z

    if-eqz v2, :cond_3c

    .line 335
    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->max:F

    cmpg-float v2, v5, v2

    if-nez v2, :cond_30

    .line 336
    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbHalfWidth:F

    int-to-float v5, v3

    div-float/2addr v2, v5

    add-float/2addr v2, v1

    iput v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbCenterX:F

    goto :goto_3c

    :cond_30
    cmpg-float v2, v5, v6

    if-nez v2, :cond_3c

    .line 338
    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbHalfWidth:F

    int-to-float v5, v3

    div-float/2addr v2, v5

    sub-float v2, v0, v2

    iput v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbCenterX:F

    .line 343
    :cond_3c
    :goto_3c
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mTrackColor:I

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 344
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mCurrentSourceTrackWidth:F

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 346
    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbHalfWidth:F

    sub-float v2, v0, v2

    iget-object v5, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v5

    int-to-float v8, v3

    div-float/2addr v5, v8

    add-float v3, v2, v5

    .line 348
    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbHalfWidth:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    div-float/2addr v2, v8

    sub-float v5, v1, v2

    .line 350
    iget-object v7, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mPaint:Landroid/graphics/Paint;

    move v6, v4

    move-object v2, p1

    .line 345
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 352
    iget v5, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbCenterX:F

    .line 354
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mPaint:Landroid/graphics/Paint;

    .line 355
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getSecondTrackColor()I

    move-result v1

    .line 354
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 357
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mCurrentSourceSecondTTrackWidth:F

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 359
    iget p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbHalfWidth:F

    sub-float/2addr v0, p1

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p1

    div-float/2addr p1, v8

    add-float v3, v0, p1

    .line 363
    iget-object v7, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mPaint:Landroid/graphics/Paint;

    .line 358
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 367
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    const v0, 0x3dcccccd    # 0.1f

    const v1, 0x3f666666    # 0.9f

    if-eqz p1, :cond_bd

    .line 368
    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbHalfWidth:F

    iget v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mCurrentScaleFactor:F

    mul-float/2addr v0, v4

    add-float/2addr v0, v1

    mul-float/2addr v3, v0

    mul-float/2addr v3, v4

    float-to-int v0, v3

    int-to-float v0, v0

    sub-float v1, v5, v0

    float-to-int v1, v1

    .line 370
    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbCenterY:F

    sub-float v4, v3, v0

    float-to-int v4, v4

    add-float/2addr v5, v0

    float-to-int v5, v5

    add-float/2addr v3, v0

    float-to-int v0, v3

    .line 373
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v1, v4, v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 374
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    .line 379
    :cond_bd
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 380
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbPaint:Landroid/graphics/Paint;

    .line 381
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getThumbOutColor()I

    move-result v4

    .line 380
    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 383
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbPaint:Landroid/graphics/Paint;

    const/16 v4, 0xff

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 384
    iget p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbHalfWidth:F

    iget v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbStokeWidth:F

    sub-float v4, p1, v4

    .line 386
    iget v6, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mCurrentScaleFactor:F

    const/4 v7, 0x0

    cmpl-float v7, v6, v7

    if-lez v7, :cond_ef

    iget-boolean v7, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isNoThumb:Z

    if-nez v7, :cond_ef

    .line 389
    iget v7, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbCenterY:F

    mul-float/2addr v6, v0

    add-float/2addr v6, v1

    mul-float/2addr p1, v6

    .line 391
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbPaint:Landroid/graphics/Paint;

    .line 387
    invoke-virtual {v2, v5, v7, p1, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 394
    :cond_ef
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 395
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getThumbInSideColor()I

    move-result p1

    .line 396
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getAnimThumbInsideColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 398
    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isNoThumb:Z

    if-nez p1, :cond_10f

    .line 401
    iget p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbCenterY:F

    .line 402
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mCurrentScaleFactor:F

    mul-float/2addr v4, v0

    .line 403
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbPaint:Landroid/graphics/Paint;

    .line 399
    invoke-virtual {v2, v5, p1, v4, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_10f
    return-void
.end method

.method private final drawNonHIOS(Landroid/graphics/Canvas;)V
    .registers 19

    move-object/from16 v0, p0

    .line 412
    iget v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mLeft:F

    .line 413
    iget v2, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mRight:F

    .line 414
    iget v5, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbCenterY:F

    .line 415
    iget-boolean v3, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isThumbOnDragging:Z

    if-nez v3, :cond_1e

    iget-boolean v3, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isCenterXAnimation:Z

    if-nez v3, :cond_1e

    .line 416
    iget v3, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mTrackLength:F

    iget v4, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mDelta:F

    div-float/2addr v3, v4

    iget v4, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mProgress:F

    iget v6, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->min:F

    sub-float/2addr v4, v6

    mul-float/2addr v3, v4

    add-float/2addr v3, v1

    iput v3, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbCenterX:F

    .line 420
    :cond_1e
    iget-object v3, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mPaint:Landroid/graphics/Paint;

    iget v4, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mTrackColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 421
    iget-object v3, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mPaint:Landroid/graphics/Paint;

    iget v4, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mSourceTrackWidth:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 423
    iget v3, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbHalfWidth:F

    sub-float v4, v1, v3

    iget v6, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbStokeWidth:F

    add-float/2addr v4, v6

    add-float/2addr v2, v3

    sub-float v6, v2, v6

    .line 427
    iget-object v8, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mPaint:Landroid/graphics/Paint;

    move v7, v5

    move-object/from16 v3, p1

    .line 422
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 429
    iget v6, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbCenterX:F

    .line 431
    iget-object v2, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getSecondTrackColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 432
    iget-object v2, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mPaint:Landroid/graphics/Paint;

    iget v3, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mSourceSecondTTrackWidth:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 434
    iget v2, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbHalfWidth:F

    sub-float/2addr v1, v2

    iget v2, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbStokeWidth:F

    add-float v4, v1, v2

    .line 438
    iget-object v8, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    .line 433
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 442
    iget-object v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbPaint:Landroid/graphics/Paint;

    invoke-direct {v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getThumbOutColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 443
    iget-object v1, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 446
    invoke-direct {v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->updateThumbWidthAndCenterXTrack()Z

    move-result v1

    .line 447
    iget v3, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mCurrentThumbInScal:F

    .line 448
    iget v4, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mCurrentThumbInHalfWidth:F

    .line 451
    iget v5, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbCenterY:F

    iget v7, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mSourceThumbInHalfHeight:F

    mul-float v8, v7, v3

    sub-float v8, v5, v8

    mul-float/2addr v7, v3

    add-float/2addr v5, v7

    .line 453
    iget v7, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbScalType:I

    if-eqz v7, :cond_9c

    const/4 v9, 0x1

    if-eq v7, v9, :cond_8a

    const/4 v9, 0x2

    if-eq v7, v9, :cond_8f

    :cond_8a
    mul-float/2addr v4, v3

    sub-float v7, v6, v4

    add-float/2addr v6, v4

    goto :goto_a7

    .line 466
    :cond_8f
    iget v7, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mSourceThumbInHalfWidth:F

    mul-float v9, v7, v3

    sub-float v9, v6, v9

    sub-float v7, v4, v7

    add-float/2addr v4, v7

    mul-float/2addr v4, v3

    add-float/2addr v6, v4

    move v7, v9

    goto :goto_a7

    .line 456
    :cond_9c
    iget v7, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mSourceThumbInHalfWidth:F

    sub-float v9, v4, v7

    add-float/2addr v4, v9

    mul-float/2addr v4, v3

    sub-float v4, v6, v4

    mul-float/2addr v7, v3

    add-float/2addr v6, v7

    move v7, v4

    .line 476
    :goto_a7
    iget v4, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbStokeWidth:F

    iget v9, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mCurrentThumbOutScal:F

    mul-float/2addr v4, v9

    float-to-double v9, v7

    float-to-double v11, v4

    .line 477
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    double-to-float v7, v9

    float-to-double v9, v6

    .line 478
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v4

    float-to-double v11, v6

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(DD)D

    move-result-wide v9

    double-to-float v6, v9

    sub-float v9, v7, v4

    float-to-double v9, v9

    const-wide/16 v11, 0x0

    .line 480
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    double-to-float v10, v9

    sub-float v11, v8, v4

    add-float v9, v6, v4

    float-to-double v12, v9

    .line 483
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-double v14, v9

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(DD)D

    move-result-wide v12

    double-to-float v12, v12

    add-float v13, v5, v4

    .line 486
    iget v9, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mSourceThumbInHalfHeight:F

    mul-float/2addr v3, v9

    add-float v14, v3, v4

    .line 489
    iget-object v4, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_fe

    float-to-int v2, v10

    float-to-int v3, v11

    float-to-int v5, v12

    float-to-int v6, v13

    .line 494
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 495
    iget-object v2, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v9, p1

    invoke-virtual {v2, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    if-eqz v1, :cond_128

    .line 498
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_fe
    move-object/from16 v9, p1

    .line 509
    iget-object v4, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbPaint:Landroid/graphics/Paint;

    move v15, v14

    move-object/from16 v16, v4

    .line 502
    invoke-virtual/range {v9 .. v16}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 511
    iget-object v4, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 512
    iget-object v2, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbPaint:Landroid/graphics/Paint;

    invoke-direct {v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getThumbInSideColor()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 520
    iget-object v2, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbPaint:Landroid/graphics/Paint;

    move v15, v3

    move-object/from16 v16, v2

    move v14, v3

    move v13, v5

    move v12, v6

    move v10, v7

    move v11, v8

    .line 513
    invoke-virtual/range {v9 .. v16}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    if-eqz v1, :cond_128

    .line 524
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_128
    return-void
.end method

.method private final formatFloat(F)F
    .registers 3

    float-to-double p0, p1

    .line 1137
    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p0

    const/4 p1, 0x1

    const/4 v0, 0x4

    .line 1138
    invoke-virtual {p0, p1, v0}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->floatValue()F

    move-result p0

    return p0
.end method

.method private final generateIconLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 1346
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/widgetslib/R$dimen;->os_dimen_icon_common_size:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    .line 1347
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, p0, p0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method private final generateIconView(I)Landroid/widget/ImageView;
    .registers 4

    .line 1338
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1339
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->generateIconLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1340
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object v0
.end method

.method private final generateSeekbarInnerLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 1351
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1352
    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    return-object p0
.end method

.method private final getAnimThumbInsideColor(I)I
    .registers 3

    ushr-int/lit8 v0, p1, 0x18

    int-to-float v0, v0

    .line 409
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mCurrentScaleFactor:F

    mul-float/2addr v0, p0

    float-to-int p0, v0

    shl-int/lit8 p0, p0, 0x18

    const v0, 0xffffff

    and-int/2addr p1, v0

    or-int/2addr p0, p1

    return p0
.end method

.method private final getContentHeight()I
    .registers 5

    .line 305
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isHiOSStyle()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_d

    .line 306
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbHalfWidth:F

    int-to-float v0, v1

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0

    .line 309
    :cond_d
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mSourceThumbInHalfHeight:F

    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mMaxThumbInScal:F

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbStokeWidth:F

    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mMaxThumbStokeScal:F

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-double v0, v0

    .line 310
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mSourceTrackWidth:F

    float-to-double v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method

.method private final getMinHeight(I)I
    .registers 4

    int-to-double v0, p1

    .line 279
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isHiOSStyle()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 280
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const/16 p1, 0x1e

    .line 279
    invoke-static {p0, p1}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result p0

    goto :goto_1c

    .line 283
    :cond_12
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const/16 p1, 0x14

    .line 282
    invoke-static {p0, p1}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result p0

    :goto_1c
    int-to-double p0, p0

    .line 285
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method private final getSecondTrackColor()I
    .registers 2

    .line 528
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 529
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mSecondTrackColor:I

    return p0

    .line 531
    :cond_9
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mSecondTrackColorDisable:I

    return p0
.end method

.method private final getThumbHalfSizeOnTouchDown()F
    .registers 3

    .line 800
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isHiOSStyle()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 801
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mSourceThumbInHalfWidth:F

    return p0

    .line 803
    :cond_9
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mSourceThumbInHalfWidth:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mMaxThumbInScal:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbStokeWidth:F

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mMaxThumbStokeScal:F

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    return v0
.end method

.method private final getThumbInSideColor()I
    .registers 2

    .line 540
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 541
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbInsideColor:I

    return p0

    .line 543
    :cond_9
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbInsideColorDisable:I

    return p0
.end method

.method private final getThumbOutColor()I
    .registers 2

    .line 534
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 535
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbOutColor:I

    return p0

    .line 537
    :cond_9
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbOutColorDisable:I

    return p0
.end method

.method private final initConfigByPriority()V
    .registers 4

    .line 240
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->min:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->max:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_f

    const/4 v0, 0x0

    .line 241
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->min:F

    const/high16 v0, 0x42c80000    # 100.0f

    .line 242
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->max:F

    .line 244
    :cond_f
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->min:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->max:F

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1b

    .line 246
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->max:F

    .line 247
    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->min:F

    .line 249
    :cond_1b
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mProgress:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->min:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_25

    .line 250
    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mProgress:F

    .line 252
    :cond_25
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mProgress:F

    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->max:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2f

    .line 253
    iput v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mProgress:F

    :cond_2f
    sub-float/2addr v2, v1

    .line 255
    iput v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mDelta:F

    .line 256
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mProgress:F

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->setProgress(F)V

    return-void
.end method

.method private final isThumbIntervalAnimationRun()Z
    .registers 1

    .line 869
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbIntervalAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_f

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method private final onMoveHIOS(Landroid/view/MotionEvent;)V
    .registers 9

    .line 759
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isThumbOnDragging:Z

    if-eqz v0, :cond_69

    .line 762
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->calThumbCxWhenSeekStepSection(F)F

    move-result v2

    .line 763
    iget p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mTouchXDown:F

    sub-float p1, v2, p1

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    double-to-float p1, v0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mTouchXMove:F

    .line 764
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mPreThumbCenterX:F

    cmpg-float v0, v2, v0

    if-nez v0, :cond_1f

    return-void

    :cond_1f
    sget-object v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->Companion:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$Companion;

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$Companion;->dp2px(I)I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-gtz p1, :cond_2f

    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isTouchMove:Z

    if-eqz p1, :cond_69

    .line 765
    :cond_2f
    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isTouchMove:Z

    if-nez p1, :cond_41

    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isTouchOnThumb:Z

    if-nez p1, :cond_41

    .line 767
    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbCenterX:F

    const-wide/16 v3, 0xc8

    const/4 v5, 0x0

    move-object v0, p0

    .line 766
    invoke-direct/range {v0 .. v5}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->startThumbIntervalAnimationHios(FFJZ)V

    goto :goto_67

    :cond_41
    move-object v0, p0

    .line 773
    invoke-direct {v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isThumbIntervalAnimationRun()Z

    move-result p0

    if-eqz p0, :cond_4b

    .line 774
    iput v2, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mToThumbCenterX:F

    goto :goto_67

    .line 776
    :cond_4b
    iput v2, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mPreThumbCenterX:F

    .line 777
    iput v2, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbCenterX:F

    .line 778
    invoke-direct {v0, v2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->calculateProgress(F)F

    move-result p0

    iput p0, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mProgress:F

    .line 779
    iget-object p0, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->onProgressChangedListener:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OnProgressChangedListener;

    if-eqz p0, :cond_64

    .line 781
    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getProgress()I

    move-result p1

    .line 782
    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getProgressFloat()F

    move-result v1

    .line 779
    invoke-interface {p0, v0, p1, v1, v6}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OnProgressChangedListener;->onProgressChanged(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;IFZ)V

    .line 785
    :cond_64
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 788
    :goto_67
    iput-boolean v6, v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isTouchMove:Z

    :cond_69
    return-void
.end method

.method private final onMoveNoHIOS(Landroid/view/MotionEvent;)V
    .registers 8

    .line 680
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isThumbOnDragging:Z

    if-eqz v0, :cond_ed

    .line 682
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isEnterActionMove:Z

    if-nez v0, :cond_1a

    const/high16 v0, 0x3f800000    # 1.0f

    .line 683
    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mMaxThumbInScal:F

    invoke-direct {p0, v0, v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->startThumbScalAnimator(FF)V

    .line 684
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mTouchThumbX:F

    .line 685
    iget p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbCenterX:F

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mPreThumbCenterX:F

    return-void

    .line 688
    :cond_1a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->calThumbCxWhenSeekStepSection(F)F

    move-result p1

    .line 689
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mTouchXDown:F

    sub-float v0, p1, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mTouchXMove:F

    .line 692
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mPreThumbCenterX:F

    sub-float v0, p1, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    sget-object v2, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->Companion:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$Companion;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$Companion;->dp2px(I)I

    move-result v4

    int-to-double v4, v4

    cmpl-double v0, v0, v4

    const/4 v1, 0x0

    if-ltz v0, :cond_bd

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mTouchXMove:F

    invoke-virtual {v2, v3}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$Companion;->dp2px(I)I

    move-result v4

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-gtz v0, :cond_53

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isTouchMove:Z

    if-eqz v0, :cond_bd

    .line 694
    :cond_53
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isTouchMove:Z

    if-nez v0, :cond_63

    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isTouchOnThumb:Z

    if-nez v0, :cond_63

    .line 696
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbCenterX:F

    const-wide/16 v1, 0xfa

    .line 695
    invoke-direct {p0, v0, p1, v1, v2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->startThumbIntervalAnimation(FFJ)V

    goto :goto_b8

    .line 702
    :cond_63
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mTouchThumbX:F

    sub-float v0, p1, v0

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    double-to-float v0, v4

    .line 704
    invoke-virtual {v2, v3}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$Companion;->dp2px(I)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-gez v2, :cond_77

    const/4 v0, 0x0

    :cond_77
    const v2, 0x3fa66666    # 1.3f

    mul-float/2addr v0, v2

    .line 711
    iput v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbScalType:I

    .line 712
    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mSourceThumbInHalfWidth:F

    add-float/2addr v2, v0

    .line 713
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mMaxThumbInHalfWidth:F

    cmpl-float v4, v2, v0

    if-lez v4, :cond_87

    move v2, v0

    .line 716
    :cond_87
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isThumbIntervalAnimationRun()Z

    move-result v0

    if-eqz v0, :cond_92

    .line 717
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mToThumbCenterX:F

    .line 718
    iput v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mToThumbHalfLen:F

    goto :goto_b8

    .line 722
    :cond_92
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbCenterXTrackAnimator:Lcom/transsion/widgetslib/anim/TrackAnimator;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/anim/TrackAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_a9

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbWidthTrackAnimator:Lcom/transsion/widgetslib/anim/TrackAnimator;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/anim/TrackAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_a8

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isHiOSStyle()Z

    move-result v0

    if-eqz v0, :cond_a9

    :cond_a8
    move v1, v3

    .line 724
    :cond_a9
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mCurrentThumbInHalfWidth:F

    .line 723
    invoke-direct {p0, v0, v2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->startThumbWidthTrackAnimator(FF)V

    .line 727
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbCenterX:F

    invoke-direct {p0, v0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->startThumbCenterXTrackAnimator(FF)V

    if-eqz v1, :cond_b8

    .line 728
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 731
    :cond_b8
    :goto_b8
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mPreThumbCenterX:F

    .line 732
    iput-boolean v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isTouchMove:Z

    goto :goto_ea

    .line 735
    :cond_bd
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isThumbIntervalAnimationRun()Z

    move-result v0

    if-nez v0, :cond_ea

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mCurrentThumbInHalfWidth:F

    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mSourceThumbInHalfWidth:F

    cmpg-float v0, v0, v2

    if-nez v0, :cond_cc

    goto :goto_ea

    .line 737
    :cond_cc
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbCenterXTrackAnimator:Lcom/transsion/widgetslib/anim/TrackAnimator;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/anim/TrackAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_dd

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbWidthTrackAnimator:Lcom/transsion/widgetslib/anim/TrackAnimator;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/anim/TrackAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_dd

    goto :goto_de

    :cond_dd
    move v3, v1

    .line 739
    :goto_de
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mCurrentThumbInHalfWidth:F

    .line 740
    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mSourceThumbInHalfWidth:F

    .line 738
    invoke-direct {p0, v0, v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->startThumbWidthTrackAnimator(FF)V

    if-eqz v3, :cond_ea

    .line 742
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 745
    :cond_ea
    :goto_ea
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mTouchThumbX:F

    return-void

    .line 749
    :cond_ed
    iget p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mCurrentThumbInHalfWidth:F

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mSourceThumbInHalfWidth:F

    cmpg-float p1, p1, v0

    if-nez p1, :cond_f6

    return-void

    .line 750
    :cond_f6
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbWidthTrackAnimator:Lcom/transsion/widgetslib/anim/TrackAnimator;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/anim/TrackAnimator;->getTargValue()F

    move-result p1

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mSourceThumbInHalfWidth:F

    cmpg-float p1, p1, v0

    if-nez p1, :cond_103

    return-void

    .line 751
    :cond_103
    iget p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mCurrentThumbInHalfWidth:F

    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->startThumbWidthTrackAnimator(FF)V

    .line 752
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private static final onSizeChanged$lambda$0(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 548
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private final onUpOrCancelHIOS(Landroid/view/MotionEvent;)V
    .registers 10

    .line 657
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->calThumbCxWhenSeekStepSection(F)F

    move-result p1

    .line 660
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isNoThumb:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_18

    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mLeft:F

    cmpg-float v2, p1, v2

    if-nez v2, :cond_18

    .line 661
    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbHalfWidth:F

    int-to-float v3, v1

    div-float/2addr v2, v3

    sub-float/2addr p1, v2

    :cond_18
    if-eqz v0, :cond_25

    .line 664
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mRight:F

    cmpg-float v0, p1, v0

    if-nez v0, :cond_25

    .line 665
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbHalfWidth:F

    int-to-float v1, v1

    div-float/2addr v0, v1

    add-float/2addr p1, v0

    :cond_25
    move v2, p1

    .line 669
    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbCenterX:F

    .line 671
    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isTouchOnThumb:Z

    if-eqz p1, :cond_2f

    const-wide/16 v3, 0xc8

    goto :goto_31

    :cond_2f
    const-wide/16 v3, 0xfa

    :goto_31
    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 668
    invoke-static/range {v0 .. v7}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->startThumbIntervalAnimationHios$default(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;FFJZILjava/lang/Object;)V

    return-void
.end method

.method private final onUpOrCancelNoHIOS(Landroid/view/MotionEvent;)V
    .registers 6

    .line 624
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbWidthTrackAnimator:Lcom/transsion/widgetslib/anim/TrackAnimator;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/anim/TrackAnimator;->end()V

    .line 625
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbCenterXTrackAnimator:Lcom/transsion/widgetslib/anim/TrackAnimator;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/anim/TrackAnimator;->end()V

    .line 626
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->calThumbCxWhenSeekStepSection(F)F

    move-result p1

    .line 628
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isEnterActionMove:Z

    if-eqz v0, :cond_3b

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isHiOSStyle()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 629
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mCurrentThumbInScal:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->startThumbScalAnimator(FF)V

    .line 630
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isThumbIntervalAnimationRun()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 632
    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mSourceThumbInHalfWidth:F

    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mToThumbHalfLen:F

    :cond_2d
    if-nez v0, :cond_3b

    .line 634
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mCurrentThumbInHalfWidth:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mSourceThumbInHalfWidth:F

    cmpg-float v2, v0, v1

    if-nez v2, :cond_38

    goto :goto_3b

    .line 635
    :cond_38
    invoke-direct {p0, v0, v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->startThumbWidthAnimator(FF)V

    .line 639
    :cond_3b
    :goto_3b
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbCenterX:F

    cmpg-float v0, v0, p1

    if-nez v0, :cond_42

    goto :goto_6a

    .line 640
    :cond_42
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isEnterActionMove:Z

    if-eqz v0, :cond_63

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isThumbIntervalAnimationRun()Z

    move-result v0

    if-eqz v0, :cond_63

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mPreThumbCenterX:F

    sub-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    sget-object v2, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->Companion:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$Companion;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$Companion;->dp2px(I)I

    move-result v2

    int-to-double v2, v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_63

    .line 644
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mToThumbCenterX:F

    goto :goto_6a

    .line 647
    :cond_63
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbCenterX:F

    const-wide/16 v1, 0xfa

    .line 646
    invoke-direct {p0, v0, p1, v1, v2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->startThumbIntervalAnimation(FFJ)V

    .line 653
    :goto_6a
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mPreThumbCenterX:F

    return-void
.end method

.method private final setThumbHalfWidth()V
    .registers 3

    .line 294
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mSourceThumbInHalfWidth:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbStokeWidth:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbHalfWidth:F

    .line 295
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mCurrentThumbHalfWidth:F

    return-void
.end method

.method private final startThumbCenterXTrackAnimator(FF)V
    .registers 4

    .line 828
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbCenterXTrackAnimator:Lcom/transsion/widgetslib/anim/TrackAnimator;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/anim/TrackAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_d

    .line 829
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbCenterXTrackAnimator:Lcom/transsion/widgetslib/anim/TrackAnimator;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/anim/TrackAnimator;->set(F)V

    .line 831
    :cond_d
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbCenterXTrackAnimator:Lcom/transsion/widgetslib/anim/TrackAnimator;

    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/anim/TrackAnimator;->setTargValue(F)V

    return-void
.end method

.method private final startThumbIntervalAnimation(FFJ)V
    .registers 7

    const/4 v0, 0x1

    .line 919
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isCenterXAnimation:Z

    .line 920
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbIntervalAnimator:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_e

    .line 921
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->createThumbIntervalAnimator()Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbIntervalAnimator:Landroid/animation/ValueAnimator;

    goto :goto_25

    .line 923
    :cond_e
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 924
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbIntervalAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 925
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->createThumbIntervalAnimator()Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbIntervalAnimator:Landroid/animation/ValueAnimator;

    .line 928
    :cond_25
    :goto_25
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbIntervalAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 929
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbScalType:I

    sub-float p3, p2, p1

    float-to-double p3, p3

    .line 930
    invoke-static {p3, p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide p3

    double-to-float p3, p3

    .line 931
    iget p4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mSourceThumbInHalfWidth:F

    cmpl-float v0, p3, p4

    if-lez v0, :cond_53

    sub-float/2addr p3, p4

    const v0, 0x3e3851ec    # 0.18f

    mul-float/2addr p3, v0

    add-float/2addr p3, p4

    .line 935
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mMaxThumbInHalfWidth:F

    cmpl-float v1, p3, v0

    if-lez v1, :cond_4a

    move p3, v0

    .line 936
    :cond_4a
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mCurrentThumbInHalfWidth:F

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mFromThumbHalfLen:F

    .line 937
    iput p3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mCenterThumbHalfLen:F

    .line 938
    iput p4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mToThumbHalfLen:F

    goto :goto_5b

    .line 940
    :cond_53
    iget p3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mCurrentThumbInHalfWidth:F

    iput p3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mFromThumbHalfLen:F

    .line 941
    iput p4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mCenterThumbHalfLen:F

    .line 942
    iput p4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mToThumbHalfLen:F

    .line 944
    :goto_5b
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mFromThumbCenterX:F

    .line 945
    iput p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mToThumbCenterX:F

    .line 946
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbIntervalAnimator:Landroid/animation/ValueAnimator;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private final startThumbIntervalAnimationHios(FFJZ)V
    .registers 7

    const/4 v0, 0x1

    .line 962
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isCenterXAnimation:Z

    .line 963
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbIntervalAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_e

    .line 964
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->createThumbIntervalAnimatorHios()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbIntervalAnimator:Landroid/animation/ValueAnimator;

    goto :goto_25

    .line 966
    :cond_e
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 967
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbIntervalAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 968
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->createThumbIntervalAnimatorHios()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbIntervalAnimator:Landroid/animation/ValueAnimator;

    .line 971
    :cond_25
    :goto_25
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbIntervalAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 972
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mFromThumbCenterX:F

    .line 973
    iput p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mToThumbCenterX:F

    .line 974
    iget p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mCurrentSourceTrackWidth:F

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mFromTrackWidth:F

    .line 975
    iput-boolean p5, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mFromUpEvent:Z

    .line 976
    iget p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mCurrentScaleFactor:F

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mFromScaleFactor:F

    .line 977
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbIntervalAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_58

    if-eqz p5, :cond_4d

    .line 979
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const p2, 0x3e4ccccd    # 0.2f

    const/high16 p3, 0x3f800000    # 1.0f

    const/4 p4, 0x0

    invoke-direct {p1, p4, p4, p2, p3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    goto :goto_52

    .line 981
    :cond_4d
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 978
    :goto_52
    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 983
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_58
    return-void
.end method

.method static synthetic startThumbIntervalAnimationHios$default(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;FFJZILjava/lang/Object;)V
    .registers 14

    if-nez p7, :cond_10

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_7

    const/4 p5, 0x1

    :cond_7
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    .line 956
    invoke-direct/range {v0 .. v5}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->startThumbIntervalAnimationHios(FFJZ)V

    return-void

    :cond_10
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: startThumbIntervalAnimationHios"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final startThumbScalAnimator(FF)V
    .registers 6

    .line 878
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbInScalAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_b

    .line 879
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->createThumbInScalAnimator(FF)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbInScalAnimator:Landroid/animation/ValueAnimator;

    goto :goto_34

    .line 881
    :cond_b
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 882
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbInScalAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 883
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->createThumbInScalAnimator(FF)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbInScalAnimator:Landroid/animation/ValueAnimator;

    goto :goto_34

    .line 885
    :cond_23
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbInScalAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 888
    :goto_34
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbInScalAnimator:Landroid/animation/ValueAnimator;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private final startThumbWidthAnimator(FF)V
    .registers 6

    .line 898
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbWidthAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_b

    .line 899
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->createThumbWidthAnimator(FF)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbWidthAnimator:Landroid/animation/ValueAnimator;

    goto :goto_34

    .line 901
    :cond_b
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 902
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbWidthAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 903
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->createThumbWidthAnimator(FF)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbWidthAnimator:Landroid/animation/ValueAnimator;

    goto :goto_34

    .line 905
    :cond_23
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbWidthAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 908
    :goto_34
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbWidthAnimator:Landroid/animation/ValueAnimator;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private final startThumbWidthTrackAnimator(FF)V
    .registers 4

    .line 815
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbWidthTrackAnimator:Lcom/transsion/widgetslib/anim/TrackAnimator;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/anim/TrackAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_d

    .line 816
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbWidthTrackAnimator:Lcom/transsion/widgetslib/anim/TrackAnimator;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/anim/TrackAnimator;->set(F)V

    .line 818
    :cond_d
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbWidthTrackAnimator:Lcom/transsion/widgetslib/anim/TrackAnimator;

    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/anim/TrackAnimator;->setTargValue(F)V

    return-void
.end method

.method private final updateThumbWidthAndCenterXTrack()Z
    .registers 6

    .line 841
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isThumbIntervalAnimationRun()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_51

    .line 842
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbWidthTrackAnimator:Lcom/transsion/widgetslib/anim/TrackAnimator;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/anim/TrackAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 843
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbWidthTrackAnimator:Lcom/transsion/widgetslib/anim/TrackAnimator;

    const v1, 0x3d83126f    # 0.064f

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/anim/TrackAnimator;->update(F)Z

    move-result v1

    .line 844
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbWidthTrackAnimator:Lcom/transsion/widgetslib/anim/TrackAnimator;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/anim/TrackAnimator;->getAnimatedValue()F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mCurrentThumbInHalfWidth:F

    .line 846
    :cond_20
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbCenterXTrackAnimator:Lcom/transsion/widgetslib/anim/TrackAnimator;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/anim/TrackAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 847
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbCenterXTrackAnimator:Lcom/transsion/widgetslib/anim/TrackAnimator;

    const v2, 0x3e83126f    # 0.256f

    invoke-virtual {v0, v2}, Lcom/transsion/widgetslib/anim/TrackAnimator;->update(F)Z

    move-result v0

    or-int/2addr v0, v1

    .line 848
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbCenterXTrackAnimator:Lcom/transsion/widgetslib/anim/TrackAnimator;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/anim/TrackAnimator;->getAnimatedValue()F

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbCenterX:F

    .line 849
    invoke-direct {p0, v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->calculateProgress(F)F

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mProgress:F

    .line 850
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->onProgressChangedListener:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OnProgressChangedListener;

    if-eqz v1, :cond_50

    .line 852
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getProgress()I

    move-result v2

    .line 853
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getProgressFloat()F

    move-result v3

    const/4 v4, 0x1

    .line 850
    invoke-interface {v1, p0, v2, v3, v4}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OnProgressChangedListener;->onProgressChanged(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;IFZ)V

    :cond_50
    return v0

    :cond_51
    return v1
.end method

.method private final wrapIcons(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;)V
    .registers 6

    .line 1302
    sget-object v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "leftIcon = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->getLeftIcon()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " rightIcon = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->getRightIcon()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/widgetscore/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1303
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->getRightIcon()I

    move-result v0

    if-nez v0, :cond_33

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->getLeftIcon()I

    move-result v0

    if-nez v0, :cond_33

    goto :goto_9c

    .line 1306
    :cond_33
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_9c

    .line 1307
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1308
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 1309
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    .line 1310
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1311
    const-string v2, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup;

    .line 1312
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 1313
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 1314
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_69

    .line 1316
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6c

    .line 1318
    :cond_69
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 1320
    :goto_6c
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->getLeftIcon()I

    move-result v0

    if-lez v0, :cond_7f

    .line 1321
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->getLeftIcon()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->generateIconView(I)Landroid/widget/ImageView;

    move-result-object v0

    .line 1322
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mLeftIcon:Landroid/widget/ImageView;

    .line 1321
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1325
    :cond_7f
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1326
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->generateSeekbarInnerLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1327
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1328
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->getRightIcon()I

    move-result v0

    if-lez v0, :cond_9c

    .line 1329
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->getRightIcon()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->generateIconView(I)Landroid/widget/ImageView;

    move-result-object p1

    .line 1330
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mRightIcon:Landroid/widget/ImageView;

    .line 1329
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_9c
    :goto_9c
    return-void
.end method


# virtual methods
.method public final config(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;)V
    .registers 6

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1257
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->getMin()F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->min:F

    .line 1258
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->getMax()F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->max:F

    .line 1259
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->getProgress()F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mProgress:F

    .line 1260
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->getTrackColor()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mTrackColor:I

    .line 1261
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->getSecondTrackColor()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mSecondTrackColor:I

    .line 1262
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->getTrackWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mSourceTrackWidth:F

    .line 1263
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->getTrackWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mCurrentSourceTrackWidth:F

    .line 1264
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->getThumbOutColor()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbOutColor:I

    .line 1265
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->getThumbInsideColor()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbInsideColor:I

    .line 1266
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->getSecondTrackColorDisable()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mSecondTrackColorDisable:I

    .line 1267
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->getThumbOutColorDisable()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbOutColorDisable:I

    .line 1268
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->getThumbInsideColorDisable()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbInsideColorDisable:I

    .line 1269
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->getSecondTrackWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mSourceSecondTTrackWidth:F

    .line 1270
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->getSecondTrackWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mCurrentSourceSecondTTrackWidth:F

    .line 1271
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->getTrackWidthMax()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mTrackWidthMax:F

    .line 1272
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->getThumbOutWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->getThumbInWidth()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbStokeWidth:F

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_7a

    .line 1274
    iput v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbStokeWidth:F

    .line 1276
    :cond_7a
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->getThumbInWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mSourceThumbInHalfWidth:F

    .line 1277
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->getThumbInMaxWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->getThumbInWidth()I

    move-result v3

    if-ge v0, v3, :cond_93

    .line 1278
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->getThumbInWidth()I

    move-result v0

    .line 1277
    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->setThumbInMaxWidth(I)V

    .line 1279
    :cond_93
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->getThumbInMaxWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mMaxThumbInHalfWidth:F

    .line 1280
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mSourceThumbInHalfWidth:F

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mSourceThumbInHalfHeight:F

    .line 1281
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mCurrentThumbInHalfWidth:F

    .line 1282
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->getThumbInMaxScal()F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mMaxThumbInScal:F

    .line 1283
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbStokeWidth:F

    cmpg-float v0, v0, v2

    if-nez v0, :cond_ae

    goto :goto_cb

    .line 1285
    :cond_ae
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->getThumbOutWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->getThumbOutMaxScal()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->getThumbInWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->getThumbInMaxScal()F

    move-result v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 1286
    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbStokeWidth:F

    const/4 v2, 0x2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    .line 1284
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mMaxThumbStokeScal:F

    .line 1289
    :goto_cb
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mMaxThumbStokeScal:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_d5

    .line 1290
    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mMaxThumbStokeScal:F

    .line 1292
    :cond_d5
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->initConfigByPriority()V

    .line 1293
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->onProgressChangedListener:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OnProgressChangedListener;

    if-eqz v0, :cond_e8

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getProgress()I

    move-result v1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getProgressFloat()F

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OnProgressChangedListener;->onProgressChanged(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;IFZ)V

    .line 1294
    :cond_e8
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->getThumbInsideUnAbleColorHios()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbInsideUnAbleColorHios:I

    const/4 v0, 0x0

    .line 1295
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mOSSeekBarBuilder:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;

    .line 1297
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->wrapIcons(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;)V

    .line 1298
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final getConfigBuilder()Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;
    .registers 2

    .line 1250
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mOSSeekBarBuilder:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;

    if-nez v0, :cond_b

    .line 1251
    new-instance v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;-><init>(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mOSSeekBarBuilder:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;

    .line 1253
    :cond_b
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mOSSeekBarBuilder:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final getLeftIcon()Landroid/widget/ImageView;
    .registers 1

    .line 1593
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mLeftIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method public final getMax()F
    .registers 1

    .line 45
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->max:F

    return p0
.end method

.method public final getMin()F
    .registers 1

    .line 43
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->min:F

    return p0
.end method

.method public getOnProgressChangedListener()Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OnProgressChangedListener;
    .registers 1

    .line 1169
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->onProgressChangedListener:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OnProgressChangedListener;

    return-object p0
.end method

.method public final getOnlyHiOSStyle()Z
    .registers 1

    .line 196
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->onlyHiOSStyle:Z

    return p0
.end method

.method public final getProgress()I
    .registers 2

    .line 1159
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbIntervalAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_18

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1160
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mToThumbCenterX:F

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->calculateProgress(F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0

    .line 1161
    :cond_18
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mProgress:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public final getProgressFloat()F
    .registers 2

    .line 1164
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbIntervalAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_14

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1165
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mToThumbCenterX:F

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->calculateProgress(F)F

    move-result p0

    return p0

    .line 1166
    :cond_14
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mProgress:F

    return p0
.end method

.method public final getRightIcon()Landroid/widget/ImageView;
    .registers 1

    .line 1597
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mRightIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method public final getThumb()Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 1633
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final getThumbDrawable()Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 195
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final isHiOSStyle()Z
    .registers 2

    .line 1641
    sget-boolean v0, Lcom/transsion/widgetslib/util/Utils;->IS_HIOS:Z

    if-nez v0, :cond_b

    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->onlyHiOSStyle:Z

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method

.method public final isNoThumb()Z
    .registers 1

    .line 197
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isNoThumb:Z

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 3

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 320
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 321
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isHiOSStyle()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 322
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->drawHIOS(Landroid/graphics/Canvas;)V

    return-void

    .line 324
    :cond_12
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->drawNonHIOS(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 316
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 6

    .line 260
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 261
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getContentHeight()I

    move-result p2

    .line 262
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    .line 263
    invoke-direct {p0, p2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getMinHeight(I)I

    move-result p2

    .line 264
    sget-object v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    sget-object v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->Companion:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$Companion;

    const/16 v1, 0xb4

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$Companion;->dp2px(I)I

    move-result v0

    invoke-static {v0, p1}, Landroid/view/View;->resolveSize(II)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 267
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->setThumbHalfWidth()V

    .line 268
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result p1

    int-to-float p1, p1

    iget p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbHalfWidth:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mLeft:F

    .line 269
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result p2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    iget p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbHalfWidth:F

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mRight:F

    .line 271
    iget p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mLeft:F

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mTrackLength:F

    .line 272
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x3f000000    # 0.5f

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbCenterY:F

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1209
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_22

    .line 1211
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "progress"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mProgress:F

    .line 1212
    const-string v0, "save_instance"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1213
    iget p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mProgress:F

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->setProgress(F)V

    return-void

    .line 1216
    :cond_22
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .line 1202
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1203
    const-string v1, "save_instance"

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1204
    const-string v1, "progress"

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mProgress:F

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 547
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 548
    new-instance p1, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 556
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_58

    if-eq v0, v1, :cond_2e

    const/4 v3, 0x2

    if-eq v0, v3, :cond_17

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2e

    goto/16 :goto_fe

    .line 594
    :cond_17
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isThumbOnDragging:Z

    .line 595
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isHiOSStyle()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 596
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->onMoveHIOS(Landroid/view/MotionEvent;)V

    goto :goto_2a

    .line 598
    :cond_27
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->onMoveNoHIOS(Landroid/view/MotionEvent;)V

    .line 601
    :goto_2a
    iput-boolean v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isEnterActionMove:Z

    goto/16 :goto_fe

    .line 605
    :cond_2e
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 606
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isThumbOnDragging:Z

    if-eqz v0, :cond_46

    .line 607
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isHiOSStyle()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 608
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->onUpOrCancelHIOS(Landroid/view/MotionEvent;)V

    goto :goto_46

    .line 610
    :cond_43
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->onUpOrCancelNoHIOS(Landroid/view/MotionEvent;)V

    .line 613
    :cond_46
    :goto_46
    iput-boolean v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isThumbOnDragging:Z

    .line 614
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->onProgressChangedListener:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OnProgressChangedListener;

    if-eqz p1, :cond_4f

    invoke-interface {p1, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OnProgressChangedListener;->onStopTrackingTouch(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)V

    .line 615
    :cond_4f
    iput-boolean v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isEnterActionMove:Z

    .line 616
    iput-boolean v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isTouchMove:Z

    .line 617
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_fe

    .line 558
    :cond_58
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->performClick()Z

    .line 559
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 560
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isThumbOnDragging:Z

    if-eqz v0, :cond_fe

    .line 562
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isNoThumb:Z

    if-eqz v0, :cond_85

    .line 563
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mLeft:F

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_82

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mRight:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_a1

    .line 564
    :cond_82
    iput-boolean v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isThumbOnDragging:Z

    return v2

    .line 568
    :cond_85
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mLeft:F

    iget v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbHalfWidth:F

    sub-float/2addr v3, v4

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_9f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mRight:F

    iget v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbHalfWidth:F

    add-float/2addr v3, v4

    cmpl-float v0, v0, v3

    if-lez v0, :cond_a1

    :cond_9f
    move-object v3, p0

    goto :goto_fb

    .line 574
    :cond_a1
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mLeft:F

    float-to-double v3, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-double v5, v0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mRight:F

    float-to-double v5, v0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    double-to-float v0, v3

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mTouchXDown:F

    .line 576
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->onProgressChangedListener:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OnProgressChangedListener;

    if-eqz v0, :cond_be

    invoke-interface {v0, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OnProgressChangedListener;->onStartTrackingTouch(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)V

    .line 577
    :cond_be
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getThumbHalfSizeOnTouchDown()F

    move-result v0

    .line 579
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbCenterX:F

    sub-float/2addr p1, v3

    float-to-double v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    float-to-double v5, v0

    cmpg-double p1, v3, v5

    if-gtz p1, :cond_d4

    move v2, v1

    :cond_d4
    iput-boolean v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isTouchOnThumb:Z

    .line 580
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isHiOSStyle()Z

    move-result p1

    if-eqz p1, :cond_fe

    .line 581
    iget p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbCenterX:F

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbHalfWidth:F

    cmpg-float v2, p1, v0

    if-gez v2, :cond_e5

    move p1, v0

    :cond_e5
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbCenterX:F

    .line 582
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mRight:F

    cmpl-float v2, p1, v0

    if-lez v2, :cond_ef

    move v4, v0

    goto :goto_f0

    :cond_ef
    move v4, p1

    :goto_f0
    iput v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbCenterX:F

    const-wide/16 v6, 0xc8

    const/4 v8, 0x0

    move v5, v4

    move-object v3, p0

    .line 583
    invoke-direct/range {v3 .. v8}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->startThumbIntervalAnimationHios(FFJZ)V

    goto :goto_fe

    .line 569
    :goto_fb
    iput-boolean v2, v3, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isThumbOnDragging:Z

    return v2

    :cond_fe
    :goto_fe
    return v1
.end method

.method public performClick()Z
    .registers 1

    .line 552
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result p0

    return p0
.end method

.method public final setNoThumb(Z)V
    .registers 2

    .line 197
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->isNoThumb:Z

    return-void
.end method

.method public setOnProgressChangedListener(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OnProgressChangedListener;)V
    .registers 2

    .line 1173
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->onProgressChangedListener:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OnProgressChangedListener;

    return-void
.end method

.method public final setOnlyHiOSStyle(Z)V
    .registers 2

    .line 196
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->onlyHiOSStyle:Z

    return-void
.end method

.method public final setProgress(F)V
    .registers 5

    .line 1152
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mProgress:F

    .line 1153
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->onProgressChangedListener:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OnProgressChangedListener;

    if-eqz p1, :cond_12

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getProgress()I

    move-result v0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getProgressFloat()F

    move-result v1

    const/4 v2, 0x0

    invoke-interface {p1, p0, v0, v1, v2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OnProgressChangedListener;->onProgressChanged(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;IFZ)V

    .line 1154
    :cond_12
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public final setSecondTrackColor(I)V
    .registers 3

    .line 1184
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mSecondTrackColor:I

    if-eq v0, p1, :cond_9

    .line 1185
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mSecondTrackColor:I

    .line 1186
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_9
    return-void
.end method

.method public final setThumb(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 1638
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 195
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final setThumbInsideColor(I)V
    .registers 3

    .line 1227
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbInsideColor:I

    if-eq v0, p1, :cond_9

    .line 1228
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbInsideColor:I

    .line 1229
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_9
    return-void
.end method

.method public final setThumbInsideUnAbleColorHios(I)V
    .registers 3

    .line 1195
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbInsideUnAbleColorHios:I

    if-eq v0, p1, :cond_9

    .line 1196
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbInsideUnAbleColorHios:I

    .line 1197
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_9
    return-void
.end method

.method public final setThumbOutColor(I)V
    .registers 3

    .line 1220
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbOutColor:I

    if-eq v0, p1, :cond_9

    .line 1221
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mThumbOutColor:I

    .line 1222
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_9
    return-void
.end method

.method public final setTrackColor(I)V
    .registers 3

    .line 1177
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mTrackColor:I

    if-eq v0, p1, :cond_9

    .line 1178
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mTrackColor:I

    .line 1179
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_9
    return-void
.end method
