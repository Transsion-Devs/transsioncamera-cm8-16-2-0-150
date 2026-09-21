.class public abstract Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;
.super Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;
.source "SourceFile"


# static fields
.field private static final DEVIATION:I = 0x14

.field private static final EXTRA_CLICKABLE_AREA:F = 10.0f

.field protected static final HALF_SCROLLER_DURATION:I = 0x1f4

.field private static final MIN_CLICK_AREA:F = 30.0f

.field private static final SCROLL_COEFFICIENT:F = 1.2f

.field private static final STRETCH_RELEASE_FACTOR:F = 5.0f

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mBoundaryDistance:I

.field private mCircleLineGap:I

.field private mCirclePaint:Landroid/graphics/Paint;

.field private mCircleRadius:F

.field private mCountRange:F

.field private mCountWidth:F

.field private mCurTextLength:F

.field private mCurrentNumPaint:Landroid/graphics/Paint;

.field private mCurrentNumSize:I

.field protected mCurrentScaleInfo:Lcom/transsion/camera/app/ui/widget/ScrollerScaleInfo;

.field private mCurrentUnitPaint:Landroid/graphics/Paint;

.field private mCurrentUnitSize:I

.field protected mDefaultScaleInfo:Lcom/transsion/camera/app/ui/widget/ScrollerScaleInfo;

.field private mDefaultValue:Ljava/lang/String;

.field private mDefaultValueBitmap:Landroid/graphics/Bitmap;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawableIndex:I

.field private mDrawablePaint:Landroid/graphics/Paint;

.field private mEdgeFadeEnable:Z

.field private mFadeLength:F

.field private mFadeLineMargin:F

.field private mFadePaint:Landroid/graphics/Paint;

.field private mFirstScaleCenter:F

.field private mHighLightDrawable:Landroid/graphics/drawable/Drawable;

.field private mHighlightScaleWidth:F

.field protected mIsCollapseStatus:Z

.field private mIsContinuousParam:Z

.field protected mIsLeftStretch:Z

.field protected mIsRightStretch:Z

.field private mIsScalesExceedValues:Z

.field private mIsShowMidValue:Z

.field private mLastScaleCenter:F

.field protected mLeftEdgeEffect:Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;

.field private mLeftGradient:Landroid/graphics/LinearGradient;

.field private mLineBitmapMargin:F

.field private mLineHighlightBitmapMargin:F

.field private mLineHighlightTextMargin:F

.field private mLineStep:I

.field private mLineTextMargin:F

.field protected mMidScaleInfo:Lcom/transsion/camera/app/ui/widget/ScrollerScaleInfo;

.field private final mMinMaxScaleInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/widget/ScrollerScaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMinScale:I

.field private mNumStep:I

.field protected mRightEdgeEffect:Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;

.field private mRightGradient:Landroid/graphics/LinearGradient;

.field private mScaleValuesCount:I

.field private mScaleWidth:F

.field private mScrollState:I

.field private mScrollerScaleLength:F

.field private mTextAlpha:F

.field private mTextColorWhite:I

.field private mTranslateX:F

.field private mUnit:Ljava/lang/String;

.field private mWhiteScaleOffset:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 39
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ScrollerRulerViewUI5"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 119
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 123
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 127
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mMinMaxScaleInfos:Ljava/util/List;

    const/high16 p2, -0x40800000    # -1.0f

    .line 51
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCountRange:F

    .line 60
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mFirstScaleCenter:F

    .line 61
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mLastScaleCenter:F

    const/4 p2, 0x0

    .line 62
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCurTextLength:F

    const/high16 p2, 0x3f800000    # 1.0f

    .line 63
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mTextAlpha:F

    const/4 p2, 0x0

    .line 75
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mTextColorWhite:I

    .line 81
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mIsCollapseStatus:Z

    .line 82
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mIsLeftStretch:Z

    .line 83
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mIsRightStretch:Z

    .line 84
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mIsShowMidValue:Z

    .line 87
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mEdgeFadeEnable:Z

    .line 106
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mScrollState:I

    .line 128
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->init(Landroid/content/Context;)V

    return-void
.end method

.method private calculateCurrentNameByIndex(I)Ljava/lang/String;
    .registers 3

    .line 661
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mIsScalesExceedValues:Z

    if-eqz v0, :cond_f

    .line 662
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mMinScale:I

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mWhiteScaleOffset:I

    mul-int/2addr p1, p0

    add-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 664
    :cond_f
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mMinScale:I

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mNumStep:I

    mul-int/2addr p1, p0

    add-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private calculateDrawableAlphaByDistance(FFI)V
    .registers 6

    const/high16 v0, 0x41a00000    # 20.0f

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_20

    sub-float/2addr p1, v0

    const/high16 v0, 0x42200000    # 40.0f

    add-float/2addr p2, v0

    div-float/2addr p1, p2

    .line 1055
    invoke-static {p3}, Landroid/graphics/Color;->alpha(I)I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, p1

    float-to-int p1, p2

    .line 1056
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mDrawablePaint:Landroid/graphics/Paint;

    invoke-static {p3}, Landroid/graphics/Color;->alpha(I)I

    move-result p2

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void

    .line 1058
    :cond_20
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mDrawablePaint:Landroid/graphics/Paint;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method private calculateFakeScaleCenter(Landroid/graphics/Canvas;F)V
    .registers 21

    move-object/from16 v0, p0

    const/4 v1, 0x0

    move v2, v1

    .line 1288
    :goto_4
    iget v3, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLineNumbers:I

    if-gt v1, v3, :cond_f5

    .line 1289
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->getStartY()F

    move-result v6

    .line 1290
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->getEndY()F

    move-result v8

    int-to-float v3, v1

    .line 1292
    iget v4, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mScaleWidth:F

    mul-float/2addr v3, v4

    iget v5, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScaleGap:I

    mul-int/2addr v5, v1

    int-to-float v5, v5

    add-float/2addr v3, v5

    invoke-virtual {v0, v1, v4}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->getCenterOffsetForAnim(IF)F

    move-result v4

    sub-float/2addr v3, v4

    if-nez v1, :cond_22

    .line 1294
    iput v3, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mFirstScaleCenter:F

    :cond_22
    move/from16 v10, p2

    .line 1297
    invoke-direct {v0, v3, v10}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->updateStretchCenter(FF)F

    move-result v5

    .line 1299
    iget v3, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLineNumbers:I

    if-ne v1, v3, :cond_34

    .line 1300
    iget v3, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mFirstScaleCenter:F

    sub-float v3, v5, v3

    iput v3, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mScrollerScaleLength:F

    .line 1301
    iput v5, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mLastScaleCenter:F

    .line 1304
    :cond_34
    invoke-direct {v0, v1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->isScaleShouldShow(I)Z

    move-result v3

    const/high16 v11, 0x40000000    # 2.0f

    if-eqz v3, :cond_ca

    .line 1305
    invoke-direct {v0, v5}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->setPoints(F)V

    .line 1306
    iget-object v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLinePaint:Landroid/graphics/Paint;

    move v7, v5

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1307
    iget v3, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mScaleWidth:F

    iget v4, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mStrokePaintWidth:I

    int-to-float v7, v4

    add-float/2addr v7, v3

    div-float/2addr v7, v11

    sub-float v13, v5, v7

    int-to-float v7, v4

    div-float/2addr v7, v11

    sub-float v14, v6, v7

    int-to-float v6, v4

    add-float/2addr v3, v6

    div-float/2addr v3, v11

    add-float v15, v5, v3

    int-to-float v3, v4

    div-float/2addr v3, v11

    add-float v16, v8, v3

    iget-object v3, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mStrokeLinePaint:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move-object/from16 v17, v3

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1310
    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->getDurationItemByIndex(I)Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;

    move-result-object v3

    if-eqz v3, :cond_c7

    .line 1313
    iget-object v4, v3, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;->name:Ljava/lang/String;

    .line 1314
    iget-object v3, v3, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;->value:Ljava/lang/String;

    iget-object v6, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mDefaultValue:Ljava/lang/String;

    invoke-static {v3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7e

    .line 1315
    invoke-direct {v0, v2, v4, v5}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->saveItemInfo(ILjava/lang/String;F)Lcom/transsion/camera/app/ui/widget/ScrollerScaleInfo;

    move-result-object v3

    iput-object v3, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mDefaultScaleInfo:Lcom/transsion/camera/app/ui/widget/ScrollerScaleInfo;

    .line 1318
    :cond_7e
    iget-boolean v3, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mIsValueAuto:Z

    if-nez v3, :cond_b0

    iget-object v3, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCurrentItem:Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;

    if-eqz v3, :cond_b0

    iget-object v3, v3, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;->name:Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b0

    .line 1319
    invoke-direct {v0, v2}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->isDrawableScale(I)Z

    move-result v3

    if-eqz v3, :cond_a2

    .line 1320
    iget-object v3, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mHighLightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v3}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iput v3, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCurTextLength:F

    goto :goto_aa

    .line 1322
    :cond_a2
    iget-object v3, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCurrentNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    iput v3, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCurTextLength:F

    .line 1325
    :goto_aa
    invoke-direct {v0, v2, v4, v5}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->saveItemInfo(ILjava/lang/String;F)Lcom/transsion/camera/app/ui/widget/ScrollerScaleInfo;

    move-result-object v3

    iput-object v3, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCurrentScaleInfo:Lcom/transsion/camera/app/ui/widget/ScrollerScaleInfo;

    .line 1328
    :cond_b0
    invoke-direct {v0, v1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->isScaleValueShouldShow(I)Z

    move-result v3

    if-eqz v3, :cond_c7

    if-eqz v1, :cond_c4

    .line 1329
    iget v3, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLineNumbers:I

    if-ne v1, v3, :cond_bd

    goto :goto_c4

    .line 1332
    :cond_bd
    invoke-direct {v0, v2, v4, v5}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->saveItemInfo(ILjava/lang/String;F)Lcom/transsion/camera/app/ui/widget/ScrollerScaleInfo;

    move-result-object v3

    iput-object v3, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mMidScaleInfo:Lcom/transsion/camera/app/ui/widget/ScrollerScaleInfo;

    goto :goto_c7

    .line 1330
    :cond_c4
    :goto_c4
    invoke-direct {v0, v2, v4, v5}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->saveMinMaxItemInfoList(ILjava/lang/String;F)V

    :cond_c7
    :goto_c7
    add-int/lit8 v2, v2, 0x1

    goto :goto_f1

    .line 1339
    :cond_ca
    iget-object v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mAlphaLinePaint:Landroid/graphics/Paint;

    move v7, v5

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1340
    iget v3, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mScaleWidth:F

    iget v4, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mStrokePaintWidth:I

    int-to-float v7, v4

    add-float/2addr v7, v3

    div-float/2addr v7, v11

    sub-float v13, v5, v7

    int-to-float v7, v4

    div-float/2addr v7, v11

    sub-float v14, v6, v7

    int-to-float v6, v4

    add-float/2addr v3, v6

    div-float/2addr v3, v11

    add-float v15, v5, v3

    int-to-float v3, v4

    div-float/2addr v3, v11

    add-float v16, v8, v3

    iget-object v3, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mStrokeLinePaint:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move-object/from16 v17, v3

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_f1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    :cond_f5
    return-void
.end method

.method private calculateHotspotClickPos(I)I
    .registers 14

    .line 274
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mMinMaxScaleInfos:Ljava/util/List;

    if-eqz v0, :cond_17d

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_17d

    .line 275
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mMinMaxScaleInfos:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/ScrollerScaleInfo;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/widget/ScrollerScaleInfo;->text:Ljava/lang/String;

    .line 276
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 277
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mMinMaxScaleInfos:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/ui/widget/ScrollerScaleInfo;

    iget v3, v3, Lcom/transsion/camera/app/ui/widget/ScrollerScaleInfo;->center:F

    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getFinalX()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    .line 279
    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mMinMaxScaleInfos:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/app/ui/widget/ScrollerScaleInfo;

    iget-object v4, v4, Lcom/transsion/camera/app/ui/widget/ScrollerScaleInfo;->text:Ljava/lang/String;

    .line 280
    iget-object v5, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    .line 281
    iget-object v5, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mMinMaxScaleInfos:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/camera/app/ui/widget/ScrollerScaleInfo;

    iget v5, v5, Lcom/transsion/camera/app/ui/widget/ScrollerScaleInfo;->center:F

    iget-object v6, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getFinalX()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x41f00000    # 30.0f

    cmpg-float v7, v0, v6

    const/high16 v8, 0x41200000    # 10.0f

    const/high16 v9, 0x40000000    # 2.0f

    if-gtz v7, :cond_7d

    .line 283
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->isOutOfLeftBoundary(F)Z

    move-result v7

    if-nez v7, :cond_7d

    iget v7, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mStartX:F

    div-float v10, v0, v9

    sub-float v11, v3, v10

    sub-float/2addr v11, v8

    cmpl-float v11, v7, v11

    if-ltz v11, :cond_7d

    add-float/2addr v10, v3

    add-float/2addr v10, v8

    cmpg-float v7, v7, v10

    if-gtz v7, :cond_7d

    .line 286
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mPoints:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :cond_7d
    cmpl-float v7, v0, v6

    if-lez v7, :cond_a2

    .line 288
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->isOutOfLeftBoundary(F)Z

    move-result v7

    if-nez v7, :cond_a2

    iget v7, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mStartX:F

    div-float v10, v0, v9

    sub-float v11, v3, v10

    cmpl-float v11, v7, v11

    if-ltz v11, :cond_a2

    add-float/2addr v10, v3

    cmpg-float v7, v7, v10

    if-gtz v7, :cond_a2

    .line 291
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mPoints:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 293
    :cond_a2
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->isOutOfLeftBoundary(F)Z

    move-result v7

    if-eqz v7, :cond_b2

    iget v7, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mStartX:F

    iget v10, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mBoundaryDistance:I

    int-to-float v10, v10

    add-float/2addr v10, v0

    cmpg-float v7, v7, v10

    if-lez v7, :cond_c7

    .line 294
    :cond_b2
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->isOutOfLeftBoundary(F)Z

    move-result v7

    if-nez v7, :cond_d3

    iget v7, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mStartX:F

    div-float v10, v0, v9

    sub-float v11, v3, v10

    cmpl-float v11, v7, v11

    if-ltz v11, :cond_d3

    add-float/2addr v3, v10

    cmpg-float v3, v7, v3

    if-gtz v3, :cond_d3

    .line 297
    :cond_c7
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mPoints:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 299
    :cond_d3
    invoke-direct {p0, v4}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->isOutOfRightBoundary(F)Z

    move-result v2

    if-eqz v2, :cond_e8

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mStartX:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v7, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mBoundaryDistance:I

    sub-int/2addr v3, v7

    int-to-float v3, v3

    sub-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-gez v2, :cond_fd

    .line 300
    :cond_e8
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->isOutOfRightBoundary(F)Z

    move-result v2

    if-nez v2, :cond_10e

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mStartX:F

    div-float v3, v4, v9

    sub-float v7, v5, v3

    cmpl-float v7, v2, v7

    if-ltz v7, :cond_10e

    add-float/2addr v5, v3

    cmpg-float v2, v2, v5

    if-gtz v2, :cond_10e

    .line 303
    :cond_fd
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mPoints:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 306
    :cond_10e
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mMidScaleInfo:Lcom/transsion/camera/app/ui/widget/ScrollerScaleInfo;

    if-eqz v1, :cond_17d

    .line 307
    iget-object v1, v1, Lcom/transsion/camera/app/ui/widget/ScrollerScaleInfo;->text:Ljava/lang/String;

    .line 308
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 309
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mMidScaleInfo:Lcom/transsion/camera/app/ui/widget/ScrollerScaleInfo;

    iget v3, v2, Lcom/transsion/camera/app/ui/widget/ScrollerScaleInfo;->index:I

    .line 310
    iget v2, v2, Lcom/transsion/camera/app/ui/widget/ScrollerScaleInfo;->center:F

    iget-object v5, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getFinalX()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v2, v5

    .line 311
    iget v5, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mBoundaryDistance:I

    int-to-float v5, v5

    add-float/2addr v5, v0

    cmpl-float v0, v2, v5

    if-lez v0, :cond_17d

    .line 312
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v5, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mBoundaryDistance:I

    sub-int/2addr v0, v5

    int-to-float v0, v0

    sub-float/2addr v0, v4

    cmpg-float v0, v2, v0

    if-gez v0, :cond_17d

    cmpg-float v0, v1, v6

    if-gtz v0, :cond_15e

    .line 313
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mStartX:F

    div-float v4, v1, v9

    sub-float v5, v2, v4

    sub-float/2addr v5, v8

    cmpl-float v5, v0, v5

    if-ltz v5, :cond_15e

    add-float/2addr v4, v2

    add-float/2addr v4, v8

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_15e

    .line 316
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mPoints:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :cond_15e
    cmpl-float v0, v1, v6

    if-lez v0, :cond_17d

    .line 318
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mStartX:F

    div-float/2addr v1, v9

    sub-float v4, v2, v1

    cmpl-float v4, v0, v4

    if-ltz v4, :cond_17d

    add-float/2addr v2, v1

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_17d

    .line 321
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mPoints:Ljava/util/List;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_17d
    return p1
.end method

.method private calculateRealScaleCenter(Landroid/graphics/Canvas;F)V
    .registers 23

    move-object/from16 v0, p0

    move/from16 v1, p2

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    .line 1350
    :goto_8
    iget v6, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLineNumbers:I

    if-gt v3, v6, :cond_11a

    .line 1352
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->getStartY()F

    move-result v9

    .line 1353
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->getEndY()F

    move-result v11

    .line 1355
    invoke-direct {v0, v3}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->isScaleShouldShow(I)Z

    move-result v6

    const/4 v13, 0x1

    if-eqz v6, :cond_5c

    int-to-float v6, v4

    .line 1356
    iget v7, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mScaleWidth:F

    iget v8, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScaleGap:I

    int-to-float v8, v8

    add-float/2addr v8, v7

    mul-float/2addr v6, v8

    .line 1357
    invoke-virtual {v0, v3, v7}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->getCenterOffsetForAnim(IF)F

    move-result v7

    sub-float/2addr v6, v7

    if-nez v3, :cond_2c

    .line 1359
    iput v6, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mFirstScaleCenter:F

    .line 1361
    :cond_2c
    invoke-direct {v0, v6, v1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->updateStretchCenter(FF)F

    move-result v8

    .line 1363
    iget-object v12, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLinePaint:Landroid/graphics/Paint;

    move v10, v8

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1364
    iget v6, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mScaleWidth:F

    iget v7, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mStrokePaintWidth:I

    int-to-float v10, v7

    add-float/2addr v10, v6

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v10, v12

    sub-float v15, v8, v10

    int-to-float v10, v7

    div-float/2addr v10, v12

    sub-float v16, v9, v10

    int-to-float v9, v7

    add-float/2addr v6, v9

    div-float/2addr v6, v12

    add-float v17, v8, v6

    int-to-float v6, v7

    div-float/2addr v6, v12

    add-float v18, v11, v6

    iget-object v6, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mStrokeLinePaint:Landroid/graphics/Paint;

    move-object/from16 v14, p1

    move-object/from16 v19, v6

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_88

    .line 1368
    :cond_5c
    iget v6, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScaleGap:I

    int-to-float v7, v6

    iget v8, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mScaleWidth:F

    iget v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mLineStep:I

    add-int/lit8 v10, v9, -0x1

    int-to-float v10, v10

    mul-float/2addr v10, v8

    sub-float/2addr v7, v10

    int-to-float v10, v9

    const/high16 v11, 0x3f800000    # 1.0f

    mul-float/2addr v10, v11

    div-float/2addr v7, v10

    .line 1369
    rem-int v10, v3, v9

    int-to-float v10, v10

    mul-float/2addr v7, v10

    .line 1370
    rem-int v9, v3, v9

    sub-int/2addr v9, v13

    int-to-float v9, v9

    mul-float/2addr v9, v8

    int-to-float v10, v4

    mul-float/2addr v10, v8

    add-int/lit8 v11, v4, -0x1

    mul-int/2addr v6, v11

    int-to-float v6, v6

    add-float/2addr v10, v6

    add-float/2addr v10, v7

    add-float/2addr v10, v9

    .line 1372
    invoke-virtual {v0, v3, v8}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->getCenterOffsetForAnim(IF)F

    move-result v6

    sub-float/2addr v10, v6

    .line 1373
    invoke-direct {v0, v10, v1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->updateStretchCenter(FF)F

    move-result v8

    .line 1376
    :goto_88
    iget v6, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLineNumbers:I

    if-ne v3, v6, :cond_94

    .line 1377
    iget v6, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mFirstScaleCenter:F

    sub-float v6, v8, v6

    iput v6, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mScrollerScaleLength:F

    .line 1378
    iput v8, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mLastScaleCenter:F

    .line 1382
    :cond_94
    iget-boolean v6, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mIsContinuousParam:Z

    if-eqz v6, :cond_aa

    .line 1383
    iget v6, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mNumStep:I

    iget v7, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mWhiteScaleOffset:I

    iget v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mLineStep:I

    div-int/2addr v7, v9

    div-int/2addr v6, v7

    .line 1384
    rem-int v6, v3, v6

    if-nez v6, :cond_a8

    .line 1385
    invoke-direct {v0, v8}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->setPoints(F)V

    goto :goto_ad

    :cond_a8
    move v13, v2

    goto :goto_af

    .line 1390
    :cond_aa
    invoke-direct {v0, v8}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->setPoints(F)V

    :goto_ad
    add-int/lit8 v5, v5, 0x1

    :goto_af
    if-eqz v13, :cond_116

    if-lez v5, :cond_116

    add-int/lit8 v6, v5, -0x1

    .line 1398
    invoke-virtual {v0, v6}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->getDurationItemByIndex(I)Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;

    move-result-object v6

    if-eqz v6, :cond_116

    .line 1401
    iget-object v7, v6, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;->name:Ljava/lang/String;

    .line 1402
    iget-object v6, v6, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;->value:Ljava/lang/String;

    iget-object v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mDefaultValue:Ljava/lang/String;

    invoke-static {v6, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_cd

    .line 1403
    invoke-direct {v0, v3, v7, v8}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->saveItemInfo(ILjava/lang/String;F)Lcom/transsion/camera/app/ui/widget/ScrollerScaleInfo;

    move-result-object v6

    iput-object v6, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mDefaultScaleInfo:Lcom/transsion/camera/app/ui/widget/ScrollerScaleInfo;

    .line 1406
    :cond_cd
    iget-boolean v6, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mIsValueAuto:Z

    if-nez v6, :cond_ff

    iget-object v6, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCurrentItem:Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;

    if-eqz v6, :cond_ff

    iget-object v6, v6, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;->name:Ljava/lang/String;

    invoke-static {v7, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_ff

    .line 1407
    invoke-direct {v0, v3}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->isDrawableScale(I)Z

    move-result v6

    if-eqz v6, :cond_f1

    .line 1408
    iget-object v6, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mHighLightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v6}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iput v6, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCurTextLength:F

    goto :goto_f9

    .line 1410
    :cond_f1
    iget-object v6, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCurrentNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    iput v6, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCurTextLength:F

    .line 1413
    :goto_f9
    invoke-direct {v0, v3, v7, v8}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->saveItemInfo(ILjava/lang/String;F)Lcom/transsion/camera/app/ui/widget/ScrollerScaleInfo;

    move-result-object v6

    iput-object v6, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCurrentScaleInfo:Lcom/transsion/camera/app/ui/widget/ScrollerScaleInfo;

    .line 1416
    :cond_ff
    invoke-direct {v0, v3}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->isScaleValueShouldShow(I)Z

    move-result v6

    if-eqz v6, :cond_116

    if-eqz v3, :cond_113

    .line 1417
    iget v6, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLineNumbers:I

    if-ne v3, v6, :cond_10c

    goto :goto_113

    .line 1420
    :cond_10c
    invoke-direct {v0, v3, v7, v8}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->saveItemInfo(ILjava/lang/String;F)Lcom/transsion/camera/app/ui/widget/ScrollerScaleInfo;

    move-result-object v6

    iput-object v6, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mMidScaleInfo:Lcom/transsion/camera/app/ui/widget/ScrollerScaleInfo;

    goto :goto_116

    .line 1418
    :cond_113
    :goto_113
    invoke-direct {v0, v3, v7, v8}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->saveMinMaxItemInfoList(ILjava/lang/String;F)V

    :cond_116
    :goto_116
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_8

    :cond_11a
    return-void
.end method

.method private calculateTextAlphaByDistance(FFI)V
    .registers 8

    const/high16 v0, 0x41a00000    # 20.0f

    cmpl-float v1, p1, v0

    const/high16 v2, 0x40800000    # 4.0f

    const/high16 v3, 0x3f800000    # 1.0f

    if-ltz v1, :cond_3e

    sub-float/2addr p1, v0

    const/high16 v0, 0x42200000    # 40.0f

    add-float/2addr p2, v0

    div-float/2addr p1, p2

    .line 1038
    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mIsCollapseStatus:Z

    if-eqz p2, :cond_19

    .line 1039
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/graphics/Paint;->clearShadowLayer()V

    goto :goto_26

    .line 1041
    :cond_19
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->scroller_text_shadow_color:I

    .line 1042
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 1041
    invoke-virtual {p2, v2, v3, v3, v0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 1044
    :goto_26
    invoke-static {p3}, Landroid/graphics/Color;->alpha(I)I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, p1

    iget p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mTextAlpha:F

    mul-float/2addr p2, p1

    float-to-int p1, p2

    .line 1045
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextPaint:Landroid/graphics/Paint;

    invoke-static {p3}, Landroid/graphics/Color;->alpha(I)I

    move-result p2

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void

    .line 1047
    :cond_3e
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextPaint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    invoke-virtual {p1, v2, v3, v3, p2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 1048
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method private drawCurrentItemText(Landroid/graphics/Canvas;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1201
    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCurrentScaleInfo:Lcom/transsion/camera/app/ui/widget/ScrollerScaleInfo;

    if-eqz v2, :cond_1fd

    .line 1202
    iget v2, v2, Lcom/transsion/camera/app/ui/widget/ScrollerScaleInfo;->index:I

    .line 1203
    iget-object v3, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCurrentNumPaint:Landroid/graphics/Paint;

    iget v4, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mSelectedColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1204
    iget-object v3, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCurrentNumPaint:Landroid/graphics/Paint;

    iget v4, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mSelectedColor:I

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    int-to-float v4, v4

    iget v5, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mTextAlpha:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1206
    iget-object v3, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCurrentUnitPaint:Landroid/graphics/Paint;

    iget v4, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mSelectedColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1207
    iget-object v3, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCurrentUnitPaint:Landroid/graphics/Paint;

    iget v4, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mSelectedColor:I

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    int-to-float v4, v4

    iget v5, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mTextAlpha:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1208
    iget v3, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mDrawableIndex:I

    const/16 v4, -0x5a

    const/16 v5, 0x5a

    const/high16 v6, 0x40000000    # 2.0f

    if-ne v2, v3, :cond_dc

    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mHighLightDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_dc

    .line 1209
    invoke-direct {v0, v2}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1210
    invoke-direct {v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->getHighlightBitmapBaseline()F

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v3, v7

    .line 1212
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 1213
    iget v7, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mDegree:I

    int-to-float v7, v7

    iget v8, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCenterPointX:F

    iget-object v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->getCurrX()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    .line 1214
    invoke-direct {v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->getHighlightBitmapBaseline()F

    move-result v9

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v6

    sub-float/2addr v9, v10

    .line 1213
    invoke-virtual {v1, v7, v8, v9}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1215
    iget v7, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mDegree:I

    if-ne v7, v5, :cond_9b

    .line 1216
    iget v4, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCenterPointX:F

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget-object v5, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    .line 1217
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    sub-float/2addr v5, v7

    sub-float/2addr v4, v5

    iget-object v0, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCurrentNumPaint:Landroid/graphics/Paint;

    .line 1216
    invoke-virtual {v1, v2, v4, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_d8

    :cond_9b
    if-ne v7, v4, :cond_c2

    .line 1219
    iget v4, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCenterPointX:F

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget-object v5, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    .line 1220
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    sub-float/2addr v5, v7

    add-float/2addr v4, v5

    iget-object v0, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCurrentNumPaint:Landroid/graphics/Paint;

    .line 1219
    invoke-virtual {v1, v2, v4, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_d8

    .line 1222
    :cond_c2
    iget v4, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCenterPointX:F

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget-object v5, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    .line 1223
    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget-object v0, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCurrentNumPaint:Landroid/graphics/Paint;

    .line 1222
    invoke-virtual {v1, v2, v4, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1225
    :goto_d8
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    return-void

    .line 1229
    :cond_dc
    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCurrentScaleInfo:Lcom/transsion/camera/app/ui/widget/ScrollerScaleInfo;

    iget-object v2, v2, Lcom/transsion/camera/app/ui/widget/ScrollerScaleInfo;->text:Ljava/lang/String;

    .line 1230
    invoke-direct {v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->getHighlightTextBaseline()F

    move-result v3

    .line 1231
    iget-object v7, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCurrentNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    .line 1233
    invoke-direct {v0, v2}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->splitNumAndUnit(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1236
    array-length v9, v8

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/high16 v12, -0x40800000    # -1.0f

    if-le v9, v11, :cond_108

    .line 1237
    iget-object v7, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCurrentNumPaint:Landroid/graphics/Paint;

    aget-object v9, v8, v10

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    .line 1238
    iget-object v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCurrentUnitPaint:Landroid/graphics/Paint;

    aget-object v13, v8, v11

    invoke-virtual {v9, v13}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    add-float v13, v7, v9

    goto :goto_10b

    :cond_108
    move v13, v7

    move v7, v12

    move v9, v7

    .line 1243
    :goto_10b
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 1244
    iget v14, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mDegree:I

    int-to-float v14, v14

    iget v15, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCenterPointX:F

    move/from16 v16, v6

    iget-object v6, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrX()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v15, v6

    iget v6, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCurrentNumSize:I

    int-to-float v6, v6

    const/high16 v17, 0x40400000    # 3.0f

    div-float v6, v6, v17

    sub-float v6, v3, v6

    invoke-virtual {v1, v14, v15, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1247
    iget v6, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mDegree:I

    if-ne v6, v5, :cond_178

    cmpl-float v4, v7, v12

    if-eqz v4, :cond_15e

    cmpl-float v4, v9, v12

    if-eqz v4, :cond_15e

    .line 1249
    iget v2, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCenterPointX:F

    iget-object v4, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    div-float v13, v13, v16

    iget v4, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCurrentNumSize:I

    int-to-float v4, v4

    div-float v4, v4, v17

    sub-float v4, v13, v4

    sub-float/2addr v2, v4

    sub-float/2addr v2, v13

    div-float v7, v7, v16

    add-float/2addr v2, v7

    add-float/2addr v13, v2

    .line 1253
    aget-object v4, v8, v10

    iget-object v5, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCurrentNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v2, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1254
    aget-object v2, v8, v11

    iget-object v0, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCurrentUnitPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v13, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1fa

    .line 1256
    :cond_15e
    iget v4, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCenterPointX:F

    iget-object v5, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    div-float v7, v7, v16

    iget v5, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCurrentNumSize:I

    int-to-float v5, v5

    div-float v5, v5, v17

    sub-float/2addr v7, v5

    sub-float/2addr v4, v7

    iget-object v0, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCurrentNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1fa

    :cond_178
    if-ne v6, v4, :cond_1c3

    cmpl-float v4, v7, v12

    if-eqz v4, :cond_1aa

    cmpl-float v4, v9, v12

    if-eqz v4, :cond_1aa

    .line 1262
    iget v2, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCenterPointX:F

    iget-object v4, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    div-float v13, v13, v16

    iget v4, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCurrentNumSize:I

    int-to-float v4, v4

    div-float v4, v4, v17

    sub-float v4, v13, v4

    add-float/2addr v2, v4

    sub-float/2addr v2, v13

    div-float v7, v7, v16

    add-float/2addr v2, v7

    add-float/2addr v13, v2

    .line 1266
    aget-object v4, v8, v10

    iget-object v5, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCurrentNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v2, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1267
    aget-object v2, v8, v11

    iget-object v0, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCurrentUnitPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v13, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1fa

    .line 1269
    :cond_1aa
    iget v4, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCenterPointX:F

    iget-object v5, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    div-float v7, v7, v16

    iget v5, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCurrentNumSize:I

    int-to-float v5, v5

    div-float v5, v5, v17

    sub-float/2addr v7, v5

    add-float/2addr v4, v7

    iget-object v0, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCurrentNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1fa

    :cond_1c3
    cmpl-float v4, v7, v12

    if-eqz v4, :cond_1eb

    cmpl-float v4, v9, v12

    if-eqz v4, :cond_1eb

    .line 1274
    iget v2, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCenterPointX:F

    iget-object v4, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    div-float v13, v13, v16

    sub-float/2addr v2, v13

    div-float v7, v7, v16

    add-float/2addr v2, v7

    add-float/2addr v13, v2

    .line 1276
    aget-object v4, v8, v10

    iget-object v5, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCurrentNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v2, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1277
    aget-object v2, v8, v11

    iget-object v0, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCurrentUnitPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v13, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1fa

    .line 1279
    :cond_1eb
    iget v4, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCenterPointX:F

    iget-object v5, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget-object v0, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCurrentNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1282
    :goto_1fa
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :cond_1fd
    return-void
.end method

.method private drawHighlightScale(Landroid/graphics/Canvas;)V
    .registers 15

    .line 1473
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mIsValueAuto:Z

    if-nez v0, :cond_69

    .line 1474
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->drawCurrentItemText(Landroid/graphics/Canvas;)V

    .line 1476
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLongScaleHeight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mMarginBottom:I

    sub-int/2addr v0, v1

    int-to-float v3, v0

    .line 1477
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->getEndY()F

    move-result v5

    .line 1478
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCenterPointX:F

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    int-to-float v1, v1

    add-float v2, v0, v1

    .line 1479
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLongLinePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mContext:Landroid/content/Context;

    sget v4, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->scroller_text_selected_color:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1480
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLongLinePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mContext:Landroid/content/Context;

    sget v4, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->scroller_text_selected_color:I

    .line 1481
    invoke-virtual {v1, v4}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    iget v4, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mTextAlpha:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    .line 1480
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1482
    iget-object v6, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLongLinePaint:Landroid/graphics/Paint;

    move v4, v2

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1483
    iget p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mHighlightScaleWidth:F

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mStrokePaintWidth:I

    int-to-float v4, v0

    add-float/2addr v4, p1

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    sub-float v8, v2, v4

    int-to-float v4, v0

    div-float/2addr v4, v6

    sub-float v9, v3, v4

    int-to-float v3, v0

    add-float/2addr p1, v3

    div-float/2addr p1, v6

    add-float v10, v2, p1

    int-to-float p1, v0

    div-float/2addr p1, v6

    add-float v11, v5, p1

    iget-object v12, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mStrokeLinePaint:Landroid/graphics/Paint;

    move-object v7, v1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_69
    return-void
.end method

.method private drawScaleMarkers(Landroid/graphics/Canvas;IF)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1068
    iget-boolean v2, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLowLight:Z

    if-eqz v2, :cond_c

    iget v2, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScrollerColorBlack:I

    :goto_a
    move v7, v2

    goto :goto_f

    :cond_c
    iget v2, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mTextColorWhite:I

    goto :goto_a

    .line 1073
    :goto_f
    iget v2, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCenterPointX:F

    iget-object v3, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    int-to-float v3, v3

    add-float v8, v2, v3

    .line 1075
    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mDefaultScaleInfo:Lcom/transsion/camera/app/ui/widget/ScrollerScaleInfo;

    const/high16 v9, 0x40000000    # 2.0f

    if-eqz v2, :cond_48

    iget-boolean v2, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mIsValueAuto:Z

    if-nez v2, :cond_30

    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCurrentItem:Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;

    iget-object v2, v2, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;->value:Ljava/lang/String;

    iget-object v3, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mDefaultValue:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_48

    .line 1076
    :cond_30
    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mDefaultScaleInfo:Lcom/transsion/camera/app/ui/widget/ScrollerScaleInfo;

    iget v2, v2, Lcom/transsion/camera/app/ui/widget/ScrollerScaleInfo;->center:F

    .line 1077
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->getStartY()F

    move-result v3

    .line 1078
    iget-object v4, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mDefaultValueBitmap:Landroid/graphics/Bitmap;

    iget v5, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCircleRadius:F

    sub-float/2addr v2, v5

    mul-float/2addr v5, v9

    sub-float/2addr v3, v5

    iget v5, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCircleLineGap:I

    int-to-float v5, v5

    sub-float/2addr v3, v5

    iget-object v5, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v2, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1082
    :cond_48
    iget-boolean v2, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mEdgeFadeEnable:Z

    if-eqz v2, :cond_138

    .line 1083
    invoke-direct {v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->updateGradients()V

    .line 1084
    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mLeftGradient:Landroid/graphics/LinearGradient;

    if-eqz v2, :cond_138

    iget-object v3, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mRightGradient:Landroid/graphics/LinearGradient;

    if-eqz v3, :cond_138

    .line 1085
    iget-boolean v3, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mIsCollapseStatus:Z

    if-eqz v3, :cond_d0

    .line 1086
    iget-object v3, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mFadePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1087
    iget v2, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mScaleWidth:F

    iget v3, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mStrokePaintWidth:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    neg-float v2, v2

    div-float/2addr v2, v9

    iget-object v3, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    .line 1088
    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mTranslateX:F

    sub-float/2addr v2, v3

    .line 1089
    invoke-direct {v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->getTextBaseline()F

    move-result v3

    iget v4, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mFadeLineMargin:F

    add-float/2addr v3, v4

    iget v4, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mFadeLength:F

    iget-object v5, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    .line 1090
    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget v5, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mTranslateX:F

    sub-float/2addr v4, v5

    .line 1091
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mFadePaint:Landroid/graphics/Paint;

    .line 1087
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1095
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mFadePaint:Landroid/graphics/Paint;

    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mRightGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1097
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mFadeLength:F

    sub-float/2addr v1, v2

    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mTranslateX:F

    sub-float v2, v1, v2

    .line 1098
    invoke-direct {v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->getTextBaseline()F

    move-result v1

    iget v3, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mFadeLineMargin:F

    add-float/2addr v3, v1

    .line 1099
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v4, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    add-int/2addr v1, v4

    int-to-float v1, v1

    iget v4, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mTranslateX:F

    sub-float v4, v1, v4

    .line 1100
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mFadePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    .line 1096
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_138

    .line 1104
    :cond_d0
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mFadePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1105
    iget v1, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mScaleWidth:F

    iget v2, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mStrokePaintWidth:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    neg-float v1, v1

    div-float/2addr v1, v9

    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    .line 1106
    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v1

    .line 1107
    invoke-direct {v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->getTextBaseline()F

    move-result v1

    iget v3, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mFadeLineMargin:F

    add-float/2addr v3, v1

    iget v1, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mFadeLength:F

    iget-object v4, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    .line 1108
    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v1

    .line 1109
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mFadePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    .line 1105
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1113
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mFadePaint:Landroid/graphics/Paint;

    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mRightGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1115
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mFadeLength:F

    sub-float/2addr v1, v2

    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v1

    .line 1116
    invoke-direct {v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->getTextBaseline()F

    move-result v1

    iget v3, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mFadeLineMargin:F

    add-float/2addr v3, v1

    .line 1117
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v4, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    add-int/2addr v1, v4

    int-to-float v4, v1

    .line 1118
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mFadePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    .line 1114
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1124
    :cond_138
    :goto_138
    invoke-virtual/range {p1 .. p2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1126
    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mMinMaxScaleInfos:Ljava/util/List;

    if-eqz v2, :cond_222

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_222

    .line 1127
    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mMinMaxScaleInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v10, -0x40800000    # -1.0f

    :goto_153
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_21d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/transsion/camera/app/ui/widget/ScrollerScaleInfo;

    .line 1128
    iget v12, v11, Lcom/transsion/camera/app/ui/widget/ScrollerScaleInfo;->index:I

    .line 1129
    iget-object v13, v11, Lcom/transsion/camera/app/ui/widget/ScrollerScaleInfo;->text:Ljava/lang/String;

    .line 1130
    iget v11, v11, Lcom/transsion/camera/app/ui/widget/ScrollerScaleInfo;->center:F

    .line 1131
    iget-object v14, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v14, v13}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v14

    .line 1133
    invoke-direct {v0, v12}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->isDrawableScale(I)Z

    move-result v15

    if-eqz v15, :cond_186

    const/high16 p2, -0x40800000    # -1.0f

    .line 1135
    iget-object v3, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v3}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1136
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    move/from16 v16, v9

    iget v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCurTextLength:F

    add-float/2addr v3, v9

    :goto_183
    div-float v3, v3, v16

    goto :goto_18e

    :cond_186
    move/from16 v16, v9

    const/high16 p2, -0x40800000    # -1.0f

    .line 1138
    iget v3, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCurTextLength:F

    add-float/2addr v3, v14

    goto :goto_183

    :goto_18e
    if-nez v12, :cond_1c6

    .line 1141
    iget-boolean v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mIsCollapseStatus:Z

    if-nez v9, :cond_1c6

    invoke-direct {v0, v14}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->isOutOfLeftBoundary(F)Z

    move-result v9

    if-eqz v9, :cond_1c6

    .line 1142
    iget v4, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mBoundaryDistance:I

    int-to-float v4, v4

    add-float/2addr v11, v4

    div-float v4, v14, v16

    add-float/2addr v11, v4

    iget-object v4, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v11, v4

    iget v4, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mFirstScaleCenter:F

    move/from16 v9, p3

    .line 1143
    invoke-direct {v0, v4, v9}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->updateStretchCenter(FF)F

    move-result v4

    iget v5, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mFirstScaleCenter:F

    sub-float/2addr v4, v5

    sub-float v4, v11, v4

    sub-float v5, v4, v8

    .line 1146
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 1147
    invoke-direct {v0, v15, v7, v5, v3}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->updateTextPaintAlpha(ZIFF)V

    .line 1149
    invoke-direct {v0, v1, v12, v13, v4}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->drawScaleValue(Landroid/graphics/Canvas;ILjava/lang/String;F)V

    move-object/from16 v17, v2

    move v5, v14

    goto :goto_217

    :cond_1c6
    move/from16 v9, p3

    move-object/from16 v17, v2

    .line 1150
    iget-boolean v2, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mIsScalesExceedValues:Z

    move/from16 v18, v2

    if-eqz v2, :cond_1d4

    iget v2, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mScaleValuesCount:I

    if-eq v12, v2, :cond_1da

    :cond_1d4
    if-nez v18, :cond_20b

    iget v2, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLineNumbers:I

    if-ne v12, v2, :cond_20b

    :cond_1da
    iget-boolean v2, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mIsCollapseStatus:Z

    if-nez v2, :cond_20b

    .line 1151
    invoke-direct {v0, v14}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->isOutOfRightBoundary(F)Z

    move-result v2

    if-eqz v2, :cond_20b

    .line 1152
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v6, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mScrollerScaleLength:F

    div-float v10, v14, v16

    add-float/2addr v6, v10

    iget v10, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mBoundaryDistance:I

    int-to-float v10, v10

    add-float/2addr v6, v10

    sub-float/2addr v2, v6

    add-float/2addr v11, v2

    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    .line 1153
    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    int-to-float v2, v2

    add-float v6, v11, v2

    sub-float v2, v6, v8

    .line 1156
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 1157
    invoke-direct {v0, v15, v7, v2, v3}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->updateTextPaintAlpha(ZIFF)V

    .line 1159
    invoke-direct {v0, v1, v12, v13, v6}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->drawScaleValue(Landroid/graphics/Canvas;ILjava/lang/String;F)V

    move v10, v14

    goto :goto_217

    :cond_20b
    sub-float v2, v11, v8

    .line 1161
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 1162
    invoke-direct {v0, v15, v7, v2, v3}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->updateTextPaintAlpha(ZIFF)V

    .line 1164
    invoke-direct {v0, v1, v12, v13, v11}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->drawScaleValue(Landroid/graphics/Canvas;ILjava/lang/String;F)V

    :goto_217
    move/from16 v9, v16

    move-object/from16 v2, v17

    goto/16 :goto_153

    :cond_21d
    move/from16 v16, v9

    const/high16 p2, -0x40800000    # -1.0f

    goto :goto_22b

    :cond_222
    move/from16 v16, v9

    const/high16 p2, -0x40800000    # -1.0f

    move/from16 v4, p2

    move v5, v4

    move v6, v5

    move v10, v6

    .line 1168
    :goto_22b
    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mMidScaleInfo:Lcom/transsion/camera/app/ui/widget/ScrollerScaleInfo;

    if-eqz v2, :cond_2bd

    .line 1169
    iget-object v3, v2, Lcom/transsion/camera/app/ui/widget/ScrollerScaleInfo;->text:Ljava/lang/String;

    .line 1170
    iget v2, v2, Lcom/transsion/camera/app/ui/widget/ScrollerScaleInfo;->center:F

    .line 1171
    iget-object v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    cmpl-float v11, v4, p2

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-eqz v11, :cond_273

    cmpl-float v11, v5, p2

    if-eqz v11, :cond_273

    cmpl-float v6, v2, v4

    if-lez v6, :cond_26f

    sub-float v6, v2, v8

    .line 1174
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v8

    sub-float v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v10

    invoke-static {v8, v10}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 1175
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v6, v4

    if-gez v4, :cond_269

    .line 1176
    iget v4, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCurTextLength:F

    add-float/2addr v9, v4

    :goto_266
    div-float v9, v9, v16

    goto :goto_26b

    :cond_269
    add-float/2addr v9, v5

    goto :goto_266

    .line 1177
    :goto_26b
    invoke-direct {v0, v13, v7, v8, v9}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->updateTextPaintAlpha(ZIFF)V

    goto :goto_2b9

    .line 1179
    :cond_26f
    invoke-direct {v0, v13, v7, v12, v12}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->updateTextPaintAlpha(ZIFF)V

    goto :goto_2b9

    :cond_273
    cmpl-float v4, v6, p2

    if-eqz v4, :cond_2ab

    cmpl-float v4, v10, p2

    if-eqz v4, :cond_2ab

    cmpl-float v4, v2, v6

    if-lez v4, :cond_283

    .line 1183
    invoke-direct {v0, v13, v7, v12, v12}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->updateTextPaintAlpha(ZIFF)V

    goto :goto_2b9

    :cond_283
    sub-float v4, v2, v8

    .line 1185
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sub-float v6, v2, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 1186
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v4, v4, v6

    if-gez v4, :cond_2a5

    .line 1187
    iget v4, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCurTextLength:F

    add-float/2addr v9, v4

    :goto_2a2
    div-float v9, v9, v16

    goto :goto_2a7

    :cond_2a5
    add-float/2addr v9, v10

    goto :goto_2a2

    .line 1188
    :goto_2a7
    invoke-direct {v0, v13, v7, v5, v9}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->updateTextPaintAlpha(ZIFF)V

    goto :goto_2b9

    :cond_2ab
    sub-float v4, v2, v8

    .line 1192
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 1193
    iget v5, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCurTextLength:F

    add-float/2addr v9, v5

    div-float v9, v9, v16

    .line 1194
    invoke-direct {v0, v13, v7, v4, v9}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->updateTextPaintAlpha(ZIFF)V

    :goto_2b9
    const/4 v4, -0x1

    .line 1196
    invoke-direct {v0, v1, v4, v3, v2}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->drawScaleValue(Landroid/graphics/Canvas;ILjava/lang/String;F)V

    :cond_2bd
    return-void
.end method

.method private drawScaleValue(Landroid/graphics/Canvas;ILjava/lang/String;F)V
    .registers 12

    .line 984
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mDrawableIndex:I

    const/4 v1, -0x1

    const/16 v2, -0x5a

    const/16 v3, 0x5a

    const/high16 v4, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_7f

    if-ne p2, v0, :cond_7f

    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_7f

    .line 985
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 986
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->getBitmapBaseline()F

    move-result p3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p3, v0

    .line 988
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 989
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mDegree:I

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->getBitmapBaseline()F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    sub-float/2addr v1, v5

    invoke-virtual {p1, v0, p4, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 990
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mDegree:I

    if-ne v0, v3, :cond_52

    .line 992
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    sub-float/2addr p4, v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    sub-float/2addr v0, v1

    sub-float/2addr p4, v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mDrawablePaint:Landroid/graphics/Paint;

    .line 991
    invoke-virtual {p1, p2, p4, p3, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_7b

    :cond_52
    if-ne v0, v2, :cond_6f

    .line 997
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    sub-float/2addr p4, v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    sub-float/2addr v0, v1

    add-float/2addr p4, v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mDrawablePaint:Landroid/graphics/Paint;

    .line 996
    invoke-virtual {p1, p2, p4, p3, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_7b

    .line 1001
    :cond_6f
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    sub-float/2addr p4, v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mDrawablePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p4, p3, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1003
    :goto_7b
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    .line 1007
    :cond_7f
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p2

    .line 1008
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->getTextBaseline()F

    move-result v0

    .line 1010
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1011
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mDegree:I

    int-to-float v1, v1

    iget v5, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextSize:I

    int-to-float v5, v5

    const/high16 v6, 0x40400000    # 3.0f

    div-float/2addr v5, v6

    sub-float v5, v0, v5

    invoke-virtual {p1, v1, p4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1012
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mDegree:I

    if-ne v1, v3, :cond_ab

    div-float/2addr p2, v4

    .line 1013
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextSize:I

    int-to-float v1, v1

    div-float/2addr v1, v6

    sub-float/2addr p2, v1

    sub-float/2addr p4, p2

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p4, v0, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_bf

    :cond_ab
    if-ne v1, v2, :cond_ba

    div-float/2addr p2, v4

    .line 1015
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextSize:I

    int-to-float v1, v1

    div-float/2addr v1, v6

    sub-float/2addr p2, v1

    add-float/2addr p4, p2

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p4, v0, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_bf

    .line 1017
    :cond_ba
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p4, v0, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1019
    :goto_bf
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawWhiteScales(Landroid/graphics/Canvas;)V
    .registers 13

    .line 1431
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mLeftEdgeEffect:Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_22

    .line 1432
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mLeftEdgeEffect:Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;

    .line 1433
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->computerStretchOffset()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1435
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mIsLeftStretch:Z

    .line 1436
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mIsRightStretch:Z

    .line 1437
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mLeftEdgeEffect:Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->getStretchFactor()F

    move-result v0

    :goto_20
    add-float/2addr v1, v0

    goto :goto_44

    .line 1438
    :cond_22
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mRightEdgeEffect:Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;

    if-eqz v0, :cond_3f

    .line 1439
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3f

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mRightEdgeEffect:Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;

    .line 1440
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->computerStretchOffset()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 1442
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mIsLeftStretch:Z

    .line 1443
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mIsRightStretch:Z

    .line 1444
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mRightEdgeEffect:Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->getStretchFactor()F

    move-result v0

    goto :goto_20

    .line 1446
    :cond_3f
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mIsLeftStretch:Z

    .line 1447
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mIsRightStretch:Z

    move v2, v3

    .line 1451
    :goto_44
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mScaleWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    iget v3, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCircleRadius:F

    add-float/2addr v0, v3

    neg-float v0, v0

    .line 1452
    iget v4, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCountWidth:F

    add-float/2addr v4, v3

    .line 1453
    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mIsLeftStretch:Z

    if-eqz v3, :cond_58

    mul-float/2addr v4, v1

    :cond_55
    :goto_55
    move v6, v0

    move v8, v4

    goto :goto_62

    .line 1455
    :cond_58
    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mIsRightStretch:Z

    if-eqz v3, :cond_55

    sub-float v0, v4, v0

    mul-float/2addr v0, v1

    sub-float v0, v4, v0

    goto :goto_55

    .line 1458
    :goto_62
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v9, v0

    const/4 v10, 0x0

    const/4 v7, 0x0

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result p1

    .line 1459
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mIsScalesExceedValues:Z

    if-eqz v0, :cond_76

    .line 1460
    invoke-direct {p0, v5, v1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->calculateFakeScaleCenter(Landroid/graphics/Canvas;F)V

    goto :goto_79

    .line 1462
    :cond_76
    invoke-direct {p0, v5, v1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->calculateRealScaleCenter(Landroid/graphics/Canvas;F)V

    .line 1465
    :goto_79
    invoke-direct {p0, v5, p1, v1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->drawScaleMarkers(Landroid/graphics/Canvas;IF)V

    if-eqz v2, :cond_81

    .line 1468
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_81
    return-void
.end method

.method private drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 6

    .line 935
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    .line 936
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 934
    invoke-static {p0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 938
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 939
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 940
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object p0
.end method

.method private ensureLeftEdgeEffect()V
    .registers 2

    .line 355
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mLeftEdgeEffect:Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;

    if-eqz v0, :cond_5

    return-void

    .line 358
    :cond_5
    new-instance v0, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mLeftEdgeEffect:Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;

    .line 359
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->setWidth(I)V

    return-void
.end method

.method private ensureRightEdgeEffect()V
    .registers 2

    .line 363
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mRightEdgeEffect:Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;

    if-eqz v0, :cond_5

    return-void

    .line 366
    :cond_5
    new-instance v0, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mRightEdgeEffect:Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;

    .line 367
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->setWidth(I)V

    return-void
.end method

.method private getBitmapBaseline()F
    .registers 2

    .line 1594
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->getStartY()F

    move-result v0

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mLineBitmapMargin:F

    sub-float/2addr v0, p0

    return v0
.end method

.method private getHighlightBitmapBaseline()F
    .registers 2

    .line 1598
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->getStartY()F

    move-result v0

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mLineHighlightBitmapMargin:F

    sub-float/2addr v0, p0

    return v0
.end method

.method private getHighlightTextBaseline()F
    .registers 2

    .line 1590
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->getStartY()F

    move-result v0

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mLineHighlightTextMargin:F

    sub-float/2addr v0, p0

    return v0
.end method

.method private getScaleOffset(I)F
    .registers 4

    .line 335
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCenterPointX:F

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalX()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mPoints:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr v0, p0

    return v0
.end method

.method private getScrollDistance(I)I
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    .line 1661
    :goto_2
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mPoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6d

    .line 1662
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mPoints:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v1, :cond_1f

    if-ge p1, v2, :cond_1f

    .line 1664
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->setCurrentItem(I)V

    sub-int/2addr p1, v2

    return p1

    .line 1666
    :cond_1f
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mPoints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_40

    if-le p1, v2, :cond_40

    .line 1667
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mIsContinuousParam:Z

    if-eqz v0, :cond_33

    .line 1668
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->setCurrentItem(I)V

    goto :goto_3e

    .line 1670
    :cond_33
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mValueList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->setCurrentItem(I)V

    :goto_3e
    sub-int/2addr p1, v2

    return p1

    :cond_40
    add-int/lit8 v3, v1, 0x1

    .line 1674
    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mPoints:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6b

    .line 1675
    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mPoints:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le p1, v2, :cond_6b

    if-gt p1, v4, :cond_6b

    sub-int v0, v4, v2

    .line 1677
    div-int/lit8 v0, v0, 0x2

    sub-int v2, p1, v2

    if-le v2, v0, :cond_67

    .line 1680
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->setCurrentItem(I)V

    sub-int/2addr p1, v4

    return p1

    .line 1683
    :cond_67
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->setCurrentItem(I)V

    return v2

    :cond_6b
    move v1, v3

    goto :goto_2

    :cond_6d
    return v0
.end method

.method private getTextBaseline()F
    .registers 2

    .line 1586
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->getStartY()F

    move-result v0

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mLineTextMargin:F

    sub-float/2addr v0, p0

    return v0
.end method

.method private handleOverscroll(F)V
    .registers 6

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1c

    .line 340
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->ensureRightEdgeEffect()V

    .line 341
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mRightEdgeEffect:Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->onRelease()V

    .line 342
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mRightEdgeEffect:Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;

    neg-float v2, p1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->onPull(F)V

    .line 343
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_1c
    cmpl-float v0, p1, v0

    if-lez v0, :cond_36

    .line 347
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->ensureLeftEdgeEffect()V

    .line 348
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mLeftEdgeEffect:Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->onRelease()V

    .line 349
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mLeftEdgeEffect:Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->onPull(F)V

    .line 350
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_36
    return-void
.end method

.method private isDrawableScale(I)Z
    .registers 4

    .line 1582
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mDrawableIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    if-ne p1, v0, :cond_d

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method private isLetterEnding(Ljava/lang/String;)Z
    .registers 3

    .line 206
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    return v0

    .line 210
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 211
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_13

    return v0

    .line 215
    :cond_13
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    .line 216
    invoke-static {p0}, Ljava/lang/Character;->isLetter(C)Z

    move-result p0

    return p0
.end method

.method private isMovingToLeft(F)Z
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

.method private isMovingToRight(F)Z
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

.method private isOutOfLeftBoundary(F)Z
    .registers 4

    .line 957
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    add-float/2addr v0, p1

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mBoundaryDistance:I

    int-to-float p0, p0

    add-float/2addr v0, p0

    const/4 p0, 0x0

    cmpl-float p0, v0, p0

    if-ltz p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method private isOutOfRightBoundary(F)Z
    .registers 5

    .line 962
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mScrollerScaleLength:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    add-float/2addr v0, p1

    iget p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mBoundaryDistance:I

    int-to-float p1, p1

    add-float/2addr v0, p1

    .line 963
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, p1, v0

    const/4 v1, 0x1

    if-ltz p1, :cond_33

    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    .line 964
    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrX()I

    move-result p1

    if-gez p1, :cond_33

    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    .line 965
    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrX()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    cmpl-float p1, p1, v2

    if-ltz p1, :cond_33

    move p1, v1

    goto :goto_34

    :cond_33
    const/4 p1, 0x0

    .line 968
    :goto_34
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v2, v0

    if-gez v2, :cond_4f

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr v0, p0

    cmpg-float p0, v2, v0

    if-gtz p0, :cond_4f

    return v1

    :cond_4f
    return p1
.end method

.method private isScaleShouldShow(I)Z
    .registers 2

    .line 1553
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mLineStep:I

    rem-int/2addr p1, p0

    if-nez p1, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method private isScaleValueShouldShow(I)Z
    .registers 6

    .line 1557
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mIsContinuousParam:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    if-eqz p1, :cond_13

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLineNumbers:I

    if-eq p1, v2, :cond_13

    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mIsShowMidValue:Z

    if-eqz v3, :cond_14

    div-int/lit8 v2, v2, 0x2

    if-ne p1, v2, :cond_14

    :cond_13
    return v1

    :cond_14
    if-nez v0, :cond_46

    if-eqz p1, :cond_45

    .line 1561
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLineNumbers:I

    if-ne p1, v0, :cond_1d

    goto :goto_45

    .line 1564
    :cond_1d
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mIsShowMidValue:Z

    if-eqz v0, :cond_33

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mIsScalesExceedValues:Z

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mValueList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mLineStep:I

    mul-int/2addr v0, v2

    if-ne p1, v0, :cond_33

    return v1

    .line 1566
    :cond_33
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mIsShowMidValue:Z

    if-eqz v0, :cond_46

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mIsScalesExceedValues:Z

    if-nez v0, :cond_46

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mValueList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    if-ne p1, p0, :cond_46

    :cond_45
    :goto_45
    return v1

    :cond_46
    const/4 p0, 0x0

    return p0
.end method

.method private releaseEdgeEffect()V
    .registers 2

    .line 371
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mLeftEdgeEffect:Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;

    if-eqz v0, :cond_7

    .line 372
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->onRelease()V

    .line 374
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mRightEdgeEffect:Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;

    if-eqz p0, :cond_e

    .line 375
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->onRelease()V

    :cond_e
    return-void
.end method

.method private releaseEdgeStretch(F)F
    .registers 7

    .line 381
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mLeftEdgeEffect:Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;

    const/high16 v1, 0x40a00000    # 5.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_47

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->getDistance()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_47

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->isMovingToLeft(F)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 382
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mLeftEdgeEffect:Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;

    .line 383
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v3, p1, v3

    mul-float/2addr v3, v1

    .line 382
    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->onPullDistance(F)F

    move-result v0

    .line 384
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    cmpg-float v1, v0, p1

    if-gez v1, :cond_33

    goto :goto_34

    :cond_33
    move p1, v0

    .line 389
    :goto_34
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mLeftEdgeEffect:Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->getDistance()F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_43

    .line 390
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mLeftEdgeEffect:Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->onRelease()V

    .line 392
    :cond_43
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return p1

    .line 393
    :cond_47
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mRightEdgeEffect:Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;

    if-eqz v0, :cond_8c

    .line 394
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->getDistance()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_8c

    .line 395
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->isMovingToRight(F)Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 396
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mRightEdgeEffect:Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;

    neg-float v3, p1

    .line 397
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float/2addr v3, v1

    .line 396
    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->onPullDistance(F)F

    move-result v0

    neg-float v0, v0

    .line 398
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    cmpl-float v1, v0, p1

    if-lez v1, :cond_78

    goto :goto_79

    :cond_78
    move p1, v0

    .line 402
    :goto_79
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mRightEdgeEffect:Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->getDistance()F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_88

    .line 403
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mRightEdgeEffect:Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->onRelease()V

    .line 405
    :cond_88
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return p1

    :cond_8c
    return v2
.end method

.method private saveItemInfo(ILjava/lang/String;F)Lcom/transsion/camera/app/ui/widget/ScrollerScaleInfo;
    .registers 4

    .line 952
    new-instance p0, Lcom/transsion/camera/app/ui/widget/ScrollerScaleInfo;

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/widget/ScrollerScaleInfo;-><init>(ILjava/lang/String;F)V

    return-object p0
.end method

.method private saveMinMaxItemInfoList(ILjava/lang/String;F)V
    .registers 5

    .line 946
    new-instance v0, Lcom/transsion/camera/app/ui/widget/ScrollerScaleInfo;

    invoke-direct {v0, p1, p2, p3}, Lcom/transsion/camera/app/ui/widget/ScrollerScaleInfo;-><init>(ILjava/lang/String;F)V

    .line 947
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mMinMaxScaleInfos:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private scrollFinish()V
    .registers 8

    .line 1638
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    .line 1639
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCenterPointX:F

    float-to-int v1, v1

    add-int/2addr v1, v0

    .line 1641
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mIsRecording:Z

    if-nez v0, :cond_28

    .line 1642
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->getScrollDistance(I)I

    move-result v0

    if-eqz v0, :cond_4d

    .line 1644
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalX()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getFinalY()I

    move-result v3

    neg-int v4, v0

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_4d

    .line 1648
    :cond_28
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCurrentItem:Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;->value:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->getPointXByValue(Ljava/lang/String;)I

    move-result v0

    .line 1649
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalX()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getFinalY()I

    move-result v3

    iget v4, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCenterPointX:F

    float-to-int v4, v4

    sub-int/2addr v4, v0

    neg-int v0, v4

    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    .line 1650
    invoke-virtual {v4}, Landroid/widget/Scroller;->getFinalX()I

    move-result v4

    sub-int/2addr v0, v4

    const/16 v4, 0x3e8

    .line 1649
    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 1652
    :cond_4d
    :goto_4d
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1653
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mIsRecording:Z

    if-nez v0, :cond_5f

    .line 1654
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mValueChangedListener:Lcom/transsion/camera/app/ui/widget/IValueChangedListener;

    if-eqz v0, :cond_5f

    .line 1655
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCurrentItem:Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;->value:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/ui/widget/IValueChangedListener;->onValueChanged(Ljava/lang/String;)V

    :cond_5f
    return-void
.end method

.method private setPoints(F)V
    .registers 3

    .line 724
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->isFull()Z

    move-result v0

    if-nez v0, :cond_a

    float-to-int p1, p1

    .line 725
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->addPoint(I)V

    :cond_a
    return-void
.end method

.method private splitNumAndUnit(Ljava/lang/String;)[Ljava/lang/String;
    .registers 5

    .line 220
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_d

    .line 221
    filled-new-array {v1, v1}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 224
    :cond_d
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 225
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->isLetterEnding(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1c

    .line 226
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 229
    :cond_1c
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    .line 230
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_26
    if-ltz p1, :cond_37

    .line 231
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 232
    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_34

    add-int/lit8 p0, p0, -0x1

    :cond_34
    add-int/lit8 p1, p1, -0x1

    goto :goto_26

    :cond_37
    if-nez p0, :cond_3e

    .line 238
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3e
    const/4 p1, 0x0

    .line 241
    invoke-virtual {v0, p1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 242
    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 244
    filled-new-array {p1, p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private updateGradients()V
    .registers 18

    move-object/from16 v0, p0

    .line 1489
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_fa

    .line 1491
    iget-boolean v1, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mIsCollapseStatus:Z

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_8c

    .line 1492
    new-instance v3, Landroid/graphics/LinearGradient;

    iget v1, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mScaleWidth:F

    iget v4, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mStrokePaintWidth:I

    int-to-float v4, v4

    add-float/2addr v1, v4

    neg-float v1, v1

    div-float/2addr v1, v2

    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    .line 1493
    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mTranslateX:F

    sub-float v4, v1, v2

    .line 1494
    invoke-direct {v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->getTextBaseline()F

    move-result v1

    iget v2, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mFadeLineMargin:F

    add-float v5, v1, v2

    iget v1, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mFadeLength:F

    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    .line 1495
    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mTranslateX:F

    sub-float v6, v1, v2

    .line 1496
    invoke-direct {v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->getTextBaseline()F

    move-result v1

    iget v2, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mFadeLineMargin:F

    add-float v7, v1, v2

    sget-object v15, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v8, 0x0

    const/high16 v9, -0x1000000

    move-object v10, v15

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v3, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mLeftGradient:Landroid/graphics/LinearGradient;

    .line 1498
    new-instance v8, Landroid/graphics/LinearGradient;

    .line 1499
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mFadeLength:F

    sub-float/2addr v1, v2

    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mTranslateX:F

    sub-float v9, v1, v2

    .line 1500
    invoke-direct {v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->getTextBaseline()F

    move-result v1

    iget v2, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mFadeLineMargin:F

    add-float v10, v1, v2

    .line 1501
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mTranslateX:F

    sub-float v11, v1, v2

    .line 1502
    invoke-direct {v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->getTextBaseline()F

    move-result v1

    iget v2, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mFadeLineMargin:F

    add-float v12, v1, v2

    const/high16 v13, -0x1000000

    const/4 v14, 0x0

    invoke-direct/range {v8 .. v15}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v8, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mRightGradient:Landroid/graphics/LinearGradient;

    return-void

    .line 1505
    :cond_8c
    new-instance v9, Landroid/graphics/LinearGradient;

    iget v1, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mScaleWidth:F

    iget v3, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mStrokePaintWidth:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    neg-float v1, v1

    div-float/2addr v1, v2

    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    .line 1506
    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    int-to-float v2, v2

    add-float v10, v1, v2

    .line 1507
    invoke-direct {v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->getTextBaseline()F

    move-result v1

    iget v2, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mFadeLineMargin:F

    add-float v11, v1, v2

    iget v1, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mFadeLength:F

    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    .line 1508
    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    int-to-float v2, v2

    add-float v12, v1, v2

    .line 1509
    invoke-direct {v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->getTextBaseline()F

    move-result v1

    iget v2, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mFadeLineMargin:F

    add-float v13, v1, v2

    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v14, 0x0

    const/high16 v15, -0x1000000

    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mLeftGradient:Landroid/graphics/LinearGradient;

    .line 1511
    new-instance v1, Landroid/graphics/LinearGradient;

    .line 1512
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mFadeLength:F

    sub-float/2addr v2, v3

    iget-object v3, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 1513
    invoke-direct {v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->getTextBaseline()F

    move-result v3

    iget v4, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mFadeLineMargin:F

    add-float/2addr v3, v4

    .line 1514
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v5, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    .line 1515
    invoke-direct {v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->getTextBaseline()F

    move-result v5

    iget v6, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mFadeLineMargin:F

    add-float/2addr v5, v6

    const/high16 v6, -0x1000000

    const/4 v7, 0x0

    move-object/from16 v8, v16

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v1, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mRightGradient:Landroid/graphics/LinearGradient;

    :cond_fa
    return-void
.end method

.method private updateStretchCenter(FF)F
    .registers 4

    .line 975
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mIsLeftStretch:Z

    if-eqz v0, :cond_6

    mul-float/2addr p1, p2

    return p1

    .line 977
    :cond_6
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mIsRightStretch:Z

    if-eqz v0, :cond_17

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mLastScaleCenter:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p0, v0

    if-eqz v0, :cond_17

    sub-float p1, p0, p1

    mul-float/2addr p1, p2

    sub-float/2addr p0, p1

    return p0

    :cond_17
    return p1
.end method

.method private updateTextPaintAlpha(ZIFF)V
    .registers 6

    .line 1023
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mIsValueAuto:Z

    if-nez v0, :cond_e

    if-eqz p1, :cond_a

    .line 1025
    invoke-direct {p0, p3, p4, p2}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->calculateDrawableAlphaByDistance(FFI)V

    return-void

    .line 1027
    :cond_a
    invoke-direct {p0, p3, p4, p2}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->calculateTextAlphaByDistance(FFI)V

    return-void

    .line 1030
    :cond_e
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextPaint:Landroid/graphics/Paint;

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1031
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mDrawablePaint:Landroid/graphics/Paint;

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method


# virtual methods
.method public addPoint(I)V
    .registers 3

    .line 703
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mPoints:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 704
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mIsContinuousParam:Z

    if-eqz p1, :cond_19

    iget p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mScaleValuesCount:I

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq p1, v0, :cond_2b

    :cond_19
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mIsContinuousParam:Z

    if-nez p1, :cond_4f

    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mPoints:Ljava/util/List;

    .line 705
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mValueList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_4f

    .line 706
    :cond_2b
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->getCurrentItemIndex()I

    move-result p1

    if-gez p1, :cond_32

    goto :goto_4f

    .line 710
    :cond_32
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mPoints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-gez p1, :cond_41

    goto :goto_4f

    .line 715
    :cond_41
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCenterPointX:F

    float-to-int v0, v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->startScroll(I)V

    .line 717
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScrollerPointsCallback:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$ScrollerPointsCallback;

    if-eqz p0, :cond_4f

    .line 718
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$ScrollerPointsCallback;->onPointsAdded()V

    :cond_4f
    :goto_4f
    return-void
.end method

.method public calcCenterByScaleWidthForAnim(IF)F
    .registers 8

    .line 249
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mLineStep:I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    if-nez p1, :cond_9

    return v1

    .line 255
    :cond_9
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mIsScalesExceedValues:Z

    if-eqz v0, :cond_15

    int-to-float v0, p1

    mul-float/2addr v0, p2

    .line 256
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScaleGap:I

    mul-int/2addr p1, p0

    int-to-float p0, p1

    add-float/2addr v0, p0

    return v0

    .line 258
    :cond_15
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->isScaleShouldShow(I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 259
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mLineStep:I

    div-int/2addr p1, v0

    int-to-float p1, p1

    .line 260
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScaleGap:I

    int-to-float p0, p0

    add-float/2addr p2, p0

    mul-float/2addr p1, p2

    return p1

    .line 262
    :cond_25
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mLineStep:I

    div-int/2addr p1, v0

    add-int/lit8 v1, p1, 0x1

    .line 263
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScaleGap:I

    int-to-float v2, p0

    add-int/lit8 v3, v0, -0x1

    int-to-float v3, v3

    mul-float/2addr v3, p2

    sub-float/2addr v2, v3

    int-to-float v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    div-float/2addr v2, v3

    .line 264
    rem-int v3, v1, v0

    int-to-float v3, v3

    mul-float/2addr v2, v3

    .line 265
    rem-int v0, v1, v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    mul-float/2addr v0, p2

    int-to-float v1, v1

    mul-float/2addr v1, p2

    mul-int/2addr p0, p1

    int-to-float p0, p0

    add-float/2addr v1, p0

    add-float/2addr v1, v2

    add-float/2addr v1, v0

    return v1
.end method

.method public calculateCenterPointX()V
    .registers 7

    .line 784
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mIsCollapseStatus:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x2

    .line 788
    new-array v0, v0, [I

    .line 789
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 790
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/4 v3, 0x0

    aget v4, v0, v3

    int-to-float v4, v4

    sub-float/2addr v1, v4

    iput v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCenterPointX:F

    .line 791
    sget-object v1, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[calculateCenterPointX]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCenterPointX:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", half of screen width :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v5

    div-float/2addr v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " , x coordinate :"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v0, v3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 791
    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected checkCurrentItem()V
    .registers 7

    .line 1619
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const v1, 0x7fffffff

    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_62

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1620
    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getFinalX()I

    move-result v4

    iget v5, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCenterPointX:F

    float-to-int v5, v5

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x5

    if-gt v3, v4, :cond_9

    if-ge v3, v1, :cond_9

    .line 1623
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mPoints:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_60

    .line 1625
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mIsContinuousParam:Z

    if-eqz v2, :cond_56

    .line 1626
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->calculateCurrentNameByIndex(I)Ljava/lang/String;

    move-result-object v1

    .line 1627
    new-instance v2, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mUnit:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCurrentItem:Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;

    goto :goto_60

    .line 1629
    :cond_56
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mValueList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;

    iput-object v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCurrentItem:Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;

    :cond_60
    :goto_60
    move v1, v3

    goto :goto_9

    :cond_62
    return-void
.end method

.method public computeScroll()V
    .registers 3

    .line 560
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 561
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->scrollTo(II)V

    .line 562
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_15
    return-void
.end method

.method public destroy()V
    .registers 3

    .line 568
    sget-object v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "destroy"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 569
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 570
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mValueList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 571
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->setFinalX(I)V

    const/4 v0, 0x0

    .line 572
    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mDefaultScaleInfo:Lcom/transsion/camera/app/ui/widget/ScrollerScaleInfo;

    .line 573
    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mMidScaleInfo:Lcom/transsion/camera/app/ui/widget/ScrollerScaleInfo;

    .line 574
    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCurrentScaleInfo:Lcom/transsion/camera/app/ui/widget/ScrollerScaleInfo;

    .line 575
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mLeftEdgeEffect:Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;

    if-eqz v0, :cond_25

    .line 576
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->finish()V

    .line 578
    :cond_25
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mRightEdgeEffect:Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;

    if-eqz p0, :cond_2c

    .line 579
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->finish()V

    :cond_2c
    return-void
.end method

.method public getCenterOffsetForAnim(IF)F
    .registers 5

    .line 193
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->scroller_scale_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 194
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->calcCenterByScaleWidthForAnim(IF)F

    move-result p2

    int-to-float v0, v0

    .line 195
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->calcCenterByScaleWidthForAnim(IF)F

    move-result p0

    sub-float/2addr p2, p0

    return p2
.end method

.method protected getCurrentDownPointX(F)I
    .registers 8

    .line 1603
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScaleGap:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 1606
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mPoints:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, -0x1

    const/high16 v2, 0x4f000000

    :cond_f
    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v4, v3

    sub-float v4, p1, v4

    .line 1607
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v5, v4, v0

    if-gez v5, :cond_f

    cmpg-float v5, v4, v2

    if-gez v5, :cond_f

    move v1, v3

    move v2, v4

    goto :goto_f

    :cond_31
    return v1
.end method

.method protected getCurrentItemIndex()I
    .registers 5

    .line 1531
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCurrentItem:Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;

    const/4 v1, -0x1

    if-nez v0, :cond_6

    return v1

    .line 1534
    :cond_6
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mIsContinuousParam:Z

    if-eqz v2, :cond_28

    .line 1536
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mIsScalesExceedValues:Z

    if-eqz v1, :cond_1b

    .line 1537
    iget-object v0, v0, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mMinScale:I

    sub-int/2addr v0, v1

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mWhiteScaleOffset:I

    div-int/2addr v0, p0

    return v0

    .line 1539
    :cond_1b
    iget-object v0, v0, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mMinScale:I

    sub-int/2addr v0, v1

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mNumStep:I

    div-int/2addr v0, p0

    return v0

    :cond_28
    const/4 v0, 0x0

    .line 1543
    :goto_29
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mValueList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_49

    .line 1544
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mValueList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;

    iget-object v2, v2, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;->value:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCurrentItem:Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;

    iget-object v3, v3, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;->value:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_46

    return v0

    :cond_46
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    :cond_49
    return v1
.end method

.method public getCurrentPointX()I
    .registers 3

    .line 1522
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->getCurrentItemIndex()I

    move-result v0

    if-ltz v0, :cond_1c

    .line 1523
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_f

    goto :goto_1c

    .line 1526
    :cond_f
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mPoints:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1c
    :goto_1c
    const/4 p0, 0x0

    return p0
.end method

.method public getDurationItemByIndex(I)Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;
    .registers 4

    .line 691
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mIsContinuousParam:Z

    if-eqz v0, :cond_1f

    .line 692
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->calculateCurrentNameByIndex(I)Ljava/lang/String;

    move-result-object p1

    .line 693
    new-instance v0, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mUnit:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1f
    if-ltz p1, :cond_33

    .line 695
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mValueList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_2a

    goto :goto_33

    .line 698
    :cond_2a
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mValueList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;

    return-object p0

    :cond_33
    :goto_33
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getPointXByValue(Ljava/lang/String;)I
    .registers 3

    .line 1701
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mPoints:Ljava/util/List;

    if-eqz v0, :cond_42

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_42

    .line 1705
    :cond_b
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mIsContinuousParam:Z

    if-eqz v0, :cond_3d

    .line 1707
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mIsScalesExceedValues:Z

    if-eqz p1, :cond_22

    .line 1708
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCurrentItem:Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;->value:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mMinScale:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mWhiteScaleOffset:I

    div-int/2addr p1, v0

    goto :goto_30

    .line 1710
    :cond_22
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCurrentItem:Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;->value:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mMinScale:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mNumStep:I

    div-int/2addr p1, v0

    .line 1712
    :goto_30
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mPoints:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 1714
    :cond_3d
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->getPointXByValue(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 1702
    :cond_42
    :goto_42
    sget-object p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "getPointXByValue return, mPoints is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public init(Landroid/content/Context;)V
    .registers 9

    .line 798
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mContext:Landroid/content/Context;

    .line 799
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    .line 800
    new-instance v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mDimenInfo:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;

    .line 802
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->initData(Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;)V

    const/4 p1, 0x0

    .line 803
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->update(I)V

    .line 805
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->scroller_color_white:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScrollerColorWhite:I

    .line 806
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->text_color_white:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mTextColorWhite:I

    .line 807
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->pmaster_major_graduation_color_lowlight:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScrollerColorBlack:I

    .line 808
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->scroller_color_white:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLineColorWhite:I

    .line 809
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->pmaster_major_graduation_color_lowlight:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLineColorBlack:I

    .line 810
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->scroller_color_alpha_40_white:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mAlphaLineColorWhite:I

    .line 811
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->scroller_text_shadow_color:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mAlphaLineColorBlack:I

    .line 812
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->scroller_text_selected_color:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mSelectedColor:I

    .line 814
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    .line 815
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 816
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 817
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextPaint:Landroid/graphics/Paint;

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLowLight:Z

    if-eqz v1, :cond_83

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScrollerColorBlack:I

    goto :goto_85

    :cond_83
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mTextColorWhite:I

    :goto_85
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 818
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 819
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mContext:Landroid/content/Context;

    sget v3, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->scroller_text_shadow_color:I

    .line 820
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    const/high16 v3, 0x40800000    # 4.0f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 819
    invoke-virtual {p1, v3, v4, v4, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 822
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mDrawablePaint:Landroid/graphics/Paint;

    .line 823
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 824
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mDrawablePaint:Landroid/graphics/Paint;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLowLight:Z

    if-eqz v2, :cond_b3

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScrollerColorBlack:I

    goto :goto_b5

    :cond_b3
    iget v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mTextColorWhite:I

    :goto_b5
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 826
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCurrentNumPaint:Landroid/graphics/Paint;

    .line 827
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 828
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCurrentNumPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCurrentNumSize:I

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 829
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCurrentNumPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v2, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 830
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCurrentNumPaint:Landroid/graphics/Paint;

    iget-boolean v5, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLowLight:Z

    if-eqz v5, :cond_de

    iget v5, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScrollerColorBlack:I

    goto :goto_e0

    :cond_de
    iget v5, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScrollerColorWhite:I

    :goto_e0
    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 831
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCurrentNumPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 832
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCurrentNumPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mContext:Landroid/content/Context;

    sget v6, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->scroller_text_shadow_color:I

    .line 833
    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    .line 832
    invoke-virtual {p1, v3, v4, v4, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 835
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCurrentUnitPaint:Landroid/graphics/Paint;

    .line 836
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 837
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCurrentUnitPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCurrentUnitSize:I

    int-to-float v5, v5

    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 838
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCurrentUnitPaint:Landroid/graphics/Paint;

    invoke-static {v2, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 839
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCurrentUnitPaint:Landroid/graphics/Paint;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLowLight:Z

    if-eqz v2, :cond_119

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScrollerColorBlack:I

    goto :goto_11b

    :cond_119
    iget v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScrollerColorWhite:I

    :goto_11b
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 840
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCurrentUnitPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 841
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCurrentUnitPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->scroller_text_shadow_color:I

    .line 842
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 841
    invoke-virtual {p1, v3, v4, v4, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 844
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLinePaint:Landroid/graphics/Paint;

    .line 845
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 846
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 847
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLinePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mScaleWidth:F

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 848
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLinePaint:Landroid/graphics/Paint;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLowLight:Z

    if-eqz v2, :cond_151

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLineColorBlack:I

    goto :goto_153

    :cond_151
    iget v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLineColorWhite:I

    :goto_153
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 850
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mAlphaLinePaint:Landroid/graphics/Paint;

    .line 851
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 852
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mAlphaLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 853
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mAlphaLinePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mScaleWidth:F

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 854
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mAlphaLinePaint:Landroid/graphics/Paint;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLowLight:Z

    if-eqz v2, :cond_175

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mAlphaLineColorBlack:I

    goto :goto_177

    :cond_175
    iget v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mAlphaLineColorWhite:I

    :goto_177
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 856
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLongLinePaint:Landroid/graphics/Paint;

    .line 857
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 858
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLongLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 859
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLongLinePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mHighlightScaleWidth:F

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 860
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLongLinePaint:Landroid/graphics/Paint;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLowLight:Z

    if-eqz v2, :cond_199

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLineColorBlack:I

    goto :goto_19b

    :cond_199
    iget v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLineColorWhite:I

    :goto_19b
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 862
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mFadePaint:Landroid/graphics/Paint;

    .line 863
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 864
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mFadePaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 866
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mStrokeLinePaint:Landroid/graphics/Paint;

    .line 867
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 868
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mStrokeLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 869
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mStrokeLinePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mStrokePaintWidth:I

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 870
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mStrokeLinePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->scroller_line_stroke_color:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 872
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCirclePaint:Landroid/graphics/Paint;

    .line 873
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 875
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->velocityTracker:Landroid/view/VelocityTracker;

    const/16 p1, 0x5dc

    .line 876
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mMinFlingVelocity:I

    .line 878
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->default_value_icon:I

    .line 879
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mDefaultValueBitmap:Landroid/graphics/Bitmap;

    .line 880
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCircleRadius:F

    .line 882
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->scroller_fading_edge_length:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mFadeLength:F

    return-void
.end method

.method protected isFull()Z
    .registers 5

    .line 1575
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mIsContinuousParam:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_13

    .line 1576
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mScaleValuesCount:I

    add-int/2addr v0, v2

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mPoints:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ne v0, p0, :cond_12

    return v2

    :cond_12
    return v1

    .line 1578
    :cond_13
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mValueList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mPoints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v0, v3, :cond_2a

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mValueList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2a

    return v2

    :cond_2a
    return v1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    .line 768
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 769
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mTranslateX:F

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 770
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLineNumbers:I

    if-lez v0, :cond_27

    .line 771
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCountRange:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1c

    .line 772
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCountWidth:F

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCountRange:F

    .line 773
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->calculateCenterPointX()V

    .line 775
    :cond_1c
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mMinMaxScaleInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 776
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->drawWhiteScales(Landroid/graphics/Canvas;)V

    .line 777
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->drawHighlightScale(Landroid/graphics/Canvas;)V

    .line 779
    :cond_27
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10

    .line 421
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mIsCollapseStatus:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 422
    sget-object p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onTouchEvent return, mIsCollapseStatus is true"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 425
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1a

    invoke-static {p0}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1a

    return v1

    .line 428
    :cond_1a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 429
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_20b

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCurrentItem:Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;

    if-eqz v0, :cond_20b

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_33

    goto/16 :goto_20b

    .line 433
    :cond_33
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1bc

    if-eq v0, v2, :cond_fe

    const/4 v3, 0x2

    if-eq v0, v3, :cond_44

    const/4 v3, 0x3

    if-eq v0, v3, :cond_fe

    goto/16 :goto_20a

    .line 457
    :cond_44
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mOnTouchMoveListener:Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$OnTouchMoveListener;

    if-eqz v0, :cond_4b

    .line 458
    invoke-interface {v0}, Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$OnTouchMoveListener;->onTouchMoveStart()V

    .line 462
    :cond_4b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mStartX:F

    sub-float/2addr v0, v3

    .line 463
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mStartX:F

    sub-float/2addr v3, v4

    .line 466
    iget v4, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mScrollState:I

    if-nez v4, :cond_60

    .line 467
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->updateScrollState(I)V

    .line 469
    :cond_60
    iget v4, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mScrollState:I

    const/4 v5, 0x0

    if-ne v4, v2, :cond_93

    .line 470
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->releaseEdgeStretch(F)F

    move-result v4

    sub-float/2addr v0, v4

    .line 473
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->getScaleOffset(I)F

    move-result v4

    .line 474
    iget-object v6, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mPoints:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-direct {p0, v6}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->getScaleOffset(I)F

    move-result v6

    cmpl-float v7, v0, v5

    if-lez v7, :cond_84

    cmpl-float v7, v0, v4

    if-lez v7, :cond_84

    sub-float v4, v0, v4

    goto :goto_90

    :cond_84
    cmpg-float v4, v0, v5

    if-gez v4, :cond_8f

    cmpg-float v4, v0, v6

    if-gez v4, :cond_8f

    sub-float v4, v0, v6

    goto :goto_90

    :cond_8f
    move v4, v5

    .line 480
    :goto_90
    invoke-direct {p0, v4}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->handleOverscroll(F)V

    .line 483
    :cond_93
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_20a

    .line 484
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->getScaleOffset(I)F

    move-result v1

    .line 485
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mPoints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-direct {p0, v3}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->getScaleOffset(I)F

    move-result v3

    cmpl-float v4, v0, v5

    const/16 v6, 0xfa

    if-lez v4, :cond_bc

    cmpl-float v4, v0, v1

    if-lez v4, :cond_bc

    float-to-int v0, v1

    neg-int v0, v0

    .line 487
    invoke-virtual {p0, v0, v6}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->doScroll(II)V

    goto :goto_d3

    :cond_bc
    cmpg-float v1, v0, v5

    if-gez v1, :cond_ca

    cmpg-float v1, v0, v3

    if-gez v1, :cond_ca

    float-to-int v0, v3

    neg-int v0, v0

    .line 489
    invoke-virtual {p0, v0, v6}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->doScroll(II)V

    goto :goto_d3

    :cond_ca
    const v1, 0x3f99999a    # 1.2f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    neg-int v0, v0

    .line 491
    invoke-virtual {p0, v0, v6}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->doScroll(II)V

    .line 494
    :goto_d3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 495
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mStartX:F

    .line 496
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCurrentItem:Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;->value:Ljava/lang/String;

    .line 497
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->checkCurrentItem()V

    .line 498
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mIsValueAuto:Z

    if-nez v0, :cond_f1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCurrentItem:Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;->value:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_20a

    .line 499
    :cond_f1
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mValueChangedListener:Lcom/transsion/camera/app/ui/widget/IValueChangedListener;

    if-eqz p1, :cond_20a

    .line 500
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCurrentItem:Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;->value:Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/ui/widget/IValueChangedListener;->onValueChanged(Ljava/lang/String;)V

    goto/16 :goto_20a

    .line 507
    :cond_fe
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mScrollState:I

    if-ne v0, v2, :cond_105

    .line 508
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->updateScrollState(I)V

    .line 510
    :cond_105
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->releaseEdgeEffect()V

    .line 511
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mOnTouchMoveListener:Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$OnTouchMoveListener;

    if-eqz v0, :cond_10f

    .line 512
    invoke-interface {v0}, Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$OnTouchMoveListener;->onTouchMoveStop()V

    .line 514
    :cond_10f
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mInteractiveListener:Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$IInteractiveListener;

    if-eqz v0, :cond_116

    .line 515
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$IInteractiveListener;->onInteractive(Z)V

    .line 517
    :cond_116
    invoke-static {p0}, Lcom/transsion/camera/utils/MultiTouchManager;->stopTouching(Landroid/view/View;)V

    .line 518
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mIsDown:Z

    .line 519
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->velocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 520
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    .line 521
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mMinFlingVelocity:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_167

    .line 522
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mIsVelocityToScroller:Z

    float-to-double v0, v0

    const-wide v4, 0x3fc3333333333333L    # 0.15

    mul-double/2addr v0, v4

    neg-double v0, v0

    double-to-int p1, v0

    int-to-float p1, p1

    .line 524
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    .line 525
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCenterPointX:F

    float-to-int v0, v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 524
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->getClosetPointX(F)I

    move-result p1

    .line 526
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCenterPointX:F

    float-to-int v0, v0

    sub-int/2addr v0, p1

    neg-int v0, v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, v3}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->doScroll(II)V

    .line 527
    invoke-virtual {p0, p1, v2}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->setCurrentItemBySelected(IZ)V

    .line 528
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_20a

    .line 530
    :cond_167
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mEventStartX:F

    sub-float/2addr p1, v0

    .line 531
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_17d

    .line 532
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->scrollFinish()V

    goto/16 :goto_20a

    .line 534
    :cond_17d
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mIsDownStopScroller:Z

    if-eqz p1, :cond_182

    return v1

    .line 537
    :cond_182
    iget p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mStartX:F

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCenterPointX:F

    sub-float/2addr p1, v0

    .line 538
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    .line 539
    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCenterPointX:F

    float-to-int v0, v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 538
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->getCurrentDownPointX(F)I

    move-result p1

    .line 540
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->calculateHotspotClickPos(I)I

    move-result p1

    if-ltz p1, :cond_1b8

    .line 542
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mIsRecording:Z

    if-nez v0, :cond_1b8

    .line 543
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCenterPointX:F

    float-to-int v0, v0

    sub-int/2addr v0, p1

    neg-int v0, v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, v3}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->doScroll(II)V

    .line 544
    invoke-virtual {p0, p1, v2}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->setCurrentItemBySelected(IZ)V

    .line 545
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_20a

    .line 547
    :cond_1b8
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->scrollFinish()V

    goto :goto_20a

    .line 435
    :cond_1bc
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->updateScrollState(I)V

    .line 436
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mInteractiveListener:Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$IInteractiveListener;

    if-eqz v0, :cond_1c6

    .line 437
    invoke-interface {v0, v2}, Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$IInteractiveListener;->onInteractive(Z)V

    .line 439
    :cond_1c6
    invoke-static {p0}, Lcom/transsion/camera/utils/MultiTouchManager;->startTouching(Landroid/view/View;)V

    .line 440
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mIsDown:Z

    .line 441
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mIsDownStopScroller:Z

    .line 442
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1fc

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mIsVelocityToScroller:Z

    if-eqz v0, :cond_1fc

    .line 443
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mIsDownStopScroller:Z

    .line 444
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 445
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->getCurrentItemIndex()I

    move-result v0

    if-ltz v0, :cond_1fc

    .line 447
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mPoints:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 448
    iget v3, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCenterPointX:F

    float-to-int v3, v3

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->scrollTo(II)V

    .line 449
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 452
    :cond_1fc
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mIsVelocityToScroller:Z

    .line 453
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mEventStartX:F

    .line 454
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mStartX:F

    :cond_20a
    :goto_20a
    return v2

    .line 430
    :cond_20b
    :goto_20b
    sget-object p1, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouchEvent,return ,isEnabled() ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1
.end method

.method public resetScrollerParams()V
    .registers 6

    .line 174
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->scroller_scale_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mScaleWidth:F

    .line 175
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->scroller_highlight_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mHighlightScaleWidth:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 176
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mTextAlpha:F

    .line 177
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mContext:Landroid/content/Context;

    sget v3, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->scroller_text_shadow_color:I

    .line 178
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    const/high16 v3, 0x40800000    # 4.0f

    .line 177
    invoke-virtual {v1, v3, v0, v0, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 179
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCurrentNumPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mContext:Landroid/content/Context;

    sget v4, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->scroller_text_shadow_color:I

    .line 180
    invoke-virtual {v2, v4}, Landroid/content/Context;->getColor(I)I

    move-result v2

    .line 179
    invoke-virtual {v1, v3, v0, v0, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 181
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCurrentUnitPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mContext:Landroid/content/Context;

    sget v4, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->scroller_text_shadow_color:I

    .line 182
    invoke-virtual {v2, v4}, Landroid/content/Context;->getColor(I)I

    move-result v2

    .line 181
    invoke-virtual {v1, v3, v0, v0, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 183
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLinePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mScaleWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 184
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mAlphaLinePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mScaleWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 185
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mStrokeLinePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->scroller_line_stroke_color:I

    .line 186
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mTextAlpha:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 185
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 187
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCirclePaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v0, 0x0

    .line 188
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mTranslateX:F

    .line 189
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public scrollToCurrentItem()V
    .registers 7

    .line 1695
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getFinalY()I

    move-result v2

    iget v3, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCenterPointX:F

    .line 1696
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->getCurrentPointX()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    neg-int v3, v3

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/Scroller;->getFinalX()I

    move-result p0

    sub-int/2addr v3, p0

    const/4 v4, 0x0

    const/16 v5, 0xfa

    .line 1695
    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    return-void
.end method

.method public setCanvasTranslateX(F)V
    .registers 2

    .line 168
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mTranslateX:F

    .line 169
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCurrentItem(I)V
    .registers 5

    .line 671
    sget-object v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentItem index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 672
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mIsContinuousParam:Z

    if-eqz v0, :cond_37

    .line 673
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->calculateCurrentNameByIndex(I)Ljava/lang/String;

    move-result-object p1

    .line 674
    new-instance v0, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mUnit:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCurrentItem:Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;

    return-void

    :cond_37
    if-ltz p1, :cond_4b

    .line 676
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mValueList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_4b

    .line 677
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mValueList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCurrentItem:Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;

    :cond_4b
    return-void
.end method

.method public setCurrentItem(Ljava/lang/String;)V
    .registers 5

    .line 646
    sget-object v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentItem value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 647
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mIsContinuousParam:Z

    if-eqz v0, :cond_33

    .line 648
    new-instance v0, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mUnit:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCurrentItem:Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;

    return-void

    .line 650
    :cond_33
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mValueList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_39
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;

    .line 651
    iget-object v2, v1, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;->value:Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 652
    iput-object v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCurrentItem:Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;

    :cond_4f
    return-void
.end method

.method public setCurrentItemBySelected(IZ)V
    .registers 8

    const/4 v0, 0x0

    .line 731
    :goto_1
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_52

    .line 732
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mPoints:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p1, v1, :cond_4f

    .line 733
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mIsContinuousParam:Z

    if-eqz v1, :cond_38

    .line 734
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->calculateCurrentNameByIndex(I)Ljava/lang/String;

    move-result-object v1

    .line 735
    new-instance v2, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mUnit:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCurrentItem:Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;

    goto :goto_42

    .line 737
    :cond_38
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mValueList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;

    iput-object v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCurrentItem:Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;

    :goto_42
    if-eqz p2, :cond_4f

    .line 740
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mValueChangedListener:Lcom/transsion/camera/app/ui/widget/IValueChangedListener;

    if-eqz v1, :cond_4f

    .line 741
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCurrentItem:Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;

    iget-object v2, v2, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;->value:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/ui/widget/IValueChangedListener;->onValueChanged(Ljava/lang/String;)V

    :cond_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_52
    return-void
.end method

.method public setDrawableScale(ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 684
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mDrawableIndex:I

    .line 685
    iput-object p2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 686
    iput-object p3, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mHighLightDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setEdgeFadeEnable(Z)V
    .registers 2

    .line 147
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mEdgeFadeEnable:Z

    return-void
.end method

.method public setFadingLength(F)V
    .registers 2

    .line 142
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mFadeLength:F

    return-void
.end method

.method public setScaleGapByKey(Ljava/lang/String;)V
    .registers 3

    .line 133
    const-string v0, "stellartrack"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 134
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->scroller_scale_gap_26dp:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScaleGap:I

    return-void

    .line 136
    :cond_17
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->scroller_scale_gap_14dp:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScaleGap:I

    return-void
.end method

.method public setScope(IILcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;)V
    .registers 6

    .line 604
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->destroy()V

    .line 606
    invoke-virtual {p0, p3}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->updateScrollerParamsInfo(Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;)V

    .line 607
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mMinScale:I

    sub-int/2addr p1, p2

    .line 608
    iget p2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mWhiteScaleOffset:I

    div-int p3, p1, p2

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mLineStep:I

    mul-int/2addr p3, v0

    iput p3, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLineNumbers:I

    .line 609
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mIsScalesExceedValues:Z

    if-eqz v0, :cond_19

    div-int v1, p1, p2

    goto :goto_1d

    :cond_19
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mNumStep:I

    div-int v1, p1, v1

    :goto_1d
    iput v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mScaleValuesCount:I

    const/4 v1, 0x1

    if-eqz v0, :cond_2f

    .line 611
    iget p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScaleGap:I

    mul-int/2addr p1, p3

    int-to-float p1, p1

    add-int/2addr p3, v1

    int-to-float p2, p3

    iget p3, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mScaleWidth:F

    mul-float/2addr p2, p3

    add-float/2addr p1, p2

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCountWidth:F

    goto :goto_3c

    .line 613
    :cond_2f
    div-int/2addr p1, p2

    .line 614
    iget p2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScaleGap:I

    mul-int/2addr p2, p1

    int-to-float p2, p2

    add-int/2addr p1, v1

    int-to-float p1, p1

    iget p3, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mScaleWidth:F

    mul-float/2addr p1, p3

    add-float/2addr p2, p1

    iput p2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCountWidth:F

    .line 616
    :goto_3c
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mIsContinuousParam:Z

    return-void
.end method

.method public setScope(Ljava/util/List;Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;",
            ">;",
            "Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;",
            ")V"
        }
    .end annotation

    .line 586
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->destroy()V

    .line 588
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->updateScrollerParamsInfo(Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;)V

    .line 589
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mValueList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 590
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mScaleValuesCount:I

    .line 591
    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mIsScalesExceedValues:Z

    if-eqz p2, :cond_30

    .line 592
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iget p2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mLineStep:I

    mul-int/2addr p1, p2

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLineNumbers:I

    .line 593
    iget p2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScaleGap:I

    mul-int/2addr p2, p1

    int-to-float p2, p2

    add-int/lit8 p1, p1, 0x1

    int-to-float p1, p1

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mScaleWidth:F

    mul-float/2addr p1, v0

    add-float/2addr p2, p1

    iput p2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCountWidth:F

    goto :goto_48

    .line 595
    :cond_30
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLineNumbers:I

    .line 596
    iget p2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mLineStep:I

    div-int/2addr p1, p2

    .line 597
    iget p2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScaleGap:I

    mul-int/2addr p2, p1

    int-to-float p2, p2

    add-int/lit8 p1, p1, 0x1

    int-to-float p1, p1

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mScaleWidth:F

    mul-float/2addr p1, v0

    add-float/2addr p2, p1

    iput p2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCountWidth:F

    :goto_48
    const/4 p1, 0x0

    .line 599
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mIsContinuousParam:Z

    return-void
.end method

.method public setScrollerParamsForAnim(FF)V
    .registers 5

    .line 152
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mScaleWidth:F

    .line 153
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mTextAlpha:F

    .line 154
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->clearShadowLayer()V

    .line 155
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCurrentNumPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->clearShadowLayer()V

    .line 156
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCurrentUnitPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->clearShadowLayer()V

    .line 157
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLinePaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mScaleWidth:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 158
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mAlphaLinePaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mScaleWidth:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 159
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLongLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->clearShadowLayer()V

    .line 160
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mStrokeLinePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->scroller_line_stroke_color:I

    .line 161
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    .line 160
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 162
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCirclePaint:Landroid/graphics/Paint;

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p2, v0

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 163
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setScrollerStatus(Z)V
    .registers 2

    .line 331
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mIsCollapseStatus:Z

    return-void
.end method

.method public update(I)V
    .registers 4

    .line 887
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScreenFormType:I

    .line 889
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mDimenInfo:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;

    iget v0, p1, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;->mScaleWidth:I

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mScaleWidth:F

    .line 890
    iget v0, p1, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;->mHighlightScaleWidth:I

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mHighlightScaleWidth:F

    .line 891
    iget v0, p1, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;->mScaleHeight:I

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScaleHeight:I

    .line 892
    iget v0, p1, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;->mScaleGap:I

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScaleGap:I

    .line 893
    iget v0, p1, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;->mTextSize:I

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextSize:I

    .line 894
    iget v1, p1, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;->mCurrentNumSize:I

    iput v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCurrentNumSize:I

    .line 895
    iget v1, p1, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;->mCurrentUnitSize:I

    iput v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCurrentUnitSize:I

    .line 896
    iget v1, p1, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;->mMarginBottom:I

    iput v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mMarginBottom:I

    .line 897
    iget v1, p1, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;->mLineTextMargin:F

    iput v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mLineTextMargin:F

    .line 898
    iget v1, p1, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;->mLineBitmapMargin:F

    iput v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mLineBitmapMargin:F

    .line 899
    iget v1, p1, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;->mLineHighlightTextMargin:F

    iput v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mLineHighlightTextMargin:F

    .line 900
    iget v1, p1, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;->mLineHighlightBitmapMargin:F

    iput v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mLineHighlightBitmapMargin:F

    .line 901
    iget v1, p1, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;->mFadeLineMargin:F

    iput v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mFadeLineMargin:F

    .line 902
    iget v1, p1, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;->mStrokePaintWidth:I

    iput v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mStrokePaintWidth:I

    .line 903
    iget v1, p1, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;->mScrollerPanelHeight:I

    iput v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScrollerPanelHeight:I

    .line 904
    iget v1, p1, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;->mLongScaleHeight:I

    iput v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLongScaleHeight:I

    .line 905
    iget v1, p1, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;->mCircleLineGap:I

    iput v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCircleLineGap:I

    .line 906
    iget p1, p1, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;->mBoundaryDistance:I

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mBoundaryDistance:I

    .line 908
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextPaint:Landroid/graphics/Paint;

    if-eqz p1, :cond_56

    int-to-float v0, v0

    .line 909
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 911
    :cond_56
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCurrentNumPaint:Landroid/graphics/Paint;

    if-eqz p1, :cond_60

    .line 912
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCurrentNumSize:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 914
    :cond_60
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCurrentUnitPaint:Landroid/graphics/Paint;

    if-eqz p1, :cond_6a

    .line 915
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCurrentUnitSize:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 917
    :cond_6a
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLinePaint:Landroid/graphics/Paint;

    if-eqz p1, :cond_73

    .line 918
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mScaleWidth:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 920
    :cond_73
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mAlphaLinePaint:Landroid/graphics/Paint;

    if-eqz p1, :cond_7c

    .line 921
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mScaleWidth:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 923
    :cond_7c
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLongLinePaint:Landroid/graphics/Paint;

    if-eqz p1, :cond_85

    .line 924
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mHighlightScaleWidth:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 926
    :cond_85
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mStrokeLinePaint:Landroid/graphics/Paint;

    if-eqz p1, :cond_8f

    .line 927
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mStrokePaintWidth:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 930
    :cond_8f
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public updateLowLight(Z)V
    .registers 4

    .line 750
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLowLight:Z

    if-eq p1, v0, :cond_73

    .line 751
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLowLight:Z

    .line 752
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextPaint:Landroid/graphics/Paint;

    if-eqz p1, :cond_d

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScrollerColorBlack:I

    goto :goto_f

    :cond_d
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mTextColorWhite:I

    :goto_f
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 753
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mDrawablePaint:Landroid/graphics/Paint;

    if-eqz p1, :cond_19

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScrollerColorBlack:I

    goto :goto_1b

    :cond_19
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mTextColorWhite:I

    :goto_1b
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 754
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCurrentNumPaint:Landroid/graphics/Paint;

    if-eqz p1, :cond_25

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScrollerColorBlack:I

    goto :goto_27

    :cond_25
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScrollerColorWhite:I

    :goto_27
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 755
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCurrentUnitPaint:Landroid/graphics/Paint;

    if-eqz p1, :cond_31

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScrollerColorBlack:I

    goto :goto_33

    :cond_31
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScrollerColorWhite:I

    :goto_33
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 756
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_3d

    .line 758
    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->default_value_icon_lowlight:I

    goto :goto_3f

    :cond_3d
    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->default_value_icon:I

    .line 757
    :goto_3f
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 756
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mDefaultValueBitmap:Landroid/graphics/Bitmap;

    .line 759
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLinePaint:Landroid/graphics/Paint;

    if-eqz p1, :cond_53

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLineColorBlack:I

    goto :goto_55

    :cond_53
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLineColorWhite:I

    :goto_55
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 760
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mAlphaLinePaint:Landroid/graphics/Paint;

    if-eqz p1, :cond_5f

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mAlphaLineColorBlack:I

    goto :goto_61

    :cond_5f
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mAlphaLineColorWhite:I

    :goto_61
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 761
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLongLinePaint:Landroid/graphics/Paint;

    if-eqz p1, :cond_6b

    iget p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLineColorBlack:I

    goto :goto_6d

    :cond_6b
    iget p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLineColorWhite:I

    :goto_6d
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 762
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_73
    return-void
.end method

.method public updateScope(IILcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;)V
    .registers 4

    .line 639
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->setScope(IILcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;)V

    .line 640
    invoke-virtual {p3}, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;->getCurrentValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->setCurrentItem(Ljava/lang/String;)V

    .line 641
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public updateScope(Ljava/util/List;Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;",
            ">;",
            "Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;",
            ")V"
        }
    .end annotation

    .line 632
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->setScope(Ljava/util/List;Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;)V

    .line 633
    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;->getCurrentValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->setCurrentItem(Ljava/lang/String;)V

    .line 634
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected updateScrollState(I)V
    .registers 3

    .line 199
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mScrollState:I

    if-ne v0, p1, :cond_5

    return-void

    .line 202
    :cond_5
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mScrollState:I

    return-void
.end method

.method public updateScrollerParamsInfo(Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;)V
    .registers 3

    .line 621
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;->isScalesExceedValues()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mIsScalesExceedValues:Z

    .line 622
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;->getLineStep()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mLineStep:I

    .line 623
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;->getWhiteScaleOffset()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mWhiteScaleOffset:I

    .line 624
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;->getNumStep()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mNumStep:I

    .line 625
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;->isShowMidValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mIsShowMidValue:Z

    .line 626
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mDefaultValue:Ljava/lang/String;

    .line 627
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;->getUnit()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mUnit:Ljava/lang/String;

    return-void
.end method
