.class public Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCloseImage:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mPopupTipsViewClosePadding:I

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mViewArrow:Lcom/transsion/camera/app/ui/widget/TriangleView;

.field private mViewLayout:Landroid/view/View;

.field private mViewText:Landroid/widget/TextView;

.field private mViewTextFather:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$GDscAfD2qBMUmB9FmznC71lCiJs(Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->lambda$show$0(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmViewLayout(Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;)Landroid/view/View;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewLayout:Landroid/view/View;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 32
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mContext:Landroid/content/Context;

    .line 49
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->initView()V

    return-void
.end method

.method private static getCutout(Landroid/view/View;)Landroid/view/DisplayCutout;
    .registers 1

    .line 443
    invoke-virtual {p0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 445
    invoke-virtual {p0}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method private getSafeInsetLeft(Landroid/view/View;)I
    .registers 2

    .line 466
    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->getCutout(Landroid/view/View;)Landroid/view/DisplayCutout;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 469
    :cond_8
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result p0

    return p0
.end method

.method private getSafeInsetRight(Landroid/view/View;)I
    .registers 2

    .line 476
    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->getCutout(Landroid/view/View;)Landroid/view/DisplayCutout;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 479
    :cond_8
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result p0

    return p0
.end method

.method private getTextActualHeight(Landroid/widget/TextView;)I
    .registers 6

    .line 452
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    add-int/2addr p0, v0

    .line 453
    invoke-virtual {p1}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    .line 454
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v0, :cond_23

    .line 457
    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 458
    invoke-virtual {p1, v2, v1}, Landroid/widget/TextView;->getLineBounds(ILandroid/graphics/Rect;)I

    .line 459
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr p0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_23
    return p0
.end method

.method private initView()V
    .registers 4

    .line 433
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/camera/R$layout;->popup_tip_layout:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewLayout:Landroid/view/View;

    .line 434
    sget v1, Lcom/transsion/camera/R$id;->popup_tip_arrow:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/TriangleView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewArrow:Lcom/transsion/camera/app/ui/widget/TriangleView;

    .line 435
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewLayout:Landroid/view/View;

    sget v1, Lcom/transsion/camera/R$id;->popup_tip_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewText:Landroid/widget/TextView;

    .line 436
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewLayout:Landroid/view/View;

    sget v1, Lcom/transsion/camera/R$id;->popup_tip_text_close:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mCloseImage:Landroid/widget/ImageView;

    .line 437
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewLayout:Landroid/view/View;

    sget v1, Lcom/transsion/camera/R$id;->popup_tip_text_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewTextFather:Landroid/view/View;

    .line 438
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->recommend_popup_tips_close_view_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mPopupTipsViewClosePadding:I

    return-void
.end method

.method private synthetic lambda$show$0(Landroid/view/View;)V
    .registers 2

    .line 382
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method


# virtual methods
.method public getPopupTipsView()Landroid/widget/TextView;
    .registers 1

    .line 387
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewText:Landroid/widget/TextView;

    return-object p0
.end method

.method public hide()V
    .registers 3

    .line 404
    sget-object v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "hide PopupTip"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 406
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_16
    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 7

    .line 411
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mCloseImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0x12

    .line 412
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v2, 0x13

    .line 413
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/4 v3, 0x0

    const/16 v4, 0xb4

    if-eq p1, v4, :cond_24

    .line 424
    sget p1, Lcom/transsion/camera/R$id;->popup_tip_text:I

    invoke-virtual {v0, v2, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 425
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mCloseImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mPopupTipsViewClosePadding:I

    invoke-virtual {p1, v3, v3, v1, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_31

    .line 418
    :cond_24
    sget p1, Lcom/transsion/camera/R$id;->popup_tip_text:I

    invoke-virtual {v0, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 419
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mCloseImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mPopupTipsViewClosePadding:I

    invoke-virtual {p1, v1, v3, v3, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    move v3, v4

    .line 428
    :goto_31
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewText:Landroid/widget/TextView;

    int-to-float v1, v3

    invoke-virtual {p1, v1}, Landroid/view/View;->setRotation(F)V

    .line 429
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mCloseImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setBackGroundColor(I)V
    .registers 4

    .line 391
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewArrow:Lcom/transsion/camera/app/ui/widget/TriangleView;

    if-eqz v0, :cond_10

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewText:Landroid/widget/TextView;

    if-eqz v1, :cond_10

    .line 392
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/widget/TriangleView;->setPaintColor(I)V

    .line 393
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_10
    return-void
.end method

.method public setCloseImageVisible(I)V
    .registers 2

    .line 398
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mCloseImage:Landroid/widget/ImageView;

    if-eqz p0, :cond_7

    .line 399
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_7
    return-void
.end method

.method public show(Landroid/view/View;Ljava/lang/String;I)V
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 53
    invoke-virtual {v1}, Landroid/view/View;->getLayoutDirection()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_11

    move v4, v6

    goto :goto_12

    :cond_11
    const/4 v4, 0x0

    .line 54
    :goto_12
    iget-object v7, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 55
    iget-object v8, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/transsion/widgetslib/util/Utils;->isRefsPadValue(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_2f

    iget-object v8, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/transsion/widgetslib/util/Utils;->isScreenLandscape(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_2f

    .line 56
    iget-object v8, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/transsion/widgetslib/util/Utils;->getRealScreenHeight(Landroid/content/Context;)I

    move-result v8

    goto :goto_35

    :cond_2f
    iget-object v8, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/transsion/widgetslib/util/Utils;->getRealScreenWidth(Landroid/content/Context;)I

    move-result v8

    .line 57
    :goto_35
    sget v9, Lcom/transsion/camera/R$dimen;->recommend_popup_tips_offset:I

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    .line 58
    sget v10, Lcom/transsion/camera/R$dimen;->recommend_popup_tips_radius:I

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v10

    .line 59
    sget v11, Lcom/transsion/camera/R$dimen;->recommend_popup_tips_marginHorizontal:I

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v11

    .line 60
    sget v12, Lcom/transsion/camera/R$dimen;->recommend_popup_tips_offset_adjust:I

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    int-to-float v12, v8

    const v13, 0x3f666666    # 0.9f

    mul-float/2addr v13, v12

    float-to-int v13, v13

    const v14, 0x3f2ac083    # 0.667f

    mul-float/2addr v12, v14

    float-to-int v12, v12

    .line 63
    sget-object v14, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "show: maxWidthSlideWeight = 0.667 maxWidthCenterWeight = 0.9 maxWidthSpaceCenter = "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " popupWidthMax = "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " screenWidth = "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v14, v6}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const v15, 0x800055

    const/16 v5, 0x50

    const/16 v6, 0x51

    if-eq v3, v5, :cond_91

    if-eq v3, v6, :cond_91

    if-ne v3, v15, :cond_8c

    goto :goto_91

    :cond_8c
    const/16 v17, 0x0

    move-object/from16 v15, v17

    goto :goto_b4

    :cond_91
    :goto_91
    if-ne v3, v6, :cond_a6

    .line 74
    iget-object v12, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewArrow:Lcom/transsion/camera/app/ui/widget/TriangleView;

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v15, 0xe

    .line 75
    invoke-virtual {v12, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 76
    iget-object v15, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewArrow:Lcom/transsion/camera/app/ui/widget/TriangleView;

    invoke-virtual {v15, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move v12, v13

    .line 80
    :cond_a6
    iget-object v15, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewTextFather:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, 0x3

    .line 81
    sget v5, Lcom/transsion/camera/R$id;->popup_tip_arrow:I

    invoke-virtual {v15, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_b4
    const/16 v6, 0x30

    const/16 v5, 0x31

    move/from16 v19, v4

    const/4 v4, 0x2

    if-eq v3, v6, :cond_c4

    if-eq v3, v5, :cond_c4

    const v6, 0x800035

    if-ne v3, v6, :cond_f3

    .line 87
    :cond_c4
    iget-object v6, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewArrow:Lcom/transsion/camera/app/ui/widget/TriangleView;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v15, 0xc

    .line 88
    invoke-virtual {v6, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    if-ne v3, v5, :cond_d9

    const/16 v15, 0xe

    .line 90
    invoke-virtual {v6, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move v12, v13

    .line 94
    :cond_d9
    iget-object v15, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewArrow:Lcom/transsion/camera/app/ui/widget/TriangleView;

    invoke-virtual {v15, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    iget-object v6, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewArrow:Lcom/transsion/camera/app/ui/widget/TriangleView;

    const/high16 v15, 0x43340000    # 180.0f

    invoke-virtual {v6, v15}, Landroid/view/View;->setRotation(F)V

    .line 96
    iget-object v6, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewTextFather:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    move-object v15, v6

    check-cast v15, Landroid/widget/RelativeLayout$LayoutParams;

    .line 97
    sget v6, Lcom/transsion/camera/R$id;->popup_tip_arrow:I

    invoke-virtual {v15, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_f3
    const v6, 0x800013

    const/16 v5, 0xf

    if-ne v3, v6, :cond_123

    .line 101
    iget-object v12, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewArrow:Lcom/transsion/camera/app/ui/widget/TriangleView;

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v15, 0x15

    .line 102
    invoke-virtual {v12, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 103
    invoke-virtual {v12, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 104
    iget-object v15, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewArrow:Lcom/transsion/camera/app/ui/widget/TriangleView;

    invoke-virtual {v15, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    iget-object v12, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewTextFather:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    move-object v15, v12

    check-cast v15, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v12, 0x10

    .line 106
    sget v6, Lcom/transsion/camera/R$id;->popup_tip_arrow:I

    invoke-virtual {v15, v12, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 107
    invoke-virtual {v15, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move v12, v13

    :cond_123
    const v6, 0x800015

    if-ne v3, v6, :cond_151

    .line 112
    iget-object v12, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewArrow:Lcom/transsion/camera/app/ui/widget/TriangleView;

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v15, 0x14

    .line 113
    invoke-virtual {v12, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 114
    invoke-virtual {v12, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 115
    iget-object v15, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewArrow:Lcom/transsion/camera/app/ui/widget/TriangleView;

    invoke-virtual {v15, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    iget-object v12, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewTextFather:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    move-object v15, v12

    check-cast v15, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v12, 0x11

    .line 117
    sget v6, Lcom/transsion/camera/R$id;->popup_tip_arrow:I

    invoke-virtual {v15, v12, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 118
    invoke-virtual {v15, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move v12, v13

    :cond_151
    if-nez v15, :cond_155

    goto/16 :goto_587

    .line 125
    :cond_155
    iget-object v5, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewTextFather:Landroid/view/View;

    invoke-virtual {v5, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    iget-object v5, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v5

    .line 127
    invoke-static {v5}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v5

    .line 128
    iget-object v6, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewTextFather:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setLayoutDirection(I)V

    .line 129
    iget-object v5, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewText:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v5, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingStart()I

    move-result v5

    .line 131
    iget-object v6, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingEnd()I

    move-result v6

    sub-int v15, v12, v5

    sub-int/2addr v15, v6

    .line 133
    iget-object v4, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    int-to-float v4, v5

    add-float/2addr v2, v4

    int-to-float v4, v6

    add-float/2addr v2, v4

    float-to-int v2, v2

    .line 134
    invoke-static {v2, v12}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 135
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showPopupTip, textRemainSpace: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", popupWidthTmp: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", popupWidthMax: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", popupWidth: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 140
    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1de

    .line 141
    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v5, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewLayout:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 143
    :cond_1de
    new-instance v2, Landroid/widget/PopupWindow;

    iget-object v5, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewLayout:Landroid/view/View;

    const/4 v6, -0x2

    invoke-direct {v2, v5, v4, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v2, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 144
    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 145
    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v5, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewLayout:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 146
    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setOverlapAnchor(Z)V

    .line 147
    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 148
    new-instance v2, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView$1;

    invoke-direct {v2, v0}, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView$1;-><init>(Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;)V

    .line 161
    iget-object v5, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v2}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    .line 162
    iget-object v5, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v2}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    .line 163
    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    const/high16 v2, 0x40000000    # 2.0f

    .line 166
    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 167
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 168
    iget-object v14, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewLayout:Landroid/view/View;

    invoke-virtual {v14, v2, v12}, Landroid/view/View;->measure(II)V

    .line 169
    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    iget-object v14, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewLayout:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    invoke-virtual {v2, v5, v5, v12, v14}, Landroid/view/View;->layout(IIII)V

    const/4 v2, 0x2

    .line 177
    new-array v12, v2, [I

    const/16 v15, 0x50

    if-ne v3, v15, :cond_291

    .line 186
    invoke-virtual {v1, v12}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 187
    aget v15, v12, v5

    if-ge v15, v11, :cond_246

    sub-int v5, v11, v15

    goto :goto_247

    :cond_246
    const/4 v5, 0x0

    .line 194
    :goto_247
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v15

    add-int/2addr v15, v9

    .line 197
    iget-object v6, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewArrow:Lcom/transsion/camera/app/ui/widget/TriangleView;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    const/high16 v18, 0x40000000    # 2.0f

    iget-object v14, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewArrow:Lcom/transsion/camera/app/ui/widget/TriangleView;

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v14

    sub-int/2addr v6, v14

    const/16 v20, 0x2

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v6, v5

    if-ge v6, v10, :cond_263

    move v6, v10

    :cond_263
    if-eqz v19, :cond_266

    neg-int v6, v6

    .line 207
    :cond_266
    iget-object v14, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewArrow:Lcom/transsion/camera/app/ui/widget/TriangleView;

    int-to-float v6, v6

    invoke-virtual {v14, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 208
    iget-object v6, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewLayout:Landroid/view/View;

    iget-object v14, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewArrow:Lcom/transsion/camera/app/ui/widget/TriangleView;

    if-eqz v19, :cond_277

    invoke-virtual {v14}, Landroid/view/View;->getX()F

    move-result v14

    goto :goto_285

    :cond_277
    invoke-virtual {v14}, Landroid/view/View;->getTranslationX()F

    move-result v14

    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewArrow:Lcom/transsion/camera/app/ui/widget/TriangleView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v2, v18

    add-float/2addr v14, v2

    :goto_285
    invoke-virtual {v6, v14}, Landroid/view/View;->setPivotX(F)V

    .line 209
    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewLayout:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/view/View;->setPivotY(F)V

    :goto_28e
    const/16 v2, 0x51

    goto :goto_296

    :cond_291
    const/high16 v18, 0x40000000    # 2.0f

    const/4 v5, 0x0

    const/4 v15, 0x0

    goto :goto_28e

    :goto_296
    if-ne v3, v2, :cond_2bd

    .line 213
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v2, v4

    const/16 v20, 0x2

    div-int/lit8 v2, v2, 0x2

    if-eqz v19, :cond_2a4

    neg-int v2, v2

    :cond_2a4
    move v5, v2

    .line 217
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int v15, v2, v9

    .line 220
    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v6, v6, v18

    invoke-virtual {v2, v6}, Landroid/view/View;->setPivotX(F)V

    .line 221
    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewLayout:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/view/View;->setPivotY(F)V

    :cond_2bd
    const v2, 0x800055

    if-ne v3, v2, :cond_33e

    .line 225
    invoke-virtual {v1, v12}, Landroid/view/View;->getLocationOnScreen([I)V

    const/16 v16, 0x0

    .line 226
    aget v2, v12, v16

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v2, v5

    add-int/2addr v2, v11

    .line 227
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int v5, v4, v5

    if-le v2, v8, :cond_2da

    sub-int/2addr v2, v8

    add-int/2addr v5, v2

    goto :goto_2db

    :cond_2da
    const/4 v2, 0x0

    :goto_2db
    if-eqz v19, :cond_2de

    goto :goto_2df

    :cond_2de
    neg-int v5, v5

    .line 235
    :goto_2df
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int v15, v6, v9

    .line 238
    iget-object v6, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewArrow:Lcom/transsion/camera/app/ui/widget/TriangleView;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int v6, v4, v6

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v14

    move/from16 v17, v2

    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewArrow:Lcom/transsion/camera/app/ui/widget/TriangleView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v14, v2

    const/16 v20, 0x2

    div-int/lit8 v14, v14, 0x2

    sub-int/2addr v6, v14

    add-int v6, v6, v17

    .line 240
    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v14, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewArrow:Lcom/transsion/camera/app/ui/widget/TriangleView;

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v14

    sub-int/2addr v2, v14

    sub-int/2addr v2, v10

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-eqz v19, :cond_316

    neg-int v2, v2

    .line 245
    :cond_316
    iget-object v6, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewArrow:Lcom/transsion/camera/app/ui/widget/TriangleView;

    int-to-float v2, v2

    invoke-virtual {v6, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 246
    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewLayout:Landroid/view/View;

    iget-object v6, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewArrow:Lcom/transsion/camera/app/ui/widget/TriangleView;

    if-eqz v19, :cond_327

    invoke-virtual {v6}, Landroid/view/View;->getX()F

    move-result v6

    goto :goto_335

    :cond_327
    invoke-virtual {v6}, Landroid/view/View;->getTranslationX()F

    move-result v6

    iget-object v14, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewArrow:Lcom/transsion/camera/app/ui/widget/TriangleView;

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v14

    int-to-float v14, v14

    div-float v14, v14, v18

    add-float/2addr v6, v14

    :goto_335
    invoke-virtual {v2, v6}, Landroid/view/View;->setPivotX(F)V

    .line 247
    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewLayout:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/view/View;->setPivotY(F)V

    :cond_33e
    const/16 v2, 0x30

    if-ne v3, v2, :cond_3b1

    .line 251
    invoke-virtual {v1, v12}, Landroid/view/View;->getLocationOnScreen([I)V

    const/16 v16, 0x0

    .line 252
    aget v2, v12, v16

    if-ge v2, v11, :cond_34e

    sub-int v2, v11, v2

    goto :goto_34f

    :cond_34e
    const/4 v2, 0x0

    .line 259
    :goto_34f
    iget-object v5, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewLayout:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    if-lez v5, :cond_366

    .line 260
    iget-object v5, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewText:Landroid/widget/TextView;

    invoke-direct {v0, v5}, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->getTextActualHeight(Landroid/widget/TextView;)I

    move-result v5

    iget-object v6, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewArrow:Lcom/transsion/camera/app/ui/widget/TriangleView;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    move v6, v5

    goto :goto_367

    :cond_366
    const/4 v6, 0x1

    :goto_367
    sub-int v5, v2, v7

    add-int v7, v6, v9

    neg-int v15, v7

    .line 267
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v7

    iget-object v14, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewArrow:Lcom/transsion/camera/app/ui/widget/TriangleView;

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v14

    sub-int/2addr v7, v14

    const/16 v20, 0x2

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v7, v2

    if-ge v7, v10, :cond_37f

    move v7, v10

    :cond_37f
    if-eqz v19, :cond_382

    neg-int v7, v7

    .line 277
    :cond_382
    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewArrow:Lcom/transsion/camera/app/ui/widget/TriangleView;

    int-to-float v7, v7

    invoke-virtual {v2, v7}, Landroid/view/View;->setTranslationX(F)V

    .line 278
    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewLayout:Landroid/view/View;

    iget-object v7, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewArrow:Lcom/transsion/camera/app/ui/widget/TriangleView;

    if-eqz v19, :cond_393

    invoke-virtual {v7}, Landroid/view/View;->getX()F

    move-result v7

    goto :goto_3a1

    :cond_393
    invoke-virtual {v7}, Landroid/view/View;->getTranslationX()F

    move-result v7

    iget-object v14, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewArrow:Lcom/transsion/camera/app/ui/widget/TriangleView;

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v14

    int-to-float v14, v14

    div-float v14, v14, v18

    add-float/2addr v7, v14

    :goto_3a1
    invoke-virtual {v2, v7}, Landroid/view/View;->setPivotX(F)V

    .line 279
    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v2, v7}, Landroid/view/View;->setPivotY(F)V

    :goto_3ae
    const/16 v2, 0x31

    goto :goto_3b3

    :cond_3b1
    const/4 v6, -0x2

    goto :goto_3ae

    :goto_3b3
    if-ne v3, v2, :cond_3f3

    .line 284
    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    if-lez v2, :cond_3cb

    .line 285
    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewText:Landroid/widget/TextView;

    invoke-direct {v0, v2}, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->getTextActualHeight(Landroid/widget/TextView;)I

    move-result v2

    iget-object v5, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewArrow:Lcom/transsion/camera/app/ui/widget/TriangleView;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v5, v2

    goto :goto_3cc

    :cond_3cb
    const/4 v5, 0x1

    .line 288
    :goto_3cc
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v2, v4

    const/16 v20, 0x2

    div-int/lit8 v2, v2, 0x2

    if-eqz v19, :cond_3d8

    neg-int v2, v2

    :cond_3d8
    add-int v6, v5, v9

    neg-int v15, v6

    .line 295
    iget-object v6, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewLayout:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float v7, v7, v18

    invoke-virtual {v6, v7}, Landroid/view/View;->setPivotX(F)V

    .line 296
    iget-object v6, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewLayout:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setPivotY(F)V

    move v6, v5

    move v5, v2

    :cond_3f3
    const v2, 0x800035

    if-ne v3, v2, :cond_491

    .line 300
    invoke-virtual {v1, v12}, Landroid/view/View;->getLocationOnScreen([I)V

    const/16 v16, 0x0

    .line 301
    aget v2, v12, v16

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v2, v5

    add-int/2addr v2, v11

    .line 303
    iget-object v5, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewLayout:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    if-lez v5, :cond_41b

    .line 304
    iget-object v5, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewText:Landroid/widget/TextView;

    invoke-direct {v0, v5}, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->getTextActualHeight(Landroid/widget/TextView;)I

    move-result v5

    iget-object v6, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewArrow:Lcom/transsion/camera/app/ui/widget/TriangleView;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_41c

    :cond_41b
    const/4 v5, 0x1

    .line 307
    :goto_41c
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int v6, v4, v6

    if-le v2, v8, :cond_427

    sub-int/2addr v2, v8

    add-int/2addr v6, v2

    goto :goto_428

    :cond_427
    const/4 v2, 0x0

    :goto_428
    if-eqz v19, :cond_42b

    goto :goto_42c

    :cond_42b
    neg-int v6, v6

    :goto_42c
    add-int v7, v5, v9

    neg-int v15, v7

    .line 318
    iget-object v7, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewArrow:Lcom/transsion/camera/app/ui/widget/TriangleView;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    sub-int v7, v4, v7

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v14

    move/from16 p2, v2

    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewArrow:Lcom/transsion/camera/app/ui/widget/TriangleView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v14, v2

    const/16 v20, 0x2

    div-int/lit8 v14, v14, 0x2

    sub-int/2addr v7, v14

    add-int v7, v7, p2

    .line 320
    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v14, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewArrow:Lcom/transsion/camera/app/ui/widget/TriangleView;

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v14

    sub-int/2addr v2, v14

    sub-int/2addr v2, v10

    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-eqz v19, :cond_460

    neg-int v2, v2

    .line 325
    :cond_460
    iget-object v7, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewArrow:Lcom/transsion/camera/app/ui/widget/TriangleView;

    int-to-float v2, v2

    invoke-virtual {v7, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 326
    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewLayout:Landroid/view/View;

    iget-object v7, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewArrow:Lcom/transsion/camera/app/ui/widget/TriangleView;

    if-eqz v19, :cond_471

    invoke-virtual {v7}, Landroid/view/View;->getX()F

    move-result v7

    goto :goto_47f

    :cond_471
    invoke-virtual {v7}, Landroid/view/View;->getTranslationX()F

    move-result v7

    iget-object v14, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewArrow:Lcom/transsion/camera/app/ui/widget/TriangleView;

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v14

    int-to-float v14, v14

    div-float v14, v14, v18

    add-float/2addr v7, v14

    :goto_47f
    invoke-virtual {v2, v7}, Landroid/view/View;->setPivotX(F)V

    .line 327
    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v2, v7}, Landroid/view/View;->setPivotY(F)V

    move/from16 v21, v6

    move v6, v5

    move/from16 v5, v21

    :cond_491
    const/high16 v2, 0x3f000000    # 0.5f

    const v7, 0x800013

    if-ne v3, v7, :cond_4f5

    .line 331
    invoke-virtual {v1, v12}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 332
    invoke-direct/range {p0 .. p1}, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->getSafeInsetLeft(Landroid/view/View;)I

    move-result v5

    const/16 v16, 0x0

    .line 333
    aget v6, v12, v16

    mul-int/lit8 v7, v11, 0x2

    sub-int/2addr v6, v7

    sub-int/2addr v6, v5

    .line 334
    invoke-static {v6, v13}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    int-to-float v6, v11

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    float-to-int v5, v5

    .line 335
    iget-object v6, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewArrow:Lcom/transsion/camera/app/ui/widget/TriangleView;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v6, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 337
    iget-object v6, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewLayout:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    if-lez v6, :cond_4ca

    .line 338
    iget-object v6, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewText:Landroid/widget/TextView;

    invoke-direct {v0, v6}, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->getTextActualHeight(Landroid/widget/TextView;)I

    move-result v6

    goto :goto_4cb

    :cond_4ca
    const/4 v6, 0x1

    :goto_4cb
    add-int v7, v5, v9

    neg-int v7, v7

    .line 342
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v14

    sub-int/2addr v14, v6

    const/16 v20, 0x2

    div-int/lit8 v15, v14, 0x2

    .line 346
    iget-object v14, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewLayout:Landroid/view/View;

    move/from16 p2, v2

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v14, v2}, Landroid/view/View;->setPivotX(F)V

    .line 347
    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v14

    int-to-float v14, v14

    div-float v14, v14, v18

    invoke-virtual {v2, v14}, Landroid/view/View;->setPivotY(F)V

    move v2, v5

    move v5, v7

    :goto_4f1
    const v7, 0x800015

    goto :goto_4f9

    :cond_4f5
    move/from16 p2, v2

    move v2, v4

    goto :goto_4f1

    :goto_4f9
    if-ne v3, v7, :cond_55c

    .line 351
    invoke-virtual {v1, v12}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 352
    invoke-direct/range {p0 .. p1}, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->getSafeInsetLeft(Landroid/view/View;)I

    move-result v2

    .line 353
    invoke-direct/range {p0 .. p1}, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->getSafeInsetRight(Landroid/view/View;)I

    move-result v3

    const/16 v16, 0x0

    .line 354
    aget v5, v12, v16

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v8, v5

    mul-int/lit8 v5, v11, 0x2

    sub-int/2addr v8, v5

    add-int/2addr v8, v2

    add-int/2addr v8, v3

    .line 355
    invoke-static {v8, v13}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v11

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 356
    iget-object v3, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewArrow:Lcom/transsion/camera/app/ui/widget/TriangleView;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v4, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 358
    iget-object v3, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewLayout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    if-lez v3, :cond_539

    .line 359
    iget-object v3, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewText:Landroid/widget/TextView;

    invoke-direct {v0, v3}, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->getTextActualHeight(Landroid/widget/TextView;)I

    move-result v5

    goto :goto_53a

    :cond_539
    const/4 v5, 0x1

    .line 362
    :goto_53a
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v9

    .line 363
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v4, v5

    const/16 v20, 0x2

    div-int/lit8 v15, v4, 0x2

    .line 367
    iget-object v4, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewLayout:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/view/View;->setPivotX(F)V

    .line 368
    iget-object v4, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewLayout:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v6, v6, v18

    invoke-virtual {v4, v6}, Landroid/view/View;->setPivotY(F)V

    move v6, v5

    move v5, v3

    .line 372
    :cond_55c
    iget-object v3, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 373
    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 374
    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v1, v5, v15}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 375
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewText:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/view/View;->setClipToOutline(Z)V

    .line 376
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mViewText:Landroid/widget/TextView;

    new-instance v2, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView$2;

    invoke-direct {v2, v0, v10}, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView$2;-><init>(Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 381
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->mCloseImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_587

    .line 382
    new-instance v2, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_587
    :goto_587
    return-void
.end method
