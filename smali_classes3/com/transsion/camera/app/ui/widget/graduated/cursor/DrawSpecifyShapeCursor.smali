.class public Lcom/transsion/camera/app/ui/widget/graduated/cursor/DrawSpecifyShapeCursor;
.super Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;
.source "SourceFile"


# instance fields
.field private final mPaint:Landroid/graphics/Paint;

.field private final mShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;)V
    .registers 3

    .line 38
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;-><init>(Lcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;)V

    .line 39
    iput-object p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/DrawSpecifyShapeCursor;->mShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    .line 40
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/DrawSpecifyShapeCursor;->mPaint:Landroid/graphics/Paint;

    .line 41
    sget-object p0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;F)V
    .registers 13

    .line 46
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/DrawSpecifyShapeCursor;->mShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    iget v3, v2, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;->mWidth:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    .line 47
    iget v2, v2, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;->mHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, p2

    const/high16 v7, 0x40000000    # 2.0f

    div-float v8, v3, v7

    div-float v9, v2, v7

    .line 50
    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 51
    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/DrawSpecifyShapeCursor;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 52
    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/DrawSpecifyShapeCursor;->mPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/DrawSpecifyShapeCursor;->mShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    iget v5, v5, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;->mGraduationColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/DrawSpecifyShapeCursor;->mShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    iget v4, v4, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;->mShapeType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_72

    const/high16 v3, 0x40a00000    # 5.0f

    div-float v3, v2, v3

    div-float/2addr v2, v7

    div-float v4, v3, v7

    sub-float v4, v2, v4

    .line 57
    iget-object v5, p0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/DrawSpecifyShapeCursor;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 58
    iget-object v5, p0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/DrawSpecifyShapeCursor;->mPaint:Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 59
    iget-object v5, p0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->mCoordinate:Landroid/graphics/Point;

    iget v6, v5, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    iget-object v8, p0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/DrawSpecifyShapeCursor;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v5, v4, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    sub-float/2addr v2, v3

    div-float v3, v2, v7

    .line 63
    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/DrawSpecifyShapeCursor;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 64
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/DrawSpecifyShapeCursor;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->mCoordinate:Landroid/graphics/Point;

    iget v4, v2, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iget-object v5, p0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/DrawSpecifyShapeCursor;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v2, v3, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 66
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/DrawSpecifyShapeCursor;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void

    .line 68
    :cond_72
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/DrawSpecifyShapeCursor;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 69
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->mCoordinate:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    int-to-float v4, v3

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v5, v2

    sub-float/2addr v5, v9

    int-to-float v3, v3

    int-to-float v2, v2

    add-float/2addr v2, v9

    iget-object v6, p0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/DrawSpecifyShapeCursor;->mPaint:Landroid/graphics/Paint;

    move v1, v5

    move v5, v2

    move v2, v4

    move v4, v3

    move v3, v1

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 72
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/DrawSpecifyShapeCursor;->mShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    iget v1, v1, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;->mBorder:I

    int-to-float v1, v1

    mul-float/2addr v1, p2

    div-float v2, v1, v7

    .line 75
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->mCoordinate:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    int-to-float v5, v4

    sub-float/2addr v5, v8

    sub-float/2addr v5, v2

    .line 76
    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v6, v3

    sub-float/2addr v6, v9

    sub-float/2addr v6, v2

    int-to-float v4, v4

    add-float/2addr v4, v8

    add-float/2addr v4, v2

    int-to-float v3, v3

    add-float/2addr v3, v9

    add-float/2addr v3, v2

    .line 79
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/DrawSpecifyShapeCursor;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 80
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/DrawSpecifyShapeCursor;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/DrawSpecifyShapeCursor;->mShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    iget v2, v2, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;->mBorderColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/DrawSpecifyShapeCursor;->mShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    iget v1, v1, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;->mRoundCorner:F

    iget-object v7, p0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/DrawSpecifyShapeCursor;->mPaint:Landroid/graphics/Paint;

    move v2, v6

    move v6, v1

    move v0, v5

    move v5, v1

    move v1, v0

    move v0, v4

    move v4, v3

    move v3, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method
