.class public Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;
.super Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;
.source "SourceFile"


# instance fields
.field private final mCursorTextSize:I

.field private final mGraduationColor:I

.field private final mMinorInterval:I

.field private final mOffsetOfCursorAndText:I

.field private final mSlaveMajorShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

.field private maxGraduationCount:I

.field private middleGraduationIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;)V
    .registers 20

    move-object/from16 v0, p0

    .line 50
    invoke-direct/range {p0 .. p2}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;)V

    const/16 v1, 0x13

    .line 38
    iput v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->maxGraduationCount:I

    const/16 v1, 0xa

    .line 39
    iput v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->middleGraduationIndex:I

    .line 51
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 57
    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->pro_graduation_interval:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mInterval:I

    .line 58
    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->pro_minor_graduation_interval:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->mMinorInterval:I

    .line 60
    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->pro_major_graduation_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 61
    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->pro_major_graduation_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 62
    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->pro_slave_major_graduation_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 63
    sget v3, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->pro_slave_major_graduation_height:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 65
    sget v3, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->pro_minor_graduation_width:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 66
    sget v3, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->pro_minor_graduation_height:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 68
    sget v3, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->default_stroke_border:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 70
    sget v3, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->default_major_graduation_color:I

    const/4 v7, 0x0

    invoke-virtual {v1, v3, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v8

    .line 71
    sget v3, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->default_major_graduation_color:I

    invoke-virtual {v1, v3, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v11

    .line 72
    sget v3, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->pro_minor_graduation_color:I

    invoke-virtual {v1, v3, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v15

    .line 73
    sget v3, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->default_stroke_border_color:I

    invoke-virtual {v1, v3, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v14

    .line 74
    sget v3, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->pro_stroke_border_color:I

    invoke-virtual {v1, v3, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v10

    .line 75
    sget v3, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->graduation_and_text_offset:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    div-int/lit8 v16, v5, 0x2

    add-int v3, v3, v16

    iput v3, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->mOffsetOfCursorAndText:I

    .line 76
    sget v3, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->graduation_text_size:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->mCursorTextSize:I

    .line 77
    sget v3, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->pro_graduation_text_color:I

    invoke-virtual {v1, v3, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    iput v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->mGraduationColor:I

    .line 79
    new-instance v1, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mPaint:Landroid/graphics/Paint;

    .line 80
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 81
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/transsion/camera/app_info/AppInfo;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move/from16 p2, v2

    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->pro_item_view_shadow_color:I

    invoke-virtual {v3, v2, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    const/high16 v3, 0x40a00000    # 5.0f

    const/4 v7, 0x0

    invoke-virtual {v1, v3, v7, v7, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 83
    new-instance v3, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    move v7, v10

    const/4 v1, 0x1

    invoke-direct/range {v3 .. v8}, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;-><init>(IIIII)V

    iput-object v3, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mMajorShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    const/4 v2, 0x2

    .line 86
    invoke-virtual {v3, v2}, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;->setShapeType(I)V

    move v8, v9

    move v9, v6

    .line 87
    new-instance v6, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    move/from16 v7, p2

    invoke-direct/range {v6 .. v11}, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;-><init>(IIIII)V

    move-object v3, v6

    move v6, v9

    iput-object v3, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->mSlaveMajorShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    .line 90
    invoke-virtual {v3, v2}, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;->setShapeType(I)V

    .line 91
    new-instance v10, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    move v11, v12

    move v12, v13

    move v13, v6

    invoke-direct/range {v10 .. v15}, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;-><init>(IIIII)V

    iput-object v10, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mMinorShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    .line 93
    invoke-virtual {v10, v1}, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;->setShapeType(I)V

    return-void
.end method

.method private isIndicatorMajor(I)Z
    .registers 7

    .line 400
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mCursorTitleTexts:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mCursorTitleDrawables:Ljava/util/List;

    if-nez v0, :cond_a

    return v1

    .line 403
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mIndependentCursorIndexList:Ljava/util/List;

    const/4 v2, 0x1

    if-nez v0, :cond_1e

    if-eqz p1, :cond_1d

    .line 405
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->middleGraduationIndex:I

    sub-int/2addr v0, v2

    if-eq p1, v0, :cond_1d

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->maxGraduationCount:I

    sub-int/2addr p0, v2

    if-ne p1, p0, :cond_1c

    goto :goto_1d

    :cond_1c
    return v1

    :cond_1d
    :goto_1d
    return v2

    .line 407
    :cond_1e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v3, v1

    :goto_23
    if-ge v3, v0, :cond_37

    .line 409
    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mIndependentCursorIndexList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne p1, v4, :cond_34

    return v2

    :cond_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .line 414
    :cond_37
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mIndependentCursorIndexList:Ljava/util/List;

    sub-int/2addr v0, v2

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    if-eq p1, v0, :cond_4f

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->maxGraduationCount:I

    sub-int/2addr p0, v2

    if-ne p1, p0, :cond_4e

    goto :goto_4f

    :cond_4e
    return v1

    :cond_4f
    :goto_4f
    return v2
.end method

.method private updateGraduationTextAndDrable(ILcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;)V
    .registers 5

    .line 384
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mCursorTitleTexts:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_19

    .line 385
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mCursorTitleTexts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 386
    invoke-interface {p2, v0}, Lcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;->setText(Ljava/lang/String;)V

    .line 387
    invoke-interface {p2, v1}, Lcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 390
    :cond_19
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mCursorTitleDrawables:Ljava/util/List;

    if-eqz v0, :cond_33

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_33

    .line 391
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mCursorTitleDrawables:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_33

    .line 393
    invoke-interface {p2, p0}, Lcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 394
    invoke-interface {p2, v1}, Lcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;->setText(Ljava/lang/String;)V

    :cond_33
    return-void
.end method


# virtual methods
.method protected buildMajorIndexList()Ljava/util/List;
    .registers 4

    .line 274
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 275
    :goto_6
    iget v2, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->maxGraduationCount:I

    if-ge v1, v2, :cond_14

    .line 276
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_14
    return-object v0
.end method

.method protected buildMajorIndexList(Ljava/util/List;)Ljava/util/List;
    .registers 7

    .line 283
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 284
    :goto_7
    iget v3, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->maxGraduationCount:I

    if-ge v2, v3, :cond_50

    if-nez p1, :cond_15

    .line 286
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4d

    .line 290
    :cond_15
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gt v2, v3, :cond_46

    move v3, v1

    .line 291
    :goto_28
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4d

    .line 292
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v2, v4, :cond_43

    .line 293
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x2

    :cond_43
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 298
    :cond_46
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4d
    :goto_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_50
    return-object v0
.end method

.method protected buildValues()Ljava/util/List;
    .registers 4

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 266
    :goto_6
    iget v2, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->maxGraduationCount:I

    if-ge v1, v2, :cond_14

    .line 267
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_14
    return-object v0
.end method

.method protected createDefaultGraduation()Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;
    .registers 3

    .line 260
    new-instance v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawGraduation;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mPaint:Landroid/graphics/Paint;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mMajorShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    invoke-direct {v0, v1, p0}, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawGraduation;-><init>(Landroid/graphics/Paint;Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;)V

    return-object v0
.end method

.method protected createGraduation(I)Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;
    .registers 3

    .line 246
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->isMajor(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 247
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->isIndicatorMajor(I)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 248
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mMajorShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    goto :goto_14

    .line 250
    :cond_f
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->mSlaveMajorShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    goto :goto_14

    .line 253
    :cond_12
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mMinorShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    .line 255
    :goto_14
    new-instance v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawSpecifyShapeGraduation;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawSpecifyShapeGraduation;-><init>(Landroid/graphics/Paint;Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;)V

    return-object v0
.end method

.method public createGraduations(Z)Ljava/util/List;
    .registers 21

    move-object/from16 v0, p0

    .line 98
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->buildValues()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mValues:Ljava/util/List;

    .line 99
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mIndependentCursorIndexList:Ljava/util/List;

    if-nez v1, :cond_13

    .line 100
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->buildMajorIndexList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mMajorIndex:Ljava/util/List;

    goto :goto_19

    .line 102
    :cond_13
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->buildMajorIndexList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mMajorIndex:Ljava/util/List;

    .line 104
    :goto_19
    invoke-virtual/range {p0 .. p1}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->reverseIfNeeded(Z)V

    .line 105
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 112
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 113
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mGraduations:Ljava/util/List;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_35
    const/4 v12, 0x2

    if-ge v5, v1, :cond_cb

    .line 117
    invoke-virtual {v0, v5}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->createGraduation(I)Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    move-result-object v13

    .line 118
    invoke-virtual {v0, v5}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->getValue(I)I

    move-result v14

    iput v14, v13, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mValue:I

    .line 119
    invoke-virtual {v0, v5}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->isSelectable(I)Z

    move-result v14

    iput-boolean v14, v13, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mSelectable:Z

    .line 120
    invoke-virtual {v0, v5}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->isVibrate(I)Z

    move-result v14

    iput-boolean v14, v13, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mVibrate:Z

    .line 121
    iget-boolean v14, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mLowLight:Z

    invoke-virtual {v0, v5, v14}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->getIndicator(IZ)Lcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;

    move-result-object v14

    iput-object v14, v13, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mIndicator:Lcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;

    if-eqz v14, :cond_5d

    .line 123
    iget v15, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mIndicatorRotateDegree:I

    invoke-interface {v14, v15}, Lcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;->rotateIndicator(I)V

    .line 126
    :cond_5d
    invoke-virtual {v0, v5}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->isMajor(I)Z

    move-result v14

    if-eqz v14, :cond_68

    .line 127
    invoke-virtual {v0, v5}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->getRangeInternal(I)I

    move-result v10

    goto :goto_72

    .line 129
    :cond_68
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->isUseSameInternal()Z

    move-result v14

    if-nez v14, :cond_72

    .line 130
    invoke-virtual {v0, v5}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->getRangeInternal(I)I

    move-result v10

    .line 134
    :cond_72
    :goto_72
    new-instance v14, Landroid/graphics/Point;

    invoke-direct {v14}, Landroid/graphics/Point;-><init>()V

    .line 135
    iget v15, v13, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mWidth:I

    div-int/lit8 v16, v15, 0x2

    add-int v4, v7, v16

    iput v4, v14, Landroid/graphics/Point;->x:I

    .line 136
    iget v4, v13, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mHeight:I

    div-int/lit8 v3, v4, 0x2

    iput v3, v14, Landroid/graphics/Point;->y:I

    add-int/lit8 v3, v1, -0x1

    if-ne v5, v3, :cond_8b

    add-int/2addr v7, v15

    goto :goto_90

    :cond_8b
    add-int v3, v15, v10

    add-int/2addr v7, v3

    add-int/2addr v15, v10

    add-int/2addr v6, v15

    :goto_90
    if-ne v5, v12, :cond_93

    move v8, v7

    .line 148
    :cond_93
    iput-object v14, v13, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mCoordinate:Landroid/graphics/Point;

    if-ge v9, v4, :cond_98

    move v9, v4

    .line 154
    :cond_98
    iget-object v3, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mGraduations:Ljava/util/List;

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    invoke-virtual {v0, v5}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->isMajor(I)Z

    move-result v3

    if-eqz v3, :cond_c2

    if-nez v5, :cond_ae

    .line 158
    new-instance v3, Lcom/transsion/camera/app/ui/widget/graduated/range/FakeRange;

    invoke-direct {v3, v13}, Lcom/transsion/camera/app/ui/widget/graduated/range/FakeRange;-><init>(Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;)V

    .line 160
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b4

    .line 162
    :cond_ae
    invoke-virtual {v11, v13}, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;->add(Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;)V

    .line 163
    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    :goto_b4
    new-instance v11, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;

    invoke-direct {v11}, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;-><init>()V

    move/from16 v3, p1

    .line 166
    invoke-virtual {v11, v3}, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;->reverse(Z)V

    .line 167
    invoke-virtual {v11, v13}, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;->setPreMajor(Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;)V

    goto :goto_c7

    :cond_c2
    move/from16 v3, p1

    .line 169
    invoke-virtual {v11, v13}, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;->add(Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;)V

    :goto_c7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_35

    .line 174
    :cond_cb
    iget v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mCursorMoveCount:I

    const/4 v3, 0x1

    if-le v1, v3, :cond_163

    sub-int/2addr v1, v3

    .line 178
    div-int/2addr v6, v1

    .line 179
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mIndependentCursorIndexList:Ljava/util/List;

    if-eqz v1, :cond_e5

    .line 180
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int v4, v1, v8

    sub-int v4, v7, v4

    .line 181
    iget v5, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mCursorMoveCount:I

    sub-int/2addr v5, v1

    sub-int/2addr v5, v3

    div-int v6, v4, v5

    goto :goto_e6

    :cond_e5
    const/4 v1, 0x0

    .line 184
    :goto_e6
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    .line 185
    :goto_ef
    iget v14, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mCursorMoveCount:I

    if-ge v5, v14, :cond_15d

    .line 186
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->createDefaultGraduation()Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    move-result-object v14

    .line 187
    iput v5, v14, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mValue:I

    .line 188
    iput-boolean v3, v14, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mSelectable:Z

    .line 189
    invoke-virtual {v0, v5}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->isVibrate(I)Z

    move-result v15

    iput-boolean v15, v14, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mVibrate:Z

    const/4 v15, 0x0

    .line 190
    iput-object v15, v14, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mIndicator:Lcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;

    .line 192
    new-instance v15, Landroid/graphics/Point;

    invoke-direct {v15}, Landroid/graphics/Point;-><init>()V

    .line 193
    iget v3, v14, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mWidth:I

    div-int/lit8 v17, v3, 0x2

    move/from16 v18, v12

    add-int v12, v10, v17

    iput v12, v15, Landroid/graphics/Point;->x:I

    .line 194
    iget v12, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mCursorMoveCount:I

    move/from16 v17, v3

    div-int/lit8 v3, v12, 0x2

    if-ne v5, v3, :cond_122

    div-int/lit8 v3, v7, 0x2

    if-le v3, v10, :cond_122

    .line 195
    iput v3, v15, Landroid/graphics/Point;->x:I

    move v10, v3

    .line 198
    :cond_122
    iget v3, v14, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mHeight:I

    div-int/lit8 v3, v3, 0x2

    iput v3, v15, Landroid/graphics/Point;->y:I

    add-int/lit8 v12, v12, -0x2

    if-ne v5, v12, :cond_130

    sub-int v3, v7, v17

    move v10, v3

    goto :goto_135

    :cond_130
    if-ge v5, v1, :cond_134

    add-int/2addr v10, v8

    goto :goto_135

    :cond_134
    add-int/2addr v10, v6

    .line 208
    :goto_135
    iput-object v15, v14, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mCoordinate:Landroid/graphics/Point;

    .line 209
    iget v3, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mPauseIndependentIndex:I

    if-lez v3, :cond_13e

    if-ne v5, v3, :cond_13e

    move-object v11, v14

    :cond_13e
    if-nez v5, :cond_149

    .line 214
    new-instance v3, Lcom/transsion/camera/app/ui/widget/graduated/range/FakeRange;

    invoke-direct {v3, v14}, Lcom/transsion/camera/app/ui/widget/graduated/range/FakeRange;-><init>(Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;)V

    .line 216
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14f

    .line 218
    :cond_149
    invoke-virtual {v13, v14}, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;->add(Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;)V

    .line 219
    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    :goto_14f
    new-instance v13, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;

    invoke-direct {v13}, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;-><init>()V

    .line 222
    invoke-virtual {v13, v14}, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;->setPreMajor(Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;)V

    add-int/lit8 v5, v5, 0x1

    move/from16 v12, v18

    const/4 v3, 0x1

    goto :goto_ef

    .line 224
    :cond_15d
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    invoke-virtual {v1, v4}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->setCursorRanges(Ljava/util/List;)V

    goto :goto_164

    :cond_163
    const/4 v11, 0x0

    .line 227
    :goto_164
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    invoke-virtual {v1, v7}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->setContentWidth(I)V

    .line 228
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    invoke-virtual {v1, v9}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->setContentHeight(I)V

    .line 229
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->setRanges(Ljava/util/List;)V

    .line 231
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->getAnimTranslateMax()I

    move-result v1

    .line 232
    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    add-int/2addr v9, v1

    invoke-virtual {v2, v9}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->setExceptedHeight(I)V

    .line 233
    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->setAnimTranslateMax(I)V

    .line 234
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->getAnimDistanceThreshold()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->setAnimDistanceThreshold(I)V

    .line 235
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    const/4 v15, 0x0

    invoke-virtual {v1, v15}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->setPauseGraduation(Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;)V

    .line 236
    iget v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mPauseIndependentIndex:I

    if-lez v1, :cond_19a

    .line 237
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    invoke-virtual {v1, v11}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->setPauseGraduation(Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;)V

    .line 240
    :cond_19a
    iget-object v0, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mGraduations:Ljava/util/List;

    return-object v0
.end method

.method protected getIndicator(IZ)Lcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;
    .registers 10

    .line 340
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mCursorTitleTexts:Ljava/util/List;

    const/4 v0, 0x0

    if-nez p2, :cond_a

    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mCursorTitleDrawables:Ljava/util/List;

    if-nez p2, :cond_a

    return-object v0

    .line 343
    :cond_a
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mIndependentCursorIndexList:Ljava/util/List;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez p2, :cond_61

    if-eqz p1, :cond_21

    .line 344
    iget p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->middleGraduationIndex:I

    add-int/lit8 p2, p2, -0x1

    if-eq p1, p2, :cond_21

    iget p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->maxGraduationCount:I

    add-int/lit8 p2, p2, -0x1

    if-ne p1, p2, :cond_20

    goto :goto_21

    :cond_20
    return-object v0

    .line 345
    :cond_21
    :goto_21
    new-instance p2, Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->mOffsetOfCursorAndText:I

    iget v3, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->mGraduationColor:I

    iget v4, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->mCursorTextSize:I

    invoke-direct {p2, v0, v3, v4, v2}, Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;-><init>(IIIF)V

    .line 347
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->middleGraduationIndex:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_45

    .line 348
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mCursorTitleTexts:Ljava/util/List;

    if-eqz p1, :cond_5d

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5d

    .line 349
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mCursorTitleTexts:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    div-int/lit8 v1, p1, 0x2

    goto :goto_5d

    .line 351
    :cond_45
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->maxGraduationCount:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_5d

    .line 352
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mCursorTitleTexts:Ljava/util/List;

    if-eqz p1, :cond_5d

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5d

    .line 353
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mCursorTitleTexts:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 v1, p1, -0x1

    .line 356
    :cond_5d
    :goto_5d
    invoke-direct {p0, v1, p2}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->updateGraduationTextAndDrable(ILcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;)V

    return-object p2

    .line 359
    :cond_61
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    move v3, v1

    :goto_66
    if-ge v3, p2, :cond_87

    .line 361
    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mIndependentCursorIndexList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne p1, v4, :cond_84

    .line 362
    new-instance v0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;

    iget v4, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->mOffsetOfCursorAndText:I

    iget v5, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->mGraduationColor:I

    iget v6, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->mCursorTextSize:I

    invoke-direct {v0, v4, v5, v6, v2}, Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;-><init>(IIIF)V

    .line 363
    invoke-direct {p0, v3, v0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->updateGraduationTextAndDrable(ILcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;)V

    :cond_84
    add-int/lit8 v3, v3, 0x1

    goto :goto_66

    .line 367
    :cond_87
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mIndependentCursorIndexList:Ljava/util/List;

    add-int/lit8 p2, p2, -0x1

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/lit8 p2, p2, 0x3

    if-eq p1, p2, :cond_a1

    iget p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->maxGraduationCount:I

    add-int/lit8 p2, p2, -0x1

    if-ne p1, p2, :cond_a0

    goto :goto_a1

    :cond_a0
    return-object v0

    .line 368
    :cond_a1
    :goto_a1
    new-instance p2, Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->mOffsetOfCursorAndText:I

    iget v3, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->mGraduationColor:I

    iget v4, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->mCursorTextSize:I

    invoke-direct {p2, v0, v3, v4, v2}, Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;-><init>(IIIF)V

    .line 370
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->maxGraduationCount:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_c5

    .line 371
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mCursorTitleTexts:Ljava/util/List;

    if-eqz p1, :cond_cb

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_cb

    .line 372
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mCursorTitleTexts:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 v1, p1, -0x1

    goto :goto_cb

    .line 375
    :cond_c5
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mIndependentCursorIndexList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 377
    :cond_cb
    :goto_cb
    invoke-direct {p0, v1, p2}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->updateGraduationTextAndDrable(ILcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;)V

    return-object p2
.end method

.method protected getRangeInternal(I)I
    .registers 6

    .line 312
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mIndependentCursorIndexList:Ljava/util/List;

    if-nez v0, :cond_7

    .line 313
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mInterval:I

    return p0

    .line 316
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_d
    if-ge v2, v0, :cond_23

    .line 318
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mIndependentCursorIndexList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne p1, v3, :cond_20

    .line 319
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->mMinorInterval:I

    return p0

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 322
    :cond_23
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->isMajor(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 323
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mInterval:I

    return p0

    :cond_2c
    add-int/lit8 p1, p1, 0x1

    .line 325
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->isMajor(I)Z

    move-result p1

    if-eqz p1, :cond_37

    .line 326
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;->mMinorInterval:I

    return p0

    :cond_37
    return v1
.end method

.method protected isUseSameInternal()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected isVibrate(I)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method
