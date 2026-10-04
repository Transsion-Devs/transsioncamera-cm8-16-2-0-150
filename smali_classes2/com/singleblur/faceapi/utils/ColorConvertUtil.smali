.class public Lcom/singleblur/faceapi/utils/ColorConvertUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "ColorConvertUtil"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteArrayToBitmap([BII)Landroid/graphics/Bitmap;
    .registers 4

    .line 119
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 120
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 121
    invoke-virtual {p1, p0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    return-object p1
.end method

.method public static convertColorSpace([BII[BLcom/singleblur/faceapi/model/ColorConvertType;)V
    .registers 5

    .line 26
    invoke-virtual {p4}, Lcom/singleblur/faceapi/model/ColorConvertType;->getValue()I

    move-result p4

    invoke-static {p0, p1, p2, p3, p4}, Lcom/singleblur/faceapi/FaceLibrary;->convertColorSpace([BII[BI)V

    return-void
.end method

.method public static cropNv21DataToARGB([BIIIIII[B)V
    .registers 10

    .line 100
    const-string v0, "ColorConvertUtil"

    if-eqz p0, :cond_6

    if-nez p7, :cond_b

    .line 101
    :cond_6
    const-string v1, "cropNv21DataToARGB _in or out is null "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    if-lt p1, p5, :cond_1b

    if-lt p2, p6, :cond_1b

    add-int v1, p3, p5

    if-lt p1, v1, :cond_1b

    add-int v1, p4, p6

    if-lt p2, v1, :cond_1b

    .line 107
    invoke-static/range {p0 .. p7}, Lcom/singleblur/faceapi/FaceLibrary;->cropNv21Data([BIIIIII[B)V

    return-void

    .line 104
    :cond_1b
    const-string p0, "cropNv21DataToARGB  illegal para !!!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "cropNv21DataToARGB "

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static cropNv21ToBitmap([BIIIIII)Landroid/graphics/Bitmap;
    .registers 16

    mul-int v0, p5, p6

    mul-int/lit8 v0, v0, 0x4

    .line 80
    new-array v8, v0, [B

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .line 81
    invoke-static/range {v1 .. v8}, Lcom/singleblur/faceapi/utils/ColorConvertUtil;->cropNv21DataToARGB([BIIIIII[B)V

    .line 83
    invoke-static {v8, v6, v7}, Lcom/singleblur/faceapi/utils/ColorConvertUtil;->byteArrayToBitmap([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getBGRADataFromBitmap(Landroid/graphics/Bitmap;[B)V
    .registers 5

    .line 33
    const-string v0, "ColorConvertUtil"

    if-eqz p0, :cond_33

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_33

    if-nez p1, :cond_d

    goto :goto_33

    .line 37
    :cond_d
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v1, v2, :cond_1b

    .line 38
    const-string p0, "getBGRADataFromBitmap is not ARGB_8888 !!!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 41
    :cond_1b
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x4

    .line 42
    array-length v2, p1

    if-eq v1, v2, :cond_2f

    .line 43
    const-string p0, "getBGRADataFromBitmap illegal bgra data!!!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 46
    :cond_2f
    invoke-static {p0, p1}, Lcom/singleblur/faceapi/FaceLibrary;->getBGRADataFromBitmap(Landroid/graphics/Bitmap;[B)V

    return-void

    .line 34
    :cond_33
    :goto_33
    const-string p0, "getBGRADataFromBitmap bitmap is null or bgra is null !!!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static getBGRDataFromBitmap(Landroid/graphics/Bitmap;[B)V
    .registers 4

    if-eqz p0, :cond_34

    .line 53
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_34

    if-eqz p1, :cond_34

    .line 56
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_2c

    .line 59
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    .line 60
    array-length v1, p1

    if-ne v0, v1, :cond_24

    .line 63
    invoke-static {p0, p1}, Lcom/singleblur/faceapi/FaceLibrary;->getBGRDataFromBitmap(Landroid/graphics/Bitmap;[B)V

    return-void

    .line 61
    :cond_24
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "getBGRDataFromBitmap illegal bgra data!!!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 57
    :cond_2c
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "getBGRDataFromBitmap is not ARGB_8888 !!!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 54
    :cond_34
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "getBGRDataFromBitmap bitmap is null or bgra is null !!!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
