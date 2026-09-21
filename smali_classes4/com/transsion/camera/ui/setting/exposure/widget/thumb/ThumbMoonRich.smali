.class public Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbMoonRich;
.super Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShapeExt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbMoonRich$ThumbInfo;
    }
.end annotation


# instance fields
.field private final mMoonRadius:I

.field private final mStretch:I

.field private final mWaningMoonRadius:I


# direct methods
.method public constructor <init>(Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbMoonRich$ThumbInfo;Lcom/transsion/camera/ui/setting/exposure/widget/IProgressTraits;)V
    .registers 4

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShapeExt;-><init>(Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape$ThumbInfo;Lcom/transsion/camera/ui/setting/exposure/widget/IProgressTraits;)V

    .line 30
    invoke-static {p1}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbMoonRich$ThumbInfo;->-$$Nest$fgetmMoonRadius(Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbMoonRich$ThumbInfo;)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbMoonRich;->mMoonRadius:I

    .line 31
    invoke-static {p1}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbMoonRich$ThumbInfo;->-$$Nest$fgetmMoonRadius(Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbMoonRich$ThumbInfo;)I

    move-result p2

    iget v0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->mRadius:I

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbMoonRich;->mStretch:I

    .line 32
    invoke-static {p1}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbMoonRich$ThumbInfo;->-$$Nest$fgetmWaningMoonRadius(Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbMoonRich$ThumbInfo;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbMoonRich;->mWaningMoonRadius:I

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 14

    .line 37
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShapeExt;->getMin()I

    move-result v0

    .line 38
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShapeExt;->getMax()I

    move-result v1

    .line 39
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShapeExt;->getProgress()I

    move-result v2

    add-int/2addr v1, v0

    .line 40
    div-int/lit8 v1, v1, 0x2

    add-int v3, v1, v0

    .line 41
    div-int/lit8 v3, v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-lt v2, v1, :cond_1b

    move v1, v4

    move v7, v1

    :goto_19
    move v0, v5

    goto :goto_46

    :cond_1b
    const/high16 v6, 0x3f800000    # 1.0f

    if-gt v2, v3, :cond_39

    .line 50
    iget v1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbMoonRich;->mStretch:I

    int-to-float v1, v1

    .line 52
    iget v7, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->mRadius:I

    int-to-float v7, v7

    sub-int v2, v3, v2

    int-to-float v2, v2

    mul-float/2addr v2, v6

    sub-int/2addr v3, v0

    int-to-float v0, v3

    div-float/2addr v2, v0

    sub-float/2addr v6, v2

    iget v0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbMoonRich;->mWaningMoonRadius:I

    int-to-float v0, v0

    mul-float/2addr v6, v0

    add-float/2addr v7, v6

    invoke-static {}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->scale()F

    move-result v0

    mul-float/2addr v7, v0

    const/4 v0, 0x1

    goto :goto_46

    :cond_39
    sub-int v0, v1, v2

    int-to-float v0, v0

    mul-float/2addr v0, v6

    sub-int/2addr v1, v3

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 54
    iget v1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbMoonRich;->mStretch:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    move v7, v4

    goto :goto_19

    .line 58
    :goto_46
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseDraw;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 59
    iget v2, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->mRadius:I

    int-to-float v2, v2

    add-float/2addr v2, v1

    invoke-static {}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->scale()F

    move-result v3

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseDraw;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 61
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->rotate()F

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->rotate(F)V

    if-eqz v0, :cond_80

    .line 64
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseDraw;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->mModeClear:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 65
    iget v0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbMoonRich;->mWaningMoonRadius:I

    int-to-float v0, v0

    invoke-static {}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->scale()F

    move-result v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseDraw;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v4, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 66
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseDraw;->mPaint:Landroid/graphics/Paint;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->mModeSrc:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void

    .line 68
    :cond_80
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseDraw;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 69
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseDraw;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->mStroke:I

    int-to-float v2, v2

    invoke-static {}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->scale()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 71
    iget v0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->mHeight:I

    neg-int v2, v0

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    int-to-float v0, v0

    div-float/2addr v0, v3

    iget v3, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbMoonRich;->mMoonRadius:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbMoonRich;->mStretch:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    mul-float/2addr v0, v1

    add-float/2addr v2, v0

    invoke-static {}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->scale()F

    move-result v0

    mul-float v8, v2, v0

    .line 72
    iget v0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->mBrilliantRaysLength:I

    int-to-float v0, v0

    invoke-static {}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->scale()F

    move-result v1

    mul-float/2addr v0, v1

    add-float v10, v8, v0

    .line 74
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    :goto_ba
    const/16 v0, 0x8

    if-ge v5, v0, :cond_cf

    const/4 v9, 0x0

    .line 76
    iget-object v11, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseDraw;->mPaint:Landroid/graphics/Paint;

    const/4 v7, 0x0

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 p1, 0x42340000    # 45.0f

    .line 77
    invoke-virtual {v6, p1}, Landroid/graphics/Canvas;->rotate(F)V

    add-int/lit8 v5, v5, 0x1

    move-object p1, v6

    goto :goto_ba

    :cond_cf
    move-object v6, p1

    .line 79
    invoke-virtual {v6}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
