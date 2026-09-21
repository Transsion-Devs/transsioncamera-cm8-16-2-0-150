.class public Lcom/transsion/camera/ui/setting/level/Gradienter;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static COLOR_CONINSIDE:I

.field private static COLOR_LINE:I

.field private static RADIUS_CIRCLE:I

.field private static WIDTH_LINE:I


# instance fields
.field private final QUEUE_SIZE:I

.field private mDashLineOffLength:I

.field private mDashLineOnLength:I

.field private mDashPaint:Landroid/graphics/Paint;

.field private mDashPathEffect:Landroid/graphics/PathDashPathEffect;

.field private mDrawHelper:Lcom/transsion/camera/ui/setting/level/GradienterDrawHelper;

.field private mQueue:Ljava/util/concurrent/ArrayBlockingQueue;

.field private mSolidPaint:Landroid/graphics/Paint;

.field private mViewSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/ui/setting/level/Gradienter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x5

    .line 24
    iput p3, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->QUEUE_SIZE:I

    .line 25
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v0, p3}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/level/Gradienter;->initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/level/Gradienter;->initDraw()V

    .line 47
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/level/Gradienter;->init()V

    return-void
.end method

.method private drawDashLine(Landroid/graphics/Canvas;)V
    .registers 9

    .line 128
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mDrawHelper:Lcom/transsion/camera/ui/setting/level/GradienterDrawHelper;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/level/GradienterDrawHelper;->isConincide()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 132
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mDashPaint:Landroid/graphics/Paint;

    sget v1, Lcom/transsion/camera/ui/setting/level/Gradienter;->COLOR_LINE:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 133
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mDashPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mDashPathEffect:Landroid/graphics/PathDashPathEffect;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 135
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 136
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 137
    iget v3, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mViewSize:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    .line 138
    sget v1, Lcom/transsion/camera/ui/setting/level/Gradienter;->RADIUS_CIRCLE:I

    sget v4, Lcom/transsion/camera/ui/setting/level/Gradienter;->WIDTH_LINE:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    .line 139
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 140
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mDrawHelper:Lcom/transsion/camera/ui/setting/level/GradienterDrawHelper;

    invoke-virtual {v4}, Lcom/transsion/camera/ui/setting/level/GradienterDrawHelper;->getDegrees()F

    move-result v4

    invoke-virtual {p1, v4, v0, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 142
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    sub-float v5, v0, v1

    .line 143
    invoke-virtual {v4, v5, v2}, Landroid/graphics/Path;->moveTo(FF)V

    sub-float v5, v0, v3

    .line 144
    invoke-virtual {v4, v5, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 145
    iget-object v5, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mDashPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mDashPathEffect:Landroid/graphics/PathDashPathEffect;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 146
    iget-object v5, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mDashPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 147
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 148
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 150
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mDrawHelper:Lcom/transsion/camera/ui/setting/level/GradienterDrawHelper;

    invoke-virtual {v4}, Lcom/transsion/camera/ui/setting/level/GradienterDrawHelper;->getDegrees()F

    move-result v4

    invoke-virtual {p1, v4, v0, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 151
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    add-float/2addr v1, v0

    .line 152
    invoke-virtual {v4, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    add-float/2addr v0, v3

    .line 153
    invoke-virtual {v4, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 154
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mDashPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mDashPathEffect:Landroid/graphics/PathDashPathEffect;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 155
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mDashPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 156
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawLevel(Landroid/graphics/Canvas;)V
    .registers 2

    .line 123
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/level/Gradienter;->drawSolidLine(Landroid/graphics/Canvas;)V

    .line 124
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/level/Gradienter;->drawDashLine(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawSolidLine(Landroid/graphics/Canvas;)V
    .registers 14

    .line 160
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mSolidPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mDrawHelper:Lcom/transsion/camera/ui/setting/level/GradienterDrawHelper;

    invoke-virtual {v1}, Lcom/transsion/camera/ui/setting/level/GradienterDrawHelper;->isConincide()Z

    move-result v1

    if-eqz v1, :cond_d

    sget v1, Lcom/transsion/camera/ui/setting/level/Gradienter;->COLOR_CONINSIDE:I

    goto :goto_f

    :cond_d
    sget v1, Lcom/transsion/camera/ui/setting/level/Gradienter;->COLOR_LINE:I

    :goto_f
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 162
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v3, v0, v1

    .line 163
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    .line 164
    iget v2, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mViewSize:I

    int-to-float v2, v2

    div-float v10, v2, v1

    .line 165
    sget v2, Lcom/transsion/camera/ui/setting/level/Gradienter;->RADIUS_CIRCLE:I

    sget v4, Lcom/transsion/camera/ui/setting/level/Gradienter;->WIDTH_LINE:I

    add-int/2addr v2, v4

    int-to-float v11, v2

    .line 166
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mDrawHelper:Lcom/transsion/camera/ui/setting/level/GradienterDrawHelper;

    invoke-virtual {v2}, Lcom/transsion/camera/ui/setting/level/GradienterDrawHelper;->isHorizontal()Z

    move-result v2

    if-eqz v2, :cond_49

    sub-float v4, v0, v10

    sub-float v6, v0, v11

    .line 167
    iget-object v7, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mSolidPaint:Landroid/graphics/Paint;

    move v5, v3

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float v4, v0, v11

    add-float v6, v0, v10

    .line 169
    iget-object v7, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mSolidPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_60

    :cond_49
    move-object v2, p1

    sub-float v5, v3, v10

    sub-float v7, v3, v11

    .line 172
    iget-object v9, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mSolidPaint:Landroid/graphics/Paint;

    move v8, v0

    move v6, v0

    move-object v4, v2

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float v5, v3, v11

    add-float v7, v3, v10

    .line 174
    iget-object v9, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mSolidPaint:Landroid/graphics/Paint;

    move v8, v6

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 178
    :goto_60
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    sget v1, Lcom/transsion/camera/ui/setting/level/Gradienter;->RADIUS_CIRCLE:I

    int-to-float v1, v1

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mSolidPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, p1, v0, v1, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private init()V
    .registers 2

    .line 103
    new-instance v0, Lcom/transsion/camera/ui/setting/level/GradienterDrawHelper;

    invoke-direct {v0}, Lcom/transsion/camera/ui/setting/level/GradienterDrawHelper;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mDrawHelper:Lcom/transsion/camera/ui/setting/level/GradienterDrawHelper;

    return-void
.end method

.method private initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 73
    sget-object v0, Lcom/transsion/camera/R$styleable;->MyLevelView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 74
    :try_start_6
    sget p2, Lcom/transsion/camera/R$styleable;->MyLevelView_lineCoincideColor:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$color;->level_coincide_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    sput p2, Lcom/transsion/camera/ui/setting/level/Gradienter;->COLOR_CONINSIDE:I

    .line 75
    sget p2, Lcom/transsion/camera/R$styleable;->MyLevelView_lineColor:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$color;->level_circle_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    sput p2, Lcom/transsion/camera/ui/setting/level/Gradienter;->COLOR_LINE:I

    .line 76
    sget p2, Lcom/transsion/camera/R$styleable;->MyLevelView_circleRadius:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->level_circle_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    sput p2, Lcom/transsion/camera/ui/setting/level/Gradienter;->RADIUS_CIRCLE:I

    .line 77
    sget p2, Lcom/transsion/camera/R$styleable;->MyLevelView_lineWidth:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->level_line_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    sput p2, Lcom/transsion/camera/ui/setting/level/Gradienter;->WIDTH_LINE:I
    :try_end_4e
    .catchall {:try_start_6 .. :try_end_4e} :catchall_6a

    .line 78
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->close()V

    .line 80
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$dimen;->rotate_dash_line_on_length:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mDashLineOnLength:I

    .line 81
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$dimen;->rotate_dash_line_off_length:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mDashLineOffLength:I

    return-void

    :catchall_6a
    move-exception p0

    if-eqz p1, :cond_75

    .line 73
    :try_start_6d
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->close()V
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_71

    goto :goto_75

    :catchall_71
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_75
    :goto_75
    throw p0
.end method

.method private initDraw()V
    .registers 13

    .line 85
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mSolidPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 86
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 87
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mSolidPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 88
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mSolidPaint:Landroid/graphics/Paint;

    sget v3, Lcom/transsion/camera/ui/setting/level/Gradienter;->WIDTH_LINE:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 89
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mSolidPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 91
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mDashPaint:Landroid/graphics/Paint;

    .line 92
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 93
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mDashPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 94
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mDashPaint:Landroid/graphics/Paint;

    sget v1, Lcom/transsion/camera/ui/setting/level/Gradienter;->WIDTH_LINE:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 95
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mDashPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 97
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 98
    sget v0, Lcom/transsion/camera/ui/setting/level/Gradienter;->WIDTH_LINE:I

    int-to-float v1, v0

    const/high16 v2, -0x40000000    # -2.0f

    div-float v6, v1, v2

    iget v1, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mDashLineOnLength:I

    int-to-float v7, v1

    int-to-float v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float v8, v1, v2

    int-to-float v1, v0

    div-float v9, v1, v2

    int-to-float v0, v0

    div-float v10, v0, v2

    sget-object v11, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const/4 v5, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 99
    new-instance v0, Landroid/graphics/PathDashPathEffect;

    iget v1, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mDashLineOffLength:I

    int-to-float v1, v1

    const/4 v2, 0x0

    sget-object v3, Landroid/graphics/PathDashPathEffect$Style;->ROTATE:Landroid/graphics/PathDashPathEffect$Style;

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/graphics/PathDashPathEffect;-><init>(Landroid/graphics/Path;FFLandroid/graphics/PathDashPathEffect$Style;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mDashPathEffect:Landroid/graphics/PathDashPathEffect;

    return-void
.end method

.method private measureDimension(III)I
    .registers 4

    .line 60
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p0

    const/high16 p2, 0x40000000    # 2.0f

    if-ne p0, p2, :cond_9

    goto :goto_12

    :cond_9
    const/high16 p2, -0x80000000

    if-ne p0, p2, :cond_12

    .line 65
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_12
    :goto_12
    return p1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 186
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 187
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/level/Gradienter;->drawLevel(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 3

    .line 52
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 53
    iput p2, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mViewSize:I

    .line 54
    invoke-direct {p0, p2, p1, p2}, Lcom/transsion/camera/ui/setting/level/Gradienter;->measureDimension(III)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mViewSize:I

    .line 55
    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onSensorChanged([F)V
    .registers 9

    const/4 v0, 0x2

    .line 107
    aget v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x402399999999999aL    # 9.8

    cmpl-double v0, v0, v2

    if-lez v0, :cond_12

    goto :goto_46

    :cond_12
    const/4 v0, 0x0

    .line 110
    aget v1, p1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    const-wide v3, 0x3fb999999999999aL    # 0.1

    cmpg-double v1, v1, v3

    const/4 v2, 0x1

    if-gez v1, :cond_30

    aget v1, p1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v5, v1

    cmpg-double v1, v5, v3

    if-gez v1, :cond_30

    goto :goto_46

    .line 113
    :cond_30
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mDrawHelper:Lcom/transsion/camera/ui/setting/level/GradienterDrawHelper;

    aget v0, p1, v0

    aget p1, p1, v2

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1, v0, p1, v2}, Lcom/transsion/camera/ui/setting/level/GradienterDrawHelper;->getDegrees(FFLjava/util/concurrent/ArrayBlockingQueue;)F

    move-result p1

    .line 114
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mDrawHelper:Lcom/transsion/camera/ui/setting/level/GradienterDrawHelper;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/level/GradienterDrawHelper;->isShaking(Ljava/util/concurrent/ArrayBlockingQueue;)Z

    move-result v0

    if-eqz v0, :cond_47

    :goto_46
    return-void

    .line 117
    :cond_47
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mDrawHelper:Lcom/transsion/camera/ui/setting/level/GradienterDrawHelper;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/ui/setting/level/GradienterDrawHelper;->correctDegrees(F)F

    move-result p1

    .line 118
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/level/Gradienter;->mDrawHelper:Lcom/transsion/camera/ui/setting/level/GradienterDrawHelper;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/ui/setting/level/GradienterDrawHelper;->onSensorChanged(F)V

    .line 119
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
