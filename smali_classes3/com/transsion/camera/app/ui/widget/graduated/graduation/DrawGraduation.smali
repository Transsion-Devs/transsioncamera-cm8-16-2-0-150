.class public Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawGraduation;
.super Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;
.source "SourceFile"


# instance fields
.field private final mPaint:Landroid/graphics/Paint;

.field private final mShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;


# direct methods
.method public constructor <init>(Landroid/graphics/Paint;Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;)V
    .registers 3

    .line 25
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawGraduation;->mPaint:Landroid/graphics/Paint;

    .line 27
    iput-object p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawGraduation;->mShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    .line 28
    iget p1, p2, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;->mWidth:I

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mWidth:I

    .line 29
    iget p1, p2, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;->mHeight:I

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mHeight:I

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;F)V
    .registers 23

    move-object/from16 v0, p0

    if-nez p1, :cond_5

    return-void

    .line 35
    :cond_5
    iget v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mWidth:I

    int-to-float v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 36
    iget v4, v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mHeight:I

    int-to-float v4, v4

    div-float/2addr v4, v3

    .line 38
    iget-object v5, v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawGraduation;->mPaint:Landroid/graphics/Paint;

    int-to-float v1, v1

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 39
    iget-boolean v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mIsStartRecording:Z

    if-eqz v1, :cond_21

    .line 40
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawGraduation;->mPaint:Landroid/graphics/Paint;

    iget v5, v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mShapeColor:I

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2a

    .line 42
    :cond_21
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawGraduation;->mPaint:Landroid/graphics/Paint;

    iget-object v5, v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawGraduation;->mShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    iget v5, v5, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;->mGraduationColor:I

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    :goto_2a
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mCoordinate:Landroid/graphics/Point;

    iget v5, v1, Landroid/graphics/Point;->x:I

    int-to-float v7, v5

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v6, v1

    sub-float/2addr v6, v4

    sub-float v8, v6, p2

    int-to-float v9, v5

    int-to-float v1, v1

    add-float/2addr v1, v4

    sub-float v10, v1, p2

    iget-object v11, v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawGraduation;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 47
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawGraduation;->mShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    iget v1, v1, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;->mBorder:I

    int-to-float v5, v1

    div-float v17, v5, v3

    .line 49
    iget-object v3, v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mCoordinate:Landroid/graphics/Point;

    iget v5, v3, Landroid/graphics/Point;->x:I

    int-to-float v6, v5

    sub-float/2addr v6, v2

    sub-float v13, v6, v17

    .line 50
    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v6, v3

    sub-float/2addr v6, v4

    sub-float v6, v6, v17

    int-to-float v5, v5

    add-float/2addr v5, v2

    add-float v15, v5, v17

    int-to-float v2, v3

    add-float/2addr v2, v4

    add-float v2, v2, v17

    .line 53
    iget-object v3, v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawGraduation;->mPaint:Landroid/graphics/Paint;

    int-to-float v1, v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 54
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawGraduation;->mPaint:Landroid/graphics/Paint;

    iget-object v3, v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawGraduation;->mShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    iget v3, v3, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;->mBorderColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    sub-float v14, v6, p2

    sub-float v16, v2, p2

    .line 55
    iget-object v0, v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawGraduation;->mPaint:Landroid/graphics/Paint;

    move/from16 v18, v17

    move-object/from16 v12, p1

    move-object/from16 v19, v0

    invoke-virtual/range {v12 .. v19}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public updateShapeInfoColor(II)V
    .registers 4

    if-nez p1, :cond_3

    goto :goto_a

    .line 64
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawGraduation;->mShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;->updateGraduationColor(I)V

    if-nez p2, :cond_b

    :goto_a
    return-void

    .line 69
    :cond_b
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawGraduation;->mShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;->updateBorderColor(I)V

    return-void
.end method
