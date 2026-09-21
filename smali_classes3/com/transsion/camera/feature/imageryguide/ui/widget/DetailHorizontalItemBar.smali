.class public Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$BarType;,
        Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$IType;,
        Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$Item;
    }
.end annotation


# static fields
.field private static final ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final CLICK_FEEDBACK_DURATION:J = 0x96L

.field private static final DEFAULT_ALPHA:I = 0x33

.field private static final SWITCH_ANIMATION_DURATION:J = 0xc8L

.field private static final TAG:Ljava/lang/String; = "Guide_ItemView"


# instance fields
.field private mBackgroundPadding:F

.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mBarRadius:F

.field private mCenterY:F

.field private mClickFeedbackAnimatorSet:Landroid/animation/AnimatorSet;

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private mItemClickListener:Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder$IDetailItemClickListener;

.field private mItemInterval:F

.field private mItemRadius:F

.field private mItemSize:Landroid/util/Size;

.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mRectAlpha:I

.field private mRectScaleDownAnimator:Landroid/animation/ValueAnimator;

.field private mRectScaleFactor:F

.field private mRectScaleUpAnimator:Landroid/animation/ValueAnimator;

.field private mSelectRectPaint:Landroid/graphics/Paint;

.field private mSelectedIndex:I

.field private mSelectedTextPaint:Landroid/graphics/Paint;

.field private mSwitchAnimator:Landroid/animation/ValueAnimator;

.field private final mTextBounds:Landroid/graphics/Rect;

.field private mTextPaint:Landroid/graphics/Paint;

.field private mType:Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$IType;


# direct methods
.method public static synthetic $r8$lambda$OylyIXhlWo0IW6sNm209AswqTx4(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->lambda$initAnimator$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fSUN-KMfCSH9Hy5MFg27JYqcjjc(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->lambda$initAnimator$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmBackgroundPadding(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mBackgroundPadding:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBackgroundPaint(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;)Landroid/graphics/Paint;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mBackgroundPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBarRadius(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mBarRadius:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCenterY(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mCenterY:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmItemInterval(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mItemInterval:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmItemRadius(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mItemRadius:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmItemSize(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;)Landroid/util/Size;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mItemSize:Landroid/util/Size;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmItems(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mItems:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRectAlpha(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mRectAlpha:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRectScaleFactor(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mRectScaleFactor:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSelectRectPaint(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;)Landroid/graphics/Paint;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mSelectRectPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSelectedIndex(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mSelectedIndex:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSelectedTextPaint(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;)Landroid/graphics/Paint;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mSelectedTextPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTextBounds(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;)Landroid/graphics/Rect;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mTextBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTextPaint(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;)Landroid/graphics/Paint;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mTextPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmType(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;)Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$IType;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mType:Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$IType;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmItemSize(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;Landroid/util/Size;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mItemSize:Landroid/util/Size;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRectAlpha(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mRectAlpha:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRectScaleFactor(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;F)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mRectScaleFactor:F

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetItemNum(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;)I
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->getItemNum()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mplayClickFeedbackAnimation(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->playClickFeedbackAnimation()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 38
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f28f5c3    # 0.66f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3ea8f5c3    # 0.33f

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 82
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 43
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mItems:Ljava/util/List;

    .line 55
    new-instance p2, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$BarType;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$BarType;-><init>(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar-IA;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mType:Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$IType;

    const/16 p2, 0x33

    .line 58
    iput p2, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mRectAlpha:I

    const/high16 p2, 0x3f800000    # 1.0f

    .line 65
    iput p2, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mRectScaleFactor:F

    .line 260
    new-instance p2, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$2;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$2;-><init>(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 83
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mTextBounds:Landroid/graphics/Rect;

    .line 84
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->initResources()V

    .line 85
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->initAnimator()V

    .line 86
    new-instance p2, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$BarType;

    invoke-direct {p2, p0, p3}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$BarType;-><init>(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar-IA;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mType:Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$IType;

    .line 87
    new-instance p2, Landroid/view/GestureDetector;

    iget-object p3, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {p2, p1, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;)I
    .registers 1

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;)I
    .registers 1

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;II)V
    .registers 3

    .line 32
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method private getItemNum()I
    .registers 1

    .line 234
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mItems:Ljava/util/List;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 238
    :cond_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method private initAnimator()V
    .registers 8

    const/4 v0, 0x2

    .line 150
    new-array v1, v0, [F

    fill-array-data v1, :array_86

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mSwitchAnimator:Landroid/animation/ValueAnimator;

    .line 151
    sget-object v2, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 152
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mSwitchAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 153
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mSwitchAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 161
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mSwitchAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$1;

    invoke-direct {v3, p0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$1;-><init>(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;)V

    invoke-virtual {v1, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 177
    new-instance v1, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;)V

    .line 182
    new-instance v3, Landroid/animation/ValueAnimator;

    invoke-direct {v3}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v3, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mRectScaleDownAnimator:Landroid/animation/ValueAnimator;

    .line 183
    new-array v4, v0, [F

    fill-array-data v4, :array_8e

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 184
    iget-object v3, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mRectScaleDownAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 185
    iget-object v3, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mRectScaleDownAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 186
    iget-object v3, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mRectScaleDownAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 188
    new-instance v3, Landroid/animation/ValueAnimator;

    invoke-direct {v3}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v3, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mRectScaleUpAnimator:Landroid/animation/ValueAnimator;

    .line 189
    new-array v6, v0, [F

    fill-array-data v6, :array_96

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 190
    iget-object v3, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mRectScaleUpAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 191
    iget-object v3, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mRectScaleUpAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 192
    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mRectScaleUpAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 194
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mClickFeedbackAnimatorSet:Landroid/animation/AnimatorSet;

    .line 195
    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mRectScaleDownAnimator:Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mRectScaleUpAnimator:Landroid/animation/ValueAnimator;

    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x1

    aput-object p0, v0, v2

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    return-void

    :array_86
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_8e
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
    .end array-data

    :array_96
    .array-data 4
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initItems(Ljava/util/List;Ljava/util/List;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_37

    .line 97
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_37

    move p1, v1

    .line 98
    :goto_10
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_5b

    .line 99
    new-instance v2, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$Item;

    invoke-direct {v2, v0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$Item;-><init>(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar-IA;)V

    .line 100
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v2, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$Item;->mBitmap:Landroid/graphics/Bitmap;

    .line 101
    iget-object v3, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mItems:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_10

    :cond_37
    if-eqz p1, :cond_5b

    .line 103
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5b

    move p2, v1

    .line 104
    :goto_40
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge p2, v2, :cond_5b

    .line 105
    new-instance v2, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$Item;

    invoke-direct {v2, v0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$Item;-><init>(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar-IA;)V

    .line 106
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$Item;->mText:Ljava/lang/String;

    .line 107
    iget-object v3, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mItems:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_40

    .line 111
    :cond_5b
    invoke-virtual {p0, p3, v1}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->updateSelectedItem(IZ)V

    return-void
.end method

.method private initResources()V
    .registers 6

    .line 115
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/imageryguide/R$dimen;->detail_item_bar_item_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 116
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/imageryguide/R$dimen;->detail_item_bar_item_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mItemSize:Landroid/util/Size;

    .line 117
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/imageryguide/R$dimen;->detail_item_bar_item_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mItemRadius:F

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initResources, mItemRadius: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mItemRadius:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Guide_ItemView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/imageryguide/R$dimen;->detail_item_bar_background_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mBackgroundPadding:F

    .line 120
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/imageryguide/R$dimen;->detail_item_bar_item_interval:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mItemInterval:F

    .line 121
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/imageryguide/R$dimen;->detail_item_bar_background_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mBarRadius:F

    .line 123
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mBackgroundPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 124
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 125
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/imageryguide/R$color;->detail_item_bar_bg_color:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 127
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mSelectRectPaint:Landroid/graphics/Paint;

    .line 128
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/imageryguide/R$color;->detail_item_bar_selected_circle_color:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 129
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mSelectRectPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 131
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mTextPaint:Landroid/graphics/Paint;

    .line 132
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 133
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/imageryguide/R$color;->detail_item_bar_text_color:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 134
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/imageryguide/R$dimen;->detail_item_bar_item_text_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 135
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 136
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 137
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mTextPaint:Landroid/graphics/Paint;

    const-string/jumbo v3, "tnum"

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFontFeatureSettings(Ljava/lang/String;)V

    .line 139
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mSelectedTextPaint:Landroid/graphics/Paint;

    .line 140
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 141
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mSelectedTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 142
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mSelectedTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/imageryguide/R$color;->detail_item_bar_text_selected_color:I

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 143
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/imageryguide/R$dimen;->detail_item_bar_item_selected_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 144
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mSelectedTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 145
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mSelectedTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 146
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mSelectedTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setFontFeatureSettings(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$initAnimator$0(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 154
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    const/high16 v0, 0x424c0000    # 51.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 155
    iput v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mRectAlpha:I

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p1, v0

    add-float/2addr p1, v0

    .line 158
    iput p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mRectScaleFactor:F

    .line 159
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    return-void
.end method

.method private synthetic lambda$initAnimator$1(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 178
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mRectScaleFactor:F

    .line 179
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "circleScaleUpdateListener, mCircleScaleFactor: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mRectScaleFactor:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Guide_ItemView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    return-void
.end method

.method private onItemSelected(I)V
    .registers 6

    .line 297
    iput p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mSelectedIndex:I

    const/4 v0, 0x0

    move v1, v0

    .line 298
    :goto_4
    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 299
    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$Item;

    .line 300
    iget v3, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mSelectedIndex:I

    if-ne v3, v1, :cond_1a

    const/4 v3, 0x1

    goto :goto_1b

    :cond_1a
    move v3, v0

    :goto_1b
    iput-boolean v3, v2, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$Item;->mIsSelected:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 302
    :cond_20
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mItemClickListener:Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder$IDetailItemClickListener;

    if-eqz v0, :cond_27

    .line 303
    invoke-interface {v0, p1}, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder$IDetailItemClickListener;->onItemClick(I)V

    .line 305
    :cond_27
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->playSwitchAnimator()V

    return-void
.end method

.method private playClickFeedbackAnimation()V
    .registers 2

    .line 314
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mClickFeedbackAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 315
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mClickFeedbackAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private playSwitchAnimator()V
    .registers 2

    .line 309
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mSwitchAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 310
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mSwitchAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public handleSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 9

    .line 275
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->getItemNum()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_69

    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mClickFeedbackAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_69

    :cond_10
    const/4 v0, -0x1

    move v3, v0

    move v2, v1

    .line 279
    :goto_13
    iget-object v4, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_37

    .line 280
    iget-object v4, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mItems:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$Item;

    iget-object v4, v4, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$Item;->mBounds:Landroid/graphics/RectF;

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

    .line 284
    :cond_37
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSingleTapUp, selectedIndex: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mSelectedIndex: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mSelectedIndex:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "Guide_ItemView"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v3, v0, :cond_5a

    return v1

    .line 288
    :cond_5a
    iget p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mSelectedIndex:I

    const/4 v0, 0x1

    if-ne v3, p1, :cond_65

    .line 289
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mType:Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$IType;

    invoke-interface {p0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$IType;->onCurrentItemSelected()V

    return v0

    .line 292
    :cond_65
    invoke-direct {p0, v3}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->onItemSelected(I)V

    return v0

    :cond_69
    :goto_69
    return v1
.end method

.method public initData(Ljava/util/List;Ljava/util/List;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->initItems(Ljava/util/List;Ljava/util/List;I)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .line 447
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onAttachedToWindow]:  ,mSelectedIndex :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mSelectedIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Guide_ItemView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 243
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mType:Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$IType;

    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$IType;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 7

    .line 225
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->getItemNum()I

    move-result v0

    if-nez v0, :cond_a

    .line 226
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    return-void

    .line 229
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mCenterY:F

    .line 230
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mType:Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$IType;

    invoke-interface {p0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$IType;->onLayout()V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 4

    .line 216
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->getItemNum()I

    move-result v0

    if-nez v0, :cond_a

    .line 218
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void

    .line 221
    :cond_a
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mType:Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$IType;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$IType;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 248
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_f

    .line 249
    const-string p0, "Guide_ItemView"

    const-string p1, "onTouchEvent, return for disabled"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 252
    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1d

    .line 253
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_20

    .line 254
    :cond_1d
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->handleSingleTapUp(Landroid/view/MotionEvent;)Z

    .line 256
    :cond_20
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v2
.end method

.method public setOnItemClickListener(Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder$IDetailItemClickListener;)V
    .registers 2

    .line 319
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mItemClickListener:Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder$IDetailItemClickListener;

    return-void
.end method

.method public updateSelectedItem(IZ)V
    .registers 7

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateItem, selectedIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Guide_ItemView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iput p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mSelectedIndex:I

    const/4 v0, 0x0

    move v1, v0

    .line 202
    :goto_1b
    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_35

    .line 203
    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->mItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$Item;

    if-ne v1, p1, :cond_2f

    const/4 v3, 0x1

    goto :goto_30

    :cond_2f
    move v3, v0

    .line 204
    :goto_30
    iput-boolean v3, v2, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$Item;->mIsSelected:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_35
    if-eqz p2, :cond_3b

    .line 208
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->playSwitchAnimator()V

    return-void

    .line 211
    :cond_3b
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
