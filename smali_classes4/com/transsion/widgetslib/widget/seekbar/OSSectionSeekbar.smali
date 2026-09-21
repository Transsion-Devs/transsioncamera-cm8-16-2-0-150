.class public Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$Companion;,
        Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;,
        Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OnProgressChangedListener;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$Companion;

.field private static final THUMB_INTER_TRANSLATION_DURATION:I = 0xfa

.field private static final THUMB_INTER_TRAN_DURATION_HIOS:I = 0xfa

.field private static final THUMB_INTER_TRAN_ON_THUMB_DURATION_HIOS:I = 0xc8


# instance fields
.field private final TAG:Ljava/lang/String;

.field private isCenterXAnimation:Z

.field private isFloatType:Z

.field private isThumbOnDragging:Z

.field private isTouchMove:Z

.field private isTouchOnThumb:Z

.field private final mCirclePaint:Landroid/graphics/Paint;

.field private final mContext:Landroid/content/Context;

.field private mCurrentPointerPosition:F

.field private mCurrentScaleFactor:F

.field private mCurrentSection:I

.field private mCurrentSourceSecondTTrackWidth:F

.field private mCurrentSourceTrackWidth:F

.field private mDelta:F

.field private mDisplayCharacters:Z

.field private mDotsColor:I

.field private mDotsSelectedColor:I

.field private mDotsSelectedColorDisable:I

.field private mDotsSize:I

.field private mFromScaleFactor:F

.field private mFromThumbCenterX:F

.field private mFromTrackWidth:F

.field private mFromUpEvent:Z

.field private mLastPointerPosition:F

.field private mLeft:F

.field private mOSSectionSeekBarBuilder:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;

.field private final mPaint:Landroid/graphics/Paint;

.field private mPreThumbCenterX:F

.field private mProcessMarginTopBottow:I

.field private final mRectHeightText:Landroid/graphics/Rect;

.field private final mRectText:Landroid/graphics/Rect;

.field private mRight:F

.field private mSecondTrackColor:I

.field private mSecondTrackColorDisable:I

.field private mSecondTrackSize:I

.field private mSectionCount:I

.field private mSectionOffset:F

.field private mSectionTextArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSectionTextColor:I

.field private mSectionTextInterval:I

.field private mSectionTextSize:I

.field private mSectionValue:F

.field private mTextBottomMargin:I

.field private final mTextSpace:I

.field private mTextTopMargin:I

.field private mThumbCenterX:F

.field private mThumbInWidth:I

.field private mThumbInsideColor:I

.field private mThumbInsideColorDisable:I

.field private mThumbIntervalAnimator:Landroid/animation/ValueAnimator;

.field private mThumbOutColor:I

.field private mThumbOutColorDisable:I

.field private mThumbOutWidth:I

.field private mToThumbCenterX:F

.field private mTouchDownPosition:F

.field private mTrackColor:I

.field private mTrackLength:F

.field private mTrackSize:I

.field private mTrackWidthMax:F

.field private max:F

.field private min:F

.field private onProgressChangedListener:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OnProgressChangedListener;

.field private progressFloat:F


# direct methods
.method public static synthetic $r8$lambda$HdPG6hbWAgO6Ecn6-lcP5eYD62Y(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->createThumbIntervalAnimatorHios$lambda$2(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fLtmnOgcGV_ua-l945AwiIPV2uY(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->onSizeChanged$lambda$0(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->Companion:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$Companion;

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

    invoke-direct/range {v1 .. v6}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v6}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    const-string v0, "mContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mContext:Landroid/content/Context;

    .line 39
    const-class v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->TAG:Ljava/lang/String;

    .line 76
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionTextArray:Landroid/util/SparseArray;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 113
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mCurrentScaleFactor:F

    .line 114
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mFromScaleFactor:F

    .line 124
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->getConfigBuilder()Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->build()V

    .line 126
    sget-object v0, Lcom/transsion/widgetslib/R$styleable;->OSSectionSeekbar:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "mContext.obtainStyledAtt\u2026Seekbar, defStyleAttr, 0)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSSectionSeekbar_osSectionSeekbarMin:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->min:F

    .line 128
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSSectionSeekbar_osSectionSeekbarMax:I

    const/high16 v0, 0x42c80000    # 100.0f

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->max:F

    .line 129
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSSectionSeekbar_osSectionSeekbarProgress:I

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->min:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->progressFloat:F

    const/4 p2, 0x0

    const/4 v0, 0x1

    .line 130
    invoke-static {p0, p3, v0, p2}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->calculateCurrentSection$default(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;FILjava/lang/Object;)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mCurrentSection:I

    .line 131
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSSectionSeekbar_osSectionSeekbarSectionCount:I

    const/4 p3, 0x5

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionCount:I

    .line 133
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSSectionSeekbar_osSectionSeekbarDisplayCharacters:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 132
    iput-boolean p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mDisplayCharacters:Z

    .line 134
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OSSectionSeekbar_android_enabled:I

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 135
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 136
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mPaint:Landroid/graphics/Paint;

    .line 137
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 138
    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 139
    sget-object p3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 140
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mCirclePaint:Landroid/graphics/Paint;

    .line 141
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 142
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 143
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 144
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mRectText:Landroid/graphics/Rect;

    .line 145
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mRectHeightText:Landroid/graphics/Rect;

    .line 146
    sget-object p1, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->Companion:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$Companion;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$Companion;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mTextSpace:I

    .line 147
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->initConfigByPriority()V

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

    .line 32
    :cond_a
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)Landroid/content/Context;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$setCenterXAnimation$p(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;Z)V
    .registers 2

    .line 32
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->isCenterXAnimation:Z

    return-void
.end method

.method public static final synthetic access$thumbOutColor(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)I
    .registers 1

    .line 32
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->thumbOutColor()I

    move-result p0

    return p0
.end method

.method private final calThumbCxWhenSeekStepSection(F)F
    .registers 6

    .line 765
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mLeft:F

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_7

    return v0

    .line 766
    :cond_7
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mRight:F

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_e

    return v0

    :cond_e
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 770
    :goto_10
    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionCount:I

    if-gt v1, v2, :cond_29

    int-to-float v0, v1

    .line 771
    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionOffset:F

    mul-float/2addr v0, v2

    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mLeft:F

    add-float/2addr v0, v3

    cmpg-float v3, v0, p1

    if-gtz v3, :cond_26

    sub-float v3, p1, v0

    cmpg-float v2, v3, v2

    if-gtz v2, :cond_26

    goto :goto_29

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_29
    :goto_29
    sub-float/2addr p1, v0

    .line 777
    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionOffset:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v2, v3

    cmpg-float p1, p1, v3

    if-gtz p1, :cond_35

    return v0

    :cond_35
    add-int/lit8 v1, v1, 0x1

    int-to-float p1, v1

    mul-float/2addr p1, v2

    .line 780
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mLeft:F

    add-float/2addr p1, p0

    return p1
.end method

.method private final calculateCurrentSection(F)I
    .registers 3

    .line 800
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mDelta:F

    div-float/2addr p1, v0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionCount:I

    int-to-float p0, p0

    mul-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method static synthetic calculateCurrentSection$default(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;FILjava/lang/Object;)I
    .registers 4

    if-nez p3, :cond_d

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_8

    .line 799
    iget p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->progressFloat:F

    :cond_8
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->calculateCurrentSection(F)I

    move-result p0

    return p0

    :cond_d
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: calculateCurrentSection"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final calculateMaxHeight()F
    .registers 9

    .line 241
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionTextArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 244
    :cond_a
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontSpacing()F

    move-result v0

    .line 245
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionTextArray:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_18
    if-ge v3, v1, :cond_3b

    .line 246
    iget-object v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionTextArray:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 247
    iget-object v5, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v7, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mRectHeightText:Landroid/graphics/Rect;

    invoke-virtual {v5, v4, v2, v6, v7}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 248
    iget-object v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mRectHeightText:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_3b
    return v0
.end method

.method private final calculateProgress(F)F
    .registers 3

    .line 794
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 795
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mRight:F

    sub-float/2addr v0, p1

    iget p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mDelta:F

    mul-float/2addr v0, p1

    iget p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mTrackLength:F

    div-float/2addr v0, p1

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->min:F

    add-float/2addr v0, p0

    return v0

    .line 796
    :cond_13
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mLeft:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mDelta:F

    mul-float/2addr p1, v0

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mTrackLength:F

    div-float/2addr p1, v0

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->min:F

    add-float/2addr p1, p0

    return p1
.end method

.method static synthetic calculateProgress$default(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;FILjava/lang/Object;)F
    .registers 4

    if-nez p3, :cond_d

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_8

    .line 793
    iget p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbCenterX:F

    :cond_8
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->calculateProgress(F)F

    move-result p0

    return p0

    :cond_d
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: calculateProgress"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final createThumbIntervalAnimatorHios()Landroid/animation/ValueAnimator;
    .registers 3

    const/4 v0, 0x2

    .line 687
    new-array v0, v0, [F

    fill-array-data v0, :array_20

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 688
    new-instance v1, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 732
    new-instance v1, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$createThumbIntervalAnimatorHios$2;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$createThumbIntervalAnimatorHios$2;-><init>(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 749
    const-string p0, "valueAnimator"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :array_20
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static final createThumbIntervalAnimatorHios$lambda$2(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;Landroid/animation/ValueAnimator;)V
    .registers 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 689
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 691
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mFromThumbCenterX:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mToThumbCenterX:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbCenterX:F

    .line 704
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mFromUpEvent:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2e

    .line 705
    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mFromScaleFactor:F

    int-to-float v3, v1

    sub-float/2addr v3, v2

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    goto :goto_33

    .line 707
    :cond_2e
    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mFromScaleFactor:F

    mul-float v3, p1, v2

    sub-float/2addr v2, v3

    .line 694
    :goto_33
    iput v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mCurrentScaleFactor:F

    if-eqz v0, :cond_45

    .line 716
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mFromTrackWidth:F

    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mTrackSize:I

    int-to-float v2, v2

    sub-float v2, v0, v2

    mul-float/2addr v2, p1

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mCurrentSourceTrackWidth:F

    .line 717
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mCurrentSourceSecondTTrackWidth:F

    goto :goto_50

    .line 719
    :cond_45
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mFromTrackWidth:F

    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mTrackWidthMax:F

    sub-float/2addr v2, v0

    mul-float/2addr v2, p1

    add-float/2addr v0, v2

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mCurrentSourceTrackWidth:F

    .line 720
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mCurrentSourceSecondTTrackWidth:F

    :goto_50
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 722
    invoke-static {p0, v0, v1, v2}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->calculateProgress$default(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;FILjava/lang/Object;)F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->progressFloat:F

    .line 723
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->onProgressChangedListener:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OnProgressChangedListener;

    if-eqz v0, :cond_65

    .line 725
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->getProgress()I

    move-result v2

    .line 726
    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->progressFloat:F

    .line 723
    invoke-interface {v0, p0, v2, v3, v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OnProgressChangedListener;->onProgressContinuousChanged(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;IFZ)V

    .line 729
    :cond_65
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentSourceTrackWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mCurrentSourceTrackWidth:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " mFromTrackWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mFromTrackWidth:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " mTrackWidthMax = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mTrackWidthMax:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " mFromUpEvent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mFromUpEvent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " curValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/widgetscore/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private final drawHIOS(Landroid/graphics/Canvas;)V
    .registers 12

    .line 334
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mProcessMarginTopBottow:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbOutWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    add-float v5, v0, v1

    .line 337
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 338
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 339
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mLeft:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbOutWidth:I

    div-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mCurrentSourceTrackWidth:F

    const/4 v9, 0x2

    int-to-float v4, v9

    div-float v6, v3, v4

    add-float/2addr v0, v6

    .line 340
    iget v6, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mRight:F

    div-int/lit8 v7, v1, 0x2

    int-to-float v7, v7

    add-float/2addr v6, v7

    div-float/2addr v3, v4

    sub-float/2addr v6, v3

    int-to-float v1, v1

    mul-float/2addr v1, v2

    add-float/2addr v1, v5

    .line 343
    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mProcessMarginTopBottow:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mTextTopMargin:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v1, v3

    .line 346
    iget-boolean v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->isThumbOnDragging:Z

    if-nez v3, :cond_7b

    iget-boolean v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->isCenterXAnimation:Z

    if-nez v3, :cond_7b

    .line 347
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->isRtl()Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 348
    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mRight:F

    iget v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mTrackLength:F

    iget v7, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mDelta:F

    div-float/2addr v4, v7

    iget v7, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->progressFloat:F

    iget v8, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->min:F

    sub-float/2addr v7, v8

    mul-float/2addr v4, v7

    sub-float/2addr v3, v4

    goto :goto_79

    .line 350
    :cond_6b
    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mLeft:F

    iget v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mTrackLength:F

    iget v7, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mDelta:F

    div-float/2addr v4, v7

    iget v7, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->progressFloat:F

    iget v8, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->min:F

    sub-float/2addr v7, v8

    mul-float/2addr v4, v7

    add-float/2addr v3, v4

    .line 347
    :goto_79
    iput v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbCenterX:F

    .line 355
    :cond_7b
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mTrackColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 356
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mCurrentSourceTrackWidth:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 357
    iget-object v8, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mPaint:Landroid/graphics/Paint;

    move v7, v5

    move-object v3, p1

    move v4, v0

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 359
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mPaint:Landroid/graphics/Paint;

    .line 360
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->getSecondTrackColor()I

    move-result v0

    .line 359
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 362
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mCurrentSourceTrackWidth:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 363
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->isRtl()Z

    move-result p1

    if-eqz p1, :cond_b0

    .line 364
    iget v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbCenterX:F

    iget-object v8, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mPaint:Landroid/graphics/Paint;

    move v7, v5

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_b8

    .line 366
    :cond_b0
    iget v6, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbCenterX:F

    iget-object v8, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mPaint:Landroid/graphics/Paint;

    move v7, v5

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 368
    :goto_b8
    iget p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionCount:I

    if-ltz p1, :cond_13a

    const/4 v0, 0x0

    .line 369
    :goto_bd
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->isRtl()Z

    move-result v4

    if-eqz v4, :cond_cb

    .line 370
    iget v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mRight:F

    int-to-float v6, v0

    iget v7, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionOffset:F

    mul-float/2addr v6, v7

    sub-float/2addr v4, v6

    goto :goto_d2

    .line 372
    :cond_cb
    iget v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mLeft:F

    int-to-float v6, v0

    iget v7, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionOffset:F

    mul-float/2addr v6, v7

    add-float/2addr v4, v6

    .line 374
    :goto_d2
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->isRtl()Z

    move-result v6

    if-eqz v6, :cond_e4

    .line 375
    iget v6, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbCenterX:F

    iget v7, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbOutWidth:I

    div-int/2addr v7, v9

    int-to-float v7, v7

    sub-float/2addr v6, v7

    cmpg-float v6, v4, v6

    if-gtz v6, :cond_f7

    goto :goto_ef

    .line 377
    :cond_e4
    iget v6, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbCenterX:F

    iget v7, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbOutWidth:I

    div-int/2addr v7, v9

    int-to-float v7, v7

    add-float/2addr v6, v7

    cmpl-float v6, v4, v6

    if-ltz v6, :cond_f7

    .line 380
    :goto_ef
    iget-object v6, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mPaint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mDotsColor:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_100

    .line 382
    :cond_f7
    iget-object v6, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->getDotColor()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 385
    :goto_100
    iget v6, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mDotsSize:I

    int-to-float v6, v6

    mul-float/2addr v6, v2

    iget-object v7, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 388
    iget-object v6, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mPaint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionTextColor:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 389
    iget-object v6, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionTextArray:Landroid/util/SparseArray;

    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->isRtl()Z

    move-result v7

    if-eqz v7, :cond_11c

    iget v7, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionCount:I

    sub-int/2addr v7, v0

    goto :goto_11d

    :cond_11c
    move v7, v0

    :goto_11d
    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_135

    iget-boolean v6, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mDisplayCharacters:Z

    if-eqz v6, :cond_135

    .line 390
    iget-object v6, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionTextArray:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v6, v4, v1, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_135
    if-eq v0, p1, :cond_13a

    add-int/lit8 v0, v0, 0x1

    goto :goto_bd

    .line 394
    :cond_13a
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mCirclePaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->getThumbOutColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 395
    iget p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mCurrentScaleFactor:F

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_15e

    .line 396
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbCenterX:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbOutWidth:I

    div-int/2addr v1, v9

    int-to-float v1, v1

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr p1, v2

    const v2, 0x3f666666    # 0.9f

    add-float/2addr p1, v2

    mul-float/2addr v1, p1

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0, v5, v1, p1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 398
    :cond_15e
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mCirclePaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 399
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->getThumbInsideColor()I

    move-result p1

    .line 400
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mCirclePaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->getAnimThumbInsideColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 401
    iget p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbCenterX:F

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbInWidth:I

    div-int/2addr v0, v9

    int-to-float v0, v0

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mCurrentScaleFactor:F

    mul-float/2addr v0, v1

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, p1, v5, v0, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private final drawNonHIOS(Landroid/graphics/Canvas;)V
    .registers 13

    .line 263
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mProcessMarginTopBottow:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbOutWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    add-float v5, v0, v1

    .line 265
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 266
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 267
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mLeft:F

    .line 268
    iget v6, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mRight:F

    .line 271
    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbOutWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    add-float/2addr v1, v5

    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mProcessMarginTopBottow:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mTextTopMargin:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mRectText:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    .line 274
    iget-boolean v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->isThumbOnDragging:Z

    if-nez v3, :cond_5e

    .line 275
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->isRtl()Z

    move-result v3

    if-eqz v3, :cond_50

    .line 276
    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mTrackLength:F

    iget v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mDelta:F

    div-float/2addr v3, v4

    iget v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->progressFloat:F

    iget v7, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->min:F

    sub-float/2addr v4, v7

    mul-float/2addr v3, v4

    sub-float v3, v6, v3

    goto :goto_5c

    .line 278
    :cond_50
    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mTrackLength:F

    iget v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mDelta:F

    div-float/2addr v3, v4

    iget v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->progressFloat:F

    iget v7, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->min:F

    sub-float/2addr v4, v7

    mul-float/2addr v3, v4

    add-float/2addr v3, v0

    .line 275
    :goto_5c
    iput v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbCenterX:F

    .line 283
    :cond_5e
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->getSecondTrackColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 284
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSecondTrackSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 285
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->isRtl()Z

    move-result v3

    if-eqz v3, :cond_81

    .line 286
    iget v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbCenterX:F

    iget-object v8, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mPaint:Landroid/graphics/Paint;

    move v7, v5

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move p1, v6

    move v4, v0

    goto :goto_8c

    :cond_81
    move-object v3, p1

    move p1, v6

    .line 288
    iget v6, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbCenterX:F

    iget-object v8, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mPaint:Landroid/graphics/Paint;

    move v7, v5

    move v4, v0

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 292
    :goto_8c
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mTrackColor:I

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 293
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mTrackSize:I

    int-to-float v6, v6

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 294
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 295
    iget v6, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbCenterX:F

    iget-object v8, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mPaint:Landroid/graphics/Paint;

    move v7, v5

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v0, v4

    move v6, p1

    goto :goto_b6

    :cond_ac
    move v0, v4

    .line 297
    iget v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbCenterX:F

    iget-object v8, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mPaint:Landroid/graphics/Paint;

    move v7, v5

    move v6, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 299
    :goto_b6
    iget p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionCount:I

    if-ltz p1, :cond_121

    const/4 v4, 0x0

    .line 300
    :goto_bb
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->isRtl()Z

    move-result v7

    if-eqz v7, :cond_c8

    int-to-float v7, v4

    .line 301
    iget v8, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionOffset:F

    mul-float/2addr v7, v8

    sub-float v7, v6, v7

    goto :goto_cd

    :cond_c8
    int-to-float v7, v4

    .line 303
    iget v8, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionOffset:F

    mul-float/2addr v7, v8

    add-float/2addr v7, v0

    .line 305
    :goto_cd
    iget v8, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mCurrentSection:I

    if-gt v4, v8, :cond_e0

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v8

    if-nez v8, :cond_d8

    goto :goto_e0

    .line 308
    :cond_d8
    iget-object v8, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mPaint:Landroid/graphics/Paint;

    iget v9, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mDotsSelectedColor:I

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_e7

    .line 306
    :cond_e0
    :goto_e0
    iget-object v8, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mPaint:Landroid/graphics/Paint;

    iget v9, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mDotsColor:I

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 311
    :goto_e7
    iget v8, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mDotsSize:I

    int-to-float v8, v8

    mul-float/2addr v8, v2

    iget-object v9, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v7, v5, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 314
    iget-object v8, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mPaint:Landroid/graphics/Paint;

    iget v9, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionTextColor:I

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 315
    iget-object v8, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionTextArray:Landroid/util/SparseArray;

    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->isRtl()Z

    move-result v9

    if-eqz v9, :cond_103

    iget v9, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionCount:I

    sub-int/2addr v9, v4

    goto :goto_104

    :cond_103
    move v9, v4

    :goto_104
    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_11c

    iget-boolean v8, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mDisplayCharacters:Z

    if-eqz v8, :cond_11c

    .line 316
    iget-object v8, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionTextArray:Landroid/util/SparseArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v9, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v8, v7, v1, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_11c
    if-eq v4, p1, :cond_121

    add-int/lit8 v4, v4, 0x1

    goto :goto_bb

    .line 321
    :cond_121
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mCirclePaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->getThumbOutColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 322
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mCirclePaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 323
    iget p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbOutWidth:I

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbInWidth:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    mul-float/2addr p1, v2

    shr-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    mul-float/2addr v2, p1

    add-float/2addr v2, v0

    .line 326
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 327
    iget p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbCenterX:F

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, p1, v5, v2, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 328
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mCirclePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 329
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mCirclePaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->getThumbInsideColor()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 330
    iget p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbCenterX:F

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, p1, v5, v0, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private final float2String(F)Ljava/lang/String;
    .registers 2

    .line 785
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->formatFloat(F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final formatFloat(F)F
    .registers 3

    float-to-double p0, p1

    .line 789
    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p0

    const/4 p1, 0x1

    const/4 v0, 0x4

    .line 790
    invoke-virtual {p0, p1, v0}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->floatValue()F

    move-result p0

    return p0
.end method

.method private final getAnimThumbInsideColor(I)I
    .registers 3

    ushr-int/lit8 v0, p1, 0x18

    int-to-float v0, v0

    .line 411
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mCurrentScaleFactor:F

    mul-float/2addr v0, p0

    float-to-int p0, v0

    shl-int/lit8 p0, p0, 0x18

    const v0, 0xffffff

    and-int/2addr p1, v0

    or-int/2addr p0, p1

    return p0
.end method

.method private final getDotColor()I
    .registers 2

    .line 404
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 405
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mDotsSelectedColor:I

    return p0

    .line 407
    :cond_9
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mDotsSelectedColorDisable:I

    return p0
.end method

.method private final getDragOnThreshold(FLandroid/view/MotionEvent;)Z
    .registers 7

    .line 578
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->isRtl()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_23

    .line 579
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    sub-float/2addr v0, p1

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbOutWidth:I

    neg-int p0, p0

    div-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    cmpl-float p0, v0, p0

    if-ltz p0, :cond_22

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    sub-float/2addr p0, p1

    cmpg-float p0, p0, v3

    if-gtz p0, :cond_22

    return v2

    :cond_22
    return v1

    .line 581
    :cond_23
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    sub-float/2addr v0, p1

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbOutWidth:I

    div-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    cmpg-float p0, v0, p0

    if-gtz p0, :cond_3b

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    sub-float/2addr p0, p1

    cmpl-float p0, p0, v3

    if-ltz p0, :cond_3b

    return v2

    :cond_3b
    return v1
.end method

.method private final getLimitPosition(F)F
    .registers 4

    .line 586
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mLeft:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_7

    return v0

    .line 588
    :cond_7
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mRight:F

    cmpl-float v0, p1, p0

    if-lez v0, :cond_e

    return p0

    :cond_e
    return p1
.end method

.method private final getSecondTrackColor()I
    .registers 2

    .line 425
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 426
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSecondTrackColor:I

    return p0

    .line 428
    :cond_9
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSecondTrackColorDisable:I

    return p0
.end method

.method private final getThumbInsideColor()I
    .registers 2

    .line 413
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 414
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbInsideColor:I

    return p0

    .line 416
    :cond_9
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbInsideColorDisable:I

    return p0
.end method

.method private final getThumbOutColor()I
    .registers 2

    .line 419
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 420
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbOutColor:I

    return p0

    .line 422
    :cond_9
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbOutColorDisable:I

    return p0
.end method

.method private final initConfigByPriority()V
    .registers 4

    .line 151
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->min:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->max:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_f

    const/4 v0, 0x0

    .line 152
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->min:F

    const/high16 v0, 0x42c80000    # 100.0f

    .line 153
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->max:F

    .line 155
    :cond_f
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->min:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->max:F

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1b

    .line 157
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->max:F

    .line 158
    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->min:F

    .line 160
    :cond_1b
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->progressFloat:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->min:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_25

    .line 161
    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->progressFloat:F

    .line 163
    :cond_25
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->progressFloat:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->max:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2f

    .line 164
    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->progressFloat:F

    .line 166
    :cond_2f
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSecondTrackSize:I

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mTrackSize:I

    if-ge v0, v1, :cond_3f

    .line 167
    sget-object v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->Companion:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$Companion;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$Companion;->dp2px(I)I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSecondTrackSize:I

    .line 169
    :cond_3f
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbInWidth:I

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSecondTrackSize:I

    if-gt v0, v1, :cond_4f

    .line 170
    sget-object v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->Companion:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$Companion;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$Companion;->dp2px(I)I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbInWidth:I

    .line 172
    :cond_4f
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbOutWidth:I

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbInWidth:I

    if-ge v0, v1, :cond_5f

    .line 173
    sget-object v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->Companion:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$Companion;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$Companion;->dp2px(I)I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbOutWidth:I

    .line 175
    :cond_5f
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionCount:I

    if-gtz v0, :cond_67

    const/16 v0, 0xa

    .line 176
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionCount:I

    .line 178
    :cond_67
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->max:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->min:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mDelta:F

    .line 179
    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionCount:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionValue:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    const/4 v1, 0x1

    if-gez v0, :cond_7d

    .line 181
    iput-boolean v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->isFloatType:Z

    .line 183
    :cond_7d
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionTextInterval:I

    if-ge v0, v1, :cond_83

    .line 184
    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionTextInterval:I

    .line 186
    :cond_83
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->initSectionTextArray()V

    .line 187
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->progressFloat:F

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->setProgress(F)V

    return-void
.end method

.method private final initSectionTextArray()V
    .registers 8

    .line 191
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionTextInterval:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_d

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionCount:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_d

    goto :goto_e

    :cond_d
    move v2, v1

    .line 193
    :goto_e
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionCount:I

    if-ltz v0, :cond_3d

    .line 194
    :goto_12
    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->min:F

    iget v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionValue:F

    int-to-float v5, v1

    mul-float v6, v4, v5

    add-float/2addr v6, v3

    if-eqz v2, :cond_25

    .line 196
    iget v6, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionTextInterval:I

    rem-int v6, v1, v6

    if-nez v6, :cond_38

    mul-float/2addr v4, v5

    add-float v6, v3, v4

    .line 202
    :cond_25
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionTextArray:Landroid/util/SparseArray;

    .line 203
    iget-boolean v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->isFloatType:Z

    if-eqz v4, :cond_30

    invoke-direct {p0, v6}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->float2String(F)Ljava/lang/String;

    move-result-object v4

    goto :goto_35

    :cond_30
    float-to-int v4, v6

    .line 204
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 202
    :goto_35
    invoke-virtual {v3, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_38
    if-eq v1, v0, :cond_3d

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_3d
    return-void
.end method

.method private static final onSizeChanged$lambda$0(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 433
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private final onTouchDownHIOS(Landroid/view/MotionEvent;)V
    .registers 9

    .line 626
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mLastPointerPosition:F

    .line 627
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mTouchDownPosition:F

    .line 628
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbCenterX:F

    sub-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbOutWidth:I

    int-to-float p1, p1

    const/4 v2, 0x2

    int-to-float v2, v2

    div-float/2addr p1, v2

    float-to-double v2, p1

    cmpg-double p1, v0, v2

    const/4 v0, 0x1

    if-gtz p1, :cond_22

    move p1, v0

    goto :goto_23

    :cond_22
    const/4 p1, 0x0

    :goto_23
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->isTouchOnThumb:Z

    .line 630
    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbCenterX:F

    const-wide/16 v4, 0xc8

    const/4 v6, 0x0

    move v3, v2

    move-object v1, p0

    .line 629
    invoke-direct/range {v1 .. v6}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->startThumbIntervalAnimationHios(FFJZ)V

    const/4 p0, 0x0

    const/4 p1, 0x0

    .line 637
    invoke-static {v1, p0, v0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->calculateProgress$default(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;FILjava/lang/Object;)F

    move-result v2

    iput v2, v1, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->progressFloat:F

    .line 638
    invoke-static {v1, p0, v0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->calculateCurrentSection$default(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;FILjava/lang/Object;)I

    move-result p0

    iput p0, v1, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mCurrentSection:I

    .line 639
    iget-object p0, v1, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->onProgressChangedListener:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OnProgressChangedListener;

    if-eqz p0, :cond_44

    invoke-interface {p0, v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OnProgressChangedListener;->onStartTrackingTouch(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)V

    :cond_44
    return-void
.end method

.method private final onTouchDownNonHIOS(Landroid/view/MotionEvent;)V
    .registers 5

    .line 753
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->calThumbCxWhenSeekStepSection(F)F

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mPreThumbCenterX:F

    .line 754
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbCenterX:F

    const/4 p1, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 755
    invoke-static {p0, p1, v0, v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->calculateProgress$default(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;FILjava/lang/Object;)F

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->progressFloat:F

    .line 756
    invoke-static {p0, p1, v0, v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->calculateCurrentSection$default(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;FILjava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mCurrentSection:I

    .line 757
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 758
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->onProgressChangedListener:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OnProgressChangedListener;

    if-eqz p1, :cond_25

    invoke-interface {p1, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OnProgressChangedListener;->onStartTrackingTouch(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)V

    :cond_25
    return-void
.end method

.method private final onTouchMoveHIOS(Landroid/view/MotionEvent;)V
    .registers 9

    .line 508
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mTouchDownPosition:F

    sub-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 509
    sget-object v2, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->Companion:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$Companion;

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$Companion;->dp2px(I)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_eb

    .line 510
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mCurrentPointerPosition:F

    .line 511
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->calThumbCxWhenSeekStepSection(F)F

    move-result v1

    .line 513
    invoke-direct {p0, v1, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->getDragOnThreshold(FLandroid/view/MotionEvent;)Z

    move-result v3

    .line 514
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-direct {p0, v4}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->calculateProgress(F)F

    move-result v4

    .line 515
    invoke-direct {p0, v4}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->calculateCurrentSection(F)I

    move-result v4

    .line 516
    iget v5, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mCurrentSection:I

    if-eq v4, v5, :cond_7f

    .line 517
    iget-boolean v5, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->isTouchMove:Z

    if-eqz v5, :cond_41

    if-nez v3, :cond_43

    :cond_41
    if-nez v5, :cond_7f

    :cond_43
    if-eqz v5, :cond_47

    move v2, v1

    goto :goto_4f

    .line 521
    :cond_47
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-direct {p0, v2}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->getLimitPosition(F)F

    move-result v2

    .line 523
    :goto_4f
    invoke-direct {p0, v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->calculateProgress(F)F

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->progressFloat:F

    .line 524
    iput v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mCurrentSection:I

    .line 525
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbIntervalAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_68

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_65

    goto :goto_68

    .line 533
    :cond_65
    iput v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mToThumbCenterX:F

    goto :goto_71

    .line 527
    :cond_68
    :goto_68
    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbCenterX:F

    const-wide/16 v3, 0xc8

    const/4 v5, 0x0

    move-object v0, p0

    .line 526
    invoke-direct/range {v0 .. v5}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->startThumbIntervalAnimationHios(FFJZ)V

    .line 535
    :goto_71
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->onProgressChangedListener:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OnProgressChangedListener;

    if-eqz v1, :cond_e5

    .line 537
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->getProgress()I

    move-result v2

    .line 538
    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->progressFloat:F

    .line 535
    invoke-interface {v1, p0, v2, v3, v6}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OnProgressChangedListener;->onProgressChanged(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;IFZ)V

    goto :goto_e5

    .line 542
    :cond_7f
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbIntervalAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_98

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_8d

    goto :goto_98

    .line 569
    :cond_8d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->getLimitPosition(F)F

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mToThumbCenterX:F

    goto :goto_e5

    .line 543
    :cond_98
    :goto_98
    iget-boolean v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->isTouchMove:Z

    if-nez v1, :cond_ae

    .line 545
    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbCenterX:F

    .line 546
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-direct {p0, v2}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->getLimitPosition(F)F

    move-result v2

    const-wide/16 v3, 0xc8

    const/4 v5, 0x0

    move-object v0, p0

    .line 544
    invoke-direct/range {v0 .. v5}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->startThumbIntervalAnimationHios(FFJZ)V

    goto :goto_e5

    .line 551
    :cond_ae
    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mCurrentPointerPosition:F

    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mLastPointerPosition:F

    sub-float/2addr v1, v2

    const/4 v2, 0x2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/4 v2, 0x3

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 552
    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbCenterX:F

    add-float/2addr v2, v1

    .line 553
    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mLeft:F

    cmpg-float v3, v2, v1

    if-gez v3, :cond_c4

    :goto_c2
    move v2, v1

    goto :goto_cb

    .line 555
    :cond_c4
    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mRight:F

    cmpl-float v3, v2, v1

    if-lez v3, :cond_cb

    goto :goto_c2

    .line 558
    :cond_cb
    :goto_cb
    iput v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbCenterX:F

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 559
    invoke-static {p0, v1, v6, v2}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->calculateProgress$default(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;FILjava/lang/Object;)F

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->progressFloat:F

    .line 560
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->onProgressChangedListener:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OnProgressChangedListener;

    if-eqz v1, :cond_e2

    .line 562
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->getProgress()I

    move-result v2

    .line 563
    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->progressFloat:F

    .line 560
    invoke-interface {v1, p0, v2, v3, v6}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OnProgressChangedListener;->onProgressContinuousChanged(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;IFZ)V

    .line 566
    :cond_e2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 572
    :cond_e5
    :goto_e5
    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mCurrentPointerPosition:F

    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mLastPointerPosition:F

    .line 573
    iput-boolean v6, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->isTouchMove:Z

    :cond_eb
    return-void
.end method

.method private final onTouchMoveNonHIOS(Landroid/view/MotionEvent;)V
    .registers 5

    .line 597
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->calThumbCxWhenSeekStepSection(F)F

    move-result p1

    .line 598
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mPreThumbCenterX:F

    cmpg-float v0, p1, v0

    if-nez v0, :cond_f

    return-void

    .line 599
    :cond_f
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mPreThumbCenterX:F

    .line 600
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbCenterX:F

    const/4 p1, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 606
    invoke-static {p0, p1, v0, v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->calculateProgress$default(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;FILjava/lang/Object;)F

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->progressFloat:F

    .line 607
    invoke-static {p0, p1, v0, v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->calculateCurrentSection$default(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;FILjava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mCurrentSection:I

    .line 608
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 609
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->onProgressChangedListener:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OnProgressChangedListener;

    if-eqz p1, :cond_32

    .line 611
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->getProgress()I

    move-result v1

    .line 612
    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->progressFloat:F

    .line 609
    invoke-interface {p1, p0, v1, v2, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OnProgressChangedListener;->onProgressChanged(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;IFZ)V

    .line 615
    :cond_32
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->onProgressChangedListener:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OnProgressChangedListener;

    if-eqz p1, :cond_3f

    .line 617
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->getProgress()I

    move-result v1

    .line 618
    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->progressFloat:F

    .line 615
    invoke-interface {p1, p0, v1, v2, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OnProgressChangedListener;->onProgressContinuousChanged(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;IFZ)V

    :cond_3f
    return-void
.end method

.method private final secondTrackColor()I
    .registers 5

    .line 896
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 897
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 898
    sget v2, Lcom/transsion/widgetslib/R$attr;->os_platform_basic_color:I

    const/4 v3, 0x1

    .line 897
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 903
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mContext:Landroid/content/Context;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0

    .line 905
    :cond_1d
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/widgetslib/R$color;->os_platform_basic_color_hios:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method private final startThumbIntervalAnimationHios(FFJZ)V
    .registers 7

    const/4 v0, 0x1

    .line 656
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->isCenterXAnimation:Z

    .line 657
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbIntervalAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_e

    .line 658
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->createThumbIntervalAnimatorHios()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbIntervalAnimator:Landroid/animation/ValueAnimator;

    goto :goto_25

    .line 660
    :cond_e
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 661
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbIntervalAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 662
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->createThumbIntervalAnimatorHios()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbIntervalAnimator:Landroid/animation/ValueAnimator;

    .line 665
    :cond_25
    :goto_25
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbIntervalAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 666
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mFromThumbCenterX:F

    .line 667
    iput p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mToThumbCenterX:F

    .line 668
    iget p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mCurrentSourceTrackWidth:F

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mFromTrackWidth:F

    .line 669
    iput-boolean p5, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mFromUpEvent:Z

    .line 670
    iget p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mCurrentScaleFactor:F

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mFromScaleFactor:F

    .line 671
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbIntervalAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_58

    if-eqz p5, :cond_4d

    .line 673
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const p2, 0x3e4ccccd    # 0.2f

    const/high16 p3, 0x3f800000    # 1.0f

    const/4 p4, 0x0

    invoke-direct {p1, p4, p4, p2, p3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    goto :goto_52

    .line 675
    :cond_4d
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 672
    :goto_52
    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 677
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_58
    return-void
.end method

.method static synthetic startThumbIntervalAnimationHios$default(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;FFJZILjava/lang/Object;)V
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

    .line 649
    invoke-direct/range {v0 .. v5}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->startThumbIntervalAnimationHios(FFJZ)V

    return-void

    :cond_10
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: startThumbIntervalAnimationHios"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final thumbOutColor()I
    .registers 5

    .line 882
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 883
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 884
    sget v2, Lcom/transsion/widgetslib/R$attr;->os_platform_basic_color:I

    const/4 v3, 0x1

    .line 883
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 889
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mContext:Landroid/content/Context;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0

    .line 891
    :cond_1d
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/widgetslib/R$color;->os_platform_basic_color_hios:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final config(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;)V
    .registers 6

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 939
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->getMin()F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->min:F

    .line 940
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->getMax()F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->max:F

    .line 941
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->getProgress()F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->progressFloat:F

    .line 942
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->getFloatType()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->isFloatType:Z

    .line 943
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->getTrackSize()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mTrackSize:I

    .line 944
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->getTrackSize()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mCurrentSourceTrackWidth:F

    .line 945
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->getTrackSizeMax()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mTrackWidthMax:F

    .line 946
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->getSecondTrackSize()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSecondTrackSize:I

    .line 947
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->getThumbInWidth()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbInWidth:I

    .line 948
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->getThumbOutWidth()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbOutWidth:I

    .line 949
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->getDotsSize()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mDotsSize:I

    .line 950
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->getTextTopMargin()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mTextTopMargin:I

    .line 951
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->getTextBottomMargin()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mTextBottomMargin:I

    .line 952
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->getProcessMarginTopBottow()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mProcessMarginTopBottow:I

    .line 953
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->getTrackColor()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mTrackColor:I

    .line 954
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->getSecondTrackColor()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSecondTrackColor:I

    .line 955
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->getThumbOutColor()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbOutColor:I

    .line 956
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->getThumbInsideColor()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbInsideColor:I

    .line 957
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->getDotsColor()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mDotsColor:I

    .line 958
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->getDotsSelectedColor()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mDotsSelectedColor:I

    .line 959
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->getSectionCount()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionCount:I

    .line 960
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->getSectionTextSize()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionTextSize:I

    .line 961
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->getSectionTextColor()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionTextColor:I

    .line 962
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->getSectionTextInterval()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionTextInterval:I

    .line 963
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->getDisplayCharacters()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mDisplayCharacters:Z

    .line 964
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->initConfigByPriority()V

    .line 965
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->onProgressChangedListener:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OnProgressChangedListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_ae

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->getProgress()I

    move-result v2

    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->progressFloat:F

    invoke-interface {v0, p0, v2, v3, v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OnProgressChangedListener;->onProgressChanged(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;IFZ)V

    .line 966
    :cond_ae
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->onProgressChangedListener:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OnProgressChangedListener;

    if-eqz v0, :cond_bb

    .line 968
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->getProgress()I

    move-result v2

    .line 969
    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->progressFloat:F

    .line 966
    invoke-interface {v0, p0, v2, v3, v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OnProgressChangedListener;->onProgressContinuousChanged(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;IFZ)V

    :cond_bb
    const/4 v0, 0x0

    .line 972
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mOSSectionSeekBarBuilder:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;

    .line 973
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->getSecondTrackColorDisable()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSecondTrackColorDisable:I

    .line 974
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->getThumbOutColorDisable()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbOutColorDisable:I

    .line 975
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->getThumbInsideColorDisable()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbInsideColorDisable:I

    .line 976
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->getDotsSelectedColorDisable()I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mDotsSelectedColorDisable:I

    .line 977
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public getConfigBuilder()Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;
    .registers 2

    .line 932
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mOSSectionSeekBarBuilder:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;

    if-nez v0, :cond_b

    .line 933
    new-instance v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;-><init>(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mOSSectionSeekBarBuilder:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;

    .line 935
    :cond_b
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mOSSectionSeekBarBuilder:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final getMax()F
    .registers 1

    .line 42
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->max:F

    return p0
.end method

.method public final getMin()F
    .registers 1

    .line 40
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->min:F

    return p0
.end method

.method public final getOnProgressChangedListener()Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OnProgressChangedListener;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->onProgressChangedListener:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OnProgressChangedListener;

    return-object p0
.end method

.method public final getProgress()I
    .registers 1

    .line 817
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->progressFloat:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public final getProgressFloat()F
    .registers 1

    .line 44
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->progressFloat:F

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 3

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 255
    sget-boolean v0, Lcom/transsion/widgetslib/util/Utils;->IS_HIOS:Z

    if-eqz v0, :cond_10

    .line 256
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->drawHIOS(Landroid/graphics/Canvas;)V

    return-void

    .line 258
    :cond_10
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->drawNonHIOS(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 9

    .line 210
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 211
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbOutWidth:I

    add-int/2addr p2, v0

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mProcessMarginTopBottow:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    .line 212
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->calculateMaxHeight()F

    move-result v0

    .line 213
    iget-boolean v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mDisplayCharacters:Z

    if-eqz v1, :cond_24

    .line 214
    iget v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mTextTopMargin:I

    float-to-int v0, v0

    add-int/2addr v1, v0

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mTextBottomMargin:I

    add-int/2addr v1, v0

    add-int/2addr p2, v1

    .line 216
    :cond_24
    sget-object v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->Companion:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$Companion;

    const/16 v1, 0xb4

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$Companion;->dp2px(I)I

    move-result v0

    invoke-static {v0, p1}, Landroid/view/View;->resolveSize(II)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 217
    iget p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbOutWidth:I

    div-int/lit8 p1, p1, 0x2

    .line 218
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    add-int/2addr p2, p1

    int-to-float p2, p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mLeft:F

    .line 219
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr p2, v0

    sub-int/2addr p2, p1

    int-to-float p2, p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mRight:F

    .line 220
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionTextSize:I

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 221
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionTextArray:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    const/4 v0, 0x0

    if-lez p2, :cond_75

    .line 222
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mRectText:Landroid/graphics/Rect;

    invoke-virtual {p2, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 223
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionTextArray:Landroid/util/SparseArray;

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 224
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mRectText:Landroid/graphics/Rect;

    invoke-virtual {v1, p2, v0, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    :cond_75
    int-to-double p1, p1

    .line 226
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mRectText:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-double v3, v1

    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    double-to-float v1, v3

    .line 228
    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mLeft:F

    .line 229
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionTextArray:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionCount:I

    add-int/lit8 v3, v3, 0x1

    if-eq v1, v3, :cond_ae

    .line 230
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mRectText:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 231
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionTextArray:Landroid/util/SparseArray;

    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionCount:I

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 232
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mRectText:Landroid/graphics/Rect;

    invoke-virtual {v3, v1, v0, v4, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 234
    :cond_ae
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mRectText:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    float-to-double v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    double-to-float p1, p1

    .line 235
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr p2, p1

    iput p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mRight:F

    .line 236
    iget p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mLeft:F

    sub-float/2addr p2, p1

    iput p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mTrackLength:F

    const/high16 p1, 0x3f800000    # 1.0f

    mul-float/2addr p2, p1

    .line 237
    iget p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionCount:I

    int-to-float p1, p1

    div-float/2addr p2, p1

    iput p2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionOffset:F

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 870
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_2b

    .line 872
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "progress"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->progressFloat:F

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 873
    invoke-static {p0, v2, v0, v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->calculateCurrentSection$default(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;FILjava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mCurrentSection:I

    .line 874
    const-string v0, "save_instance"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 875
    iget p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->progressFloat:F

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->setProgress(F)V

    return-void

    .line 878
    :cond_2b
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .line 863
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 864
    const-string v1, "save_instance"

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 865
    const-string v1, "progress"

    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->progressFloat:F

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 432
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 433
    new-instance p1, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 437
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_93

    if-eq v0, v2, :cond_2c

    const/4 v3, 0x2

    if-eq v0, v3, :cond_18

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2c

    :cond_15
    :goto_15
    move-object v4, p0

    goto/16 :goto_b3

    .line 453
    :cond_18
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->isThumbOnDragging:Z

    if-eqz v0, :cond_15

    .line 455
    sget-boolean v0, Lcom/transsion/widgetslib/util/Utils;->IS_HIOS:Z

    if-eqz v0, :cond_28

    .line 456
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->onTouchMoveHIOS(Landroid/view/MotionEvent;)V

    goto :goto_15

    .line 458
    :cond_28
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->onTouchMoveNonHIOS(Landroid/view/MotionEvent;)V

    goto :goto_15

    .line 464
    :cond_2c
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 465
    iput-boolean v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->isThumbOnDragging:Z

    .line 466
    sget-boolean v0, Lcom/transsion/widgetslib/util/Utils;->IS_HIOS:Z

    if-eqz v0, :cond_70

    .line 467
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->calculateProgress(F)F

    move-result v0

    .line 468
    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->calculateCurrentSection(F)I

    move-result v0

    .line 469
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-direct {p0, v3}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->calThumbCxWhenSeekStepSection(F)F

    move-result v6

    .line 470
    invoke-direct {p0, v6}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->calculateProgress(F)F

    move-result v3

    iput v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->progressFloat:F

    .line 471
    iget v3, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mCurrentSection:I

    if-eq v3, v0, :cond_66

    .line 472
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mCurrentSection:I

    .line 473
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->onProgressChangedListener:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OnProgressChangedListener;

    if-eqz v0, :cond_66

    .line 475
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->getProgress()I

    move-result v3

    .line 476
    iget v4, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->progressFloat:F

    .line 473
    invoke-interface {v0, p0, v3, v4, v2}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OnProgressChangedListener;->onProgressChanged(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;IFZ)V

    .line 481
    :cond_66
    iget v5, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbCenterX:F

    const-wide/16 v7, 0xfa

    const/4 v9, 0x1

    move-object v4, p0

    .line 480
    invoke-direct/range {v4 .. v9}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->startThumbIntervalAnimationHios(FFJZ)V

    goto :goto_8b

    :cond_70
    move-object v4, p0

    .line 487
    iget-object p0, v4, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->onProgressChangedListener:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OnProgressChangedListener;

    if-eqz p0, :cond_7e

    .line 489
    invoke-virtual {v4}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->getProgress()I

    move-result v0

    .line 490
    iget v3, v4, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->progressFloat:F

    .line 487
    invoke-interface {p0, v4, v0, v3, v2}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OnProgressChangedListener;->onProgressChanged(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;IFZ)V

    .line 493
    :cond_7e
    iget-object p0, v4, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->onProgressChangedListener:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OnProgressChangedListener;

    if-eqz p0, :cond_8b

    .line 495
    invoke-virtual {v4}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->getProgress()I

    move-result v0

    .line 496
    iget v3, v4, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->progressFloat:F

    .line 493
    invoke-interface {p0, v4, v0, v3, v2}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OnProgressChangedListener;->onProgressContinuousChanged(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;IFZ)V

    .line 500
    :cond_8b
    :goto_8b
    iget-object p0, v4, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->onProgressChangedListener:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OnProgressChangedListener;

    if-eqz p0, :cond_b3

    invoke-interface {p0, v4}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OnProgressChangedListener;->onStopTrackingTouch(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)V

    goto :goto_b3

    :cond_93
    move-object v4, p0

    .line 439
    invoke-virtual {v4}, Landroid/view/View;->performClick()Z

    .line 440
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 441
    invoke-virtual {v4}, Landroid/view/View;->isEnabled()Z

    move-result p0

    iput-boolean p0, v4, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->isThumbOnDragging:Z

    .line 442
    iput-boolean v1, v4, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->isTouchMove:Z

    if-eqz p0, :cond_b3

    .line 444
    sget-boolean p0, Lcom/transsion/widgetslib/util/Utils;->IS_HIOS:Z

    if-eqz p0, :cond_b0

    .line 445
    invoke-direct {v4, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->onTouchDownHIOS(Landroid/view/MotionEvent;)V

    goto :goto_b3

    .line 447
    :cond_b0
    invoke-direct {v4, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->onTouchDownNonHIOS(Landroid/view/MotionEvent;)V

    .line 504
    :cond_b3
    :goto_b3
    iget-boolean p0, v4, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->isThumbOnDragging:Z

    if-nez p0, :cond_bf

    invoke-super {v4, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_be

    goto :goto_bf

    :cond_be
    return v1

    :cond_bf
    :goto_bf
    return v2
.end method

.method public final setCustomSectionTextArray(Lkotlin/jvm/functions/Function2;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2;",
            ")V"
        }
    .end annotation

    const-string v0, "onCustomize"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 852
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionTextArray:Landroid/util/SparseArray;

    invoke-interface {p1, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionTextArray:Landroid/util/SparseArray;

    .line 853
    iget p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionCount:I

    if-ltz p1, :cond_2e

    const/4 v0, 0x0

    .line 854
    :goto_1a
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionTextArray:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_29

    .line 855
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionTextArray:Landroid/util/SparseArray;

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_29
    if-eq v0, p1, :cond_2e

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 858
    :cond_2e
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 859
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setOnProgressChangedListener(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OnProgressChangedListener;)V
    .registers 2

    .line 78
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->onProgressChangedListener:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OnProgressChangedListener;

    return-void
.end method

.method public final setProgress(F)V
    .registers 5

    .line 804
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mDelta:F

    div-float/2addr p1, v0

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionCount:I

    int-to-float v0, v0

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mDelta:F

    mul-float/2addr p1, v0

    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSectionCount:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->progressFloat:F

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 805
    invoke-static {p0, v1, p1, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->calculateCurrentSection$default(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;FILjava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mCurrentSection:I

    .line 806
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->onProgressChangedListener:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OnProgressChangedListener;

    const/4 v0, 0x0

    if-eqz p1, :cond_2c

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->getProgress()I

    move-result v1

    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->progressFloat:F

    invoke-interface {p1, p0, v1, v2, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OnProgressChangedListener;->onProgressChanged(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;IFZ)V

    .line 807
    :cond_2c
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->onProgressChangedListener:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OnProgressChangedListener;

    if-eqz p1, :cond_39

    .line 809
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->getProgress()I

    move-result v1

    .line 810
    iget v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->progressFloat:F

    .line 807
    invoke-interface {p1, p0, v1, v2, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OnProgressChangedListener;->onProgressContinuousChanged(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;IFZ)V

    .line 813
    :cond_39
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public final setSecondTrackColor(I)V
    .registers 3

    .line 827
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSecondTrackColor:I

    if-eq v0, p1, :cond_9

    .line 828
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mSecondTrackColor:I

    .line 829
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_9
    return-void
.end method

.method public final setThumbInsideColor(I)V
    .registers 3

    .line 841
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbInsideColor:I

    if-eq v0, p1, :cond_9

    .line 842
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbInsideColor:I

    .line 843
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_9
    return-void
.end method

.method public final setThumbInsideUnAbleColorHios(I)V
    .registers 2

    return-void
.end method

.method public final setThumbOutColor(I)V
    .registers 3

    .line 834
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbOutColor:I

    if-eq v0, p1, :cond_9

    .line 835
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mThumbOutColor:I

    .line 836
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_9
    return-void
.end method

.method public final setTrackColor(I)V
    .registers 3

    .line 820
    iget v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mTrackColor:I

    if-eq v0, p1, :cond_9

    .line 821
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mTrackColor:I

    .line 822
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_9
    return-void
.end method
