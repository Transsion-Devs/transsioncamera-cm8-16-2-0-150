.class public Lcom/transsion/camera/app/ui/masterguide/view/IconBubbleBgView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"


# instance fields
.field private mBubbleBgColor:I

.field private mHeight:I

.field private mRadius:I

.field private mStrokePaint:Landroid/graphics/Paint;

.field private mTriangleHeight:I

.field private mTriangleMarginStart:I

.field private mTriangleWidth:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/app/ui/masterguide/view/IconBubbleBgView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/masterguide/view/IconBubbleBgView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private drawRound(Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V
    .registers 12

    int-to-float v1, p3

    .line 83
    iget v0, p0, Lcom/transsion/camera/app/ui/masterguide/view/IconBubbleBgView;->mWidth:I

    sub-int/2addr v0, p3

    int-to-float v3, v0

    iget v0, p0, Lcom/transsion/camera/app/ui/masterguide/view/IconBubbleBgView;->mHeight:I

    iget v2, p0, Lcom/transsion/camera/app/ui/masterguide/view/IconBubbleBgView;->mTriangleHeight:I

    sub-int/2addr v0, v2

    sub-int/2addr v0, p3

    int-to-float v4, v0

    iget p0, p0, Lcom/transsion/camera/app/ui/masterguide/view/IconBubbleBgView;->mRadius:I

    int-to-float v5, p0

    int-to-float v6, p0

    const/4 v2, 0x0

    move-object v0, p1

    move-object v7, p2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawTriangle(Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V
    .registers 8

    .line 89
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 90
    iget v1, p0, Lcom/transsion/camera/app/ui/masterguide/view/IconBubbleBgView;->mTriangleMarginStart:I

    int-to-float v1, v1

    iget v2, p0, Lcom/transsion/camera/app/ui/masterguide/view/IconBubbleBgView;->mHeight:I

    iget v3, p0, Lcom/transsion/camera/app/ui/masterguide/view/IconBubbleBgView;->mTriangleHeight:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, p3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 91
    iget v1, p0, Lcom/transsion/camera/app/ui/masterguide/view/IconBubbleBgView;->mTriangleMarginStart:I

    iget v2, p0, Lcom/transsion/camera/app/ui/masterguide/view/IconBubbleBgView;->mTriangleWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/transsion/camera/app/ui/masterguide/view/IconBubbleBgView;->mHeight:I

    sub-int/2addr v2, p3

    div-int/lit8 v3, p3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 92
    iget v1, p0, Lcom/transsion/camera/app/ui/masterguide/view/IconBubbleBgView;->mTriangleMarginStart:I

    iget v2, p0, Lcom/transsion/camera/app/ui/masterguide/view/IconBubbleBgView;->mTriangleWidth:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/transsion/camera/app/ui/masterguide/view/IconBubbleBgView;->mHeight:I

    iget p0, p0, Lcom/transsion/camera/app/ui/masterguide/view/IconBubbleBgView;->mTriangleHeight:I

    sub-int/2addr v2, p0

    sub-int/2addr v2, p3

    int-to-float p0, v2

    invoke-virtual {v0, v1, p0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 93
    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawView(Landroid/graphics/Canvas;)V
    .registers 4

    .line 77
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/masterguide/view/IconBubbleBgView;->initStrokePaint()V

    .line 78
    iget-object v0, p0, Lcom/transsion/camera/app/ui/masterguide/view/IconBubbleBgView;->mStrokePaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/app/ui/masterguide/view/IconBubbleBgView;->drawRound(Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V

    .line 79
    iget-object v0, p0, Lcom/transsion/camera/app/ui/masterguide/view/IconBubbleBgView;->mStrokePaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/app/ui/masterguide/view/IconBubbleBgView;->drawTriangle(Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 3

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 42
    sget v0, Lcom/transsion/camera/R$color;->icon_bubble_background_color:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/masterguide/view/IconBubbleBgView;->mBubbleBgColor:I

    .line 43
    sget v0, Lcom/transsion/camera/R$dimen;->icon_bubble_text_view_trangle_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/masterguide/view/IconBubbleBgView;->mTriangleHeight:I

    .line 44
    sget v0, Lcom/transsion/camera/R$dimen;->icon_bubble_text_view_trangle_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/masterguide/view/IconBubbleBgView;->mTriangleWidth:I

    .line 45
    sget v0, Lcom/transsion/camera/R$dimen;->icon_bubble_text_view_trangle_margin_start:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/masterguide/view/IconBubbleBgView;->mTriangleMarginStart:I

    .line 46
    sget v0, Lcom/transsion/camera/R$dimen;->icon_bubble_text_view_radius:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/masterguide/view/IconBubbleBgView;->mRadius:I

    return-void
.end method

.method private initStrokePaint()V
    .registers 4

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/masterguide/view/IconBubbleBgView;->mStrokePaint:Landroid/graphics/Paint;

    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$color;->icon_bubble_background_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    iget-object v0, p0, Lcom/transsion/camera/app/ui/masterguide/view/IconBubbleBgView;->mStrokePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 53
    iget-object v0, p0, Lcom/transsion/camera/app/ui/masterguide/view/IconBubbleBgView;->mStrokePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    iget-object p0, p0, Lcom/transsion/camera/app/ui/masterguide/view/IconBubbleBgView;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 72
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 73
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/masterguide/view/IconBubbleBgView;->drawView(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 3

    .line 59
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 60
    iget p1, p0, Lcom/transsion/camera/app/ui/masterguide/view/IconBubbleBgView;->mWidth:I

    iget p2, p0, Lcom/transsion/camera/app/ui/masterguide/view/IconBubbleBgView;->mHeight:I

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public updateSize(II)V
    .registers 3

    .line 64
    iput p1, p0, Lcom/transsion/camera/app/ui/masterguide/view/IconBubbleBgView;->mWidth:I

    .line 65
    iput p2, p0, Lcom/transsion/camera/app/ui/masterguide/view/IconBubbleBgView;->mHeight:I

    .line 66
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 67
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method
