.class public Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbSun;
.super Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbSun$ThumbInfo;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbSun$ThumbInfo;)V
    .registers 2

    .line 21
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;-><init>(Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape$ThumbInfo;)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 10

    .line 26
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseDraw;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->mModeSrc:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 28
    iget v0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->mRadius:I

    int-to-float v0, v0

    invoke-static {}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->scale()F

    move-result v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseDraw;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 30
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseDraw;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 31
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseDraw;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->mStroke:I

    int-to-float v1, v1

    invoke-static {}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->scale()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 33
    iget v0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->mHeight:I

    neg-int v0, v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-static {}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->scale()F

    move-result v1

    mul-float v4, v0, v1

    .line 34
    iget v0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->mBrilliantRaysLength:I

    int-to-float v0, v0

    invoke-static {}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->scale()F

    move-result v1

    mul-float/2addr v0, v1

    add-float v6, v4, v0

    .line 36
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->rotate()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 38
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v0, 0x0

    :goto_4b
    const/16 v1, 0x8

    if-ge v0, v1, :cond_60

    const/4 v5, 0x0

    .line 40
    iget-object v7, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseDraw;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 p1, 0x42340000    # 45.0f

    .line 41
    invoke-virtual {v2, p1}, Landroid/graphics/Canvas;->rotate(F)V

    add-int/lit8 v0, v0, 0x1

    move-object p1, v2

    goto :goto_4b

    :cond_60
    move-object v2, p1

    .line 43
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
