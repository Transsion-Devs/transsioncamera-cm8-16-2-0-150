.class public Lcom/cdv/utils/NvAndroidParticleUtils$SpriteGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cdv/utils/NvAndroidParticleUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpriteGenerator"
.end annotation


# instance fields
.field private m_canvas:Landroid/graphics/Canvas;

.field private m_paint:Landroid/graphics/Paint;

.field private m_spriteImageSize:I


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;I)V
    .registers 6

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/cdv/utils/NvAndroidParticleUtils$SpriteGenerator;->m_canvas:Landroid/graphics/Canvas;

    .line 36
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/cdv/utils/NvAndroidParticleUtils$SpriteGenerator;->m_paint:Landroid/graphics/Paint;

    .line 39
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v2, p1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 40
    iget-object p1, p0, Lcom/cdv/utils/NvAndroidParticleUtils$SpriteGenerator;->m_paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 41
    iget-object p1, p0, Lcom/cdv/utils/NvAndroidParticleUtils$SpriteGenerator;->m_paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 43
    iput p2, p0, Lcom/cdv/utils/NvAndroidParticleUtils$SpriteGenerator;->m_spriteImageSize:I

    return-void
.end method


# virtual methods
.method drawSpriteImage(IILandroid/graphics/Bitmap;)V
    .registers 8

    if-nez p3, :cond_3

    return-void

    .line 51
    :cond_3
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/cdv/utils/NvAndroidParticleUtils$SpriteGenerator;->m_spriteImageSize:I

    if-ne v0, v1, :cond_1d

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/cdv/utils/NvAndroidParticleUtils$SpriteGenerator;->m_spriteImageSize:I

    if-ne v0, v1, :cond_1d

    .line 52
    iget-object v0, p0, Lcom/cdv/utils/NvAndroidParticleUtils$SpriteGenerator;->m_canvas:Landroid/graphics/Canvas;

    int-to-float p1, p1

    int-to-float p2, p2

    iget-object p0, p0, Lcom/cdv/utils/NvAndroidParticleUtils$SpriteGenerator;->m_paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3, p1, p2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void

    .line 54
    :cond_1d
    iget-object v0, p0, Lcom/cdv/utils/NvAndroidParticleUtils$SpriteGenerator;->m_canvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/cdv/utils/NvAndroidParticleUtils$SpriteGenerator;->m_spriteImageSize:I

    add-int v3, p1, v2

    add-int/2addr v2, p2

    invoke-direct {v1, p1, p2, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object p0, p0, Lcom/cdv/utils/NvAndroidParticleUtils$SpriteGenerator;->m_paint:Landroid/graphics/Paint;

    const/4 p1, 0x0

    invoke-virtual {v0, p3, p1, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method
