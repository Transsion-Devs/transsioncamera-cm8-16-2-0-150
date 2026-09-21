.class public Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lio/github/inflationx/calligraphy3/HasTypeface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterBlock;,
        Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;
    }
.end annotation


# static fields
.field public static final LETTER_TOUCH_ACTION_DOWN:I = 0x1

.field public static final LETTER_TOUCH_ACTION_UP:I = 0x2

.field public static final LETTER_TOUCH_MOVE:I = 0x3

.field private static final SHOW_FROM_SCALE:F = 0.6f

.field private static final SHOW_TO_ALPHA:I = 0xff

.field private static final SHOW_TO_SCALE:F = 1.0f

.field private static final SPECIAL_LETTERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field public static final mHeart:Ljava/lang/String; = "\u2606"


# instance fields
.field private alignRight:Z

.field private alphabetSearchConfig:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;

.field animationInterpolator:Landroid/view/animation/Interpolator;

.field private duration:J

.field private indicatorColor:I

.field private final indicatorLetterPaint:Landroid/graphics/Paint;

.field private final indicatorPaint:Landroid/graphics/Paint;

.field private isLeft:Z

.field private letterIndicatorBitmap:Landroid/graphics/Bitmap;

.field private letterIndicatorBitmapEnable:Z

.field private letterIndicatorBitmapWidth:I

.field private letterIndicatorColor:I

.field private letterIndicatorMinDurationTime:J

.field private letterIndicatorRadius:I

.field private letterIndicatorSize:F

.field private letterIndicatorStart:I

.field private letterMaxSize:F

.field private letterSelectorListener:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig$LetterSelectorListener;

.field private letterSize:F

.field private letterTouchAbleWidth:F

.field private final mAllLetters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAlpha:I

.field private final mArrayMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/graphics/RectF;",
            "Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterBlock;",
            ">;"
        }
    .end annotation
.end field

.field private mBitmapHeartBubble:Landroid/graphics/Bitmap;

.field private mBitmapHeartLetter:Landroid/graphics/Bitmap;

.field private mBubbleHideDelayTime:I

.field private mBubblePaddingStart:I

.field private final mChangelessLetters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDisableColor:I

.field private mEnableColor:I

.field private mExcludePaddingBottomCenter:Z

.field private final mExtraRectFBottom:Landroid/graphics/RectF;

.field private final mExtraRectFTop:Landroid/graphics/RectF;

.field private mFixWidth:I

.field mGetStringTextHeightPaint:Landroid/graphics/Paint;

.field mGetStringTextHeightRect:Landroid/graphics/Rect;

.field private mHeight:I

.field private mHideAlphaAnimation:Landroid/animation/ValueAnimator;

.field private mHideScaleAnimation:Landroid/animation/ValueAnimator;

.field private mHideScaleRunnable:Ljava/lang/Runnable;

.field private mIsOverUnits:Z

.field private mIsVerticalCentre:Z

.field private final mLetterBlockList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterBlock;",
            ">;"
        }
    .end annotation
.end field

.field private mLetters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPanelHeight:F

.field private mPanelHeightGap:F

.field private mPanelWidth:I

.field private final mRectFBubble:Landroid/graphics/RectF;

.field private final mRectFClip:Landroid/graphics/RectF;

.field private final mRectFList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field private final mRectFTotal:Landroid/graphics/RectF;

.field private mScale:F

.field private mSelectedLetter:Ljava/lang/String;

.field private mSelectedLetterPosition:I

.field private mSelectedRectIndex:I

.field private mSelectorPaddingBottom:I

.field private mSelectorPaddingStart:I

.field private mSelectorPaddingTop:I

.field private mShowAnimation:Landroid/animation/ValueAnimator;

.field private mShowAnimationCancel:Z

.field private mSlideOutside:Z

.field private mTouched:Z

.field private mWidth:I

.field private selectedLetterColor:I

.field private final selectedLetterPaint:Landroid/graphics/Paint;

.field private selectedLetters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private showSelector:Z

.field private topAndBottomClickableEnable:Z

.field private touchSlotEnable:Z

.field touching:Z

.field private final txtAnimationPaint:Landroid/graphics/Paint;

.field private final txtMaxPaint:Landroid/graphics/Paint;

.field private final txtPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 441
    const-string v4, "\u2606"

    const-string v5, "\u039b"

    const-string v0, "\u2606"

    const-string v1, "#"

    const-string v2, "\u2026"

    const-string v3, "\u2664"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->SPECIAL_LETTERS:Ljava/util/List;

    .line 467
    const-class v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 32

    move-object/from16 v0, p0

    .line 406
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 418
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->animationInterpolator:Landroid/view/animation/Interpolator;

    .line 420
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->txtPaint:Landroid/graphics/Paint;

    .line 421
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->txtMaxPaint:Landroid/graphics/Paint;

    .line 422
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->txtAnimationPaint:Landroid/graphics/Paint;

    .line 423
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->indicatorPaint:Landroid/graphics/Paint;

    .line 424
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->indicatorLetterPaint:Landroid/graphics/Paint;

    .line 425
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->selectedLetterPaint:Landroid/graphics/Paint;

    const-wide/16 v3, 0xc8

    .line 431
    iput-wide v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->duration:J

    const-wide/16 v3, 0x3e8

    .line 432
    iput-wide v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterIndicatorMinDurationTime:J

    const/4 v1, 0x0

    .line 434
    iput-boolean v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->isLeft:Z

    .line 435
    iput-boolean v2, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->alignRight:Z

    .line 440
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mAllLetters:Ljava/util/List;

    .line 442
    const-string v28, "Y"

    const-string v29, "Z"

    const-string v4, "A"

    const-string v5, "B"

    const-string v6, "C"

    const-string v7, "D"

    const-string v8, "E"

    const-string v9, "F"

    const-string v10, "G"

    const-string v11, "H"

    const-string v12, "I"

    const-string v13, "J"

    const-string v14, "K"

    const-string v15, "L"

    const-string v16, "M"

    const-string v17, "N"

    const-string v18, "O"

    const-string v19, "P"

    const-string v20, "Q"

    const-string v21, "R"

    const-string v22, "S"

    const-string v23, "T"

    const-string v24, "U"

    const-string v25, "V"

    const-string v26, "W"

    const-string v27, "X"

    filled-new-array/range {v4 .. v29}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mChangelessLetters:Ljava/util/List;

    const/4 v3, 0x0

    .line 444
    iput v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterTouchAbleWidth:F

    const v3, -0xff4d13

    .line 454
    iput v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->indicatorColor:I

    const/4 v3, -0x1

    .line 455
    iput v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterIndicatorColor:I

    const v4, -0x858586

    .line 456
    iput v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->selectedLetterColor:I

    .line 458
    iput-boolean v2, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->topAndBottomClickableEnable:Z

    .line 462
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFBubble:Landroid/graphics/RectF;

    .line 464
    iput-boolean v2, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->touchSlotEnable:Z

    .line 466
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mExtraRectFTop:Landroid/graphics/RectF;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mExtraRectFBottom:Landroid/graphics/RectF;

    .line 469
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mArrayMap:Landroid/util/ArrayMap;

    .line 470
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFTotal:Landroid/graphics/RectF;

    .line 471
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFClip:Landroid/graphics/RectF;

    .line 472
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFList:Ljava/util/List;

    .line 475
    iput v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectedLetterPosition:I

    .line 477
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mLetterBlockList:Ljava/util/List;

    .line 488
    iput-boolean v2, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->showSelector:Z

    iput-boolean v2, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mIsVerticalCentre:Z

    const/16 v2, 0x3e8

    .line 489
    iput v2, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mBubbleHideDelayTime:I

    .line 494
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mGetStringTextHeightPaint:Landroid/graphics/Paint;

    .line 495
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mGetStringTextHeightRect:Landroid/graphics/Rect;

    .line 1068
    iput-boolean v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->touching:Z

    const/4 v1, 0x0

    move-object/from16 v2, p1

    .line 407
    invoke-direct {v0, v2, v1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 33

    move-object/from16 v0, p0

    .line 401
    invoke-direct/range {p0 .. p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 418
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->animationInterpolator:Landroid/view/animation/Interpolator;

    .line 420
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->txtPaint:Landroid/graphics/Paint;

    .line 421
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->txtMaxPaint:Landroid/graphics/Paint;

    .line 422
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->txtAnimationPaint:Landroid/graphics/Paint;

    .line 423
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->indicatorPaint:Landroid/graphics/Paint;

    .line 424
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->indicatorLetterPaint:Landroid/graphics/Paint;

    .line 425
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->selectedLetterPaint:Landroid/graphics/Paint;

    const-wide/16 v3, 0xc8

    .line 431
    iput-wide v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->duration:J

    const-wide/16 v3, 0x3e8

    .line 432
    iput-wide v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterIndicatorMinDurationTime:J

    const/4 v1, 0x0

    .line 434
    iput-boolean v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->isLeft:Z

    .line 435
    iput-boolean v2, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->alignRight:Z

    .line 440
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mAllLetters:Ljava/util/List;

    .line 442
    const-string v28, "Y"

    const-string v29, "Z"

    const-string v4, "A"

    const-string v5, "B"

    const-string v6, "C"

    const-string v7, "D"

    const-string v8, "E"

    const-string v9, "F"

    const-string v10, "G"

    const-string v11, "H"

    const-string v12, "I"

    const-string v13, "J"

    const-string v14, "K"

    const-string v15, "L"

    const-string v16, "M"

    const-string v17, "N"

    const-string v18, "O"

    const-string v19, "P"

    const-string v20, "Q"

    const-string v21, "R"

    const-string v22, "S"

    const-string v23, "T"

    const-string v24, "U"

    const-string v25, "V"

    const-string v26, "W"

    const-string v27, "X"

    filled-new-array/range {v4 .. v29}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mChangelessLetters:Ljava/util/List;

    const/4 v3, 0x0

    .line 444
    iput v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterTouchAbleWidth:F

    const v3, -0xff4d13

    .line 454
    iput v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->indicatorColor:I

    const/4 v3, -0x1

    .line 455
    iput v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterIndicatorColor:I

    const v4, -0x858586

    .line 456
    iput v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->selectedLetterColor:I

    .line 458
    iput-boolean v2, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->topAndBottomClickableEnable:Z

    .line 462
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFBubble:Landroid/graphics/RectF;

    .line 464
    iput-boolean v2, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->touchSlotEnable:Z

    .line 466
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mExtraRectFTop:Landroid/graphics/RectF;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mExtraRectFBottom:Landroid/graphics/RectF;

    .line 469
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mArrayMap:Landroid/util/ArrayMap;

    .line 470
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFTotal:Landroid/graphics/RectF;

    .line 471
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFClip:Landroid/graphics/RectF;

    .line 472
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFList:Ljava/util/List;

    .line 475
    iput v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectedLetterPosition:I

    .line 477
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mLetterBlockList:Ljava/util/List;

    .line 488
    iput-boolean v2, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->showSelector:Z

    iput-boolean v2, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mIsVerticalCentre:Z

    const/16 v2, 0x3e8

    .line 489
    iput v2, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mBubbleHideDelayTime:I

    .line 494
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mGetStringTextHeightPaint:Landroid/graphics/Paint;

    .line 495
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mGetStringTextHeightRect:Landroid/graphics/Rect;

    .line 1068
    iput-boolean v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->touching:Z

    .line 402
    invoke-direct/range {p0 .. p2}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 34

    move-object/from16 v0, p0

    .line 396
    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 418
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->animationInterpolator:Landroid/view/animation/Interpolator;

    .line 420
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->txtPaint:Landroid/graphics/Paint;

    .line 421
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->txtMaxPaint:Landroid/graphics/Paint;

    .line 422
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->txtAnimationPaint:Landroid/graphics/Paint;

    .line 423
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->indicatorPaint:Landroid/graphics/Paint;

    .line 424
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->indicatorLetterPaint:Landroid/graphics/Paint;

    .line 425
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->selectedLetterPaint:Landroid/graphics/Paint;

    const-wide/16 v3, 0xc8

    .line 431
    iput-wide v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->duration:J

    const-wide/16 v3, 0x3e8

    .line 432
    iput-wide v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterIndicatorMinDurationTime:J

    const/4 v1, 0x0

    .line 434
    iput-boolean v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->isLeft:Z

    .line 435
    iput-boolean v2, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->alignRight:Z

    .line 440
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mAllLetters:Ljava/util/List;

    .line 442
    const-string v28, "Y"

    const-string v29, "Z"

    const-string v4, "A"

    const-string v5, "B"

    const-string v6, "C"

    const-string v7, "D"

    const-string v8, "E"

    const-string v9, "F"

    const-string v10, "G"

    const-string v11, "H"

    const-string v12, "I"

    const-string v13, "J"

    const-string v14, "K"

    const-string v15, "L"

    const-string v16, "M"

    const-string v17, "N"

    const-string v18, "O"

    const-string v19, "P"

    const-string v20, "Q"

    const-string v21, "R"

    const-string v22, "S"

    const-string v23, "T"

    const-string v24, "U"

    const-string v25, "V"

    const-string v26, "W"

    const-string v27, "X"

    filled-new-array/range {v4 .. v29}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mChangelessLetters:Ljava/util/List;

    const/4 v3, 0x0

    .line 444
    iput v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterTouchAbleWidth:F

    const v3, -0xff4d13

    .line 454
    iput v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->indicatorColor:I

    const/4 v3, -0x1

    .line 455
    iput v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterIndicatorColor:I

    const v4, -0x858586

    .line 456
    iput v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->selectedLetterColor:I

    .line 458
    iput-boolean v2, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->topAndBottomClickableEnable:Z

    .line 462
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFBubble:Landroid/graphics/RectF;

    .line 464
    iput-boolean v2, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->touchSlotEnable:Z

    .line 466
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mExtraRectFTop:Landroid/graphics/RectF;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mExtraRectFBottom:Landroid/graphics/RectF;

    .line 469
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mArrayMap:Landroid/util/ArrayMap;

    .line 470
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFTotal:Landroid/graphics/RectF;

    .line 471
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFClip:Landroid/graphics/RectF;

    .line 472
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFList:Ljava/util/List;

    .line 475
    iput v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectedLetterPosition:I

    .line 477
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mLetterBlockList:Ljava/util/List;

    .line 488
    iput-boolean v2, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->showSelector:Z

    iput-boolean v2, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mIsVerticalCentre:Z

    const/16 v2, 0x3e8

    .line 489
    iput v2, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mBubbleHideDelayTime:I

    .line 494
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mGetStringTextHeightPaint:Landroid/graphics/Paint;

    .line 495
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mGetStringTextHeightRect:Landroid/graphics/Rect;

    .line 1068
    iput-boolean v1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->touching:Z

    .line 397
    invoke-direct/range {p0 .. p2}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)I
    .registers 1

    .line 52
    iget p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mEnableColor:I

    return p0
.end method

.method static synthetic access$002(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;I)I
    .registers 2

    .line 52
    iput p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mEnableColor:I

    return p1
.end method

.method static synthetic access$100(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)I
    .registers 1

    .line 52
    iget p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mDisableColor:I

    return p0
.end method

.method static synthetic access$1002(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;I)I
    .registers 2

    .line 52
    iput p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectorPaddingStart:I

    return p1
.end method

.method static synthetic access$102(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;I)I
    .registers 2

    .line 52
    iput p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mDisableColor:I

    return p1
.end method

.method static synthetic access$1102(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;Z)Z
    .registers 2

    .line 52
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mIsVerticalCentre:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;Z)Z
    .registers 2

    .line 52
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mExcludePaddingBottomCenter:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;F)F
    .registers 2

    .line 52
    iput p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterTouchAbleWidth:F

    return p1
.end method

.method static synthetic access$1400(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)F
    .registers 1

    .line 52
    iget p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterSize:F

    return p0
.end method

.method static synthetic access$1402(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;F)F
    .registers 2

    .line 52
    iput p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterSize:F

    return p1
.end method

.method static synthetic access$1500(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)F
    .registers 1

    .line 52
    iget p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterMaxSize:F

    return p0
.end method

.method static synthetic access$1502(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;F)F
    .registers 2

    .line 52
    iput p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterMaxSize:F

    return p1
.end method

.method static synthetic access$1600(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)F
    .registers 1

    .line 52
    iget p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterIndicatorSize:F

    return p0
.end method

.method static synthetic access$1602(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;F)F
    .registers 2

    .line 52
    iput p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterIndicatorSize:F

    return p1
.end method

.method static synthetic access$1700(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Landroid/graphics/Paint;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->txtPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Landroid/graphics/Paint;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->selectedLetterPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Landroid/graphics/Paint;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->txtMaxPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Landroid/graphics/Paint;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->indicatorLetterPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$202(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;I)I
    .registers 2

    .line 52
    iput p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterIndicatorColor:I

    return p1
.end method

.method static synthetic access$2100(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)V
    .registers 1

    .line 52
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->updateFontHeight()V

    return-void
.end method

.method static synthetic access$2202(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;I)I
    .registers 2

    .line 52
    iput p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->indicatorColor:I

    return p1
.end method

.method static synthetic access$2300(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Landroid/graphics/Paint;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->indicatorPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$2402(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;I)I
    .registers 2

    .line 52
    iput p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterIndicatorRadius:I

    return p1
.end method

.method static synthetic access$2502(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;J)J
    .registers 3

    .line 52
    iput-wide p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterIndicatorMinDurationTime:J

    return-wide p1
.end method

.method static synthetic access$2600(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)V
    .registers 1

    .line 52
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterSelectorMeasure()V

    return-void
.end method

.method static synthetic access$2702(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;I)I
    .registers 2

    .line 52
    iput p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->selectedLetterColor:I

    return p1
.end method

.method static synthetic access$2802(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2

    .line 52
    iput-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->selectedLetters:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$2902(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;Z)Z
    .registers 2

    .line 52
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->topAndBottomClickableEnable:Z

    return p1
.end method

.method static synthetic access$3002(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    .line 52
    iput-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterIndicatorBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$302(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;I)I
    .registers 2

    .line 52
    iput p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterIndicatorStart:I

    return p1
.end method

.method static synthetic access$3102(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;I)I
    .registers 2

    .line 52
    iput p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterIndicatorBitmapWidth:I

    return p1
.end method

.method static synthetic access$3202(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;Z)Z
    .registers 2

    .line 52
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterIndicatorBitmapEnable:Z

    return p1
.end method

.method static synthetic access$3302(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;J)J
    .registers 3

    .line 52
    iput-wide p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->duration:J

    return-wide p1
.end method

.method static synthetic access$3400(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Ljava/util/List;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mLetters:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$3402(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 52
    iput-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mLetters:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3500()Ljava/util/List;
    .registers 1

    .line 52
    sget-object v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->SPECIAL_LETTERS:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Ljava/util/List;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mAllLetters:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Ljava/util/List;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mChangelessLetters:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;Z)V
    .registers 2

    .line 52
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->showSelector(Z)V

    return-void
.end method

.method static synthetic access$3902(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;Z)Z
    .registers 2

    .line 52
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->touchSlotEnable:Z

    return p1
.end method

.method static synthetic access$4002(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;I)I
    .registers 2

    .line 52
    iput p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mBubbleHideDelayTime:I

    return p1
.end method

.method static synthetic access$402(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    .line 52
    iput-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mBitmapHeartBubble:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$4502(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;I)I
    .registers 2

    .line 52
    iput p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mAlpha:I

    return p1
.end method

.method static synthetic access$4602(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;F)F
    .registers 2

    .line 52
    iput p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mScale:F

    return p1
.end method

.method static synthetic access$4700(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Z
    .registers 1

    .line 52
    iget-boolean p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mShowAnimationCancel:Z

    return p0
.end method

.method static synthetic access$4702(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;Z)Z
    .registers 2

    .line 52
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mShowAnimationCancel:Z

    return p1
.end method

.method static synthetic access$4800(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Z
    .registers 1

    .line 52
    iget-boolean p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mTouched:Z

    return p0
.end method

.method static synthetic access$4802(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;Z)Z
    .registers 2

    .line 52
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mTouched:Z

    return p1
.end method

.method static synthetic access$4900(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Landroid/animation/ValueAnimator;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mHideScaleAnimation:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Landroid/animation/ValueAnimator;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mHideAlphaAnimation:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$502(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    .line 52
    iput-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mBitmapHeartLetter:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)V
    .registers 1

    .line 52
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->startHideAnimation()V

    return-void
.end method

.method static synthetic access$602(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;F)F
    .registers 2

    .line 52
    iput p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mPanelHeight:F

    return p1
.end method

.method static synthetic access$702(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig$LetterSelectorListener;)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig$LetterSelectorListener;
    .registers 2

    .line 52
    iput-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterSelectorListener:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig$LetterSelectorListener;

    return-object p1
.end method

.method static synthetic access$802(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;I)I
    .registers 2

    .line 52
    iput p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectorPaddingTop:I

    return p1
.end method

.method static synthetic access$902(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;I)I
    .registers 2

    .line 52
    iput p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectorPaddingBottom:I

    return p1
.end method

.method private cancelAnimation()V
    .registers 3

    .line 1026
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1027
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mHideScaleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1030
    :cond_f
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mShowAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1031
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mShowAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1034
    :cond_1e
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mHideScaleAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1035
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mHideScaleAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1037
    :cond_2d
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mHideAlphaAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1038
    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mHideAlphaAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3c
    return-void
.end method

.method private checkLayoutDirection()V
    .registers 5

    .line 611
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_a

    move v0, v2

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    if-eqz v0, :cond_11

    .line 612
    iget-boolean v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->alignRight:Z

    if-nez v3, :cond_17

    :cond_11
    if-nez v0, :cond_18

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->alignRight:Z

    if-nez v0, :cond_18

    :cond_17
    move v1, v2

    :cond_18
    iput-boolean v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->isLeft:Z

    return-void
.end method

.method private dpToPx(I)I
    .registers 3

    int-to-float p1, p1

    .line 411
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private drawLetterIndicator(Landroid/graphics/Canvas;)V
    .registers 8

    .line 871
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectedLetter:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f8

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mTouched:Z

    if-nez v0, :cond_e

    goto/16 :goto_f8

    .line 876
    :cond_e
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 877
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->indicatorLetterPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 878
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->indicatorPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 880
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterIndicatorBitmapEnable:Z

    if-eqz v0, :cond_43

    .line 881
    iget v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mScale:F

    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFBubble:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFBubble:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 882
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterIndicatorBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFBubble:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->indicatorPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_57

    .line 884
    :cond_43
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFBubble:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFBubble:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterIndicatorRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->indicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 887
    :goto_57
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 888
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->indicatorLetterPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectedLetter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 889
    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterIndicatorBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mBubblePaddingStart:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v2, v0, v1

    if-lez v2, :cond_74

    div-float/2addr v1, v0

    goto :goto_76

    :cond_74
    const/high16 v1, 0x3f800000    # 1.0f

    .line 891
    :goto_76
    iget-object v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFBubble:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFBubble:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {p1, v1, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 892
    const-string v1, "\u2606"

    iget-object v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectedLetter:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_bd

    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mBitmapHeartBubble:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_bd

    .line 893
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFBubble:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mBitmapHeartBubble:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    iget-object v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFBubble:Landroid/graphics/RectF;

    .line 894
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    iget-object v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mBitmapHeartBubble:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    sub-float/2addr v3, v4

    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->indicatorLetterPaint:Landroid/graphics/Paint;

    .line 893
    invoke-virtual {p1, v0, v1, v3, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_f2

    .line 896
    :cond_bd
    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->indicatorLetterPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/transsion/widgetslib/R$attr;->os_text_secondary:I

    sget v5, Lcom/transsion/widgetslib/R$color;->os_text_secondary_hios:I

    invoke-static {v3, v4, v5}, Lcom/transsion/widgetslib/util/Utils;->getAttrColor(Landroid/content/Context;II)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 897
    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectedLetter:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFBubble:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    div-float/2addr v0, v2

    sub-float/2addr v3, v0

    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFBubble:Landroid/graphics/RectF;

    .line 898
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iget-object v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->indicatorLetterPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->descent()F

    move-result v4

    iget-object v5, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->indicatorLetterPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    add-float/2addr v4, v5

    div-float/2addr v4, v2

    sub-float/2addr v0, v4

    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->indicatorLetterPaint:Landroid/graphics/Paint;

    .line 897
    invoke-virtual {p1, v1, v3, v0, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 900
    :goto_f2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 902
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_f8
    :goto_f8
    return-void
.end method

.method private getTextHeightOffset(Landroid/graphics/Paint;)F
    .registers 3

    .line 807
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p0

    .line 808
    iget v0, p0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget p0, p0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v0, p0

    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result p0

    sub-float/2addr v0, p0

    const/high16 p0, 0x3f000000    # 0.5f

    mul-float/2addr v0, p0

    neg-float p0, v0

    .line 810
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result p1

    add-float/2addr p0, p1

    return p0
.end method

.method private handleMoveTouchLetter(Landroid/graphics/RectF;Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterBlock;)V
    .registers 13

    if-nez p2, :cond_4

    goto/16 :goto_97

    .line 1298
    :cond_4
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mLetterBlockList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1300
    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 1301
    iget-boolean v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mIsOverUnits:Z

    if-eqz v1, :cond_8a

    .line 1304
    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 1305
    iget-object v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mLetterBlockList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-nez p1, :cond_4b

    if-lez v0, :cond_4b

    add-int/lit8 v4, v0, -0x1

    move v6, v3

    move v5, v4

    :goto_29
    add-int v7, v4, v1

    if-ge v5, v7, :cond_4b

    if-ge v6, v1, :cond_46

    if-ge v5, v2, :cond_46

    .line 1311
    iget-object v7, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mArrayMap:Landroid/util/ArrayMap;

    iget-object v8, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFList:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/RectF;

    iget-object v9, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mLetterBlockList:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterBlock;

    invoke-virtual {v7, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_46
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_29

    :cond_4b
    add-int/lit8 v4, v1, -0x1

    if-ne p1, v4, :cond_8a

    add-int/lit8 v4, v2, -0x1

    if-ge v0, v4, :cond_8a

    .line 1318
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mLetterBlockList:Ljava/util/List;

    iget-object v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mArrayMap:Landroid/util/ArrayMap;

    iget-object v5, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    move v4, v0

    :goto_68
    add-int v5, v1, v0

    if-ge v4, v5, :cond_8a

    if-ge v3, v1, :cond_85

    if-ge v4, v2, :cond_85

    .line 1322
    iget-object v5, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mArrayMap:Landroid/util/ArrayMap;

    iget-object v6, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mLetterBlockList:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterBlock;

    invoke-virtual {v5, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_85
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_68

    .line 1328
    :cond_8a
    iput p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectedRectIndex:I

    .line 1330
    iget-boolean p1, p2, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterBlock;->enable:Z

    if-eqz p1, :cond_97

    const/4 p1, 0x3

    .line 1331
    invoke-direct {p0, p2, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->handleTouchedLetter(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterBlock;I)V

    .line 1332
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->startShowAnimation()V

    :cond_97
    :goto_97
    return-void
.end method

.method private handleOverUnitsPst(Ljava/lang/String;I)V
    .registers 9

    .line 1243
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8c

    if-gez p2, :cond_a

    goto/16 :goto_8c

    .line 1249
    :cond_a
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    .line 1250
    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mArrayMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterBlock;

    if-nez v1, :cond_27

    goto :goto_10

    .line 1254
    :cond_27
    iget v1, v1, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterBlock;->index:I

    if-ne p2, v1, :cond_10

    .line 1257
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectedRectIndex:I

    return-void

    .line 1268
    :cond_34
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mLetterBlockList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 1269
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1270
    iget v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectedLetterPosition:I

    if-ge v1, p2, :cond_6a

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_47
    if-ltz p2, :cond_67

    if-ge p2, p1, :cond_67

    if-ltz v1, :cond_67

    .line 1274
    iget-object v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mArrayMap:Landroid/util/ArrayMap;

    iget-object v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mLetterBlockList:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterBlock;

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_47

    .line 1279
    :cond_67
    iput v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectedRectIndex:I

    return-void

    :cond_6a
    const/4 v1, 0x0

    move v2, v1

    :goto_6c
    if-ge v2, v0, :cond_8a

    if-ge p2, p1, :cond_8a

    .line 1284
    iget-object v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mArrayMap:Landroid/util/ArrayMap;

    iget-object v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mLetterBlockList:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterBlock;

    invoke-virtual {v3, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_6c

    .line 1289
    :cond_8a
    iput v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectedRectIndex:I

    :cond_8c
    :goto_8c
    return-void
.end method

.method private handleTouchUpLetter()V
    .registers 5

    .line 1172
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterSelectorListener:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig$LetterSelectorListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 1173
    invoke-interface {v0, v2, v1, v3, v1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig$LetterSelectorListener;->onTouchLetter(Ljava/lang/String;IIZ)V

    .line 1175
    :cond_a
    iput-boolean v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->touching:Z

    return-void
.end method

.method private handleTouchedLetter(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterBlock;I)V
    .registers 6

    if-nez p1, :cond_3

    goto :goto_2b

    .line 1341
    :cond_3
    iget-object v0, p1, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterBlock;->letter:Ljava/lang/String;

    if-eqz v0, :cond_1d

    .line 1342
    iget v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectedLetterPosition:I

    iget v2, p1, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterBlock;->index:I

    if-ne v1, v2, :cond_e

    goto :goto_1d

    .line 1350
    :cond_e
    invoke-virtual {p0, v2}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->setSelectedLetter(I)V

    .line 1352
    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterSelectorListener:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig$LetterSelectorListener;

    if-eqz p0, :cond_2b

    .line 1353
    iget v1, p1, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterBlock;->index:I

    iget-boolean p1, p1, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterBlock;->enable:Z

    invoke-interface {p0, v0, v1, p2, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig$LetterSelectorListener;->onTouchLetter(Ljava/lang/String;IIZ)V

    return-void

    :cond_1d
    :goto_1d
    const/4 v1, 0x1

    if-ne p2, v1, :cond_2b

    .line 1344
    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterSelectorListener:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig$LetterSelectorListener;

    if-eqz p0, :cond_2b

    .line 1345
    iget v1, p1, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterBlock;->index:I

    iget-boolean p1, p1, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterBlock;->enable:Z

    invoke-interface {p0, v0, v1, p2, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig$LetterSelectorListener;->onTouchLetter(Ljava/lang/String;IIZ)V

    :cond_2b
    :goto_2b
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8

    const/4 v0, 0x0

    .line 504
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    const/4 v1, 0x1

    .line 505
    invoke-virtual {p0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 507
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_letter_panel_height_gap:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mPanelHeightGap:F

    .line 508
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_letter_top_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectorPaddingTop:I

    .line 509
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_letter_bottom_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectorPaddingBottom:I

    .line 510
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_letter_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectorPaddingStart:I

    .line 512
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_letter_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterSize:F

    .line 513
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_letter_max_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterMaxSize:F

    .line 514
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_letter_indicator_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterIndicatorSize:F

    .line 516
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/widgetslib/R$dimen;->letter_indicator_radius:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterIndicatorRadius:I

    const/16 v2, 0x18

    .line 517
    invoke-direct {p0, v2}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->dpToPx(I)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterIndicatorStart:I

    .line 519
    iget-object v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->txtPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterSize:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 520
    iget-object v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->txtPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mEnableColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 521
    iget-object v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->txtPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 523
    iget-object v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->txtMaxPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterMaxSize:F

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 524
    iget-object v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->txtMaxPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mEnableColor:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 526
    iget-object v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->selectedLetterPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->selectedLetterColor:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 527
    iget-object v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->selectedLetterPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterSize:F

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 529
    iget-object v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->indicatorLetterPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterIndicatorColor:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 530
    iget-object v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->indicatorLetterPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterIndicatorSize:F

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 532
    iget-object v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->indicatorPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->indicatorColor:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 533
    iget-object v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->indicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/16 v2, 0x40

    .line 535
    invoke-direct {p0, v2}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->dpToPx(I)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterIndicatorBitmapWidth:I

    .line 536
    iget-object v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterIndicatorBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_e0

    goto :goto_e1

    :cond_e0
    move v1, v0

    :goto_e1
    iput-boolean v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterIndicatorBitmapEnable:Z

    .line 537
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->updateFontHeight()V

    .line 538
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->initAnimation()V

    const/4 v1, 0x3

    .line 540
    invoke-direct {p0, v1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->dpToPx(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mBubblePaddingStart:I

    const/16 v1, 0xe

    .line 541
    invoke-direct {p0, v1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->dpToPx(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mPanelHeight:F

    if-eqz p2, :cond_127

    .line 544
    sget-object v1, Lcom/transsion/widgetslib/R$styleable;->OSLetterSelectorLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 545
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    move v1, v0

    :goto_106
    if-ge v1, p2, :cond_124

    .line 547
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 548
    sget v3, Lcom/transsion/widgetslib/R$styleable;->OSLetterSelectorLayout_os_letter_slide_outside:I

    if-ne v2, v3, :cond_117

    .line 549
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSlideOutside:Z

    goto :goto_121

    .line 550
    :cond_117
    sget v3, Lcom/transsion/widgetslib/R$styleable;->OSLetterSelectorLayout_os_letter_fixed_width:I

    if-ne v2, v3, :cond_121

    .line 551
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mFixWidth:I

    :cond_121
    :goto_121
    add-int/lit8 v1, v1, 0x1

    goto :goto_106

    .line 554
    :cond_124
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_127
    return-void
.end method

.method private initAnimation()V
    .registers 10

    .line 908
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mShowAnimation:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    const-wide/16 v2, 0xc8

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-nez v0, :cond_3c

    .line 909
    new-array v0, v1, [F

    fill-array-data v0, :array_a0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mShowAnimation:Landroid/animation/ValueAnimator;

    .line 910
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 911
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mShowAnimation:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$1;

    invoke-direct {v6, p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$1;-><init>(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)V

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 923
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mShowAnimation:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$2;

    invoke-direct {v6, p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$2;-><init>(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)V

    invoke-virtual {v0, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 938
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mShowAnimation:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;

    const v7, 0x3e4ccccd    # 0.2f

    const v8, 0x3dcccccd    # 0.1f

    invoke-direct {v6, v7, v5, v8, v4}, Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 941
    :cond_3c
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mHideScaleAnimation:Landroid/animation/ValueAnimator;

    const v6, 0x3ecccccd    # 0.4f

    if-nez v0, :cond_76

    .line 942
    new-array v0, v1, [F

    fill-array-data v0, :array_a8

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mHideScaleAnimation:Landroid/animation/ValueAnimator;

    .line 943
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 944
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mHideScaleAnimation:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$3;

    invoke-direct {v2, p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$3;-><init>(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 953
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mHideScaleAnimation:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$4;

    invoke-direct {v2, p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$4;-><init>(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 967
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mHideScaleAnimation:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;

    invoke-direct {v2, v6, v5, v4, v4}, Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 969
    new-instance v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$5;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$5;-><init>(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mHideScaleRunnable:Ljava/lang/Runnable;

    .line 980
    :cond_76
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mHideAlphaAnimation:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_9e

    .line 981
    new-array v0, v1, [F

    fill-array-data v0, :array_b0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mHideAlphaAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x96

    .line 982
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 983
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mHideAlphaAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$6;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$6;-><init>(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 991
    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mHideAlphaAnimation:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;

    invoke-direct {v0, v6, v5, v4, v4}, Lcom/transsion/widgetslib/widget/timepicker/wheel/EaseCubicInterpolator;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_9e
    return-void

    nop

    :array_a0
    .array-data 4
        0x0
        0x43480000    # 200.0f
    .end array-data

    :array_a8
    .array-data 4
        0x0
        0x43480000    # 200.0f
    .end array-data

    :array_b0
    .array-data 4
        0x0
        0x42c80000    # 100.0f
    .end array-data
.end method

.method private isSelectorDisable()Z
    .registers 2

    .line 1064
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mLetterBlockList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterSelectorListener:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig$LetterSelectorListener;

    if-eqz v0, :cond_12

    invoke-interface {v0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig$LetterSelectorListener;->enabledDrawLetters()Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_12
    iget-boolean p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->showSelector:Z

    if-nez p0, :cond_17

    goto :goto_19

    :cond_17
    const/4 p0, 0x0

    return p0

    :cond_19
    :goto_19
    const/4 p0, 0x1

    return p0
.end method

.method private letterSelectorMeasure()V
    .registers 16

    .line 626
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mAllLetters:Ljava/util/List;

    if-eqz v0, :cond_298

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_298

    .line 630
    :cond_c
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 631
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eqz v0, :cond_298

    if-nez v1, :cond_1a

    goto/16 :goto_298

    .line 636
    :cond_1a
    iget v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mWidth:I

    if-eq v2, v0, :cond_20

    .line 637
    iput v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mWidth:I

    .line 639
    :cond_20
    iget v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mHeight:I

    if-eq v0, v1, :cond_26

    .line 640
    iput v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mHeight:I

    .line 643
    :cond_26
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mArrayMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 644
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 645
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mLetterBlockList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 646
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->checkLayoutDirection()V

    .line 649
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mAllLetters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v4, v1

    move v3, v2

    :goto_42
    const/high16 v5, 0x40000000    # 2.0f

    if-ge v3, v0, :cond_7d

    .line 652
    iget-object v6, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mAllLetters:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 653
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_55

    goto :goto_7a

    .line 656
    :cond_55
    new-instance v7, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterBlock;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterBlock;-><init>(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$1;)V

    .line 657
    iput v3, v7, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterBlock;->index:I

    .line 658
    iput-object v6, v7, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterBlock;->letter:Ljava/lang/String;

    .line 659
    iget-object v8, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mLetters:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    iput-boolean v8, v7, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterBlock;->enable:Z

    .line 660
    iget-object v8, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->txtPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    div-float v5, v6, v5

    .line 661
    iput v5, v7, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterBlock;->letterNormalWidthHalf:F

    .line 662
    iget-object v5, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mLetterBlockList:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 664
    invoke-static {v6, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    :goto_7a
    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    .line 667
    :cond_7d
    iget v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectorPaddingTop:I

    .line 668
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    int-to-float v7, v3

    .line 669
    iput v7, v6, Landroid/graphics/RectF;->top:F

    .line 671
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/transsion/widgetslib/util/Utils;->isWaterfallScreen(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_aa

    .line 672
    iget v7, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mFixWidth:I

    if-eqz v7, :cond_96

    goto :goto_a7

    :cond_96
    float-to-int v4, v4

    iget v7, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectorPaddingStart:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v4, v7

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const/16 v8, 0x8

    invoke-static {v7, v8}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v7

    add-int/2addr v7, v4

    :goto_a7
    iput v7, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mPanelWidth:I

    goto :goto_b7

    .line 674
    :cond_aa
    iget v7, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mFixWidth:I

    if-eqz v7, :cond_af

    goto :goto_b5

    :cond_af
    float-to-int v4, v4

    iget v7, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectorPaddingStart:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v4

    :goto_b5
    iput v7, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mPanelWidth:I

    .line 677
    :goto_b7
    iget v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mPanelHeight:F

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->getAllLetterMaxHeight()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mPanelHeightGap:F

    add-float/2addr v7, v8

    invoke-static {v4, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mPanelHeight:F

    .line 678
    iget v7, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v7, v4

    iput v7, v6, Landroid/graphics/RectF;->bottom:F

    .line 679
    iget-boolean v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->isLeft:Z

    const/4 v7, 0x4

    if-eqz v4, :cond_f1

    .line 680
    iput v1, v6, Landroid/graphics/RectF;->left:F

    .line 681
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/transsion/widgetslib/util/Utils;->isWaterfallScreen(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_e8

    .line 682
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v7}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v4

    int-to-float v4, v4

    iput v4, v6, Landroid/graphics/RectF;->left:F

    .line 684
    :cond_e8
    iget v4, v6, Landroid/graphics/RectF;->left:F

    iget v7, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mPanelWidth:I

    int-to-float v7, v7

    add-float/2addr v4, v7

    iput v4, v6, Landroid/graphics/RectF;->right:F

    goto :goto_116

    .line 686
    :cond_f1
    iget v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mWidth:I

    int-to-float v4, v4

    iput v4, v6, Landroid/graphics/RectF;->right:F

    .line 687
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/transsion/widgetslib/util/Utils;->isWaterfallScreen(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_10e

    .line 688
    iget v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mWidth:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v7

    sub-int/2addr v4, v7

    int-to-float v4, v4

    iput v4, v6, Landroid/graphics/RectF;->right:F

    .line 690
    :cond_10e
    iget v4, v6, Landroid/graphics/RectF;->right:F

    iget v7, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mPanelWidth:I

    int-to-float v7, v7

    sub-float/2addr v4, v7

    iput v4, v6, Landroid/graphics/RectF;->left:F

    .line 694
    :goto_116
    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v4

    cmpl-float v7, v4, v1

    if-nez v7, :cond_120

    goto/16 :goto_298

    .line 699
    :cond_120
    iget-boolean v7, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mIsVerticalCentre:Z

    if-eqz v7, :cond_12b

    .line 701
    iget-boolean v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mExcludePaddingBottomCenter:Z

    if-nez v3, :cond_12a

    .line 702
    iput v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectorPaddingBottom:I

    :cond_12a
    move v3, v2

    .line 706
    :cond_12b
    iget v8, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mHeight:I

    sub-int v3, v8, v3

    iget v9, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectorPaddingBottom:I

    sub-int/2addr v3, v9

    int-to-float v3, v3

    if-eqz v7, :cond_13a

    div-float/2addr v3, v4

    float-to-int v3, v3

    add-int/lit8 v3, v3, -0x2

    goto :goto_13c

    :cond_13a
    div-float/2addr v3, v4

    float-to-int v3, v3

    :goto_13c
    const/4 v10, 0x1

    if-ge v3, v10, :cond_141

    goto/16 :goto_298

    :cond_141
    if-le v0, v3, :cond_145

    move v11, v10

    goto :goto_146

    :cond_145
    move v11, v2

    .line 717
    :goto_146
    iput-boolean v11, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mIsOverUnits:Z

    if-eqz v11, :cond_14b

    goto :goto_14c

    :cond_14b
    move v3, v0

    :goto_14c
    if-eqz v7, :cond_168

    int-to-float v7, v3

    mul-float/2addr v7, v4

    int-to-float v8, v8

    sub-float/2addr v8, v7

    div-float/2addr v8, v5

    float-to-int v7, v8

    .line 723
    iget-boolean v8, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mExcludePaddingBottomCenter:Z

    if-eqz v8, :cond_15b

    .line 724
    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v7, v9

    :cond_15b
    if-gez v7, :cond_15e

    move v7, v2

    :cond_15e
    if-nez v8, :cond_162

    .line 730
    iput v7, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectorPaddingBottom:I

    :cond_162
    int-to-float v7, v7

    .line 732
    iput v7, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v7, v4

    .line 733
    iput v7, v6, Landroid/graphics/RectF;->bottom:F

    .line 736
    :cond_168
    iget-object v7, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFTotal:Landroid/graphics/RectF;

    invoke-virtual {v7, v6}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 738
    sget-object v7, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mIsOverUnits: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mIsOverUnits:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", mSelectedRectIndex: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectedRectIndex:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", paintLen: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/transsion/widgetscore/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    iget v8, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectedRectIndex:I

    if-lt v8, v3, :cond_19c

    goto :goto_19d

    :cond_19c
    move v10, v2

    .line 741
    :goto_19d
    iget-boolean v8, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mIsOverUnits:Z

    const/4 v11, -0x1

    if-eqz v8, :cond_1fc

    if-eqz v10, :cond_1a8

    add-int/lit8 v8, v3, -0x1

    .line 743
    iput v8, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectedRectIndex:I

    .line 747
    :cond_1a8
    iget-object v8, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectedLetter:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1c3

    iget-object v8, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mAllLetters:Ljava/util/List;

    iget-object v12, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectedLetter:Ljava/lang/String;

    invoke-interface {v8, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c3

    iget v8, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectedLetterPosition:I

    if-le v8, v11, :cond_1c3

    .line 749
    iget v12, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectedRectIndex:I

    sub-int v12, v8, v12

    goto :goto_1c5

    :cond_1c3
    move v12, v2

    move v8, v11

    .line 752
    :goto_1c5
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "noSpaceShowSelectedRect: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", topLetterIndex: "

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectedRectIndex:I

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", mSelectedLetter: "

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectedLetter:Ljava/lang/String;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", indexSelectedLetter: "

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/transsion/widgetscore/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1fd

    :cond_1fc
    move v12, v2

    :goto_1fd
    if-ge v2, v3, :cond_22e

    .line 757
    new-instance v7, Landroid/graphics/RectF;

    iget v8, v6, Landroid/graphics/RectF;->left:F

    iget v9, v6, Landroid/graphics/RectF;->top:F

    iget v10, v6, Landroid/graphics/RectF;->right:F

    iget v13, v6, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v7, v8, v9, v10, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 758
    iget-object v8, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 759
    iget v8, v6, Landroid/graphics/RectF;->bottom:F

    iput v8, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v8, v4

    .line 760
    iput v8, v6, Landroid/graphics/RectF;->bottom:F

    add-int v8, v2, v12

    if-le v8, v11, :cond_22b

    if-ge v8, v0, :cond_22b

    .line 764
    iget-object v9, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mArrayMap:Landroid/util/ArrayMap;

    iget-object v10, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mLetterBlockList:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterBlock;

    invoke-virtual {v9, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1fd

    .line 769
    :cond_22e
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mExtraRectFBottom:Landroid/graphics/RectF;

    iget v2, v6, Landroid/graphics/RectF;->left:F

    iget v3, v6, Landroid/graphics/RectF;->top:F

    iget v7, v6, Landroid/graphics/RectF;->right:F

    mul-float/2addr v4, v5

    add-float v5, v3, v4

    invoke-virtual {v0, v2, v3, v7, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 770
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFTotal:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mExtraRectFBottom:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    .line 771
    iget-object v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mExtraRectFTop:Landroid/graphics/RectF;

    iget v3, v6, Landroid/graphics/RectF;->left:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float v4, v0, v4

    iget v5, v6, Landroid/graphics/RectF;->right:F

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 772
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFTotal:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mExtraRectFTop:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 773
    iget-object v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFClip:Landroid/graphics/RectF;

    invoke-virtual {v2, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 774
    iget v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mFixWidth:I

    if-eqz v0, :cond_263

    goto :goto_26a

    :cond_263
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFClip:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    :goto_26a
    iput v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mPanelWidth:I

    .line 776
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_275

    goto :goto_298

    .line 779
    :cond_275
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_letter_bubble_size:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 780
    iget v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mPanelWidth:I

    iget v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterIndicatorStart:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    .line 781
    iget-boolean v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->isLeft:Z

    if-nez v3, :cond_290

    .line 782
    iget v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mWidth:I

    int-to-float v3, v3

    sub-float/2addr v3, v2

    int-to-float v2, v0

    sub-float v2, v3, v2

    .line 784
    :cond_290
    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFBubble:Landroid/graphics/RectF;

    int-to-float v0, v0

    add-float v3, v2, v0

    invoke-virtual {p0, v2, v1, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_298
    :goto_298
    return-void
.end method

.method private showSelector(Z)V
    .registers 5

    .line 584
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->showSelector:Z

    if-ne p1, v0, :cond_5

    return-void

    .line 587
    :cond_5
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->showSelector:Z

    .line 588
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->selectedLetterPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    const/16 v2, 0xff

    if-eqz p1, :cond_10

    move p1, v2

    goto :goto_11

    :cond_10
    move p1, v1

    :goto_11
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 589
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->txtPaint:Landroid/graphics/Paint;

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->showSelector:Z

    if-eqz v0, :cond_1c

    move v0, v2

    goto :goto_1d

    :cond_1c
    move v0, v1

    :goto_1d
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 590
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->txtAnimationPaint:Landroid/graphics/Paint;

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->showSelector:Z

    if-eqz v0, :cond_28

    move v0, v2

    goto :goto_29

    :cond_28
    move v0, v1

    :goto_29
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 591
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->txtMaxPaint:Landroid/graphics/Paint;

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->showSelector:Z

    if-eqz v0, :cond_34

    move v0, v2

    goto :goto_35

    :cond_34
    move v0, v1

    :goto_35
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 592
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->indicatorPaint:Landroid/graphics/Paint;

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->showSelector:Z

    if-eqz v0, :cond_40

    move v0, v2

    goto :goto_41

    :cond_40
    move v0, v1

    :goto_41
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 593
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->indicatorLetterPaint:Landroid/graphics/Paint;

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->showSelector:Z

    if-eqz v0, :cond_4b

    move v1, v2

    :cond_4b
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 594
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private startHideAnimation()V
    .registers 5

    .line 996
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->cancelAnimation()V

    .line 997
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mTouched:Z

    if-eqz v0, :cond_19

    .line 998
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mHideScaleRunnable:Ljava/lang/Runnable;

    iget p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mBubbleHideDelayTime:I

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_19
    return-void
.end method

.method private startShowAnimation()V
    .registers 3

    .line 1003
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1004
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mHideScaleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1007
    :cond_f
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mHideScaleAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1008
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mHideScaleAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1010
    :cond_1e
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mHideAlphaAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1011
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mHideAlphaAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1014
    :cond_2d
    iget v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_36

    goto :goto_4b

    .line 1018
    :cond_36
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mShowAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_4b

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_4b

    .line 1019
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mShowAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const/4 v0, 0x1

    .line 1020
    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mTouched:Z

    const/4 v0, 0x0

    .line 1021
    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mShowAnimationCancel:Z

    :cond_4b
    :goto_4b
    return-void
.end method

.method private toAlphaColor(FI)I
    .registers 4

    const/high16 p0, 0x437f0000    # 255.0f

    mul-float/2addr p1, p0

    float-to-int p0, p1

    and-int/lit16 p0, p0, 0xff

    .line 598
    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result p1

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v0

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result p2

    invoke-static {p0, p1, v0, p2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method private touchEnable(FF)Z
    .registers 5

    .line 1057
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mLetterBlockList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_12

    goto :goto_20

    .line 1060
    :cond_12
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->topAndBottomClickableEnable:Z

    if-eqz v0, :cond_20

    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFTotal:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p0

    if-eqz p0, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    :goto_20
    return v1
.end method

.method private updateFontHeight()V
    .registers 3

    .line 578
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->txtAnimationPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 579
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->txtAnimationPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterMaxSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 580
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->txtAnimationPaint:Landroid/graphics/Paint;

    iget p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterIndicatorSize:F

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method private valueToDimen(II)I
    .registers 3

    int-to-float p2, p2

    .line 415
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-static {p1, p2, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 10

    .line 816
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 817
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->showSelector:Z

    if-nez v0, :cond_8

    goto :goto_1a

    .line 821
    :cond_8
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterSelectorListener:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig$LetterSelectorListener;

    if-eqz v0, :cond_12

    invoke-interface {v0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig$LetterSelectorListener;->enabledDrawLetters()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_12
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1b

    :cond_1a
    :goto_1a
    return-void

    .line 825
    :cond_1b
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 826
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFClip:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    const/4 v0, 0x0

    .line 830
    :goto_24
    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_107

    .line 831
    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    .line 833
    iget-object v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mArrayMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterBlock;

    if-nez v2, :cond_40

    goto/16 :goto_103

    .line 841
    :cond_40
    iget-object v3, v2, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterBlock;->letter:Ljava/lang/String;

    .line 842
    iget-object v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->txtPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->descent()F

    move-result v4

    iget-object v5, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->txtPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 843
    const-string v6, "\u2606"

    if-eqz v3, :cond_5e

    iget-object v7, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectedLetter:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_68

    :cond_5e
    iget-object v7, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->selectedLetters:Ljava/util/ArrayList;

    if-eqz v7, :cond_c4

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c4

    .line 844
    :cond_68
    iget-object v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectedLetter:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_98

    iget-object v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mBitmapHeartLetter:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_98

    .line 845
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mBitmapHeartLetter:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    .line 846
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    iget-object v6, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mBitmapHeartLetter:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    sub-float/2addr v4, v6

    iget-object v6, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->selectedLetterPaint:Landroid/graphics/Paint;

    .line 845
    invoke-virtual {p1, v2, v3, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_ab

    .line 848
    :cond_98
    iget-object v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectedLetter:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    iget v2, v2, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterBlock;->letterNormalWidthHalf:F

    sub-float/2addr v6, v2

    .line 849
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    sub-float/2addr v2, v4

    iget-object v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->selectedLetterPaint:Landroid/graphics/Paint;

    .line 848
    invoke-virtual {p1, v3, v6, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 852
    :goto_ab
    iget-object v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFBubble:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    .line 853
    iget-object v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFBubble:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    div-float v4, v2, v5

    sub-float/2addr v1, v4

    iput v1, v3, Landroid/graphics/RectF;->top:F

    .line 854
    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFBubble:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v2

    iput v3, v1, Landroid/graphics/RectF;->bottom:F

    goto :goto_103

    .line 856
    :cond_c4
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f2

    iget-object v6, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mBitmapHeartLetter:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_f2

    .line 857
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mBitmapHeartLetter:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    .line 858
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget-object v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mBitmapHeartLetter:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    sub-float/2addr v1, v4

    iget-object v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->txtPaint:Landroid/graphics/Paint;

    .line 857
    invoke-virtual {p1, v2, v3, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_103

    .line 860
    :cond_f2
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    iget v2, v2, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterBlock;->letterNormalWidthHalf:F

    sub-float/2addr v5, v2

    .line 861
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    sub-float/2addr v1, v4

    iget-object v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->txtPaint:Landroid/graphics/Paint;

    .line 860
    invoke-virtual {p1, v3, v5, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_103
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_24

    .line 865
    :cond_107
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 867
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->drawLetterIndicator(Landroid/graphics/Canvas;)V

    return-void
.end method

.method getAllLetterMaxHeight()I
    .registers 4

    .line 795
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->alphabetSearchConfig:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    .line 796
    # getter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;
    invoke-static {v0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->access$4400(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mAllLetters:Ljava/util/List;

    if-eqz v0, :cond_2c

    .line 797
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2c

    .line 798
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 799
    invoke-virtual {p0, v2}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->getStringTextHeight(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_17

    :cond_2c
    return v1
.end method

.method public getLetterSelectorConfig(ZZ)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;
    .registers 5

    .line 602
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->alphabetSearchConfig:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;

    if-nez v0, :cond_c

    .line 603
    new-instance v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;-><init>(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$1;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->alphabetSearchConfig:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;

    .line 605
    :cond_c
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->alignRight:Z

    .line 606
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->alphabetSearchConfig:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;

    # setter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->dimenDP:Z
    invoke-static {p1, p2}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->access$4202(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;Z)Z

    .line 607
    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->alphabetSearchConfig:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;

    return-object p0
.end method

.method public getPanelWidth()I
    .registers 1

    .line 1358
    iget p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mPanelWidth:I

    return p0
.end method

.method getStringTextHeight(Ljava/lang/String;)I
    .registers 6

    .line 788
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mGetStringTextHeightPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 789
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mGetStringTextHeightPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mGetStringTextHeightRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3, v1, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 790
    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mGetStringTextHeightRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    return p0
.end method

.method public isShowSelector()Z
    .registers 1

    .line 481
    iget-boolean p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->showSelector:Z

    return p0
.end method

.method public isSlideOutside()Z
    .registers 1

    .line 1362
    iget-boolean p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSlideOutside:Z

    return p0
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 571
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 572
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mArrayMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 573
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 574
    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mLetterBlockList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1044
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->isSelectorDisable()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1045
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 1047
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_24

    .line 1048
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->touchEnable(FF)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 p1, 0x1

    .line 1049
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    return p1

    .line 1053
    :cond_24
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 617
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 619
    iput p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mWidth:I

    .line 620
    iput p2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mHeight:I

    .line 621
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterSelectorMeasure()V

    .line 622
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 1072
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->isSelectorDisable()Z

    move-result v0

    if-nez v0, :cond_10d

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->showSelector:Z

    if-nez v0, :cond_c

    goto/16 :goto_10d

    .line 1079
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1080
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 1082
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_22

    .line 1083
    invoke-direct {p0, v0, v1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->touchEnable(FF)Z

    move-result v2

    if-nez v2, :cond_22

    return v3

    .line 1088
    :cond_22
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_d1

    if-eq p1, v2, :cond_b5

    const/4 v4, 0x2

    if-eq p1, v4, :cond_33

    const/4 v0, 0x3

    if-eq p1, v0, :cond_b5

    goto/16 :goto_10c

    .line 1115
    :cond_33
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFTotal:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-nez p1, :cond_54

    .line 1116
    iget-boolean p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSlideOutside:Z

    if-nez p1, :cond_40

    return v2

    .line 1119
    :cond_40
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFList:Ljava/util/List;

    if-eqz p1, :cond_54

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_54

    .line 1120
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFList:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/RectF;->left:F

    .line 1126
    :cond_54
    iput-boolean v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->touching:Z

    .line 1127
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mExtraRectFTop:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    .line 1128
    iget-object v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mExtraRectFBottom:Landroid/graphics/RectF;

    invoke-virtual {v4, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-nez p1, :cond_8e

    if-eqz v4, :cond_67

    goto :goto_8e

    .line 1143
    :cond_67
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6d
    :goto_6d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/RectF;

    .line 1144
    invoke-virtual {v3, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_6d

    .line 1145
    iget-object v4, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mArrayMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterBlock;

    if-nez v4, :cond_8a

    goto :goto_6d

    .line 1150
    :cond_8a
    invoke-direct {p0, v3, v4}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->handleMoveTouchLetter(Landroid/graphics/RectF;Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterBlock;)V

    goto :goto_6d

    :cond_8e
    :goto_8e
    if-eqz p1, :cond_99

    .line 1132
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFList:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/RectF;

    goto :goto_a6

    .line 1134
    :cond_99
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/RectF;

    .line 1136
    :goto_a6
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mArrayMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterBlock;

    if-nez v0, :cond_b1

    return v2

    .line 1141
    :cond_b1
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->handleMoveTouchLetter(Landroid/graphics/RectF;Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterBlock;)V

    goto :goto_10c

    .line 1158
    :cond_b5
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->handleTouchUpLetter()V

    .line 1159
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mShowAnimation:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_c3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_c3

    goto :goto_10c

    .line 1162
    :cond_c3
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mHideScaleAnimation:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_10c

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_10c

    .line 1163
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->startHideAnimation()V

    goto :goto_10c

    .line 1091
    :cond_d1
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 1092
    iput-boolean v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->touching:Z

    .line 1094
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mRectFList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_dc
    :goto_dc
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/RectF;

    .line 1095
    invoke-virtual {v4, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_dc

    .line 1096
    iget-object v5, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mArrayMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterBlock;

    if-nez v4, :cond_f9

    goto :goto_dc

    .line 1101
    :cond_f9
    iget-boolean p1, v4, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterBlock;->enable:Z

    if-eqz p1, :cond_104

    .line 1103
    invoke-direct {p0, v4, v2}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->handleTouchedLetter(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterBlock;I)V

    .line 1104
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->startShowAnimation()V

    goto :goto_10c

    .line 1106
    :cond_104
    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterSelectorListener:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig$LetterSelectorListener;

    if-eqz p0, :cond_10c

    const/4 p1, 0x0

    .line 1107
    invoke-interface {p0, p1, v3, v2, v3}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig$LetterSelectorListener;->onTouchLetter(Ljava/lang/String;IIZ)V

    :cond_10c
    :goto_10c
    return v2

    .line 1073
    :cond_10d
    :goto_10d
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->touching:Z

    if-eqz v0, :cond_114

    .line 1074
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->handleTouchUpLetter()V

    .line 1076
    :cond_114
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onVisibilityAggregated(Z)V
    .registers 3

    .line 560
    invoke-super {p0, p1}, Landroid/view/View;->onVisibilityAggregated(Z)V

    .line 561
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_16

    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mHideScaleRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_16

    .line 562
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mHideScaleRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 564
    :cond_16
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->cancelAnimation()V

    const/4 p1, 0x0

    .line 565
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mTouched:Z

    const/4 p1, 0x0

    .line 566
    iput p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mScale:F

    return-void
.end method

.method public setSelectedLetter(I)V
    .registers 4

    .line 1219
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mAllLetters:Ljava/util/List;

    if-eqz v0, :cond_31

    if-ltz p1, :cond_31

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_d

    goto :goto_31

    .line 1223
    :cond_d
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mAllLetters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_31

    .line 1225
    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectedLetter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    goto :goto_31

    .line 1229
    :cond_20
    iget-boolean v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mIsOverUnits:Z

    if-eqz v1, :cond_28

    .line 1230
    invoke-direct {p0, v0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->handleOverUnitsPst(Ljava/lang/String;I)V

    goto :goto_2a

    .line 1232
    :cond_28
    iput p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectedRectIndex:I

    .line 1235
    :goto_2a
    iput-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectedLetter:Ljava/lang/String;

    .line 1236
    iput p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectedLetterPosition:I

    .line 1239
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_31
    :goto_31
    return-void
.end method

.method public setSelectedLetter(Ljava/lang/String;)V
    .registers 3

    .line 1209
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mAllLetters:Ljava/util/List;

    if-eqz v0, :cond_18

    if-eqz p1, :cond_18

    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectedLetter:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_18

    .line 1213
    :cond_f
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mAllLetters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 1215
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->setSelectedLetter(I)V

    :cond_18
    :goto_18
    return-void
.end method

.method public setShowSelector(Z)V
    .registers 2

    .line 485
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->showSelector:Z

    return-void
.end method

.method public setSlideOutside(Z)V
    .registers 2

    .line 1366
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSlideOutside:Z

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .registers 3

    .line 1187
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->txtPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_7

    .line 1188
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1190
    :cond_7
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->txtMaxPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_e

    .line 1191
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1193
    :cond_e
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->txtAnimationPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_15

    .line 1194
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1196
    :cond_15
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->indicatorPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_1c

    .line 1197
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1199
    :cond_1c
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->indicatorLetterPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_23

    .line 1200
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1202
    :cond_23
    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->selectedLetterPaint:Landroid/graphics/Paint;

    if-eqz p0, :cond_2a

    .line 1203
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_2a
    return-void
.end method
