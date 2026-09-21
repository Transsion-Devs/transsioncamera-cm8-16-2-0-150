.class public Lcom/transsion/camera/feature/common/glrender/BitmapTexture;
.super Lcom/transsion/camera/feature/common/glrender/UploadedTexture;
.source "SourceFile"


# instance fields
.field protected mContentBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 3

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/common/glrender/BitmapTexture;-><init>(Landroid/graphics/Bitmap;Z)V

    .line 19
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->setOpaque(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Z)V
    .registers 4

    .line 23
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;-><init>(Z)V

    const/4 p2, 0x0

    if-eqz p1, :cond_e

    .line 24
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    move v0, p2

    :goto_f
    invoke-static {v0}, Lcom/transsion/camera/feature/common/utils/Assert;->assertTrue(Z)V

    .line 25
    iput-object p1, p0, Lcom/transsion/camera/feature/common/glrender/BitmapTexture;->mContentBitmap:Landroid/graphics/Bitmap;

    .line 26
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/common/glrender/UploadedTexture;->setOpaque(Z)V

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/feature/common/glrender/BitmapTexture;->mContentBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method protected onFreeBitmap(Landroid/graphics/Bitmap;)V
    .registers 2

    return-void
.end method

.method protected onGetBitmap()Landroid/graphics/Bitmap;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/transsion/camera/feature/common/glrender/BitmapTexture;->mContentBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method
