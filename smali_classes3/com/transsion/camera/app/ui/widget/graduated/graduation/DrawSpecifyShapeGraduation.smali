.class public Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawSpecifyShapeGraduation;
.super Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;
.source "SourceFile"


# instance fields
.field private final mPaint:Landroid/graphics/Paint;

.field private final mShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;


# direct methods
.method public constructor <init>(Landroid/graphics/Paint;Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;)V
    .registers 3

    .line 24
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawSpecifyShapeGraduation;->mPaint:Landroid/graphics/Paint;

    .line 26
    iput-object p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawSpecifyShapeGraduation;->mShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    if-eqz p2, :cond_11

    .line 28
    iget p1, p2, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;->mWidth:I

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mWidth:I

    .line 29
    iget p1, p2, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;->mHeight:I

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mHeight:I

    :cond_11
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;F)V
    .registers 22

    move-object/from16 v0, p0

    .line 35
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawSpecifyShapeGraduation;->mShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    if-nez v1, :cond_7

    return-void

    .line 39
    :cond_7
    iget v2, v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mWidth:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 40
    iget v4, v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mHeight:I

    int-to-float v4, v4

    div-float/2addr v4, v3

    .line 42
    iget-object v5, v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawSpecifyShapeGraduation;->mPaint:Landroid/graphics/Paint;

    iget v1, v1, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;->mGraduationColor:I

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawSpecifyShapeGraduation;->mShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    iget v1, v1, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;->mShapeType:I

    const/4 v5, 0x1

    if-ne v1, v5, :cond_3f

    .line 45
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawSpecifyShapeGraduation;->mPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 46
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mCoordinate:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v6, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v3, v1

    sub-float/2addr v3, v4

    sub-float v7, v3, p2

    int-to-float v8, v2

    int-to-float v1, v1

    add-float/2addr v1, v4

    sub-float v9, v1, p2

    iget-object v10, v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawSpecifyShapeGraduation;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void

    :cond_3f
    const/4 v5, 0x2

    if-ne v1, v5, :cond_6a

    .line 49
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawSpecifyShapeGraduation;->mPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mWidth:I

    iget v4, v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mHeight:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 50
    iget v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mWidth:I

    iget v2, v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    .line 51
    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mCoordinate:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iget-object v0, v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawSpecifyShapeGraduation;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    invoke-virtual {v11, v3, v2, v1, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void

    :cond_6a
    move-object/from16 v11, p1

    .line 53
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawSpecifyShapeGraduation;->mPaint:Landroid/graphics/Paint;

    iget v5, v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mWidth:I

    int-to-float v5, v5

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 54
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mCoordinate:Landroid/graphics/Point;

    iget v5, v1, Landroid/graphics/Point;->x:I

    int-to-float v12, v5

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v6, v1

    sub-float/2addr v6, v4

    sub-float v13, v6, p2

    int-to-float v14, v5

    int-to-float v1, v1

    add-float/2addr v1, v4

    sub-float v15, v1, p2

    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawSpecifyShapeGraduation;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v16, v1

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 57
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawSpecifyShapeGraduation;->mShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    iget v1, v1, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;->mBorder:I

    int-to-float v5, v1

    div-float v16, v5, v3

    .line 59
    iget-object v3, v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mCoordinate:Landroid/graphics/Point;

    iget v5, v3, Landroid/graphics/Point;->x:I

    int-to-float v6, v5

    sub-float/2addr v6, v2

    sub-float v12, v6, v16

    .line 60
    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v6, v3

    sub-float/2addr v6, v4

    sub-float v6, v6, v16

    int-to-float v5, v5

    add-float/2addr v5, v2

    add-float v14, v5, v16

    int-to-float v2, v3

    add-float/2addr v2, v4

    add-float v2, v2, v16

    .line 63
    iget-object v3, v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawSpecifyShapeGraduation;->mPaint:Landroid/graphics/Paint;

    int-to-float v1, v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 64
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawSpecifyShapeGraduation;->mPaint:Landroid/graphics/Paint;

    iget-object v3, v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawSpecifyShapeGraduation;->mShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    iget v3, v3, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;->mBorderColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    sub-float v13, v6, p2

    sub-float v15, v2, p2

    .line 65
    iget-object v0, v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawSpecifyShapeGraduation;->mPaint:Landroid/graphics/Paint;

    move/from16 v17, v16

    move-object/from16 v18, v0

    invoke-virtual/range {v11 .. v18}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method
