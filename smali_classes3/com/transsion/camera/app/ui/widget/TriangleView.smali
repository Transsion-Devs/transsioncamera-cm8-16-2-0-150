.class public Lcom/transsion/camera/app/ui/widget/TriangleView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private mHeight:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/TriangleView;->init()V

    return-void
.end method

.method private drawTriangle(Landroid/graphics/Canvas;)V
    .registers 7

    .line 56
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TriangleView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    .line 57
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/TriangleView;->mWidth:I

    int-to-double v3, v2

    mul-double/2addr v0, v3

    double-to-float v0, v0

    .line 59
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/TriangleView;->mPath:Landroid/graphics/Path;

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v3, p0, Lcom/transsion/camera/app/ui/widget/TriangleView;->mHeight:I

    int-to-float v3, v3

    sub-float/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 60
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TriangleView;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/TriangleView;->mHeight:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 61
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TriangleView;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/TriangleView;->mWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/TriangleView;->mHeight:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 62
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TriangleView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 64
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TriangleView;->mPath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/TriangleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private init()V
    .registers 3

    .line 34
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/TriangleView;->mPaint:Landroid/graphics/Paint;

    .line 35
    const-string v1, "#2E2E2E"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 36
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TriangleView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 37
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TriangleView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 39
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/TriangleView;->mPath:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 51
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 52
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/TriangleView;->drawTriangle(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 44
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 45
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/TriangleView;->mWidth:I

    .line 46
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/TriangleView;->mHeight:I

    return-void
.end method

.method public setPaintColor(I)V
    .registers 2

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/TriangleView;->mPaint:Landroid/graphics/Paint;

    if-eqz p0, :cond_7

    .line 69
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_7
    return-void
.end method
