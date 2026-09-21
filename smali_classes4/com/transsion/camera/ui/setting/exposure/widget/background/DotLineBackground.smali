.class public Lcom/transsion/camera/ui/setting/exposure/widget/background/DotLineBackground;
.super Lcom/transsion/camera/ui/setting/exposure/widget/BaseDraw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/exposure/widget/background/DotLineBackground$BackgroundInfo;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/transsion/camera/ui/setting/exposure/widget/background/DotLineBackground$BackgroundInfo;)V
    .registers 6

    .line 26
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/widget/BaseDraw;-><init>(Lcom/transsion/camera/ui/setting/exposure/widget/BaseDraw$BaseInfo;)V

    .line 27
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseDraw;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 28
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseDraw;->mPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/exposure/widget/background/DotLineBackground$BackgroundInfo;->-$$Nest$fgetmStrokeWidth(Lcom/transsion/camera/ui/setting/exposure/widget/background/DotLineBackground$BackgroundInfo;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 29
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseDraw;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/DashPathEffect;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/exposure/widget/background/DotLineBackground$BackgroundInfo;->-$$Nest$fgetmDashWidth(Lcom/transsion/camera/ui/setting/exposure/widget/background/DotLineBackground$BackgroundInfo;)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/exposure/widget/background/DotLineBackground$BackgroundInfo;->-$$Nest$fgetmDashGap(Lcom/transsion/camera/ui/setting/exposure/widget/background/DotLineBackground$BackgroundInfo;)I

    move-result p1

    int-to-float p1, p1

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x1

    aput p1, v2, v1

    const/4 p1, 0x0

    invoke-direct {v0, v2, p1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;IIII)V
    .registers 12

    add-int/2addr p2, p4

    .line 35
    div-int/lit8 p2, p2, 0x2

    int-to-float v1, p2

    int-to-float v2, p3

    int-to-float v4, p5

    .line 36
    iget-object v5, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseDraw;->mPaint:Landroid/graphics/Paint;

    move v3, v1

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method
