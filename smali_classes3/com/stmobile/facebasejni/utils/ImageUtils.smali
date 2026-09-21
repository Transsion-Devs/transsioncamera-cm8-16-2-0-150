.class public Lcom/stmobile/facebasejni/utils/ImageUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRGBByteFromBitmap(Landroid/graphics/Bitmap;[B)V
    .registers 4

    if-eqz p0, :cond_1c

    .line 11
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1c

    if-nez p1, :cond_b

    goto :goto_1c

    .line 15
    :cond_b
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v0, v1, :cond_18

    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, v1, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 18
    :cond_18
    invoke-static {p0, p1}, Lcom/stmobile/facebasejni/FaceAPI;->getBgrByteFromBitmap(Landroid/graphics/Bitmap;[B)V

    return-void

    .line 12
    :cond_1c
    :goto_1c
    const-string p0, "ImageUtils"

    const-string p1, "bitmap or bgr is null !!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
