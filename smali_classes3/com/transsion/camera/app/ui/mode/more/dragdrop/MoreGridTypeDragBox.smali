.class public Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;
.super Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;
.source "SourceFile"


# instance fields
.field private mDragAreaGridText:Landroid/widget/TextView;

.field private mDragAreaIcon:Landroid/widget/ImageView;

.field private mDragAreaNormalText:Landroid/widget/TextView;

.field private mMoreDragBoxBackground:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;


# direct methods
.method public static synthetic $r8$lambda$0DlnOuagkbUYAaSHagkY6fqz6vc(Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->lambda$startIconGridToLinearAnimation$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$L785kips1tO9R3jhV9gL380v8rY(Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->lambda$startGridTextGridToLinearAnimation$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 40
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$startGridTextGridToLinearAnimation$0()V
    .registers 2

    .line 129
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mDragAreaGridText:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$startIconGridToLinearAnimation$1()V
    .registers 2

    .line 158
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mDragAreaIcon:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public changeColor(JII)V
    .registers 5

    .line 105
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mMoreDragBoxBackground:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;

    const-wide/16 p1, 0x15e

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;->changeColor(JII)V

    return-void
.end method

.method public changeScale(IFF)V
    .registers 11

    .line 259
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mMoreDragBoxBackground:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;

    const/4 v1, 0x2

    new-array v2, v1, [F

    const/4 v3, 0x0

    aput p2, v2, v3

    const/4 v4, 0x1

    aput p3, v2, v4

    const-string v5, "scaleX"

    invoke-static {v0, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 260
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mMoreDragBoxBackground:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;

    new-array v2, v1, [F

    aput p2, v2, v3

    aput p3, v2, v4

    const-string p2, "scaleY"

    invoke-static {p0, p2, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 261
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    int-to-long v5, p1

    .line 262
    invoke-virtual {p2, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 263
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/4 p3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v5, 0x3e800000    # 0.25f

    invoke-direct {p1, v5, p3, p3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 264
    new-array p1, v1, [Landroid/animation/Animator;

    aput-object v0, p1, v3

    aput-object p0, p1, v4

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 265
    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public commonInitialize()V
    .registers 3

    .line 213
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    const-string v1, "com.transsion.camera.feature.mode.gopro.GoProModeEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 214
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mDragAreaNormalText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 215
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mDragAreaGridText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    goto :goto_2a

    .line 217
    :cond_1c
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mDragAreaNormalText:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mModeItemTextAllCaps:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 218
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mDragAreaGridText:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mModeItemTextAllCaps:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 220
    :goto_2a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mDragAreaNormalText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v1

    iget-object v1, v1, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mDragAreaGridText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v1

    iget-object v1, v1, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mDragAreaIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v1

    iget v1, v1, Lcom/transsion/camera/app/common/FeatureResource;->mIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 223
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mMoreDragBoxBackground:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;

    iget v1, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mViewWidth:I

    iget p0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mViewHeight:I

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;->setBackgroundSize(II)V

    return-void
.end method

.method public getDeltaHeight()I
    .registers 3

    .line 95
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->more_drag_area_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mMoreDragBoxBackground:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;->getBackgroundHeight()I

    move-result p0

    sub-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getDeltaWidth()I
    .registers 3

    .line 100
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->more_drag_area_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mMoreDragBoxBackground:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;->getBackgroundWidth()I

    move-result p0

    sub-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getDragBoxLayoutParams(Landroid/content/Context;)Landroid/widget/RelativeLayout$LayoutParams;
    .registers 8

    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->more_drag_area_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 46
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 47
    iget v2, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mParentViewPosX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mViewPosX:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mViewWidth:I

    sub-int v3, v0, v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 48
    iget v3, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mParentViewPosY:I

    int-to-float v3, v3

    iget v5, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mViewPosY:F

    add-float/2addr v3, v5

    iget p0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mViewHeight:I

    sub-int p0, v0, p0

    int-to-float p0, p0

    div-float/2addr p0, v4

    sub-float/2addr v3, p0

    float-to-int p0, v3

    .line 49
    invoke-static {p1}, Lcom/transsion/camera/utils/ScreenUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    sub-int/2addr v0, p1

    add-int/2addr v0, v2

    const/4 p1, 0x0

    .line 50
    invoke-virtual {v1, v2, p0, v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    return-object v1
.end method

.method public getMotionEventGetX(IILcom/transsion/camera/app/ui/mode/more/MoreDragEvent;)F
    .registers 4

    .line 56
    invoke-virtual {p3}, Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;->getX()F

    move-result p0

    return p0
.end method

.method public getScrollPositionInLinearMode(Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;ILandroid/graphics/Rect;)Landroid/graphics/Point;
    .registers 7

    .line 61
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;->getY()F

    move-result p0

    iget v0, p3, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    cmpl-float p0, p0, v0

    const/4 v0, 0x0

    if-lez p0, :cond_34

    .line 62
    div-int/lit8 p2, p2, 0x2

    .line 63
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;->getX()F

    move-result p0

    int-to-float v1, p2

    add-float/2addr p0, v1

    iget v2, p3, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    cmpl-float p0, p0, v2

    if-lez p0, :cond_21

    .line 64
    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0, p2, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object p0

    .line 66
    :cond_21
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;->getX()F

    move-result p0

    sub-float/2addr p0, v1

    iget p1, p3, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    cmpg-float p0, p0, p1

    if-gez p0, :cond_34

    .line 67
    new-instance p0, Landroid/graphics/Point;

    neg-int p1, p2

    invoke-direct {p0, p1, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object p0

    .line 70
    :cond_34
    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0, v0, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object p0
.end method

.method public getViewX()F
    .registers 4

    .line 75
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

    .line 80
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
    .registers 4

    .line 241
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mDragAreaIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$dimen;->more_drag_area_top_translation:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 242
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mDragAreaIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mDragAreaNormalText:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 244
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mDragAreaGridText:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public initView(Landroid/content/Context;)V
    .registers 4

    .line 203
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 204
    sget v0, Lcom/transsion/camera/R$layout;->more_grid_drag_area:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 205
    sget v0, Lcom/transsion/camera/R$id;->drag_area_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mDragAreaIcon:Landroid/widget/ImageView;

    .line 206
    sget v0, Lcom/transsion/camera/R$id;->drag_area_normal_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mDragAreaNormalText:Landroid/widget/TextView;

    .line 207
    sget v0, Lcom/transsion/camera/R$id;->drag_area_grid_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mDragAreaGridText:Landroid/widget/TextView;

    .line 208
    sget v0, Lcom/transsion/camera/R$id;->drag_area_grid_background:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mMoreDragBoxBackground:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;

    return-void
.end method

.method public initialize()V
    .registers 2

    .line 85
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->commonInitialize()V

    .line 86
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mIsLinearMode:Z

    if-eqz v0, :cond_b

    .line 87
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->linearModeInitialize()V

    return-void

    .line 89
    :cond_b
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->gridModeInitialize()V

    return-void
.end method

.method public linearModeInitialize()V
    .registers 4

    .line 233
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mDragAreaIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 234
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mDragAreaIcon:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mDragAreaNormalText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 236
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mDragAreaGridText:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public scaleX(F)V
    .registers 2

    return-void
.end method

.method public setDragStartEvent(Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;)V
    .registers 2

    return-void
.end method

.method public startDragAreaGridToLinearAnimation()V
    .registers 6

    .line 182
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mMoreDragBoxBackground:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;

    .line 183
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;->getBackgroundWidth()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mDragAreaNormalText:Landroid/widget/TextView;

    .line 184
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 185
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->more_mode_item_inner_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v2, v3

    filled-new-array {v1, v2}, [I

    move-result-object v1

    .line 182
    const-string v2, "BackgroundWidth"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 186
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$integer;->animation_duration_short:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 187
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 188
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mMoreDragBoxBackground:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;

    .line 189
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;->getBackgroundHeight()I

    move-result v1

    .line 190
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/R$dimen;->more_mode_grid_item_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    filled-new-array {v1, v2}, [I

    move-result-object v1

    .line 188
    const-string v2, "BackgroundHeight"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 191
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/transsion/camera/R$integer;->animation_duration_short:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 192
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public startDragAreaLinearToGridAnimation()V
    .registers 5

    .line 110
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mMoreDragBoxBackground:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;

    .line 111
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;->getBackgroundWidth()I

    move-result v1

    .line 112
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/R$dimen;->more_mode_item_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    filled-new-array {v1, v2}, [I

    move-result-object v1

    .line 110
    const-string v2, "BackgroundWidth"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 113
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$integer;->animation_duration_short:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 114
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 115
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mMoreDragBoxBackground:Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;

    .line 116
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;->getBackgroundHeight()I

    move-result v1

    .line 117
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/R$dimen;->more_mode_item_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    filled-new-array {v1, v2}, [I

    move-result-object v1

    .line 115
    const-string v2, "BackgroundHeight"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 118
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/transsion/camera/R$integer;->animation_duration_short:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 119
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public startGridDescGridToLinearAnimation()V
    .registers 1

    return-void
.end method

.method public startGridDescLinearToGridAnimation()V
    .registers 1

    return-void
.end method

.method public startGridTextGridToLinearAnimation()V
    .registers 4

    .line 124
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mDragAreaGridText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 126
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 127
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$integer;->animation_duration_normal:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mInOutPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 128
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;)V

    .line 129
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public startGridTextLinearToGridAnimation()V
    .registers 4

    .line 139
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mDragAreaGridText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mDragAreaGridText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 141
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mDragAreaGridText:Landroid/widget/TextView;

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

    .line 142
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    .line 141
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mInOutPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 142
    invoke-virtual {v0, p0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public startIconGridToLinearAnimation()V
    .registers 4

    .line 152
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mDragAreaIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 154
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$dimen;->more_drag_area_top_translation:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 155
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$integer;->animation_duration_normal:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 156
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;->mInOutPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 157
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;)V

    .line 158
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public startIconLinearToGridAnimation()V
    .registers 4

    .line 163
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mDragAreaIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mDragAreaIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 165
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mDragAreaIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$dimen;->more_drag_area_top_translation:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 166
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
    .registers 4

    .line 171
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mDragAreaNormalText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mDragAreaNormalText:Landroid/widget/TextView;

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

.method public startNormalTextLinearToGridAnimation()V
    .registers 4

    .line 177
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;->mDragAreaNormalText:Landroid/widget/TextView;

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
    .registers 5

    .line 197
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 198
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    sub-float/2addr p2, p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/R$dimen;->more_drag_area_top_translation:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    sub-float/2addr p2, p1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p2, p1

    invoke-virtual {p0, p2}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public updateDragBoxParameters(I)V
    .registers 2

    return-void
.end method

.method public updateDragEvent(Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;)V
    .registers 2

    return-void
.end method
