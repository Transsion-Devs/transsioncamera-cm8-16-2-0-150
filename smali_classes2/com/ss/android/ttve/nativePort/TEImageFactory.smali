.class public Lcom/ss/android/ttve/nativePort/TEImageFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ttve/nativePort/TEImageFactory$ImageInfo;
    }
.end annotation


# static fields
.field private static final BITMAP:Ljava/lang/String; = "bitmap"

.field private static final IMAGE_COLORSPACE_TYPE_DISPLAYP3:I = 0x1

.field private static final IMAGE_COLORSPACE_TYPE_SRGB:I = 0x0

.field private static final IMAGE_COLORSPACE_TYPE_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "TEImageFactory"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static copyByDraw(Landroid/graphics/Bitmap$Config;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 5

    .line 233
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 234
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 233
    invoke-static {v0, v1, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 235
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object p0
.end method

.method public static decodeFile(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/ss/android/ttve/nativePort/TEImageFactory$ImageInfo;
    .registers 8

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 171
    invoke-static/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEImageFactory;->decodeFile(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;III)Lcom/ss/android/ttve/nativePort/TEImageFactory$ImageInfo;

    move-result-object p0

    return-object p0
.end method

.method public static decodeFile(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;III)Lcom/ss/android/ttve/nativePort/TEImageFactory$ImageInfo;
    .registers 8

    if-nez p2, :cond_7

    .line 177
    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    :cond_7
    const/4 v0, 0x1

    if-eq p5, v0, :cond_13

    .line 187
    sget-object p5, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {p5}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object p5

    iput-object p5, p2, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    goto :goto_1b

    .line 184
    :cond_13
    sget-object p5, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    invoke-static {p5}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object p5

    iput-object p5, p2, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    :goto_1b
    if-lez p3, :cond_4c

    if-lez p4, :cond_4c

    .line 194
    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 195
    invoke-static {p0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEImageFactory;->decodeFileCompat(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 197
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p5

    const-string v0, "ve_enable_img_downsample_calculate_opt"

    const/4 v1, 0x0

    invoke-virtual {p5, v0, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p5

    if-nez p5, :cond_3e

    .line 198
    iget p5, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {p5, v0, p3, p4}, Lcom/ss/android/ttve/nativePort/TEJpegUtils;->calBestSampleSize(IIII)I

    move-result p3

    goto :goto_46

    .line 200
    :cond_3e
    iget p5, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {p5, v0, p3, p4}, Lcom/ss/android/ttve/nativePort/TEJpegUtils;->calBestSampleSize2(IIII)I

    move-result p3

    :goto_46
    if-lez p3, :cond_4a

    .line 203
    iput p3, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 205
    :cond_4a
    iput-boolean v1, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 209
    :cond_4c
    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object p3, p2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 210
    invoke-static {p0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEImageFactory;->decodeFileCompat(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2

    if-nez p2, :cond_58

    const/4 p0, 0x0

    return-object p0

    .line 215
    :cond_58
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p4

    if-eq p4, p3, :cond_66

    .line 218
    invoke-static {p3, p2}, Lcom/ss/android/ttve/nativePort/TEImageFactory;->copyByDraw(Landroid/graphics/Bitmap$Config;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 219
    invoke-static {p2}, Lcom/ss/android/ttve/nativePort/TEImageFactory;->recycleBitmap(Landroid/graphics/Bitmap;)V

    move-object p2, p3

    .line 223
    :cond_66
    new-instance p3, Lcom/ss/android/ttve/nativePort/TEImageFactory$ImageInfo;

    invoke-direct {p3}, Lcom/ss/android/ttve/nativePort/TEImageFactory$ImageInfo;-><init>()V

    .line 224
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    iput p4, p3, Lcom/ss/android/ttve/nativePort/TEImageFactory$ImageInfo;->width:I

    .line 225
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    iput p4, p3, Lcom/ss/android/ttve/nativePort/TEImageFactory$ImageInfo;->height:I

    .line 226
    iput-object p2, p3, Lcom/ss/android/ttve/nativePort/TEImageFactory$ImageInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 227
    const-string p2, "bitmap"

    iput-object p2, p3, Lcom/ss/android/ttve/nativePort/TEImageFactory$ImageInfo;->mimeType:Ljava/lang/String;

    .line 228
    invoke-static {p0, p1}, Lcom/ss/android/ttve/nativePort/TEImageFactory;->getRotation(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0

    iput p0, p3, Lcom/ss/android/ttve/nativePort/TEImageFactory$ImageInfo;->rotation:I

    return-object p3
.end method

.method public static decodeFileCompat(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 6

    .line 322
    invoke-static {p1}, Lcom/ss/android/vesdk/VEFileUtils;->isAndroidUriPath(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 323
    sget-object p0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "meizu"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 344
    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_62

    :cond_16
    const/4 v0, 0x0

    if-nez p0, :cond_21

    .line 349
    const-string p0, "TEImageFactory"

    const-string p1, "contentResolver should not be null after Android Q"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 352
    :cond_21
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 355
    :try_start_25
    const-string v1, "r"

    invoke-virtual {p0, p1, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_52

    if-nez p0, :cond_38

    if-eqz p0, :cond_37

    .line 367
    :try_start_2f
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_33

    return-object v0

    :catch_33
    move-exception p0

    .line 369
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_37
    return-object v0

    .line 359
    :cond_38
    :try_start_38
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {p1, v1, p2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_46
    .catchall {:try_start_38 .. :try_end_46} :catchall_50

    .line 367
    :try_start_46
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_4a

    goto :goto_4e

    :catch_4a
    move-exception p0

    .line 369
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4e
    move-object p0, p1

    goto :goto_62

    :catchall_50
    move-exception p1

    goto :goto_54

    :catchall_52
    move-exception p1

    move-object p0, v0

    .line 362
    :goto_54
    :try_start_54
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_63

    if-eqz p0, :cond_61

    .line 367
    :try_start_59
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_5d

    goto :goto_61

    :catch_5d
    move-exception p0

    .line 369
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_61
    :goto_61
    move-object p0, v0

    :goto_62
    return-object p0

    :catchall_63
    move-exception p1

    if-eqz p0, :cond_6e

    .line 367
    :try_start_66
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_6a

    goto :goto_6e

    :catch_6a
    move-exception p0

    .line 369
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 372
    :cond_6e
    :goto_6e
    throw p1
.end method

.method public static getImageColorSpace(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 109
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 110
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 111
    invoke-static {p0, p1, v0}, Lcom/ss/android/ttve/nativePort/TEImageFactory;->decodeFileCompat(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 112
    iget-object p0, v0, Landroid/graphics/BitmapFactory$Options;->outColorSpace:Landroid/graphics/ColorSpace;

    if-eqz p0, :cond_14

    .line 113
    invoke-virtual {p0}, Landroid/graphics/ColorSpace;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 115
    :cond_14
    const-string p0, "Unknown"

    return-object p0
.end method

.method public static getImageInfo(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/ss/android/ttve/nativePort/TEImageFactory$ImageInfo;
    .registers 7

    .line 79
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 80
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 81
    invoke-static {p0, p1, v0}, Lcom/ss/android/ttve/nativePort/TEImageFactory;->decodeFileCompat(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 82
    new-instance p0, Lcom/ss/android/ttve/nativePort/TEImageFactory$ImageInfo;

    invoke-direct {p0}, Lcom/ss/android/ttve/nativePort/TEImageFactory$ImageInfo;-><init>()V

    .line 83
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v2, p0, Lcom/ss/android/ttve/nativePort/TEImageFactory$ImageInfo;->width:I

    .line 84
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v2, p0, Lcom/ss/android/ttve/nativePort/TEImageFactory$ImageInfo;->height:I

    .line 85
    iget-object v0, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    iput-object v0, p0, Lcom/ss/android/ttve/nativePort/TEImageFactory$ImageInfo;->mimeType:Ljava/lang/String;

    const/16 v0, 0x2e

    .line 86
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v3, 0x0

    if-ltz v2, :cond_36

    add-int/2addr v2, v1

    .line 87
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_36

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_37

    :cond_36
    move-object p1, v3

    .line 90
    :goto_37
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/TEImageFactory$ImageInfo;->mimeType:Ljava/lang/String;

    if-eqz v0, :cond_4f

    if-eqz p1, :cond_4f

    const-string v0, "mpg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    const-string v0, "mpeg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4f

    .line 91
    :cond_4d
    iput-object v3, p0, Lcom/ss/android/ttve/nativePort/TEImageFactory$ImageInfo;->mimeType:Ljava/lang/String;

    :cond_4f
    return-object p0
.end method

.method public static getRotation(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .registers 5

    .line 247
    invoke-static {p1}, Lcom/ss/android/vesdk/VEFileUtils;->isAndroidUriPath(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_14

    .line 249
    :try_start_8
    new-instance p0, Landroid/media/ExifInterface;

    invoke-direct {p0, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_f

    move-object v2, p0

    goto :goto_5e

    :catch_f
    move-exception p0

    .line 251
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5e

    :cond_14
    if-nez p0, :cond_1e

    .line 257
    const-string p0, "TEImageFactory"

    const-string p1, "contentResolver should not be null after Android Q"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 260
    :cond_1e
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 263
    :try_start_22
    const-string v0, "r"

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_28} :catch_4f
    .catchall {:try_start_22 .. :try_end_28} :catchall_4d

    if-nez p0, :cond_35

    if-eqz p0, :cond_34

    .line 276
    :try_start_2c
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_30

    return v1

    :catch_30
    move-exception p0

    .line 278
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_34
    return v1

    .line 268
    :cond_35
    :try_start_35
    new-instance p1, Landroid/media/ExifInterface;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/media/ExifInterface;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3e} :catch_4b
    .catchall {:try_start_35 .. :try_end_3e} :catchall_48

    .line 276
    :try_start_3e
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    goto :goto_46

    :catch_42
    move-exception p0

    .line 278
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_46
    move-object v2, p1

    goto :goto_5e

    :catchall_48
    move-exception p1

    move-object v2, p0

    goto :goto_7b

    :catch_4b
    move-exception p1

    goto :goto_51

    :catchall_4d
    move-exception p1

    goto :goto_7b

    :catch_4f
    move-exception p1

    move-object p0, v2

    .line 271
    :goto_51
    :try_start_51
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_48

    if-eqz p0, :cond_5e

    .line 276
    :try_start_56
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_5a

    goto :goto_5e

    :catch_5a
    move-exception p0

    .line 278
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5e
    :goto_5e
    if-eqz v2, :cond_7a

    .line 286
    const-string p0, "Orientation"

    invoke-virtual {v2, p0, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x3

    if-eq p0, p1, :cond_77

    const/4 p1, 0x6

    if-eq p0, p1, :cond_74

    const/16 p1, 0x8

    if-eq p0, p1, :cond_71

    return v1

    :cond_71
    const/16 p0, 0x10e

    return p0

    :cond_74
    const/16 p0, 0x5a

    return p0

    :cond_77
    const/16 p0, 0xb4

    return p0

    :cond_7a
    return v1

    :goto_7b
    if-eqz v2, :cond_85

    .line 276
    :try_start_7d
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_81

    goto :goto_85

    :catch_81
    move-exception p0

    .line 278
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 281
    :cond_85
    :goto_85
    throw p1
.end method

.method public static recycleBitmap(Landroid/graphics/Bitmap;)V
    .registers 2

    if-eqz p0, :cond_b

    .line 306
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_b

    .line 307
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_b
    return-void
.end method

.method public static writeFrame2file([BIIIILjava/lang/String;)I
    .registers 7

    .line 127
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 128
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 129
    invoke-virtual {p1, p0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 130
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "writeFrameData2JPGFile path "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "TEImageFactory"

    invoke-static {p2, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p5

    if-eqz p5, :cond_31

    .line 133
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_31
    const/4 p5, 0x0

    .line 137
    :try_start_32
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    .line 138
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_3a} :catch_76
    .catchall {:try_start_32 .. :try_end_3a} :catchall_74

    const/4 p0, 0x1

    if-ne p3, p0, :cond_49

    .line 140
    :try_start_3d
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, p0, p4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_65

    :catchall_43
    move-exception p0

    move-object p5, v0

    goto :goto_84

    :catch_46
    move-exception p0

    move-object p5, v0

    goto :goto_77

    :cond_49
    if-nez p3, :cond_51

    .line 142
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, p0, p4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_65

    .line 144
    :cond_51
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "writeFrameData2JPGFile error type = "

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :goto_65
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_68} :catch_46
    .catchall {:try_start_3d .. :try_end_68} :catchall_43

    .line 150
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 153
    :try_start_6b
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6e} :catch_6f

    goto :goto_82

    :catch_6f
    move-exception p0

    .line 156
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_82

    :catchall_74
    move-exception p0

    goto :goto_84

    :catch_76
    move-exception p0

    .line 148
    :goto_77
    :try_start_77
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7a
    .catchall {:try_start_77 .. :try_end_7a} :catchall_74

    .line 150
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    if-eqz p5, :cond_82

    .line 153
    :try_start_7f
    invoke-virtual {p5}, Ljava/io/FileOutputStream;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_6f

    :cond_82
    :goto_82
    const/4 p0, 0x0

    return p0

    .line 150
    :goto_84
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    if-eqz p5, :cond_91

    .line 153
    :try_start_89
    invoke-virtual {p5}, Ljava/io/FileOutputStream;->close()V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8c} :catch_8d

    goto :goto_91

    :catch_8d
    move-exception p1

    .line 156
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 158
    :cond_91
    :goto_91
    throw p0
.end method
