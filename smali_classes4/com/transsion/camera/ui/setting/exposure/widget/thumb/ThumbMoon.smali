.class public Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbMoon;
.super Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbMoon$ThumbInfo;
    }
.end annotation


# instance fields
.field private final mWaningMoonRadius:I


# direct methods
.method public constructor <init>(Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbMoon$ThumbInfo;)V
    .registers 3

    .line 26
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;-><init>(Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape$ThumbInfo;)V

    .line 27
    invoke-static {p1}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbMoon$ThumbInfo;->-$$Nest$fgetmMoonRadius(Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbMoon$ThumbInfo;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->mRadius:I

    .line 28
    invoke-static {p1}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbMoon$ThumbInfo;->-$$Nest$fgetmWaningMoonRadius(Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbMoon$ThumbInfo;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbMoon;->mWaningMoonRadius:I

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 33
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseDraw;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 34
    iget v0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->mRadius:I

    int-to-float v0, v0

    invoke-static {}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->scale()F

    move-result v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseDraw;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 36
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->rotate()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 37
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseDraw;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->mModeClear:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 38
    iget v0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->mRadius:I

    int-to-float v0, v0

    invoke-static {}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->scale()F

    move-result v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbMoon;->mWaningMoonRadius:I

    int-to-float v1, v1

    invoke-static {}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->scale()F

    move-result v3

    mul-float/2addr v1, v3

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseDraw;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 39
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseDraw;->mPaint:Landroid/graphics/Paint;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;->mModeSrc:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method
