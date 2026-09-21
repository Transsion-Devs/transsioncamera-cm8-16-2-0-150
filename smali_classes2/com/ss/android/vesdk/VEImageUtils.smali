.class public Lcom/ss/android/vesdk/VEImageUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static TAG:Ljava/lang/String; = "VEImageUtils"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compressToJPEG(Landroid/graphics/Bitmap;ILjava/lang/String;)V
    .registers 4

    .line 39
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 40
    sget-object p0, Lcom/ss/android/vesdk/VEImageUtils;->TAG:Ljava/lang/String;

    const-string p1, "Can\'t compress a recycled bitmap"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    if-ltz p1, :cond_19

    const/16 v0, 0x64

    if-le p1, v0, :cond_15

    goto :goto_19

    .line 48
    :cond_15
    invoke-static {p0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEJpegUtils;->compressToJPEG(Landroid/graphics/Bitmap;ILjava/lang/String;)V

    return-void

    .line 45
    :cond_19
    :goto_19
    sget-object p0, Lcom/ss/android/vesdk/VEImageUtils;->TAG:Ljava/lang/String;

    const-string p1, "quality must be 0..100"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static compressToJPEG([BIIILjava/lang/String;)V
    .registers 6

    if-lez p1, :cond_18

    if-gtz p2, :cond_5

    goto :goto_18

    :cond_5
    if-ltz p3, :cond_10

    const/16 v0, 0x64

    if-le p3, v0, :cond_c

    goto :goto_10

    .line 69
    :cond_c
    invoke-static {p0, p1, p2, p3, p4}, Lcom/ss/android/ttve/nativePort/TEJpegUtils;->compressToJPEG2([BIIILjava/lang/String;)V

    return-void

    .line 66
    :cond_10
    :goto_10
    sget-object p0, Lcom/ss/android/vesdk/VEImageUtils;->TAG:Ljava/lang/String;

    const-string p1, "quality must be 0..100"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 62
    :cond_18
    :goto_18
    sget-object p0, Lcom/ss/android/vesdk/VEImageUtils;->TAG:Ljava/lang/String;

    const-string p1, "width and height must be gt 0"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static convertNv21ToJpeg([BII)[B
    .registers 9

    .line 138
    new-instance v0, Landroid/graphics/YuvImage;

    const/16 v2, 0x11

    const/4 v5, 0x0

    move-object v1, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 139
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 140
    new-instance p1, Landroid/graphics/Rect;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 p2, 0x64

    invoke-virtual {v0, p1, p2, p0}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 141
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static decompressJPEG(Landroid/graphics/Bitmap;)Lcom/ss/android/ttve/model/VEFrame;
    .registers 11

    .line 91
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 92
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    const/4 v1, 0x0

    .line 95
    :try_start_d
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_11} :catch_18

    .line 96
    :try_start_11
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_16

    :goto_14
    move-object v3, v2

    goto :goto_1e

    :catch_16
    move-exception v0

    goto :goto_1a

    :catch_18
    move-exception v0

    move-object v2, v1

    .line 98
    :goto_1a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_14

    :goto_1e
    if-nez v3, :cond_21

    return-object v1

    .line 104
    :cond_21
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const-wide/16 v7, 0x0

    sget-object v9, Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;->TEPIXEL_FORMAT_JPEG:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    const/4 v6, 0x0

    invoke-static/range {v3 .. v9}, Lcom/ss/android/ttve/model/VEFrame;->createByteArrayFrame([BIIIJLcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;)Lcom/ss/android/ttve/model/VEFrame;

    move-result-object p0

    return-object p0
.end method

.method public static decompressJPEG(Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/ss/android/ttve/model/VEFrame;
    .registers 9

    .line 80
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {p0, p1}, Lcom/ss/android/ttve/nativePort/TEJpegUtils;->decompressJPEG(Ljava/lang/String;I)Lcom/ss/android/medialib/camera/ImageFrame;

    move-result-object p0

    .line 81
    invoke-virtual {p0}, Lcom/ss/android/medialib/camera/ImageFrame;->getBuf()[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/ss/android/medialib/camera/ImageFrame;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/ss/android/medialib/camera/ImageFrame;->getHeight()I

    move-result v2

    const-wide/16 v4, 0x0

    sget-object v6, Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;->TEPixFmt_ARGB8:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    const/4 v3, 0x0

    invoke-static/range {v0 .. v6}, Lcom/ss/android/ttve/model/VEFrame;->createByteArrayFrame([BIIIJLcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;)Lcom/ss/android/ttve/model/VEFrame;

    move-result-object p0

    return-object p0
.end method

.method public static dumpNV21([BIILjava/lang/String;)V
    .registers 4

    if-nez p0, :cond_3

    goto :goto_1f

    .line 156
    :cond_3
    invoke-static {p0, p1, p2}, Lcom/ss/android/vesdk/VEImageUtils;->convertNv21ToJpeg([BII)[B

    move-result-object p0

    .line 158
    :try_start_7
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p1, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 160
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 161
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_15} :catch_1b
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_15} :catch_16

    return-void

    :catch_16
    move-exception p0

    .line 165
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1f

    :catch_1b
    move-exception p0

    .line 163
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1f
    return-void
.end method

.method public static getImageColorSpace(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/graphics/ColorSpace;
    .registers 4

    .line 120
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 121
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 122
    invoke-static {p0, p1, v0}, Lcom/ss/android/ttve/nativePort/TEImageFactory;->decodeFileCompat(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 124
    iget-object p0, v0, Landroid/graphics/BitmapFactory$Options;->outColorSpace:Landroid/graphics/ColorSpace;

    if-eqz p0, :cond_10

    return-object p0

    :cond_10
    const/4 p0, 0x0

    return-object p0
.end method

.method public static saveJPEGToPath([BLjava/lang/String;)V
    .registers 5

    .line 176
    const-string v0, "close FileOutputStream failed!"

    if-nez p0, :cond_c

    .line 177
    sget-object p0, Lcom/ss/android/vesdk/VEImageUtils;->TAG:Ljava/lang/String;

    const-string p1, "Input null data, failed to save jpeg!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    const/4 v1, 0x0

    .line 183
    :try_start_d
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_12} :catch_2d
    .catchall {:try_start_d .. :try_end_12} :catchall_2b

    .line 184
    :try_start_12
    array-length p1, p0

    const/4 v1, 0x0

    invoke-virtual {v2, p0, v1, p1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_17} :catch_28
    .catchall {:try_start_12 .. :try_end_17} :catchall_25

    .line 192
    :try_start_17
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_1b

    return-void

    :catch_1b
    move-exception p0

    .line 195
    sget-object p1, Lcom/ss/android/vesdk/VEImageUtils;->TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :catchall_25
    move-exception p0

    move-object v1, v2

    goto :goto_48

    :catch_28
    move-exception p0

    move-object v1, v2

    goto :goto_2e

    :catchall_2b
    move-exception p0

    goto :goto_48

    :catch_2d
    move-exception p0

    .line 186
    :goto_2e
    :try_start_2e
    sget-object p1, Lcom/ss/android/vesdk/VEImageUtils;->TAG:Ljava/lang/String;

    const-string v2, "save jpeg failed\uff01"

    invoke-static {p1, v2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_38
    .catchall {:try_start_2e .. :try_end_38} :catchall_2b

    if-eqz v1, :cond_47

    .line 192
    :try_start_3a
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_3e

    goto :goto_47

    :catch_3e
    move-exception p0

    .line 195
    sget-object p1, Lcom/ss/android/vesdk/VEImageUtils;->TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_47
    :goto_47
    return-void

    :goto_48
    if-eqz v1, :cond_57

    .line 192
    :try_start_4a
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_4e

    goto :goto_57

    :catch_4e
    move-exception p1

    .line 195
    sget-object v1, Lcom/ss/android/vesdk/VEImageUtils;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 198
    :cond_57
    :goto_57
    throw p0
.end method

.method public static saveYUVToPath([Landroid/media/Image$Plane;IILjava/lang/String;)V
    .registers 7

    .line 210
    const-string v0, "close FileOutputStream failed!"

    if-nez p0, :cond_c

    .line 211
    sget-object p0, Lcom/ss/android/vesdk/VEImageUtils;->TAG:Ljava/lang/String;

    const-string p1, "Input null plane, failed to save yuv!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    const/4 v1, 0x0

    .line 218
    aget-object v2, p0, v1

    if-eqz v2, :cond_9b

    const/16 v2, 0x10

    .line 219
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 220
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 221
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    aget-object p2, p0, v1

    .line 222
    invoke-virtual {p2}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    aget-object p2, p0, v1

    .line 223
    invoke-virtual {p2}, Landroid/media/Image$Plane;->getRowStride()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 p1, 0x0

    .line 230
    :try_start_33
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_38} :catch_70
    .catchall {:try_start_33 .. :try_end_38} :catchall_6e

    .line 231
    :try_start_38
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 233
    array-length p1, p0

    :goto_40
    if-ge v1, p1, :cond_60

    aget-object p3, p0, v1

    .line 234
    invoke-virtual {p3}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p3

    .line 235
    invoke-virtual {p3}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    new-array v2, v2, [B

    .line 237
    invoke-virtual {p3, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 238
    invoke-virtual {p2, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 240
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_57} :catch_5d
    .catchall {:try_start_38 .. :try_end_57} :catchall_5a

    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    :catchall_5a
    move-exception p0

    move-object p1, p2

    goto :goto_8b

    :catch_5d
    move-exception p0

    move-object p1, p2

    goto :goto_71

    .line 249
    :cond_60
    :try_start_60
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_64

    return-void

    :catch_64
    move-exception p0

    .line 252
    sget-object p1, Lcom/ss/android/vesdk/VEImageUtils;->TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :catchall_6e
    move-exception p0

    goto :goto_8b

    :catch_70
    move-exception p0

    .line 243
    :goto_71
    :try_start_71
    sget-object p2, Lcom/ss/android/vesdk/VEImageUtils;->TAG:Ljava/lang/String;

    const-string p3, "save yuv failed!"

    invoke-static {p2, p3}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7b
    .catchall {:try_start_71 .. :try_end_7b} :catchall_6e

    if-eqz p1, :cond_8a

    .line 249
    :try_start_7d
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_81

    goto :goto_8a

    :catch_81
    move-exception p0

    .line 252
    sget-object p1, Lcom/ss/android/vesdk/VEImageUtils;->TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8a
    :goto_8a
    return-void

    :goto_8b
    if-eqz p1, :cond_9a

    .line 249
    :try_start_8d
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_90} :catch_91

    goto :goto_9a

    :catch_91
    move-exception p1

    .line 252
    sget-object p2, Lcom/ss/android/vesdk/VEImageUtils;->TAG:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 255
    :cond_9a
    :goto_9a
    throw p0

    .line 225
    :cond_9b
    sget-object p0, Lcom/ss/android/vesdk/VEImageUtils;->TAG:Ljava/lang/String;

    const-string p1, "save yuv failed, plane is null"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
