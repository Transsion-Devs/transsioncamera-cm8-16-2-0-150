.class public Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$AccessHelper;,
        Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$Item;,
        Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$InstantZoomSelectedListener;
    }
.end annotation


# static fields
.field private static final FADE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAccessHelper:Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$AccessHelper;

.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mCenterY:F

.field private mDarkBackgroundColor:I

.field private mIsMoving:Z

.field private mItemList:Ljava/util/List;

.field private mItemPadding:F

.field private mItemRadius:F

.field private mItemWidth:F

.field private mLeftEdgeEffect:Landroid/widget/EdgeEffect;

.field private mLightBackgroundColor:I

.field private mListener:Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$InstantZoomSelectedListener;

.field private mOrientation:I

.field private mRightEdgeEffect:Landroid/widget/EdgeEffect;

.field private mRotateAnimator:Lcom/transsion/camera/ui/setting/zoom/RotateAnimator;

.field private mSelectedIndex:I

.field private mSelectedTextPaint:Landroid/graphics/Paint;

.field private mTextBounds:Landroid/graphics/Rect;

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTouchDownX:F

.field private mTouchSlop:I

.field private mUpdateSelection:Ljava/lang/Runnable;

.field private mZoomRatio:I

.field private mZoomRatios:[Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$r_dpeTtJTCovJ7LyHuexiRsCsp8(Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->lambda$show$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmItemList(Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mItemList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmZoomRatio(Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mZoomRatio:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmSelectedIndex(Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mSelectedIndex:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoInvalidate(Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->doInvalidate()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleItemSelected(Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->handleItemSelected(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 37
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "InstantZoomBar"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 41
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f28f5c3    # 0.66f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3ea8f5c3    # 0.33f

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->FADE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 80
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mItemList:Ljava/util/List;

    .line 249
    new-instance p2, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$1;

    invoke-direct {p2, p0}, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$1;-><init>(Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;)V

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mUpdateSelection:Ljava/lang/Runnable;

    .line 81
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->initResources()V

    .line 82
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mTouchSlop:I

    .line 83
    new-instance p2, Lcom/transsion/camera/ui/setting/zoom/RotateAnimator;

    invoke-direct {p2, p0}, Lcom/transsion/camera/ui/setting/zoom/RotateAnimator;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mRotateAnimator:Lcom/transsion/camera/ui/setting/zoom/RotateAnimator;

    .line 84
    new-instance p2, Landroid/widget/EdgeEffect;

    invoke-direct {p2, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mLeftEdgeEffect:Landroid/widget/EdgeEffect;

    .line 85
    new-instance p2, Landroid/widget/EdgeEffect;

    invoke-direct {p2, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mRightEdgeEffect:Landroid/widget/EdgeEffect;

    .line 86
    new-instance p1, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$AccessHelper;

    invoke-direct {p1, p0, p0}, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$AccessHelper;-><init>(Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;Landroid/view/View;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mAccessHelper:Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$AccessHelper;

    .line 87
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method private doInvalidate()V
    .registers 3

    .line 112
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_e

    .line 113
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    .line 115
    :cond_e
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 116
    sget-object p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "doInvalidate"

    invoke-static {p0, v1, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private drawBackground(Landroid/graphics/Canvas;Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$Item;)V
    .registers 5

    .line 187
    iget p2, p2, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$Item;->mCenterX:F

    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mCenterY:F

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mItemRadius:F

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawEdgeEffect(Landroid/graphics/Canvas;)V
    .registers 5

    .line 157
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mLeftEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_24

    .line 158
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v0, 0x43870000    # 270.0f

    .line 159
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 160
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 161
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mLeftEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    .line 162
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    .line 165
    :goto_25
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mRightEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_48

    .line 166
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v2, 0x42b40000    # 90.0f

    .line 167
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 168
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 169
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mRightEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v1, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 170
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_48
    if-eqz v0, :cond_4d

    .line 174
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_4d
    return-void
.end method

.method private drawText(Landroid/graphics/Canvas;Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$Item;)V
    .registers 8

    .line 179
    iget-boolean v0, p2, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$Item;->mIsSelected:Z

    if-eqz v0, :cond_18

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$Item;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    :cond_18
    iget-object v0, p2, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$Item;->mText:Ljava/lang/String;

    .line 180
    :goto_1a
    iget-boolean v1, p2, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$Item;->mIsSelected:Z

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mSelectedTextPaint:Landroid/graphics/Paint;

    goto :goto_23

    :cond_21
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mTextPaint:Landroid/graphics/Paint;

    .line 181
    :goto_23
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mTextBounds:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 182
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 183
    iget p2, p2, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$Item;->mCenterX:F

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mCenterY:F

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr p0, v2

    invoke-virtual {p1, v0, p2, p0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private handleActionUp(FF)V
    .registers 8

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 406
    :goto_3
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mItemList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_25

    .line 407
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mItemList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$Item;

    .line 408
    iget-object v4, v3, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$Item;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v4, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_20

    const/4 v2, 0x1

    .line 409
    iput-boolean v2, v3, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$Item;->mIsSelected:Z

    move v2, v1

    goto :goto_22

    .line 412
    :cond_20
    iput-boolean v0, v3, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$Item;->mIsSelected:Z

    :goto_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 415
    :cond_25
    invoke-direct {p0, v2}, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->handleItemSelected(I)V

    return-void
.end method

.method private handleItemSelected(I)V
    .registers 3

    .line 419
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mSelectedIndex:I

    if-eq p1, v0, :cond_9

    .line 420
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mSelectedIndex:I

    .line 421
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->doInvalidate()V

    .line 424
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$Item;

    .line 425
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mZoomRatio:I

    iget p1, p1, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$Item;->mValue:I

    if-eq v0, p1, :cond_20

    .line 426
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mZoomRatio:I

    .line 427
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mListener:Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$InstantZoomSelectedListener;

    if-eqz v0, :cond_20

    .line 428
    invoke-interface {v0, p1}, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$InstantZoomSelectedListener;->onInstantZoomSelected(I)V

    .line 431
    :cond_20
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mAccessHelper:Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$AccessHelper;

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mSelectedIndex:I

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    return-void
.end method

.method private handleOverscroll(FFF)V
    .registers 5

    const/4 p2, 0x0

    cmpg-float v0, p1, p2

    if-gez v0, :cond_23

    .line 391
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mRightEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {p2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 392
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mLeftEdgeEffect:Landroid/widget/EdgeEffect;

    neg-float p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p3, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p3

    invoke-virtual {p2, p1, v0}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 393
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    return-void

    :cond_23
    cmpl-float p2, p1, p2

    if-lez p2, :cond_40

    .line 398
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mLeftEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {p2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 399
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mRightEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p3, v0

    invoke-virtual {p2, p1, p3}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 400
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_40
    return-void
.end method

.method private initResources()V
    .registers 6

    .line 91
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->instant_zoom_bar_item_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mItemPadding:F

    .line 92
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->instant_zoom_bar_item_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mItemWidth:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 93
    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mItemRadius:F

    .line 95
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mTextPaint:Landroid/graphics/Paint;

    .line 96
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 97
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/R$dimen;->instant_zoom_bar_text_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 98
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/R$color;->instant_zoom_bar_text_color:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mTextPaint:Landroid/graphics/Paint;

    const-string v2, "sans-serif"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 101
    new-instance v0, Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mSelectedTextPaint:Landroid/graphics/Paint;

    .line 102
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/R$color;->zoom_selected_color:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/R$color;->black_dark_background_ui_5:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mDarkBackgroundColor:I

    .line 105
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/R$color;->black_light_background_ui_5:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mLightBackgroundColor:I

    .line 106
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 107
    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mDarkBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mTextBounds:Landroid/graphics/Rect;

    return-void
.end method

.method private synthetic lambda$show$0()V
    .registers 2

    const v0, 0x3f4ccccd    # 0.8f

    .line 278
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 279
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    const/4 v0, 0x0

    .line 280
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private releaseEdgeEffect()V
    .registers 2

    .line 384
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mLeftEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 385
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mRightEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 386
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    return-void
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 334
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mAccessHelper:Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$AccessHelper;

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

    .line 335
    :goto_12
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchHoverEvent, handled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    invoke-static {p1}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 335
    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method

.method public hide(Z)V
    .registers 4

    .line 300
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    const/high16 v1, 0x3f000000    # 0.5f

    if-nez p1, :cond_1a

    .line 305
    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 306
    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 307
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    const/16 p1, 0x8

    .line 308
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 311
    :cond_1a
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 312
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->FADE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 313
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    .line 314
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$3;-><init>(Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;)V

    .line 315
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 329
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7

    .line 143
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 144
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->drawEdgeEffect(Landroid/graphics/Canvas;)V

    .line 145
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$Item;

    .line 146
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->drawBackground(Landroid/graphics/Canvas;Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$Item;)V

    .line 148
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 149
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mRotateAnimator:Lcom/transsion/camera/ui/setting/zoom/RotateAnimator;

    iget v3, v1, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$Item;->mCenterX:F

    iget v4, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mCenterY:F

    invoke-virtual {v2, p1, v3, v4}, Lcom/transsion/camera/ui/setting/zoom/RotateAnimator;->rotate(Landroid/graphics/Canvas;FF)F

    .line 150
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->drawText(Landroid/graphics/Canvas;Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$Item;)V

    .line 151
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_c

    :cond_2e
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 10

    .line 122
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 124
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mItemList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_c

    return-void

    .line 128
    :cond_c
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    int-to-float p3, p1

    iget p4, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mItemWidth:F

    mul-float/2addr p3, p4

    sub-float/2addr p2, p3

    add-int/lit8 p1, p1, -0x1

    int-to-float p1, p1

    iget p3, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mItemPadding:F

    mul-float/2addr p1, p3

    sub-float/2addr p2, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p2, p1

    div-float/2addr p3, p1

    const/4 p4, 0x0

    .line 130
    :goto_22
    iget-object p5, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mItemList:Ljava/util/List;

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p5

    if-ge p4, p5, :cond_52

    .line 131
    iget-object p5, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mItemList:Ljava/util/List;

    invoke-interface {p5, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$Item;

    int-to-float v0, p4

    .line 132
    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mItemWidth:F

    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mItemPadding:F

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, p2

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mItemRadius:F

    add-float/2addr v0, v1

    iput v0, p5, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$Item;->mCenterX:F

    .line 133
    iget-object p5, p5, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$Item;->mBounds:Landroid/graphics/RectF;

    sub-float v2, v0, v1

    sub-float/2addr v2, p3

    add-float/2addr v0, v1

    add-float/2addr v0, p3

    .line 134
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v3, 0x0

    .line 133
    invoke-virtual {p5, v2, v3, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_22

    .line 136
    :cond_52
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, p1

    iput p2, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mCenterY:F

    .line 137
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mLeftEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 138
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mRightEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    invoke-virtual {p1, p2, p0}, Landroid/widget/EdgeEffect;->setSize(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 342
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 346
    :cond_8
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 347
    sget-object p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onTouchEvent, return for empty list"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 351
    :cond_18
    invoke-static {p0}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1f

    return v1

    .line 355
    :cond_1f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_6f

    if-eq v0, v2, :cond_5a

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2f

    const/4 v3, 0x3

    if-eq v0, v3, :cond_5a

    goto :goto_75

    .line 360
    :cond_2f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mTouchDownX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_43

    .line 361
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mIsMoving:Z

    .line 363
    :cond_43
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mIsMoving:Z

    if-eqz v0, :cond_75

    .line 364
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mTouchDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    .line 365
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->handleOverscroll(FFF)V

    goto :goto_75

    .line 371
    :cond_5a
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mIsMoving:Z

    if-nez v0, :cond_69

    .line 372
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->handleActionUp(FF)V

    .line 374
    :cond_69
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mIsMoving:Z

    .line 375
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->releaseEdgeEffect()V

    goto :goto_75

    .line 357
    :cond_6f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mTouchDownX:F

    :cond_75
    :goto_75
    return v2
.end method

.method public setInstantZoomSelectedListener(Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$InstantZoomSelectedListener;)V
    .registers 2

    .line 440
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mListener:Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$InstantZoomSelectedListener;

    return-void
.end method

.method public setOrientation(I)V
    .registers 3

    .line 191
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mOrientation:I

    if-eq v0, p1, :cond_b

    .line 192
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mOrientation:I

    .line 193
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mRotateAnimator:Lcom/transsion/camera/ui/setting/zoom/RotateAnimator;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/RotateAnimator;->setOrientation(I)V

    :cond_b
    return-void
.end method

.method public show()Z
    .registers 4

    .line 265
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 269
    :cond_8
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mZoomRatios:[Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/camera/utils/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    return v1

    .line 273
    :cond_11
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 274
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->FADE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 275
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 276
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;)V

    .line 277
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$2;-><init>(Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;)V

    .line 282
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 295
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 p0, 0x1

    return p0
.end method

.method public updateBackgroundColor(Z)V
    .registers 3

    .line 435
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mBackgroundPaint:Landroid/graphics/Paint;

    if-eqz p1, :cond_7

    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mDarkBackgroundColor:I

    goto :goto_9

    :cond_7
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mLightBackgroundColor:I

    :goto_9
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 436
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->doInvalidate()V

    return-void
.end method

.method public varargs updateInstantRatios([Ljava/lang/String;)V
    .registers 8

    .line 198
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mZoomRatios:[Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 199
    sget-object p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "updateInstantZoomList, return for equal ratios"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_10
    if-nez p1, :cond_18

    const/16 p1, 0x8

    .line 204
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 208
    :cond_18
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mZoomRatios:[Ljava/lang/String;

    .line 209
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 210
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mZoomRatio:I

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUtils;->getZoomRatioText(I)Ljava/lang/String;

    move-result-object v0

    .line 211
    array-length v1, p1

    const/4 v2, 0x0

    :goto_27
    if-ge v2, v1, :cond_4b

    aget-object v3, p1, v2

    .line 212
    new-instance v4, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$Item;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$Item;-><init>(Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar-IA;)V

    .line 213
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v4, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$Item;->mValue:I

    .line 214
    invoke-static {v3}, Lcom/transsion/camera/ui/setting/zoom/ZoomUtils;->getZoomRatioText(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$Item;->mText:Ljava/lang/String;

    .line 215
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, v4, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$Item;->mIsSelected:Z

    .line 216
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mItemList:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 218
    :cond_4b
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public updateZoomRatio(I)V
    .registers 5

    .line 222
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateZoomRatio, ratio: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 223
    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mZoomRatio:I

    if-eq v1, p1, :cond_2b

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_23

    goto :goto_2b

    .line 227
    :cond_23
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mZoomRatio:I

    .line 228
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mUpdateSelection:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 224
    :cond_2b
    :goto_2b
    const-string p0, "updateZoomRatio, return for same ratio"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public updateZoomRatioDelayed(I)V
    .registers 5

    .line 232
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateZoomRatioDelayed, ratio: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 233
    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mZoomRatio:I

    if-eq v1, p1, :cond_50

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_23

    goto :goto_50

    .line 237
    :cond_23
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mZoomRatio:I

    .line 239
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mItemList:Ljava/util/List;

    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mSelectedIndex:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$Item;

    .line 240
    iget-object v0, p1, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$Item;->mText:Ljava/lang/String;

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mZoomRatio:I

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUtils;->getZoomRatioText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    const/4 v0, 0x0

    .line 241
    iput-boolean v0, p1, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$Item;->mIsSelected:Z

    .line 242
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->doInvalidate()V

    .line 245
    :cond_43
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mUpdateSelection:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 246
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->mUpdateSelection:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 234
    :cond_50
    :goto_50
    const-string p0, "updateZoomRatioDelayed, return for same ratio"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
