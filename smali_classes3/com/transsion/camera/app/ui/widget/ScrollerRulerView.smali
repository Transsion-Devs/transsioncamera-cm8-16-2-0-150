.class public abstract Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;
.super Lcom/transsion/camera/app/ui/widget/CommonParamsControlView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$ScrollerPointsCallback;,
        Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;
    }
.end annotation


# static fields
.field protected static final DEFAULT_SCROLLER_ADJUST_VALUE:F = 0.0f

.field protected static final DEFAULT_SCROLLER_DURATION:I = 0xfa

.field protected static final FLIP_DIMEN_COEFFICIENT:F = 1.3333334f

.field protected static final FLIP_SCREEN_DENSITY:F = 2.25f

.field protected static final MIN_SCROLLER_DURATION:I = 0xa

.field protected static final SCROLLER_DURATION:I = 0x3e8

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field protected mAdjustLeftMargin:I

.field protected mAdjustValue:F

.field protected mAlphaLineColorBlack:I

.field protected mAlphaLineColorWhite:I

.field protected mAlphaLinePaint:Landroid/graphics/Paint;

.field protected mCenterPointX:F

.field protected mContext:Landroid/content/Context;

.field private mCountRange:I

.field private mCountWidth:I

.field protected mCurrentItem:Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;

.field private mCurrentLine:I

.field protected mDegree:I

.field protected mDimenInfo:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;

.field protected mEventStartX:F

.field protected mInteractiveListener:Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$IInteractiveListener;

.field protected mIsDown:Z

.field protected mIsDownStopScroller:Z

.field protected mIsMove:Z

.field protected mIsRecording:Z

.field protected mIsValueAuto:Z

.field protected mIsVelocityToScroller:Z

.field private mIsVideoPortrait:Z

.field protected mLineColorBlack:I

.field protected mLineColorWhite:I

.field protected mLineNumbers:I

.field protected mLinePaint:Landroid/graphics/Paint;

.field protected mLongLinePaint:Landroid/graphics/Paint;

.field protected mLongScaleHeight:I

.field protected mLowLight:Z

.field protected mMarginBottom:I

.field protected mMinFlingVelocity:I

.field protected mNeedDoStartScroll:Z

.field private mOffSetNum:I

.field protected mOnTouchMoveListener:Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$OnTouchMoveListener;

.field private mParentRootWidth:I

.field protected final mPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mQuoteByPortraitSpot:Z

.field protected mScaleGap:I

.field protected mScaleHeight:I

.field private mScaleWidth:I

.field protected mScreenFormType:I

.field public mScroller:Landroid/widget/Scroller;

.field protected mScrollerColorBlack:I

.field protected mScrollerColorWhite:I

.field protected mScrollerPanelHeight:I

.field protected mScrollerPointsCallback:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$ScrollerPointsCallback;

.field protected mSelectedColor:I

.field protected mStartX:F

.field protected mStrokeLinePaint:Landroid/graphics/Paint;

.field protected mStrokePaintWidth:I

.field private mTextBottom:I

.field protected mTextPaint:Landroid/graphics/Paint;

.field protected mTextRotateBottom:I

.field protected mTextSize:I

.field private mTextTop:I

.field protected mValueChangedListener:Lcom/transsion/camera/app/ui/widget/IValueChangedListener;

.field protected final mValueList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;",
            ">;"
        }
    .end annotation
.end field

.field protected velocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 29
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ScrollerRulerView"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 109
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 113
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 117
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/widget/CommonParamsControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mValueList:Ljava/util/List;

    .line 37
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mPoints:Ljava/util/List;

    const/4 p2, 0x1

    .line 38
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mNeedDoStartScroll:Z

    const/4 p2, -0x1

    .line 53
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCountRange:I

    .line 59
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCurrentLine:I

    const/4 p2, 0x0

    .line 61
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScrollerColorWhite:I

    .line 62
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScrollerColorBlack:I

    .line 63
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLineColorWhite:I

    .line 64
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLineColorBlack:I

    .line 65
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mAlphaLineColorWhite:I

    .line 66
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mAlphaLineColorBlack:I

    .line 67
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mSelectedColor:I

    .line 68
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mParentRootWidth:I

    .line 70
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mIsVideoPortrait:Z

    .line 82
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mQuoteByPortraitSpot:Z

    .line 97
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScreenFormType:I

    .line 118
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private drawRuler(Landroid/graphics/Canvas;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    move v7, v2

    move v8, v7

    .line 527
    :goto_7
    iget v2, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLineNumbers:I

    const/high16 v9, 0x40000000    # 2.0f

    if-gt v7, v2, :cond_518

    .line 528
    invoke-direct {v0, v7}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->isLightLine(I)Z

    move-result v2

    .line 529
    iget v3, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScaleWidth:I

    mul-int v4, v3, v7

    .line 530
    iget v5, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScaleGap:I

    mul-int/2addr v5, v7

    add-int/2addr v5, v4

    int-to-float v4, v5

    int-to-float v3, v3

    div-float/2addr v3, v9

    add-float/2addr v4, v3

    .line 531
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->getStartY()F

    move-result v3

    .line 532
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->getEndY()F

    move-result v5

    if-eqz v2, :cond_4e7

    .line 534
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->isFull()Z

    move-result v2

    if-nez v2, :cond_31

    float-to-int v2, v4

    .line 536
    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->addPoint(I)V

    .line 538
    :cond_31
    invoke-virtual {v0, v8}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->getDurationItemByIndex(I)Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;

    move-result-object v2

    if-eqz v2, :cond_272

    .line 540
    iget-object v6, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCurrentItem:Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;

    if-eqz v6, :cond_272

    .line 541
    iget-object v2, v2, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;->name:Ljava/lang/String;

    .line 542
    iget-object v6, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 543
    iget-boolean v10, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mIsMove:Z

    const/4 v11, 0x7

    const/high16 v12, 0x40400000    # 3.0f

    const/16 v13, -0x5a

    const/16 v14, 0x5a

    const/4 v15, 0x0

    const/high16 v16, 0x40800000    # 4.0f

    if-eqz v10, :cond_276

    .line 544
    iget-object v10, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCurrentItem:Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;

    iget-object v10, v10, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;->name:Ljava/lang/String;

    invoke-static {v2, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_272

    .line 545
    iget-object v10, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextPaint:Landroid/graphics/Paint;

    move/from16 v17, v9

    iget v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mSelectedColor:I

    invoke-virtual {v10, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 546
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 547
    iget v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScreenFormType:I

    if-ne v9, v11, :cond_178

    .line 548
    iget v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mDegree:I

    if-ne v9, v14, :cond_b4

    int-to-float v9, v9

    .line 549
    iget v10, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCenterPointX:F

    iget-object v11, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v11}, Landroid/widget/Scroller;->getCurrX()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    div-float v11, v6, v17

    sub-float/2addr v10, v11

    invoke-virtual {v1, v9, v10, v15}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 550
    iget-boolean v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mIsVideoPortrait:Z

    if-eqz v9, :cond_9f

    .line 551
    iget v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCenterPointX:F

    iget-object v10, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v10}, Landroid/widget/Scroller;->getCurrX()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    iget v10, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextSize:I

    mul-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    div-float/2addr v10, v12

    add-float/2addr v9, v10

    neg-float v6, v6

    div-float v6, v6, v16

    iget-object v10, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v9, v6, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_26d

    .line 553
    :cond_9f
    iget v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCenterPointX:F

    iget-object v10, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v10}, Landroid/widget/Scroller;->getCurrX()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    sub-float/2addr v9, v11

    neg-float v6, v6

    div-float v6, v6, v16

    iget-object v10, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v9, v6, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_26d

    :cond_b4
    if-ne v9, v13, :cond_10e

    int-to-float v6, v9

    .line 556
    iget v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCenterPointX:F

    iget-object v10, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v10}, Landroid/widget/Scroller;->getCurrX()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    iget v10, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextBottom:I

    int-to-float v10, v10

    iget v11, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextSize:I

    int-to-float v11, v11

    div-float v11, v11, v17

    sub-float/2addr v10, v11

    invoke-virtual {v1, v6, v9, v10}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 557
    iget-boolean v6, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mIsVideoPortrait:Z

    if-eqz v6, :cond_f0

    .line 558
    iget v6, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCenterPointX:F

    iget-object v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->getCurrX()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v6, v9

    iget v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextSize:I

    mul-int/lit8 v10, v9, 0x2

    int-to-float v10, v10

    div-float/2addr v10, v12

    sub-float/2addr v6, v10

    iget v10, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextBottom:I

    int-to-float v10, v10

    int-to-float v9, v9

    div-float v9, v9, v16

    sub-float/2addr v10, v9

    iget-object v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v6, v10, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_26d

    .line 560
    :cond_f0
    iget v6, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCenterPointX:F

    iget-object v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->getCurrX()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v6, v9

    iget v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextSize:I

    int-to-float v10, v9

    div-float v10, v10, v16

    add-float/2addr v6, v10

    iget v10, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextBottom:I

    int-to-float v10, v10

    int-to-float v9, v9

    div-float v9, v9, v16

    sub-float/2addr v10, v9

    iget-object v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v6, v10, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_26d

    :cond_10e
    int-to-float v9, v9

    .line 563
    iget v10, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCenterPointX:F

    iget-object v11, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v11}, Landroid/widget/Scroller;->getCurrX()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    div-float v11, v6, v17

    sub-float/2addr v10, v11

    iget v12, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextRotateBottom:I

    int-to-float v12, v12

    invoke-virtual {v1, v9, v10, v12}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 564
    iget-boolean v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mIsVideoPortrait:Z

    if-eqz v9, :cond_14d

    .line 565
    iget v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCenterPointX:F

    iget-object v10, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v10}, Landroid/widget/Scroller;->getCurrX()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    iget v10, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mDegree:I

    if-nez v10, :cond_139

    iget v10, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextBottom:I

    int-to-float v10, v10

    add-float/2addr v10, v6

    goto :goto_146

    :cond_139
    iget v6, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextRotateBottom:I

    int-to-float v6, v6

    add-float/2addr v11, v6

    iget v6, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextBottom:I

    int-to-float v6, v6

    sub-float/2addr v11, v6

    iget v6, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextTop:I

    int-to-float v6, v6

    add-float v10, v11, v6

    :goto_146
    iget-object v6, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v9, v10, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_26d

    .line 567
    :cond_14d
    iget v6, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCenterPointX:F

    iget-object v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->getCurrX()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v6, v9

    iget v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mDegree:I

    if-nez v9, :cond_165

    iget v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextBottom:I

    int-to-float v9, v9

    iget v10, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextSize:I

    int-to-float v10, v10

    div-float v10, v10, v17

    add-float/2addr v9, v10

    goto :goto_171

    :cond_165
    iget v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextRotateBottom:I

    int-to-float v9, v9

    add-float/2addr v11, v9

    iget v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextBottom:I

    int-to-float v9, v9

    sub-float/2addr v11, v9

    iget v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextTop:I

    int-to-float v9, v9

    add-float/2addr v9, v11

    :goto_171
    iget-object v10, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v6, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_26d

    .line 570
    :cond_178
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v9

    if-eqz v9, :cond_234

    iget v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScreenFormType:I

    if-nez v9, :cond_234

    .line 571
    iget v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mDegree:I

    if-ne v9, v14, :cond_1b5

    int-to-float v6, v9

    .line 572
    iget v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCenterPointX:F

    iget-object v10, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v10}, Landroid/widget/Scroller;->getCurrX()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    iget v10, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextSize:I

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    sub-float/2addr v9, v10

    invoke-virtual {v1, v6, v9, v15}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 573
    iget v6, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCenterPointX:F

    iget-object v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->getCurrX()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v6, v9

    iget v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextTop:I

    int-to-float v9, v9

    add-float/2addr v6, v9

    iget v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextSize:I

    neg-int v9, v9

    div-int/lit8 v9, v9, 0x4

    int-to-float v9, v9

    iget-object v10, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v6, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_26d

    :cond_1b5
    if-ne v9, v13, :cond_1ec

    int-to-float v6, v9

    .line 575
    iget v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCenterPointX:F

    iget-object v10, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v10}, Landroid/widget/Scroller;->getCurrX()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    iget v10, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextBottom:I

    int-to-float v10, v10

    iget v11, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextSize:I

    int-to-float v11, v11

    div-float v11, v11, v17

    sub-float/2addr v10, v11

    invoke-virtual {v1, v6, v9, v10}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 576
    iget v6, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCenterPointX:F

    iget-object v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->getCurrX()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v6, v9

    iget v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextTop:I

    int-to-float v9, v9

    sub-float/2addr v6, v9

    iget v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextBottom:I

    int-to-float v9, v9

    iget v10, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextSize:I

    int-to-float v10, v10

    div-float v10, v10, v16

    sub-float/2addr v9, v10

    iget-object v10, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v6, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_26d

    :cond_1ec
    int-to-float v9, v9

    .line 578
    iget v10, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCenterPointX:F

    iget-object v11, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v11}, Landroid/widget/Scroller;->getCurrX()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    div-float v11, v6, v17

    sub-float/2addr v10, v11

    iget v11, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mDegree:I

    if-nez v11, :cond_201

    iget v11, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextRotateBottom:I

    int-to-float v15, v11

    :cond_201
    invoke-virtual {v1, v9, v10, v15}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 579
    iget v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mDegree:I

    if-nez v9, :cond_213

    iget v6, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCenterPointX:F

    iget-object v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->getCurrX()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v6, v9

    goto :goto_21f

    :cond_213
    iget v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCenterPointX:F

    iget-object v10, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v10}, Landroid/widget/Scroller;->getCurrX()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    sub-float v6, v9, v6

    .line 580
    :goto_21f
    iget v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mDegree:I

    if-nez v9, :cond_22a

    iget v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextBottom:I

    iget v10, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextTop:I

    add-int/2addr v9, v10

    :goto_228
    int-to-float v9, v9

    goto :goto_22e

    :cond_22a
    iget v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextTop:I

    neg-int v9, v9

    goto :goto_228

    :goto_22e
    iget-object v10, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextPaint:Landroid/graphics/Paint;

    .line 579
    invoke-virtual {v1, v2, v6, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_26d

    .line 583
    :cond_234
    iget v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mDegree:I

    int-to-float v9, v9

    iget v10, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCenterPointX:F

    iget-object v11, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v11}, Landroid/widget/Scroller;->getCurrX()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    div-float v6, v6, v17

    sub-float/2addr v10, v6

    iget v11, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextRotateBottom:I

    int-to-float v11, v11

    invoke-virtual {v1, v9, v10, v11}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 584
    iget v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCenterPointX:F

    iget-object v10, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v10}, Landroid/widget/Scroller;->getCurrX()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    iget v10, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mDegree:I

    if-nez v10, :cond_25c

    iget v6, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextBottom:I

    int-to-float v6, v6

    goto :goto_268

    :cond_25c
    iget v10, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextRotateBottom:I

    int-to-float v10, v10

    add-float/2addr v6, v10

    iget v10, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextBottom:I

    int-to-float v10, v10

    sub-float/2addr v6, v10

    iget v10, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextTop:I

    int-to-float v10, v10

    add-float/2addr v6, v10

    :goto_268
    iget-object v10, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v9, v6, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 586
    :goto_26d
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_4bd

    :cond_272
    move/from16 v17, v9

    goto/16 :goto_4bd

    :cond_276
    move/from16 v17, v9

    .line 589
    iget-object v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCurrentItem:Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;

    iget-object v9, v9, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;->name:Ljava/lang/String;

    invoke-static {v2, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_29d

    .line 590
    iget-boolean v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mIsValueAuto:Z

    if-nez v9, :cond_28e

    .line 591
    iget-object v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextPaint:Landroid/graphics/Paint;

    iget v10, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mSelectedColor:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2ab

    .line 593
    :cond_28e
    iget-object v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextPaint:Landroid/graphics/Paint;

    iget-boolean v10, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLowLight:Z

    if-eqz v10, :cond_297

    iget v10, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScrollerColorBlack:I

    goto :goto_299

    :cond_297
    iget v10, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScrollerColorWhite:I

    :goto_299
    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2ab

    .line 596
    :cond_29d
    iget-object v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextPaint:Landroid/graphics/Paint;

    iget-boolean v10, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLowLight:Z

    if-eqz v10, :cond_2a6

    iget v10, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScrollerColorBlack:I

    goto :goto_2a8

    :cond_2a6
    iget v10, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScrollerColorWhite:I

    :goto_2a8
    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 598
    :goto_2ab
    iget-boolean v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mQuoteByPortraitSpot:Z

    if-eqz v9, :cond_363

    .line 599
    iget-object v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCurrentItem:Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;

    iget-object v9, v9, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;->name:Ljava/lang/String;

    invoke-static {v2, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4bd

    .line 600
    iget-object v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextPaint:Landroid/graphics/Paint;

    iget v10, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mSelectedColor:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 601
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 602
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v9

    if-eqz v9, :cond_338

    iget v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScreenFormType:I

    if-nez v9, :cond_338

    .line 603
    iget v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mDegree:I

    if-ne v9, v14, :cond_2ed

    int-to-float v6, v9

    .line 604
    iget v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextSize:I

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    sub-float v9, v4, v9

    invoke-virtual {v1, v6, v9, v15}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 605
    iget v6, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextTop:I

    int-to-float v6, v6

    add-float/2addr v6, v4

    iget v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextSize:I

    neg-int v9, v9

    div-int/lit8 v9, v9, 0x4

    int-to-float v9, v9

    iget-object v10, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v6, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_35e

    :cond_2ed
    if-ne v9, v13, :cond_310

    int-to-float v6, v9

    .line 607
    iget v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextBottom:I

    int-to-float v9, v9

    iget v10, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextSize:I

    int-to-float v10, v10

    div-float v10, v10, v17

    sub-float/2addr v9, v10

    invoke-virtual {v1, v6, v4, v9}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 608
    iget v6, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextTop:I

    int-to-float v6, v6

    sub-float v6, v4, v6

    iget v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextBottom:I

    int-to-float v9, v9

    iget v10, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextSize:I

    int-to-float v10, v10

    div-float v10, v10, v16

    sub-float/2addr v9, v10

    iget-object v10, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v6, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_35e

    :cond_310
    int-to-float v10, v9

    div-float v11, v6, v17

    sub-float v11, v4, v11

    if-nez v9, :cond_31a

    .line 610
    iget v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextRotateBottom:I

    int-to-float v15, v9

    :cond_31a
    invoke-virtual {v1, v10, v11, v15}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 611
    iget v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mDegree:I

    if-nez v9, :cond_323

    move v6, v4

    goto :goto_325

    :cond_323
    sub-float v6, v4, v6

    :goto_325
    if-nez v9, :cond_32e

    .line 612
    iget v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextBottom:I

    iget v10, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextTop:I

    add-int/2addr v9, v10

    :goto_32c
    int-to-float v9, v9

    goto :goto_332

    :cond_32e
    iget v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextTop:I

    neg-int v9, v9

    goto :goto_32c

    :goto_332
    iget-object v10, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextPaint:Landroid/graphics/Paint;

    .line 611
    invoke-virtual {v1, v2, v6, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_35e

    .line 615
    :cond_338
    iget v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mDegree:I

    int-to-float v9, v9

    div-float v6, v6, v17

    sub-float v10, v4, v6

    iget v11, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextRotateBottom:I

    int-to-float v11, v11

    invoke-virtual {v1, v9, v10, v11}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 616
    iget v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mDegree:I

    if-nez v9, :cond_34d

    iget v6, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextBottom:I

    int-to-float v6, v6

    goto :goto_359

    :cond_34d
    iget v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextRotateBottom:I

    int-to-float v9, v9

    add-float/2addr v6, v9

    iget v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextBottom:I

    int-to-float v9, v9

    sub-float/2addr v6, v9

    iget v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextTop:I

    int-to-float v9, v9

    add-float/2addr v6, v9

    :goto_359
    iget-object v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4, v6, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 618
    :goto_35e
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_4bd

    .line 621
    :cond_363
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 622
    iget v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScreenFormType:I

    if-ne v9, v11, :cond_41f

    .line 623
    iget v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mDegree:I

    if-ne v9, v14, :cond_395

    int-to-float v9, v9

    div-float v10, v6, v17

    sub-float v10, v4, v10

    .line 624
    invoke-virtual {v1, v9, v10, v15}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 625
    iget-boolean v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mIsVideoPortrait:Z

    if-eqz v9, :cond_38b

    .line 626
    iget v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextSize:I

    mul-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    div-float/2addr v9, v12

    add-float/2addr v9, v4

    neg-float v6, v6

    div-float v6, v6, v16

    iget-object v10, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v9, v6, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_4ba

    :cond_38b
    neg-float v6, v6

    div-float v6, v6, v16

    .line 628
    iget-object v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v10, v6, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_4ba

    :cond_395
    if-ne v9, v13, :cond_3d2

    int-to-float v6, v9

    .line 631
    iget v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextBottom:I

    int-to-float v9, v9

    iget v10, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextSize:I

    int-to-float v10, v10

    div-float v10, v10, v17

    sub-float/2addr v9, v10

    invoke-virtual {v1, v6, v4, v9}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 632
    iget-boolean v6, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mIsVideoPortrait:Z

    if-eqz v6, :cond_3be

    .line 633
    iget v6, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextSize:I

    mul-int/lit8 v9, v6, 0x2

    int-to-float v9, v9

    div-float/2addr v9, v12

    sub-float v9, v4, v9

    iget v10, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextBottom:I

    int-to-float v10, v10

    int-to-float v6, v6

    div-float v6, v6, v16

    sub-float/2addr v10, v6

    iget-object v6, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v9, v10, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_4ba

    .line 635
    :cond_3be
    iget v6, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextSize:I

    int-to-float v9, v6

    div-float v9, v9, v16

    add-float/2addr v9, v4

    iget v10, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextBottom:I

    int-to-float v10, v10

    int-to-float v6, v6

    div-float v6, v6, v16

    sub-float/2addr v10, v6

    iget-object v6, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v9, v10, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_4ba

    :cond_3d2
    int-to-float v9, v9

    div-float v10, v6, v17

    sub-float v11, v4, v10

    .line 638
    iget v12, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextRotateBottom:I

    int-to-float v12, v12

    invoke-virtual {v1, v9, v11, v12}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 639
    iget-boolean v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mIsVideoPortrait:Z

    if-eqz v9, :cond_3fe

    .line 640
    iget v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mDegree:I

    if-nez v9, :cond_3ea

    iget v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextBottom:I

    int-to-float v9, v9

    add-float/2addr v9, v6

    goto :goto_3f7

    :cond_3ea
    iget v6, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextRotateBottom:I

    int-to-float v6, v6

    add-float/2addr v10, v6

    iget v6, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextBottom:I

    int-to-float v6, v6

    sub-float/2addr v10, v6

    iget v6, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextTop:I

    int-to-float v6, v6

    add-float v9, v10, v6

    :goto_3f7
    iget-object v6, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4, v9, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_4ba

    .line 642
    :cond_3fe
    iget v6, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mDegree:I

    if-nez v6, :cond_40c

    iget v6, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextBottom:I

    int-to-float v6, v6

    iget v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextSize:I

    int-to-float v9, v9

    div-float v9, v9, v17

    add-float/2addr v6, v9

    goto :goto_418

    :cond_40c
    iget v6, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextRotateBottom:I

    int-to-float v6, v6

    add-float/2addr v10, v6

    iget v6, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextBottom:I

    int-to-float v6, v6

    sub-float/2addr v10, v6

    iget v6, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextTop:I

    int-to-float v6, v6

    add-float/2addr v6, v10

    :goto_418
    iget-object v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4, v6, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_4ba

    .line 645
    :cond_41f
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v9

    if-eqz v9, :cond_494

    iget v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScreenFormType:I

    if-nez v9, :cond_494

    .line 646
    iget v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mDegree:I

    if-ne v9, v14, :cond_449

    int-to-float v6, v9

    .line 647
    iget v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextSize:I

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    sub-float v9, v4, v9

    invoke-virtual {v1, v6, v9, v15}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 648
    iget v6, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextTop:I

    int-to-float v6, v6

    add-float/2addr v6, v4

    iget v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextSize:I

    neg-int v9, v9

    div-int/lit8 v9, v9, 0x4

    int-to-float v9, v9

    iget-object v10, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v6, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_4ba

    :cond_449
    if-ne v9, v13, :cond_46c

    int-to-float v6, v9

    .line 650
    iget v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextBottom:I

    int-to-float v9, v9

    iget v10, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextSize:I

    int-to-float v10, v10

    div-float v10, v10, v17

    sub-float/2addr v9, v10

    invoke-virtual {v1, v6, v4, v9}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 651
    iget v6, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextTop:I

    int-to-float v6, v6

    sub-float v6, v4, v6

    iget v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextBottom:I

    int-to-float v9, v9

    iget v10, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextSize:I

    int-to-float v10, v10

    div-float v10, v10, v16

    sub-float/2addr v9, v10

    iget-object v10, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v6, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_4ba

    :cond_46c
    int-to-float v10, v9

    div-float v11, v6, v17

    sub-float v11, v4, v11

    if-nez v9, :cond_476

    .line 653
    iget v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextRotateBottom:I

    int-to-float v15, v9

    :cond_476
    invoke-virtual {v1, v10, v11, v15}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 654
    iget v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mDegree:I

    if-nez v9, :cond_47f

    move v6, v4

    goto :goto_481

    :cond_47f
    sub-float v6, v4, v6

    :goto_481
    if-nez v9, :cond_48a

    .line 655
    iget v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextBottom:I

    iget v10, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextTop:I

    add-int/2addr v9, v10

    :goto_488
    int-to-float v9, v9

    goto :goto_48e

    :cond_48a
    iget v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextTop:I

    neg-int v9, v9

    goto :goto_488

    :goto_48e
    iget-object v10, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextPaint:Landroid/graphics/Paint;

    .line 654
    invoke-virtual {v1, v2, v6, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_4ba

    .line 658
    :cond_494
    iget v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mDegree:I

    int-to-float v9, v9

    div-float v6, v6, v17

    sub-float v10, v4, v6

    iget v11, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextRotateBottom:I

    int-to-float v11, v11

    invoke-virtual {v1, v9, v10, v11}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 659
    iget v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mDegree:I

    if-nez v9, :cond_4a9

    iget v6, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextBottom:I

    int-to-float v6, v6

    goto :goto_4b5

    :cond_4a9
    iget v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextRotateBottom:I

    int-to-float v9, v9

    add-float/2addr v6, v9

    iget v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextBottom:I

    int-to-float v9, v9

    sub-float/2addr v6, v9

    iget v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextTop:I

    int-to-float v9, v9

    add-float/2addr v6, v9

    :goto_4b5
    iget-object v9, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4, v6, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 661
    :goto_4ba
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 665
    :cond_4bd
    :goto_4bd
    iget-object v6, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLinePaint:Landroid/graphics/Paint;

    move v2, v4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 666
    iget v1, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScaleWidth:I

    iget v4, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mStrokePaintWidth:I

    add-int v6, v1, v4

    int-to-float v6, v6

    div-float v6, v6, v17

    sub-float v6, v2, v6

    int-to-float v9, v4

    div-float v9, v9, v17

    sub-float/2addr v3, v9

    add-int/2addr v1, v4

    int-to-float v1, v1

    div-float v1, v1, v17

    add-float/2addr v1, v2

    int-to-float v2, v4

    div-float v2, v2, v17

    add-float/2addr v5, v2

    move v2, v6

    iget-object v6, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mStrokeLinePaint:Landroid/graphics/Paint;

    move v4, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_512

    :cond_4e7
    move v2, v4

    move/from16 v17, v9

    .line 670
    iget-object v6, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mAlphaLinePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 671
    iget v1, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScaleWidth:I

    iget v4, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mStrokePaintWidth:I

    add-int v6, v1, v4

    int-to-float v6, v6

    div-float v6, v6, v17

    sub-float v6, v2, v6

    int-to-float v9, v4

    div-float v9, v9, v17

    sub-float/2addr v3, v9

    add-int/2addr v1, v4

    int-to-float v1, v1

    div-float v1, v1, v17

    add-float/2addr v1, v2

    int-to-float v2, v4

    div-float v2, v2, v17

    add-float/2addr v5, v2

    move v2, v6

    iget-object v6, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mStrokeLinePaint:Landroid/graphics/Paint;

    move v4, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_512
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p1

    goto/16 :goto_7

    :cond_518
    move/from16 v17, v9

    .line 675
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLongScaleHeight:I

    sub-int/2addr v1, v2

    iget v2, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mMarginBottom:I

    sub-int/2addr v1, v2

    int-to-float v3, v1

    .line 676
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->getEndY()F

    move-result v5

    .line 677
    iget v1, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCenterPointX:F

    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v1

    .line 678
    iget-boolean v1, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mIsValueAuto:Z

    if-eqz v1, :cond_546

    .line 679
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLongLinePaint:Landroid/graphics/Paint;

    iget-boolean v4, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLowLight:Z

    if-eqz v4, :cond_540

    iget v4, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLineColorBlack:I

    goto :goto_542

    :cond_540
    iget v4, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLineColorWhite:I

    :goto_542
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_553

    .line 681
    :cond_546
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLongLinePaint:Landroid/graphics/Paint;

    iget-object v4, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mContext:Landroid/content/Context;

    sget v6, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->scroller_text_selected_color:I

    invoke-virtual {v4, v6}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 683
    :goto_553
    iget-object v6, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLongLinePaint:Landroid/graphics/Paint;

    move v4, v2

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 685
    iget v1, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScaleWidth:I

    iget v4, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mStrokePaintWidth:I

    add-int v6, v1, v4

    int-to-float v6, v6

    div-float v6, v6, v17

    sub-float v6, v2, v6

    int-to-float v7, v4

    div-float v7, v7, v17

    sub-float/2addr v3, v7

    add-int/2addr v1, v4

    int-to-float v1, v1

    div-float v1, v1, v17

    add-float/2addr v2, v1

    int-to-float v1, v4

    div-float v1, v1, v17

    add-float v4, v5, v1

    iget-object v5, v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mStrokeLinePaint:Landroid/graphics/Paint;

    move v0, v3

    move v3, v2

    move v2, v0

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private getScrollDistance(I)I
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    .line 797
    :goto_2
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mPoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_65

    .line 798
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mPoints:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v1, :cond_1f

    if-ge p1, v2, :cond_1f

    .line 800
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setCurrentItem(I)V

    sub-int/2addr p1, v2

    return p1

    .line 802
    :cond_1f
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mPoints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_38

    if-le p1, v2, :cond_38

    .line 803
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mValueList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setCurrentItem(I)V

    sub-int/2addr p1, v2

    return p1

    :cond_38
    add-int/lit8 v3, v1, 0x1

    .line 806
    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mPoints:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_63

    .line 807
    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mPoints:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le p1, v2, :cond_63

    if-gt p1, v4, :cond_63

    sub-int v0, v4, v2

    .line 809
    div-int/lit8 v0, v0, 0x2

    sub-int v2, p1, v2

    if-le v2, v0, :cond_5f

    .line 812
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setCurrentItem(I)V

    sub-int/2addr p1, v4

    return p1

    .line 815
    :cond_5f
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setCurrentItem(I)V

    return v2

    :cond_63
    move v1, v3

    goto :goto_2

    :cond_65
    return v0
.end method

.method private isLightLine(I)Z
    .registers 3

    .line 716
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mOffSetNum:I

    div-int/2addr p1, v0

    .line 717
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCurrentLine:I

    if-eq v0, p1, :cond_b

    .line 718
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCurrentLine:I

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method private scrollFinish()V
    .registers 8

    .line 776
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    .line 777
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCenterPointX:F

    float-to-int v1, v1

    add-int/2addr v1, v0

    .line 779
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mIsRecording:Z

    if-nez v0, :cond_28

    .line 780
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->getScrollDistance(I)I

    move-result v0

    if-eqz v0, :cond_4d

    .line 782
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

    .line 785
    :cond_28
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCurrentItem:Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;->value:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->getPointXByValue(Ljava/lang/String;)I

    move-result v0

    .line 786
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

    invoke-virtual {v4}, Landroid/widget/Scroller;->getFinalX()I

    move-result v4

    sub-int/2addr v0, v4

    const/16 v4, 0x3e8

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 788
    :cond_4d
    :goto_4d
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 789
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mIsRecording:Z

    if-nez v0, :cond_5f

    .line 790
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mValueChangedListener:Lcom/transsion/camera/app/ui/widget/IValueChangedListener;

    if-eqz v0, :cond_5f

    .line 791
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCurrentItem:Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;->value:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/ui/widget/IValueChangedListener;->onValueChanged(Ljava/lang/String;)V

    :cond_5f
    return-void
.end method


# virtual methods
.method public addPoint(I)V
    .registers 3

    .line 321
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mPoints:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mPoints:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mValueList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_34

    .line 323
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->getCurrentItemIndex()I

    move-result p1

    if-gez p1, :cond_1e

    goto :goto_34

    .line 327
    :cond_1e
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mPoints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-gez p1, :cond_2d

    goto :goto_34

    .line 331
    :cond_2d
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCenterPointX:F

    float-to-int v0, v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->startScroll(I)V

    :cond_34
    :goto_34
    return-void
.end method

.method public calculateCenterPointX()V
    .registers 7

    .line 402
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 403
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 404
    iget v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mParentRootWidth:I

    if-eqz v2, :cond_16

    :goto_14
    int-to-float v2, v2

    goto :goto_1b

    :cond_16
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    goto :goto_14

    :goto_1b
    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 405
    iget v4, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mDegree:I

    if-nez v4, :cond_24

    const/4 v4, 0x0

    goto :goto_26

    :cond_24
    iget v4, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mAdjustLeftMargin:I

    :goto_26
    int-to-float v4, v4

    sub-float/2addr v2, v4

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    iget v4, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScaleWidth:I

    int-to-float v4, v4

    div-float/2addr v4, v3

    sub-float/2addr v2, v4

    iget v4, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mAdjustValue:F

    add-float/2addr v2, v4

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCenterPointX:F

    .line 406
    sget-object v2, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[calculateCenterPointX]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCenterPointX:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " ,parentView.getLeft() :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,parentRootView.getWidth() / 2f :"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " ,parentRootView.getHeight() / 2f :"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 406
    invoke-static {v2, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected checkCurrentItem()V
    .registers 6

    .line 746
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 747
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getFinalX()I

    move-result v3

    iget v4, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCenterPointX:F

    float-to-int v4, v4

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x5

    if-gt v2, v3, :cond_6

    .line 749
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mPoints:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_6

    .line 751
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mValueList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;

    iput-object v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCurrentItem:Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;

    goto :goto_6

    :cond_3b
    return-void
.end method

.method public computeScroll()V
    .registers 3

    .line 232
    invoke-super {p0}, Landroid/view/View;->computeScroll()V

    .line 233
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 234
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->scrollTo(II)V

    .line 235
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    .line 236
    :cond_19
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mIsDown:Z

    if-nez v0, :cond_23

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mQuoteByPortraitSpot:Z

    if-eqz v0, :cond_23

    .line 237
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mIsMove:Z

    :cond_23
    return-void
.end method

.method public destroy()V
    .registers 3

    .line 250
    sget-object v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "destroy"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 252
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mValueList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 253
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/Scroller;->setFinalX(I)V

    return-void
.end method

.method protected doScroll(II)V
    .registers 9

    .line 826
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/Scroller;->getFinalY()I

    move-result v2

    const/4 v4, 0x0

    move v3, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    return-void
.end method

.method public getCenterPointX()F
    .registers 1

    .line 860
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCenterPointX:F

    return p0
.end method

.method protected getClosetPointX(F)I
    .registers 6

    .line 758
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 759
    sget-object p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "getClosetPointX return, mPoints is empty"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 762
    :cond_11
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mPoints:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    float-to-int p1, p1

    sub-int v2, v0, p1

    .line 763
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 764
    :goto_24
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mPoints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4f

    .line 765
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mPoints:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-gt v3, v2, :cond_4c

    .line 768
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mPoints:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v2, v3

    :cond_4c
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    :cond_4f
    return v0
.end method

.method protected getCurrentDownPointX(F)I
    .registers 5

    .line 737
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mPoints:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    float-to-int v1, p1

    sub-int/2addr v1, v0

    .line 738
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0x3c

    if-ge v1, v2, :cond_6

    return v0

    :cond_21
    const/4 p0, -0x1

    return p0
.end method

.method protected getCurrentItemIndex()I
    .registers 6

    .line 690
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCurrentItem:Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;

    const/4 v1, -0x1

    if-nez v0, :cond_6

    return v1

    .line 693
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mValueList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;

    .line 694
    iget-object v3, v2, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;->value:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCurrentItem:Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;

    iget-object v4, v4, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;->value:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 695
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mValueList:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_2b
    return v1
.end method

.method public getDurationItemByIndex(I)Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;
    .registers 3

    if-ltz p1, :cond_14

    .line 314
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mValueList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_b

    goto :goto_14

    .line 317
    :cond_b
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mValueList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;

    return-object p0

    :cond_14
    :goto_14
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getEndY()F
    .registers 2

    .line 733
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mMarginBottom:I

    sub-int/2addr v0, p0

    int-to-float p0, v0

    return p0
.end method

.method public getIsDown()Z
    .registers 1

    .line 353
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mIsDown:Z

    return p0
.end method

.method protected getLeftFadingEdgeStrength()F
    .registers 1

    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method protected getPointXByValue(Ljava/lang/String;)I
    .registers 6

    .line 841
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mPoints:Ljava/util/List;

    const/4 v1, -0x1

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mValueList:Ljava/util/List;

    if-eqz v0, :cond_3a

    .line 842
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;

    .line 843
    iget-object v3, v2, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;->value:Ljava/lang/String;

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 844
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->isFull()Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 845
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mPoints:Ljava/util/List;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mValueList:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_3a
    return v1
.end method

.method protected getRightFadingEdgeStrength()F
    .registers 1

    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public getScrollerIsMove()Z
    .registers 1

    .line 349
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mIsMove:Z

    return p0
.end method

.method protected getStartY()F
    .registers 3

    .line 729
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScaleHeight:I

    sub-int/2addr v0, v1

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mMarginBottom:I

    sub-int/2addr v0, p0

    int-to-float p0, v0

    return p0
.end method

.method public init(Landroid/content/Context;)V
    .registers 6

    .line 416
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mContext:Landroid/content/Context;

    .line 417
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    .line 418
    new-instance v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mDimenInfo:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;

    .line 420
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->initData(Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;)V

    const/4 p1, 0x0

    .line 421
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->update(I)V

    .line 423
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->scroller_color_white:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScrollerColorWhite:I

    .line 424
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->pmaster_major_graduation_color_lowlight:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScrollerColorBlack:I

    .line 425
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->scroller_color_white:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLineColorWhite:I

    .line 426
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->pmaster_major_graduation_color_lowlight:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLineColorBlack:I

    .line 427
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->scroller_color_alpha_50_white:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mAlphaLineColorWhite:I

    .line 428
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->scroller_text_shadow_color:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mAlphaLineColorBlack:I

    .line 429
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->scroller_text_selected_color:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mSelectedColor:I

    .line 431
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    .line 432
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 433
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 434
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextPaint:Landroid/graphics/Paint;

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLowLight:Z

    if-eqz v1, :cond_79

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScrollerColorBlack:I

    goto :goto_7b

    :cond_79
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScrollerColorWhite:I

    :goto_7b
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 435
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 436
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->scroller_text_shadow_color:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    const/high16 v2, 0x40800000    # 4.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2, v3, v3, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 438
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLinePaint:Landroid/graphics/Paint;

    .line 439
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 440
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 441
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLinePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScaleWidth:I

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 442
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLinePaint:Landroid/graphics/Paint;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLowLight:Z

    if-eqz v2, :cond_b8

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLineColorBlack:I

    goto :goto_ba

    :cond_b8
    iget v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLineColorWhite:I

    :goto_ba
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 444
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mAlphaLinePaint:Landroid/graphics/Paint;

    .line 445
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 446
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mAlphaLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 447
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mAlphaLinePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScaleWidth:I

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 448
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mAlphaLinePaint:Landroid/graphics/Paint;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLowLight:Z

    if-eqz v2, :cond_dd

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mAlphaLineColorBlack:I

    goto :goto_df

    :cond_dd
    iget v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mAlphaLineColorWhite:I

    :goto_df
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 450
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLongLinePaint:Landroid/graphics/Paint;

    .line 451
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 452
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLongLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 453
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLongLinePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScaleWidth:I

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 454
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLongLinePaint:Landroid/graphics/Paint;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLowLight:Z

    if-eqz v2, :cond_102

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLineColorBlack:I

    goto :goto_104

    :cond_102
    iget v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLineColorWhite:I

    :goto_104
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 456
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mStrokeLinePaint:Landroid/graphics/Paint;

    .line 457
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 458
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mStrokeLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 459
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mStrokeLinePaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mStrokePaintWidth:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 460
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mStrokeLinePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->scroller_line_stroke_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 462
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->velocityTracker:Landroid/view/VelocityTracker;

    const/16 p1, 0x5dc

    .line 463
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mMinFlingVelocity:I

    return-void
.end method

.method protected initData(Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;)V
    .registers 2

    const/4 p1, 0x0

    .line 467
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mAdjustLeftMargin:I

    const/4 p1, 0x0

    .line 468
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mAdjustValue:F

    return-void
.end method

.method protected isFull()Z
    .registers 3

    .line 725
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mValueList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_18

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mValueList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    .line 391
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 392
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLineNumbers:I

    if-lez v0, :cond_16

    .line 393
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCountRange:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    .line 394
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCountWidth:I

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCountRange:I

    .line 395
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->calculateCenterPointX()V

    .line 397
    :cond_13
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->drawRuler(Landroid/graphics/Canvas;)V

    :cond_16
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5

    .line 379
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 380
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 381
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 382
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    const/high16 v1, -0x80000000

    if-ne p2, v1, :cond_15

    .line 384
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScrollerPanelHeight:I

    .line 386
    :cond_15
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 139
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    invoke-static {p0}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_e

    return v1

    .line 142
    :cond_e
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 143
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_17a

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCurrentItem:Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;

    if-eqz v0, :cond_17a

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_27

    goto/16 :goto_17a

    .line 147
    :cond_27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_135

    if-eq v0, v2, :cond_86

    const/4 v3, 0x2

    if-eq v0, v3, :cond_38

    const/4 v3, 0x3

    if-eq v0, v3, :cond_86

    goto/16 :goto_179

    .line 167
    :cond_38
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mOnTouchMoveListener:Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$OnTouchMoveListener;

    if-eqz v0, :cond_3f

    .line 168
    invoke-interface {v0}, Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$OnTouchMoveListener;->onTouchMoveStart()V

    .line 170
    :cond_3f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mStartX:F

    sub-float/2addr v0, v1

    const/high16 v1, -0x3fc00000    # -3.0f

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_52

    const/high16 v1, 0x40400000    # 3.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_179

    .line 172
    :cond_52
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mIsMove:Z

    float-to-int v0, v0

    neg-int v0, v0

    const/16 v1, 0xfa

    .line 173
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->doScroll(II)V

    .line 174
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 175
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mStartX:F

    .line 176
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCurrentItem:Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;->value:Ljava/lang/String;

    .line 177
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->checkCurrentItem()V

    .line 178
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mIsValueAuto:Z

    if-nez v0, :cond_79

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCurrentItem:Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;->value:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_179

    .line 179
    :cond_79
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mValueChangedListener:Lcom/transsion/camera/app/ui/widget/IValueChangedListener;

    if-eqz p1, :cond_179

    .line 180
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCurrentItem:Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;->value:Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/ui/widget/IValueChangedListener;->onValueChanged(Ljava/lang/String;)V

    goto/16 :goto_179

    .line 187
    :cond_86
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mOnTouchMoveListener:Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$OnTouchMoveListener;

    if-eqz v0, :cond_8d

    .line 188
    invoke-interface {v0}, Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$OnTouchMoveListener;->onTouchMoveStop()V

    .line 190
    :cond_8d
    invoke-static {p0}, Lcom/transsion/camera/utils/MultiTouchManager;->stopTouching(Landroid/view/View;)V

    .line 191
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mIsDown:Z

    .line 192
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mQuoteByPortraitSpot:Z

    if-nez v0, :cond_98

    .line 193
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mIsMove:Z

    .line 195
    :cond_98
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->velocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 196
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    .line 197
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mMinFlingVelocity:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_e4

    .line 198
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mIsVelocityToScroller:Z

    float-to-double v0, v0

    const-wide v4, 0x3fc3333333333333L    # 0.15

    mul-double/2addr v0, v4

    neg-double v0, v0

    double-to-int p1, v0

    int-to-float p1, p1

    .line 200
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCenterPointX:F

    float-to-int v0, v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->getClosetPointX(F)I

    move-result p1

    .line 201
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCenterPointX:F

    float-to-int v0, v0

    sub-int/2addr v0, p1

    neg-int v0, v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, v3}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->doScroll(II)V

    .line 202
    invoke-virtual {p0, p1, v2}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setCurrentItemBySelected(IZ)V

    .line 203
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_179

    .line 205
    :cond_e4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mEventStartX:F

    sub-float/2addr p1, v0

    .line 206
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_fa

    .line 207
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->scrollFinish()V

    goto/16 :goto_179

    .line 209
    :cond_fa
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mIsDownStopScroller:Z

    if-eqz p1, :cond_ff

    return v1

    .line 212
    :cond_ff
    iget p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mStartX:F

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCenterPointX:F

    sub-float/2addr p1, v0

    .line 213
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCenterPointX:F

    float-to-int v0, v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->getCurrentDownPointX(F)I

    move-result p1

    if-ltz p1, :cond_131

    .line 214
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mIsRecording:Z

    if-nez v0, :cond_131

    .line 215
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCenterPointX:F

    float-to-int v0, v0

    sub-int/2addr v0, p1

    neg-int v0, v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, v3}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->doScroll(II)V

    .line 216
    invoke-virtual {p0, p1, v2}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setCurrentItemBySelected(IZ)V

    .line 217
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_179

    .line 219
    :cond_131
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->scrollFinish()V

    goto :goto_179

    .line 149
    :cond_135
    invoke-static {p0}, Lcom/transsion/camera/utils/MultiTouchManager;->startTouching(Landroid/view/View;)V

    .line 150
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mIsDown:Z

    .line 151
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mIsDownStopScroller:Z

    .line 152
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_16b

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mIsVelocityToScroller:Z

    if-eqz v0, :cond_16b

    .line 153
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mIsDownStopScroller:Z

    .line 154
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 155
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->getCurrentItemIndex()I

    move-result v0

    if-ltz v0, :cond_16b

    .line 157
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mPoints:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 158
    iget v3, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCenterPointX:F

    float-to-int v3, v3

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->scrollTo(II)V

    .line 159
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 162
    :cond_16b
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mIsVelocityToScroller:Z

    .line 163
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mEventStartX:F

    .line 164
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mStartX:F

    :cond_179
    :goto_179
    return v2

    .line 144
    :cond_17a
    :goto_17a
    sget-object p1, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

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

.method public removeScrollerPointsCallback()V
    .registers 2

    const/4 v0, 0x0

    .line 134
    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScrollerPointsCallback:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$ScrollerPointsCallback;

    return-void
.end method

.method public resetScrollerParams()V
    .registers 1

    return-void
.end method

.method public rotateIndicator(I)V
    .registers 2

    .line 702
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mDegree:I

    const/4 p1, 0x0

    .line 703
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mIsVideoPortrait:Z

    .line 704
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->calculateCenterPointX()V

    .line 705
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public rotateIndicatorForVideoFlip(IZ)V
    .registers 3

    .line 709
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mDegree:I

    .line 710
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mIsVideoPortrait:Z

    .line 711
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->calculateCenterPointX()V

    .line 712
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public scrollToCurrentItem()V
    .registers 1

    return-void
.end method

.method public scrollToPosition(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public setAdjustLeftMargin(I)V
    .registers 2

    .line 864
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mAdjustLeftMargin:I

    return-void
.end method

.method public setCanvasTranslateX(F)V
    .registers 2

    return-void
.end method

.method public setCurrentItem(I)V
    .registers 5

    .line 307
    sget-object v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentItem index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-ltz p1, :cond_2a

    .line 308
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mValueList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2a

    .line 309
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mValueList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCurrentItem:Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;

    :cond_2a
    return-void
.end method

.method public setCurrentItem(Ljava/lang/String;)V
    .registers 5

    .line 298
    sget-object v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentItem value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mValueList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1c
    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;

    .line 300
    iget-object v2, v1, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;->value:Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 301
    iput-object v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCurrentItem:Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;

    goto :goto_1c

    :cond_33
    return-void
.end method

.method public setCurrentItemBySelected(IZ)V
    .registers 6

    const/4 v0, 0x0

    .line 336
    :goto_1
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2f

    .line 337
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mPoints:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p1, v1, :cond_2c

    .line 338
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mValueList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;

    iput-object v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCurrentItem:Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;

    if-eqz p2, :cond_2c

    .line 340
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mValueChangedListener:Lcom/transsion/camera/app/ui/widget/IValueChangedListener;

    if-eqz v2, :cond_2c

    .line 341
    iget-object v1, v1, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;->value:Ljava/lang/String;

    invoke-interface {v2, v1}, Lcom/transsion/camera/app/ui/widget/IValueChangedListener;->onValueChanged(Ljava/lang/String;)V

    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2f
    return-void
.end method

.method public setDrawableScale(ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 4

    return-void
.end method

.method public setDurationChangedListener(Lcom/transsion/camera/app/ui/widget/IValueChangedListener;)V
    .registers 2

    .line 246
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mValueChangedListener:Lcom/transsion/camera/app/ui/widget/IValueChangedListener;

    return-void
.end method

.method public setEdgeFadeEnable(Z)V
    .registers 2

    return-void
.end method

.method public setFadingLength(F)V
    .registers 2

    return-void
.end method

.method public setInteractiveListener(Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$IInteractiveListener;)V
    .registers 2

    .line 126
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mInteractiveListener:Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$IInteractiveListener;

    return-void
.end method

.method public setIsDurationAuto(Z)V
    .registers 2

    .line 257
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mIsValueAuto:Z

    return-void
.end method

.method public setIsRecording(Z)V
    .registers 2

    .line 242
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mIsRecording:Z

    return-void
.end method

.method public setOnTouchMoveListener(Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$OnTouchMoveListener;)V
    .registers 2

    .line 122
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mOnTouchMoveListener:Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$OnTouchMoveListener;

    return-void
.end method

.method public setParentRootWidth(I)V
    .registers 2

    .line 412
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mParentRootWidth:I

    return-void
.end method

.method public setQuoteByPortraitSpot(Z)V
    .registers 2

    .line 521
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mQuoteByPortraitSpot:Z

    return-void
.end method

.method public setScaleGapByKey(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public setScope(IILcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;)V
    .registers 4

    .line 0
    return-void
.end method

.method public setScope(Ljava/util/List;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;",
            ">;I)V"
        }
    .end annotation

    .line 273
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->destroy()V

    .line 274
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    mul-int/2addr v0, p2

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLineNumbers:I

    .line 275
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mOffSetNum:I

    .line 276
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mValueList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 277
    iget p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLineNumbers:I

    iget p2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScaleGap:I

    mul-int/2addr p2, p1

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScaleWidth:I

    mul-int/2addr p1, v0

    add-int/2addr p2, p1

    iput p2, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCountWidth:I

    .line 278
    sget-object p1, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setScope "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLineNumbers:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mValueList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setScope(Ljava/util/List;Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;)V
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

    .line 0
    return-void
.end method

.method public setScrollerPanelHeight(I)V
    .registers 2

    .line 872
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScrollerPanelHeight:I

    return-void
.end method

.method public setScrollerParamsForAnim(FF)V
    .registers 3

    return-void
.end method

.method public setScrollerPointsCallback(Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$ScrollerPointsCallback;)V
    .registers 2

    .line 130
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScrollerPointsCallback:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$ScrollerPointsCallback;

    return-void
.end method

.method public setScrollerStatus(Z)V
    .registers 2

    return-void
.end method

.method public setSuggestValue(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public setTextAlign(I)V
    .registers 4

    .line 876
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_8

    .line 878
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    goto :goto_d

    :cond_8
    const/4 v1, 0x2

    if-ne p1, v1, :cond_d

    .line 880
    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    .line 882
    :cond_d
    :goto_d
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method

.method public setTextTop(I)V
    .registers 2

    .line 868
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextTop:I

    return-void
.end method

.method protected startScroll(I)V
    .registers 3

    .line 830
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mNeedDoStartScroll:Z

    if-eqz v0, :cond_a

    neg-int p1, p1

    const/16 v0, 0xa

    .line 831
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->doScroll(II)V

    .line 833
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public update(I)V
    .registers 4

    .line 472
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScreenFormType:I

    const/4 v0, 0x7

    if-ne v0, p1, :cond_70

    .line 475
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x40100000    # 2.25f

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const v0, 0x3c23d70a    # 0.01f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_70

    .line 476
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mDimenInfo:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;

    iget v0, p1, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;->mScaleWidth:I

    int-to-float v0, v0

    const v1, 0x3faaaaab

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScaleWidth:I

    .line 477
    iget v0, p1, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;->mScaleHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScaleHeight:I

    .line 478
    iget v0, p1, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;->mScaleGap:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScaleGap:I

    .line 479
    iget v0, p1, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;->mTextSize:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextSize:I

    .line 480
    iget v0, p1, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;->mMarginBottom:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mMarginBottom:I

    .line 481
    iget v0, p1, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;->mTextBottom:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextBottom:I

    .line 482
    iget v0, p1, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;->mTextRotateBottom:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextRotateBottom:I

    .line 483
    iget v0, p1, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;->mTextTop:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextTop:I

    .line 484
    iget v0, p1, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;->mStrokePaintWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mStrokePaintWidth:I

    .line 485
    iget v0, p1, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;->mScrollerPanelHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScrollerPanelHeight:I

    .line 486
    iget p1, p1, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;->mLongScaleHeight:I

    int-to-float p1, p1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLongScaleHeight:I

    goto :goto_9e

    .line 488
    :cond_70
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mDimenInfo:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;

    iget v0, p1, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;->mScaleWidth:I

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScaleWidth:I

    .line 489
    iget v0, p1, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;->mScaleHeight:I

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScaleHeight:I

    .line 490
    iget v0, p1, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;->mScaleGap:I

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScaleGap:I

    .line 491
    iget v0, p1, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;->mTextSize:I

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextSize:I

    .line 492
    iget v0, p1, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;->mMarginBottom:I

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mMarginBottom:I

    .line 493
    iget v0, p1, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;->mTextBottom:I

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextBottom:I

    .line 494
    iget v0, p1, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;->mTextRotateBottom:I

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextRotateBottom:I

    .line 495
    iget v0, p1, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;->mTextTop:I

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextTop:I

    .line 496
    iget v0, p1, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;->mStrokePaintWidth:I

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mStrokePaintWidth:I

    .line 497
    iget v0, p1, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;->mScrollerPanelHeight:I

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScrollerPanelHeight:I

    .line 498
    iget p1, p1, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;->mLongScaleHeight:I

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLongScaleHeight:I

    .line 501
    :goto_9e
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextPaint:Landroid/graphics/Paint;

    if-eqz p1, :cond_a8

    .line 502
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextSize:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 504
    :cond_a8
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLinePaint:Landroid/graphics/Paint;

    if-eqz p1, :cond_b2

    .line 505
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScaleWidth:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 507
    :cond_b2
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mAlphaLinePaint:Landroid/graphics/Paint;

    if-eqz p1, :cond_bc

    .line 508
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScaleWidth:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 510
    :cond_bc
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLongLinePaint:Landroid/graphics/Paint;

    if-eqz p1, :cond_c6

    .line 511
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScaleWidth:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 513
    :cond_c6
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mStrokeLinePaint:Landroid/graphics/Paint;

    if-eqz p1, :cond_d0

    .line 514
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mStrokePaintWidth:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 517
    :cond_d0
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public updateLowLight(Z)V
    .registers 4

    .line 357
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLowLight:Z

    if-eq p1, v0, :cond_39

    .line 358
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLowLight:Z

    .line 359
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mTextPaint:Landroid/graphics/Paint;

    if-eqz p1, :cond_d

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScrollerColorBlack:I

    goto :goto_f

    :cond_d
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScrollerColorWhite:I

    :goto_f
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 360
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLinePaint:Landroid/graphics/Paint;

    if-eqz p1, :cond_19

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLineColorBlack:I

    goto :goto_1b

    :cond_19
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLineColorWhite:I

    :goto_1b
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 361
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mAlphaLinePaint:Landroid/graphics/Paint;

    if-eqz p1, :cond_25

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mAlphaLineColorBlack:I

    goto :goto_27

    :cond_25
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mAlphaLineColorWhite:I

    :goto_27
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 362
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLongLinePaint:Landroid/graphics/Paint;

    if-eqz p1, :cond_31

    iget p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLineColorBlack:I

    goto :goto_33

    :cond_31
    iget p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mLineColorWhite:I

    :goto_33
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 363
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_39
    return-void
.end method

.method public updateScope(IILcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;)V
    .registers 4

    .line 0
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

    .line 0
    return-void
.end method

.method public updateScope(Ljava/util/List;Ljava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 288
    invoke-virtual {p0, p1, p3}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setScope(Ljava/util/List;I)V

    .line 289
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setCurrentItem(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public updateScrollerParamsInfo(Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;)V
    .registers 2

    return-void
.end method
