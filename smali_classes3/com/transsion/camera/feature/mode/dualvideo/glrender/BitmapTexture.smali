.class public Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;
.super Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;
.source "SourceFile"


# instance fields
.field protected mContentBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 3

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;-><init>(Landroid/graphics/Bitmap;Z)V

    .line 16
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->setOpaque(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Z)V
    .registers 3

    .line 20
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;-><init>(Z)V

    .line 21
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;->mContentBitmap:Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    .line 22
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->setOpaque(Z)V

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;->mContentBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method protected onFreeBitmap(Landroid/graphics/Bitmap;)V
    .registers 2

    return-void
.end method

.method protected onGetBitmap()Landroid/graphics/Bitmap;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;->mContentBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method
