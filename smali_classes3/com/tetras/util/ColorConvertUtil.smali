.class public Lcom/tetras/util/ColorConvertUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "CvColorConvertCommon"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteArrayToBitmap([BII)Landroid/graphics/Bitmap;
    .registers 4

    .line 118
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 119
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 120
    invoke-virtual {p1, p0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    return-object p1
.end method

.method public static convertColorSpace([BLcom/tetras/hand/model/CvPixelFormat;II[BLcom/tetras/hand/model/CvPixelFormat;)V
    .registers 6

    .line 17
    invoke-virtual {p1}, Lcom/tetras/hand/model/CvPixelFormat;->getValue()I

    move-result p1

    invoke-virtual {p5}, Lcom/tetras/hand/model/CvPixelFormat;->getValue()I

    move-result p5

    invoke-static/range {p0 .. p5}, Lcom/tetras/hand/CvHandLibrary;->convertColorSpace([BIII[BI)V

    return-void
.end method

.method public static cropNv21Data([BIIIIII[B)V
    .registers 10

    .line 52
    const-string v0, "CvColorConvertCommon"

    if-eqz p0, :cond_6

    if-nez p7, :cond_b

    .line 53
    :cond_6
    const-string v1, "cropNv21Data _in or out is null "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    if-lt p1, p5, :cond_1b

    if-lt p2, p6, :cond_1b

    add-int v1, p3, p5

    if-lt p1, v1, :cond_1b

    add-int v1, p4, p6

    if-lt p2, v1, :cond_1b

    .line 59
    invoke-static/range {p0 .. p7}, Lcom/tetras/hand/CvHandLibrary;->cropNv21Data([BIIIIII[B)V

    return-void

    .line 56
    :cond_1b
    const-string p0, "cropNv21Data  illegal para !!!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "cropNv21Data "

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static cropNv21DataToARGB([BIIIIII[B)V
    .registers 8

    if-eqz p0, :cond_9

    if-nez p7, :cond_5

    goto :goto_9

    .line 106
    :cond_5
    invoke-static/range {p0 .. p7}, Lcom/tetras/hand/CvHandLibrary;->cropNv21Data([BIIIIII[B)V

    return-void

    .line 103
    :cond_9
    :goto_9
    const-string p0, "CvColorConvertCommon"

    const-string p1, "cropNv21DataToARGB failed: nv21 or argb is null "

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static cropNv21ToBitmap([BIIIIII)Landroid/graphics/Bitmap;
    .registers 16

    if-eqz p0, :cond_28

    if-ltz p3, :cond_28

    if-ltz p4, :cond_28

    if-ltz p5, :cond_28

    if-ltz p6, :cond_28

    add-int v0, p3, p5

    if-lt p1, v0, :cond_28

    add-int v0, p4, p6

    if-ge p2, v0, :cond_13

    goto :goto_28

    :cond_13
    mul-int v0, p5, p6

    mul-int/lit8 v0, v0, 0x4

    .line 82
    new-array v8, v0, [B

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .line 83
    invoke-static/range {v1 .. v8}, Lcom/tetras/util/ColorConvertUtil;->cropNv21DataToARGB([BIIIIII[B)V

    .line 85
    invoke-static {v8, v6, v7}, Lcom/tetras/util/ColorConvertUtil;->byteArrayToBitmap([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 79
    :cond_28
    :goto_28
    const-string p0, "CvColorConvertCommon"

    const-string p1, "cropNv21ToBitmap failed: illegal para !"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getBGRADataFromBitmap(Landroid/graphics/Bitmap;[B)V
    .registers 5

    .line 35
    const-string v0, "CvColorConvertCommon"

    if-eqz p0, :cond_33

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_33

    if-nez p1, :cond_d

    goto :goto_33

    .line 39
    :cond_d
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v1, v2, :cond_1b

    .line 40
    const-string p0, "getBGRADataFromBitmap is not ARGB_8888 !!!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 43
    :cond_1b
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x4

    .line 44
    array-length v2, p1

    if-eq v1, v2, :cond_2f

    .line 45
    const-string p0, "getBGRADataFromBitmap illegal bgra data!!!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 48
    :cond_2f
    invoke-static {p0, p1}, Lcom/tetras/hand/CvHandLibrary;->getBGRADataFromBitmap(Landroid/graphics/Bitmap;[B)V

    return-void

    .line 36
    :cond_33
    :goto_33
    const-string p0, "getBGRADataFromBitmap bitmap is null or bgra is null !!!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static getBGRFromBitmap(Landroid/graphics/Bitmap;[B)V
    .registers 4

    if-eqz p0, :cond_1c

    .line 24
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1c

    if-nez p1, :cond_b

    goto :goto_1c

    .line 28
    :cond_b
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v0, v1, :cond_18

    const/4 v0, 0x0

    .line 29
    invoke-virtual {p0, v1, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 31
    :cond_18
    invoke-static {p0, p1}, Lcom/tetras/hand/CvHandLibrary;->getBGRFromBitmap(Landroid/graphics/Bitmap;[B)V

    return-void

    .line 25
    :cond_1c
    :goto_1c
    const-string p0, "CvColorConvertCommon"

    const-string p1, "bitmap or bgr is null !!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
