.class public Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;
.super Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;
.source "SourceFile"


# instance fields
.field private final mContentLeftMargin:I

.field private mCurrentDragEvent:Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;

.field private mDragAreaLinearDesc:Landroid/widget/TextView;

.field private mDragAreaLinearIcon:Landroid/widget/ImageView;

.field private mDragAreaLinearLayout:Landroid/widget/LinearLayout;

.field private mDragAreaLinearNormalText:Landroid/widget/TextView;

.field private mDragAreaLinearTitle:Landroid/widget/TextView;

.field private mDragLinearRootLayout:Landroid/widget/RelativeLayout;

.field private mDragStartEvent:Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;

.field private mModeLinearDragAreaSize:I

.field private mMoreDragBoxLinearBackground:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;

.field private final mScreenSize:Landroid/util/Size;


# direct methods
.method public static synthetic $r8$lambda$fqGsGXlBrLW7LO3nVqr7KpN39k8(Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->lambda$changeColor$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 53
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;-><init>(Landroid/content/Context;)V

    .line 54
    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getScreenSize()Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mScreenSize:Landroid/util/Size;

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/R$dimen;->more_linear_content_left_margin:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mContentLeftMargin:I

    return-void
.end method

.method private synthetic lambda$changeColor$0(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 279
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 280
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearDesc:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method public changeColor(JII)V
    .registers 7

    const v0, -0x2f2f30

    const v1, 0x63dedede

    .line 276
    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 277
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 278
    new-instance v1, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 282
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 283
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mMoreDragBoxLinearBackground:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;->changeColor(JII)V

    return-void
.end method

.method public changeScale(IFF)V
    .registers 11

    .line 288
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mMoreDragBoxLinearBackground:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;

    const/4 v1, 0x2

    new-array v2, v1, [F

    const/4 v3, 0x0

    aput p2, v2, v3

    const/4 v4, 0x1

    aput p3, v2, v4

    const-string v5, "scaleX"

    invoke-static {v0, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 289
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mMoreDragBoxLinearBackground:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;

    new-array v2, v1, [F

    aput p2, v2, v3

    aput p3, v2, v4

    const-string p2, "scaleY"

    invoke-static {p0, p2, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 290
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    int-to-long v5, p1

    .line 291
    invoke-virtual {p2, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 292
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/4 p3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v5, 0x3e800000    # 0.25f

    invoke-direct {p1, v5, p3, p3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 293
    new-array p1, v1, [Landroid/animation/Animator;

    aput-object v0, p1, v3

    aput-object p0, p1, v4

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 294
    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public commonInitialize()V
    .registers 3

    .line 224
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v1

    iget v1, v1, Lcom/transsion/camera/app/common/FeatureResource;->mIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 225
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    const-string v1, "com.transsion.camera.feature.mode.gopro.GoProModeEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 226
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 227
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearNormalText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    goto :goto_37

    .line 229
    :cond_29
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearTitle:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mModeItemTextAllCaps:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 230
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearNormalText:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mModeItemTextAllCaps:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 232
    :goto_37
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v1

    iget-object v1, v1, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearNormalText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v1

    iget-object v1, v1, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearDesc:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v1

    iget-object v1, v1, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mMoreDragBoxLinearBackground:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;

    iget v1, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mViewWidth:I

    iget p0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mViewHeight:I

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;->setBackgroundSize(II)V

    return-void
.end method

.method public getDeltaHeight()I
    .registers 2

    .line 109
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mModeLinearDragAreaSize:I

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mMoreDragBoxLinearBackground:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;->getBackgroundHeight()I

    move-result p0

    sub-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getDeltaWidth()I
    .registers 2

    .line 114
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mModeLinearDragAreaSize:I

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mMoreDragBoxLinearBackground:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;->getBackgroundWidth()I

    move-result p0

    sub-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getDragBoxLayoutParams(Landroid/content/Context;)Landroid/widget/RelativeLayout$LayoutParams;
    .registers 6

    .line 60
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mModeLinearDragAreaSize:I

    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 61
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mParentViewPosX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mViewPosX:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mModeLinearDragAreaSize:I

    iget v2, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mViewWidth:I

    sub-int v2, v1, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    .line 62
    iget v2, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mParentViewPosY:I

    int-to-float v2, v2

    iget v3, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mViewPosY:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mViewHeight:I

    sub-int v3, v1, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    add-int/lit8 v2, v2, 0xf

    .line 63
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mScreenSize:Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    sub-int/2addr v1, p0

    add-int/2addr v1, v0

    neg-int p0, v1

    const/4 v1, 0x0

    .line 64
    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    return-object p1
.end method

.method public getMotionEventGetX(IILcom/transsion/camera/app/ui/mode/more/MoreDragEvent;)F
    .registers 4

    .line 70
    invoke-virtual {p3}, Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;->getX()F

    move-result p0

    return p0
.end method

.method public getScrollPositionInLinearMode(Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;ILandroid/graphics/Rect;)Landroid/graphics/Point;
    .registers 7

    .line 75
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;->getY()F

    move-result p0

    float-to-int p0, p0

    iget v0, p3, Landroid/graphics/Rect;->top:I

    const/4 v1, 0x0

    if-le p0, v0, :cond_39

    .line 76
    div-int/lit8 p0, p2, 0x2

    .line 77
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    int-to-float p2, p2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p2, v2

    add-float/2addr v0, p2

    iget v2, p3, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_24

    .line 78
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, p0, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object p1

    .line 80
    :cond_24
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    sub-float/2addr p1, p2

    iget p2, p3, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_39

    .line 81
    new-instance p1, Landroid/graphics/Point;

    neg-int p0, p0

    invoke-direct {p1, p0, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object p1

    .line 84
    :cond_39
    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object p0
.end method

.method public getViewX()F
    .registers 4

    .line 89
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mViewPosX:F

    iget v1, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mViewWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iget p0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mParentViewPosX:I

    int-to-float p0, p0

    add-float/2addr v0, p0

    return v0
.end method

.method public getViewY()F
    .registers 4

    .line 94
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mViewPosY:F

    iget v1, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mViewHeight:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mParentViewPosY:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/transsion/camera/R$dimen;->more_drag_area_top_translation:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    add-float/2addr v0, p0

    return v0
.end method

.method public gridModeInitialize()V
    .registers 3

    .line 258
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearDesc:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 261
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearNormalText:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public initView(Landroid/content/Context;)V
    .registers 4

    .line 313
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 314
    sget v0, Lcom/transsion/camera/R$layout;->more_linear_drag_area:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 315
    sget v0, Lcom/transsion/camera/R$id;->drag_area_linear_root_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragLinearRootLayout:Landroid/widget/RelativeLayout;

    .line 316
    sget v0, Lcom/transsion/camera/R$id;->drag_area_item_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearIcon:Landroid/widget/ImageView;

    .line 317
    sget v0, Lcom/transsion/camera/R$id;->drag_area_item_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearTitle:Landroid/widget/TextView;

    .line 318
    sget v0, Lcom/transsion/camera/R$id;->drag_area_item_desc:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearDesc:Landroid/widget/TextView;

    .line 319
    sget v0, Lcom/transsion/camera/R$id;->drag_area_normal_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearNormalText:Landroid/widget/TextView;

    .line 320
    sget v0, Lcom/transsion/camera/R$id;->drag_area_linear_background:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mMoreDragBoxLinearBackground:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;

    .line 321
    sget v0, Lcom/transsion/camera/R$id;->drag_area_linear_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearLayout:Landroid/widget/LinearLayout;

    return-void
.end method

.method public initialize()V
    .registers 2

    .line 99
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->commonInitialize()V

    .line 100
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mIsLinearMode:Z

    if-eqz v0, :cond_b

    .line 101
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->linearModeInitialize()V

    return-void

    .line 103
    :cond_b
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->gridModeInitialize()V

    return-void
.end method

.method public linearModeInitialize()V
    .registers 3

    .line 249
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 250
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearIcon:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 252
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearDesc:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 253
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearNormalText:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public scaleX(F)V
    .registers 7

    .line 240
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    div-float v1, v0, p1

    .line 242
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->setScaleX(F)V

    .line 243
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v4, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mContentLeftMargin:I

    int-to-float v4, v4

    sub-float/2addr v2, v4

    sub-float v4, p1, v0

    mul-float/2addr v2, v4

    iget-object v4, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    mul-float/2addr v4, p1

    sub-float/2addr v1, v0

    mul-float/2addr v4, v1

    add-float/2addr v2, v4

    .line 244
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method public setDragStartEvent(Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;)V
    .registers 2

    .line 266
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragStartEvent:Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;

    return-void
.end method

.method public startDragAreaGridToLinearAnimation()V
    .registers 10

    .line 193
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mCurrentDragEvent:Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;

    if-nez v0, :cond_5

    return-void

    .line 196
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearNormalText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$dimen;->more_mode_item_inner_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    .line 197
    new-array v3, v1, [I

    .line 198
    invoke-virtual {p0, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 199
    iget-object v4, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mCurrentDragEvent:Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;

    invoke-virtual {v4}, Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;->getX()F

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v2

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    aget v3, v3, v5

    int-to-float v3, v3

    sub-float/2addr v4, v3

    .line 200
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int/2addr v6, v0

    int-to-float v6, v6

    div-float/2addr v6, v2

    cmpl-float v3, v3, v6

    if-lez v3, :cond_56

    const/4 v3, 0x0

    cmpl-float v3, v4, v3

    if-lez v3, :cond_4f

    .line 202
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v3, v0

    :goto_4b
    int-to-float v3, v3

    div-float v4, v3, v2

    goto :goto_56

    .line 204
    :cond_4f
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v3, v0

    neg-int v3, v3

    goto :goto_4b

    .line 207
    :cond_56
    :goto_56
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mMoreDragBoxLinearBackground:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;

    const/4 v3, 0x1

    new-array v6, v3, [F

    aput v4, v6, v5

    const-string/jumbo v4, "translationX"

    invoke-static {v2, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 208
    iget-object v4, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mMoreDragBoxLinearBackground:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;

    invoke-virtual {v4}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;->getBackgroundWidth()I

    move-result v6

    filled-new-array {v6, v0}, [I

    move-result-object v0

    const-string v6, "BackgroundWidth"

    invoke-static {v4, v6, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 209
    iget-object v4, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mMoreDragBoxLinearBackground:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;

    invoke-virtual {v4}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;->getBackgroundHeight()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/transsion/camera/R$dimen;->more_mode_grid_item_height:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    filled-new-array {v6, v7}, [I

    move-result-object v6

    const-string v7, "BackgroundHeight"

    invoke-static {v4, v7, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 210
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 211
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v7, Lcom/transsion/camera/R$integer;->animation_duration_short:I

    invoke-virtual {p0, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v7, p0

    invoke-virtual {v6, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/4 p0, 0x3

    .line 212
    new-array p0, p0, [Landroid/animation/Animator;

    aput-object v0, p0, v5

    aput-object v4, p0, v3

    aput-object v2, p0, v1

    invoke-virtual {v6, p0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 213
    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public startDragAreaLinearToGridAnimation()V
    .registers 10

    .line 119
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mMoreDragBoxLinearBackground:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;->getBackgroundWidth()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mScreenSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->more_linear_type_view_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    const/4 v4, 0x2

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const-string v2, "BackgroundWidth"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mMoreDragBoxLinearBackground:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;->getBackgroundHeight()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const-string v3, "BackgroundHeight"

    invoke-static {v1, v3, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 121
    new-array v2, v4, [I

    .line 122
    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 123
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mMoreDragBoxLinearBackground:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;

    const/4 v3, 0x1

    new-array v5, v3, [F

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    const-string/jumbo v7, "translationX"

    invoke-static {v2, v7, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 124
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 125
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v7, Lcom/transsion/camera/R$integer;->animation_duration_short:I

    invoke-virtual {p0, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v7, p0

    invoke-virtual {v5, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/4 p0, 0x3

    .line 126
    new-array p0, p0, [Landroid/animation/Animator;

    aput-object v0, p0, v6

    aput-object v1, p0, v3

    aput-object v2, p0, v4

    invoke-virtual {v5, p0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 127
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public startGridDescGridToLinearAnimation()V
    .registers 2

    .line 137
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearDesc:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public startGridDescLinearToGridAnimation()V
    .registers 4

    .line 149
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearDesc:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearDesc:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 151
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearDesc:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$integer;->animation_duration_normal:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mInOutPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, p0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public startGridTextGridToLinearAnimation()V
    .registers 2

    .line 132
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearTitle:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public startGridTextLinearToGridAnimation()V
    .registers 4

    .line 142
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 144
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$integer;->animation_duration_normal:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mInOutPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, p0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public startIconGridToLinearAnimation()V
    .registers 2

    .line 156
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearIcon:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public startIconLinearToGridAnimation()V
    .registers 4

    .line 161
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 163
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$integer;->animation_duration_normal:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mInOutPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, p0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public startNormalTextGridToLinearAnimation()V
    .registers 7

    .line 168
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mCurrentDragEvent:Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;

    if-nez v0, :cond_5

    return-void

    .line 171
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearNormalText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$dimen;->more_mode_item_inner_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 172
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearNormalText:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x2

    .line 173
    new-array v1, v1, [I

    .line 174
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 175
    iget-object v4, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mCurrentDragEvent:Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;

    invoke-virtual {v4}, Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;->getX()F

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v2

    sub-float/2addr v4, v5

    aget v1, v1, v3

    int-to-float v1, v1

    sub-float/2addr v4, v1

    .line 176
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v3, v0

    int-to-float v3, v3

    div-float/2addr v3, v2

    cmpl-float v1, v1, v3

    if-lez v1, :cond_5c

    const/4 v1, 0x0

    cmpl-float v1, v4, v1

    if-lez v1, :cond_54

    .line 178
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    int-to-float v0, v1

    :goto_51
    div-float v4, v0, v2

    goto :goto_5c

    .line 180
    :cond_54
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    neg-int v0, v1

    int-to-float v0, v0

    goto :goto_51

    .line 183
    :cond_5c
    :goto_5c
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearNormalText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$integer;->animation_duration_short:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mInOutPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, p0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public startNormalTextLinearToGridAnimation()V
    .registers 4

    .line 188
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragAreaLinearNormalText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$integer;->animation_duration_normal:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mInOutPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, p0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public translateDragBoxForDragLocationAction(FF)V
    .registers 4

    .line 218
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragStartEvent:Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;->getX()F

    move-result v0

    sub-float/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 219
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragStartEvent:Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;->getY()F

    move-result p1

    sub-float/2addr p2, p1

    invoke-virtual {p0, p2}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public updateDragBoxParameters(I)V
    .registers 3

    if-eqz p1, :cond_17

    const/4 v0, 0x2

    if-eq p1, v0, :cond_17

    const/4 v0, 0x3

    if-ne p1, v0, :cond_9

    goto :goto_17

    .line 304
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/R$dimen;->more_linear_fold_drag_area_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mModeLinearDragAreaSize:I

    goto :goto_24

    .line 302
    :cond_17
    :goto_17
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/R$dimen;->more_linear_drag_area_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mModeLinearDragAreaSize:I

    .line 306
    :goto_24
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragLinearRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 307
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mModeLinearDragAreaSize:I

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 308
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mDragLinearRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public updateDragEvent(Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;)V
    .registers 2

    .line 271
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;->mCurrentDragEvent:Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;

    return-void
.end method
