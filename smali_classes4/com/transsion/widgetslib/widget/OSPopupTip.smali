.class public Lcom/transsion/widgetslib/widget/OSPopupTip;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DURATION:I = 0xfa

.field private static final TAG:Ljava/lang/String; = "OSPopupTip"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/widget/TextView;)I
    .registers 1

    .line 48
    invoke-static {p0}, Lcom/transsion/widgetslib/widget/OSPopupTip;->getTextActualHeight(Landroid/widget/TextView;)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Landroid/view/View;)I
    .registers 1

    .line 48
    invoke-static {p0}, Lcom/transsion/widgetslib/widget/OSPopupTip;->getSafeInsetLeft(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Landroid/view/View;)I
    .registers 1

    .line 48
    invoke-static {p0}, Lcom/transsion/widgetslib/widget/OSPopupTip;->getSafeInsetRight(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 1

    .line 48
    sget-object v0, Lcom/transsion/widgetslib/widget/OSPopupTip;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static drawableToBitmap2(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;
    .registers 10

    .line 572
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 573
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 575
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    int-to-float v0, v0

    int-to-float v1, v1

    const/4 v3, 0x0

    .line 576
    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 578
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float v1, p1, v1

    cmpl-float v1, v1, v3

    const/4 v4, 0x0

    if-eqz v1, :cond_23

    const/4 v1, 0x1

    goto :goto_24

    :cond_23
    move v1, v4

    :goto_24
    if-eqz v1, :cond_32

    .line 581
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 582
    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 583
    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    goto :goto_35

    .line 585
    :cond_32
    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 588
    :goto_35
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v6

    float-to-int v6, v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 589
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    if-eqz v1, :cond_81

    .line 591
    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v7, 0x3

    invoke-direct {v1, v4, v7}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v6, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    const/high16 v1, 0x43340000    # 180.0f

    rem-float v1, p1, v1

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_76

    .line 593
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    sub-float/2addr v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v7

    sub-float/2addr v0, v7

    div-float/2addr v0, v3

    invoke-virtual {v6, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 595
    :cond_76
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {v6, p1, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 597
    :cond_81
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v4, v4, p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 598
    invoke-virtual {p0, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v5
.end method

.method private static getCutout(Landroid/view/View;)Landroid/view/DisplayCutout;
    .registers 1

    .line 619
    invoke-virtual {p0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 622
    invoke-virtual {p0}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getSafeInsetLeft(Landroid/view/View;)I
    .registers 1

    .line 629
    invoke-static {p0}, Lcom/transsion/widgetslib/widget/OSPopupTip;->getCutout(Landroid/view/View;)Landroid/view/DisplayCutout;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 632
    :cond_8
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result p0

    return p0
.end method

.method private static getSafeInsetRight(Landroid/view/View;)I
    .registers 1

    .line 638
    invoke-static {p0}, Lcom/transsion/widgetslib/widget/OSPopupTip;->getCutout(Landroid/view/View;)Landroid/view/DisplayCutout;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 641
    :cond_8
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result p0

    return p0
.end method

.method private static getTextActualHeight(Landroid/widget/TextView;)I
    .registers 6

    .line 604
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 605
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    .line 606
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v1, :cond_23

    .line 608
    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 609
    invoke-virtual {p0, v3, v2}, Landroid/widget/TextView;->getLineBounds(ILandroid/graphics/Rect;)I

    .line 610
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_23
    return v0
.end method

.method public static show(Landroid/view/View;Ljava/lang/String;I)Landroid/widget/PopupWindow;
    .registers 4

    const/4 v0, 0x0

    .line 407
    invoke-static {p0, p1, p2, v0, v0}, Lcom/transsion/widgetslib/widget/OSPopupTip;->show(Landroid/view/View;Ljava/lang/String;III)Landroid/widget/PopupWindow;

    move-result-object p0

    return-object p0
.end method

.method public static show(Landroid/view/View;Ljava/lang/String;III)Landroid/widget/PopupWindow;
    .registers 29

    move-object/from16 v3, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    const/4 v1, 0x0

    if-nez v3, :cond_a

    return-object v1

    .line 57
    :cond_a
    invoke-virtual {v3}, Landroid/view/View;->getLayoutDirection()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_13

    move v11, v6

    goto :goto_14

    :cond_13
    const/4 v11, 0x0

    .line 59
    :goto_14
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    .line 60
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 61
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 62
    sget v8, Lcom/transsion/widgetslib/R$dimen;->os_pop_tip_slide_width_weight:I

    invoke-static {v14, v8}, Lcom/transsion/widgetslib/util/Utils;->getFloatValue(Landroid/content/Context;I)F

    move-result v8

    .line 63
    sget v9, Lcom/transsion/widgetslib/R$dimen;->os_pop_tip_center_width_weight:I

    invoke-static {v14, v9}, Lcom/transsion/widgetslib/util/Utils;->getFloatValue(Landroid/content/Context;I)F

    move-result v9

    .line 64
    invoke-static {v14}, Lcom/transsion/widgetslib/util/Utils;->isRefsPadValue(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_3e

    invoke-static {v14}, Lcom/transsion/widgetslib/util/Utils;->isScreenLandscape(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_3e

    .line 65
    invoke-static {v14}, Lcom/transsion/widgetslib/util/Utils;->getRealScreenHeight(Landroid/content/Context;)I

    move-result v10

    :goto_3c
    move v13, v10

    goto :goto_43

    :cond_3e
    invoke-static {v14}, Lcom/transsion/widgetslib/util/Utils;->getRealScreenWidth(Landroid/content/Context;)I

    move-result v10

    goto :goto_3c

    :goto_43
    const/high16 v10, 0x40c00000    # 6.0f

    .line 67
    invoke-static {v6, v10, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v10

    float-to-int v10, v10

    const/high16 v12, 0x41400000    # 12.0f

    .line 68
    invoke-static {v6, v12, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v12

    float-to-int v12, v12

    const/high16 v15, 0x41000000    # 8.0f

    .line 69
    invoke-static {v6, v15, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    float-to-int v7, v7

    int-to-float v15, v13

    mul-float v5, v15, v9

    float-to-int v5, v5

    mul-float/2addr v15, v8

    float-to-int v15, v15

    .line 72
    sget-object v6, Lcom/transsion/widgetslib/widget/OSPopupTip;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v7

    const-string v7, "show: maxWidthSlideWeight = "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " maxWidthCenterWeight = "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " maxWidthSpaceCenter = "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " popupWidthMax = "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " screenWidth = "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/transsion/widgetscore/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    sget v1, Lcom/transsion/widgetslib/R$layout;->os_popup_tip_layout:I

    const/4 v7, 0x0

    invoke-static {v14, v1, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 76
    sget v7, Lcom/transsion/widgetslib/R$id;->os_popup_tip_arrow:I

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 77
    sget v8, Lcom/transsion/widgetslib/R$id;->os_popup_tip_text:I

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 78
    sget v9, Lcom/transsion/widgetslib/R$id;->os_popup_tip_close:I

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    move/from16 v19, v5

    .line 79
    sget v5, Lcom/transsion/widgetslib/R$id;->os_popup_tip_text_father:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    move-object/from16 v20, v9

    const/16 v9, 0x50

    move/from16 v21, v10

    const/16 v10, 0x51

    if-eq v2, v9, :cond_d3

    if-eq v2, v10, :cond_d3

    const v9, 0x800055

    if-ne v2, v9, :cond_cf

    goto :goto_d3

    :cond_cf
    move/from16 v22, v11

    const/4 v9, 0x0

    goto :goto_f3

    :cond_d3
    :goto_d3
    if-ne v2, v10, :cond_e5

    .line 84
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v10, 0xe

    .line 85
    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 86
    invoke-virtual {v7, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move/from16 v15, v19

    .line 91
    :cond_e5
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, 0x3

    move/from16 v22, v11

    .line 92
    sget v11, Lcom/transsion/widgetslib/R$id;->os_popup_tip_arrow:I

    invoke-virtual {v9, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_f3
    const/16 v10, 0x30

    const/16 v11, 0x31

    if-eq v2, v10, :cond_100

    if-eq v2, v11, :cond_100

    const v10, 0x800035

    if-ne v2, v10, :cond_128

    .line 96
    :cond_100
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v10, 0xc

    .line 97
    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    if-ne v2, v11, :cond_114

    const/16 v10, 0xe

    .line 99
    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move/from16 v15, v19

    .line 103
    :cond_114
    invoke-virtual {v7, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v9, 0x43340000    # 180.0f

    .line 104
    invoke-virtual {v7, v9}, Landroid/view/View;->setRotation(F)V

    .line 106
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, 0x2

    .line 107
    sget v11, Lcom/transsion/widgetslib/R$id;->os_popup_tip_arrow:I

    invoke-virtual {v9, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_128
    const v10, 0x800013

    const/16 v11, 0xf

    if-ne v2, v10, :cond_17b

    .line 111
    sget v9, Lcom/transsion/widgetslib/R$drawable;->os_popup_tip_arrow:I

    invoke-static {v14, v9}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-nez v9, :cond_13a

    const/16 v17, 0x0

    return-object v17

    .line 115
    :cond_13a
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v15, 0x15

    .line 116
    invoke-virtual {v10, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 117
    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 118
    sget v15, Lcom/transsion/widgetslib/R$dimen;->os_popup_tip_arrow_height:I

    invoke-virtual {v4, v15}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v15

    iput v15, v10, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 119
    sget v15, Lcom/transsion/widgetslib/R$dimen;->os_popup_tip_arrow_width:I

    invoke-virtual {v4, v15}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v15

    iput v15, v10, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 120
    invoke-virtual {v7, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    const/high16 v15, 0x42b40000    # 90.0f

    invoke-static {v9, v15}, Lcom/transsion/widgetslib/widget/OSPopupTip;->drawableToBitmap2(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-direct {v10, v4, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v7, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 123
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v10, 0x10

    .line 124
    sget v15, Lcom/transsion/widgetslib/R$id;->os_popup_tip_arrow:I

    invoke-virtual {v9, v10, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 125
    invoke-virtual {v9, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move/from16 v15, v19

    :cond_17b
    const v10, 0x800015

    if-ne v2, v10, :cond_1cd

    .line 131
    sget v9, Lcom/transsion/widgetslib/R$drawable;->os_popup_tip_arrow:I

    invoke-static {v14, v9}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-nez v9, :cond_18b

    const/16 v17, 0x0

    return-object v17

    .line 135
    :cond_18b
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v15, 0x14

    .line 136
    invoke-virtual {v10, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 137
    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 138
    sget v15, Lcom/transsion/widgetslib/R$dimen;->os_popup_tip_arrow_height:I

    invoke-virtual {v4, v15}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v15

    iput v15, v10, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 139
    sget v15, Lcom/transsion/widgetslib/R$dimen;->os_popup_tip_arrow_width:I

    invoke-virtual {v4, v15}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v15

    iput v15, v10, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 140
    invoke-virtual {v7, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    const/high16 v15, -0x3d4c0000    # -90.0f

    invoke-static {v9, v15}, Lcom/transsion/widgetslib/widget/OSPopupTip;->drawableToBitmap2(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-direct {v10, v4, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v7, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 143
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v4, 0x11

    .line 144
    sget v10, Lcom/transsion/widgetslib/R$id;->os_popup_tip_arrow:I

    invoke-virtual {v9, v4, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 145
    invoke-virtual {v9, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move/from16 v15, v19

    :cond_1cd
    if-nez v9, :cond_1d2

    const/16 v17, 0x0

    return-object v17

    .line 154
    :cond_1d2
    invoke-virtual {v5, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    invoke-virtual {v8}, Landroid/view/View;->getPaddingStart()I

    move-result v4

    .line 158
    invoke-virtual {v8}, Landroid/view/View;->getPaddingEnd()I

    move-result v5

    sub-int v9, v15, v4

    sub-int/2addr v9, v5

    .line 161
    invoke-virtual {v8}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    int-to-float v4, v4

    add-float/2addr v0, v4

    int-to-float v4, v5

    add-float/2addr v0, v4

    float-to-int v0, v0

    .line 162
    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 163
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "showPopupTip, textRemainSpace: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", popupWidthTmp: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", popupWidthMax: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", popupWidth: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    new-instance v5, Landroid/widget/PopupWindow;

    const/4 v0, -0x2

    invoke-direct {v5, v1, v4, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 165
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {v5, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 166
    invoke-virtual {v5, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 167
    invoke-virtual {v5, v0}, Landroid/widget/PopupWindow;->setOverlapAnchor(Z)V

    .line 168
    invoke-virtual {v5, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 170
    new-instance v6, Lcom/transsion/widgetslib/widget/OSPopupTip$1;

    invoke-direct {v6, v1, v14}, Lcom/transsion/widgetslib/widget/OSPopupTip$1;-><init>(Landroid/view/View;Landroid/content/Context;)V

    .line 191
    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    .line 192
    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    const/4 v6, 0x0

    .line 193
    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    move/from16 v6, p3

    move/from16 v9, p4

    .line 195
    invoke-virtual {v5, v3, v6, v9}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 197
    invoke-virtual {v8, v0}, Landroid/view/View;->setClipToOutline(Z)V

    .line 198
    new-instance v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;

    move v10, v12

    move-object v12, v1

    move v1, v10

    move-object v10, v7

    move-object v15, v8

    move v8, v9

    move/from16 v16, v19

    move-object/from16 v23, v20

    move/from16 v7, v21

    move/from16 v11, v22

    move v9, v4

    move/from16 v4, v18

    invoke-direct/range {v0 .. v16}, Lcom/transsion/widgetslib/widget/OSPopupTip$2;-><init>(IILandroid/view/View;ILandroid/widget/PopupWindow;IIIILandroid/view/View;ZLandroid/view/View;ILandroid/content/Context;Landroid/widget/TextView;I)V

    invoke-virtual {v15, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    move-object/from16 v9, v23

    if-eqz v9, :cond_276

    .line 392
    new-instance v0, Lcom/transsion/widgetslib/widget/OSPopupTip$3;

    invoke-direct {v0, v5}, Lcom/transsion/widgetslib/widget/OSPopupTip$3;-><init>(Landroid/widget/PopupWindow;)V

    invoke-virtual {v9, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_276
    return-object v5
.end method

.method public static showHorizontal(Landroid/view/View;Ljava/lang/String;IIZ)Landroid/widget/PopupWindow;
    .registers 22

    move-object/from16 v2, p0

    move-object/from16 v0, p1

    const/4 v1, 0x0

    if-nez v2, :cond_8

    return-object v1

    .line 435
    :cond_8
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 436
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 437
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 438
    invoke-virtual {v2}, Landroid/view/View;->getLayoutDirection()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v5, v7, :cond_1e

    move v5, v7

    goto :goto_1f

    :cond_1e
    move v5, v6

    .line 439
    :goto_1f
    sget v8, Lcom/transsion/widgetslib/R$dimen;->os_pop_tip_slide_width_weight:I

    invoke-static {v3, v8}, Lcom/transsion/widgetslib/util/Utils;->getFloatValue(Landroid/content/Context;I)F

    move-result v8

    .line 440
    sget v9, Lcom/transsion/widgetslib/R$dimen;->os_pop_tip_center_width_weight:I

    invoke-static {v3, v9}, Lcom/transsion/widgetslib/util/Utils;->getFloatValue(Landroid/content/Context;I)F

    .line 441
    invoke-static {v3}, Lcom/transsion/widgetslib/util/Utils;->getRealScreenWidth(Landroid/content/Context;)I

    move-result v9

    const/high16 v10, 0x40c00000    # 6.0f

    .line 442
    invoke-static {v7, v10, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    const/high16 v10, 0x41400000    # 12.0f

    .line 443
    invoke-static {v7, v10, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v10

    float-to-int v10, v10

    const/high16 v11, 0x41000000    # 8.0f

    .line 444
    invoke-static {v7, v11, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    int-to-float v9, v9

    mul-float/2addr v9, v8

    float-to-int v8, v9

    .line 446
    invoke-static {v7, v11, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    float-to-int v9, v9

    const/high16 v11, 0x41500000    # 13.0f

    .line 447
    invoke-static {v7, v11, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    .line 450
    sget v11, Lcom/transsion/widgetslib/R$layout;->os_popup_tip_layout:I

    invoke-static {v3, v11, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 451
    sget v11, Lcom/transsion/widgetslib/R$id;->os_popup_tip_arrow:I

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 452
    sget v11, Lcom/transsion/widgetslib/R$id;->os_popup_tip_text:I

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 453
    sget v12, Lcom/transsion/widgetslib/R$id;->os_popup_tip_close:I

    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    move-object v15, v12

    check-cast v15, Landroid/widget/ImageView;

    .line 454
    sget v12, Lcom/transsion/widgetslib/R$id;->os_popup_tip_text_father:I

    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout;

    .line 456
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p4, :cond_81

    .line 458
    sget v6, Lcom/transsion/widgetslib/R$id;->os_popup_tip_arrow:I

    invoke-virtual {v13, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_86

    .line 460
    :cond_81
    sget v7, Lcom/transsion/widgetslib/R$id;->os_popup_tip_arrow:I

    invoke-virtual {v13, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_86
    const/16 v6, 0xf

    .line 462
    invoke-virtual {v13, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 466
    invoke-virtual {v12, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 467
    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    sget v7, Lcom/transsion/widgetslib/R$drawable;->os_popup_tip_arrow_90:I

    invoke-virtual {v14, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 469
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p4, :cond_a4

    const/16 v12, 0x9

    .line 471
    invoke-virtual {v7, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_a9

    :cond_a4
    const/16 v12, 0xb

    .line 473
    invoke-virtual {v7, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 475
    :goto_a9
    invoke-virtual {v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 477
    iput v9, v7, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 478
    iput v4, v7, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 480
    invoke-virtual {v14, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-nez p4, :cond_ba

    const/high16 v4, 0x43340000    # 180.0f

    .line 482
    invoke-virtual {v14, v4}, Landroid/view/View;->setRotation(F)V

    .line 485
    :cond_ba
    invoke-virtual {v11}, Landroid/view/View;->getPaddingStart()I

    move-result v4

    .line 486
    invoke-virtual {v11}, Landroid/view/View;->getPaddingEnd()I

    move-result v6

    .line 488
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v12, Lcom/transsion/widgetslib/R$dimen;->os_space200:I

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    .line 489
    invoke-virtual {v11}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v12

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v12

    int-to-float v13, v4

    add-float/2addr v12, v13

    int-to-float v13, v6

    add-float/2addr v12, v13

    int-to-float v13, v9

    add-float/2addr v12, v13

    float-to-int v12, v12

    .line 490
    invoke-static {v3}, Lcom/transsion/widgetslib/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    move-result v13

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v16

    sub-int v13, v13, v16

    invoke-virtual {v2}, Landroid/view/View;->getPaddingStart()I

    move-result v16

    sub-int v13, v13, v16

    invoke-virtual {v2}, Landroid/view/View;->getPaddingEnd()I

    move-result v16

    sub-int v13, v13, v16

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v16

    sub-int v13, v13, v16

    .line 491
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 493
    invoke-static {v12, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    sub-int v12, v8, v9

    sub-int/2addr v12, v7

    sub-int/2addr v12, v4

    sub-int/2addr v12, v6

    .line 496
    invoke-virtual {v11}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    .line 497
    invoke-virtual {v11}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    int-to-float v6, v12

    div-float/2addr v0, v6

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    .line 498
    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Paint$FontMetrics;->bottom:F

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v6, v7

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->leading:F

    add-float/2addr v6, v4

    add-int/lit8 v4, v0, 0x1

    int-to-float v4, v4

    mul-float/2addr v4, v6

    .line 499
    invoke-virtual {v11}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v4, v7

    invoke-virtual {v11}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v4, v7

    .line 500
    sget-object v7, Lcom/transsion/widgetslib/widget/OSPopupTip;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "popupWidth="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " ;lineCount : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ;lineSpace : "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " ;totalHeight:"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/transsion/widgetscore/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v10

    .line 502
    new-instance v10, Landroid/widget/PopupWindow;

    const/4 v6, -0x2

    invoke-direct {v10, v1, v8, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 504
    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {v10, v6}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 505
    invoke-virtual {v10, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const/4 v6, 0x1

    .line 506
    invoke-virtual {v10, v6}, Landroid/widget/PopupWindow;->setOverlapAnchor(Z)V

    .line 507
    invoke-virtual {v10, v6}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 509
    new-instance v6, Lcom/transsion/widgetslib/widget/OSPopupTip$4;

    invoke-direct {v6, v1, v3}, Lcom/transsion/widgetslib/widget/OSPopupTip$4;-><init>(Landroid/view/View;Landroid/content/Context;)V

    .line 529
    invoke-virtual {v10, v6}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    .line 530
    invoke-virtual {v10, v6}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    .line 532
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v3, v6

    float-to-int v12, v3

    add-int v3, v12, p3

    move/from16 v6, p2

    .line 533
    invoke-virtual {v10, v2, v6, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    const/4 v3, 0x1

    .line 535
    invoke-virtual {v11, v3}, Landroid/view/View;->setClipToOutline(Z)V

    move-object v7, v1

    move v1, v0

    .line 536
    new-instance v0, Lcom/transsion/widgetslib/widget/OSPopupTip$5;

    move v3, v9

    move v9, v4

    move v4, v5

    move v5, v8

    move-object v8, v11

    move v11, v6

    move v6, v3

    move/from16 v13, p3

    move/from16 v3, p4

    invoke-direct/range {v0 .. v14}, Lcom/transsion/widgetslib/widget/OSPopupTip$5;-><init>(ILandroid/view/View;ZZIILandroid/view/View;Landroid/widget/TextView;FLandroid/widget/PopupWindow;IIILandroid/view/View;)V

    invoke-virtual {v8, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    if-eqz v15, :cond_1c4

    .line 559
    new-instance v0, Lcom/transsion/widgetslib/widget/OSPopupTip$6;

    invoke-direct {v0, v10}, Lcom/transsion/widgetslib/widget/OSPopupTip$6;-><init>(Landroid/widget/PopupWindow;)V

    invoke-virtual {v15, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1c4
    return-object v10
.end method

.method public static showLeft(Landroid/view/View;Ljava/lang/String;)Landroid/widget/PopupWindow;
    .registers 3

    const/4 v0, 0x0

    .line 412
    invoke-static {p0, p1, v0, v0}, Lcom/transsion/widgetslib/widget/OSPopupTip;->showLeft(Landroid/view/View;Ljava/lang/String;II)Landroid/widget/PopupWindow;

    move-result-object p0

    return-object p0
.end method

.method public static showLeft(Landroid/view/View;Ljava/lang/String;II)Landroid/widget/PopupWindow;
    .registers 5

    const/4 v0, 0x1

    .line 417
    invoke-static {p0, p1, p2, p3, v0}, Lcom/transsion/widgetslib/widget/OSPopupTip;->showHorizontal(Landroid/view/View;Ljava/lang/String;IIZ)Landroid/widget/PopupWindow;

    move-result-object p0

    return-object p0
.end method

.method public static showRight(Landroid/view/View;Ljava/lang/String;)Landroid/widget/PopupWindow;
    .registers 3

    const/4 v0, 0x0

    .line 422
    invoke-static {p0, p1, v0, v0}, Lcom/transsion/widgetslib/widget/OSPopupTip;->showRight(Landroid/view/View;Ljava/lang/String;II)Landroid/widget/PopupWindow;

    move-result-object p0

    return-object p0
.end method

.method public static showRight(Landroid/view/View;Ljava/lang/String;II)Landroid/widget/PopupWindow;
    .registers 5

    const/4 v0, 0x0

    .line 427
    invoke-static {p0, p1, p2, p3, v0}, Lcom/transsion/widgetslib/widget/OSPopupTip;->showHorizontal(Landroid/view/View;Ljava/lang/String;IIZ)Landroid/widget/PopupWindow;

    move-result-object p0

    return-object p0
.end method
