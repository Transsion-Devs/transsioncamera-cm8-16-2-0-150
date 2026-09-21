.class public abstract Lcom/transsion/widgetscore/utils/CoreUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static IS_4D_VIBRATE_OPT_0012_IR:Z

.field public static IS_4D_VIBRATE_OPT_SUPPORT:Z

.field public static IS_4D_VIBRATE_SUPPORT:Z

.field private static OLED_SCREEN_STATE:I

.field private static WATERFALL_SCREEN_STATE:I

.field public static final mOsType:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 54
    const-string v0, "xos"

    const-string v1, "itel"

    const-string v2, "hios"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/widgetscore/utils/CoreUtils;->mOsType:[Ljava/lang/String;

    const/4 v0, -0x1

    .line 64
    sput v0, Lcom/transsion/widgetscore/utils/CoreUtils;->WATERFALL_SCREEN_STATE:I

    .line 70
    sput v0, Lcom/transsion/widgetscore/utils/CoreUtils;->OLED_SCREEN_STATE:I

    .line 544
    const-string v0, "ro.tran_vibrate_ontouch.support"

    invoke-static {v0}, Lcom/transsion/widgetscore/utils/CoreUtils;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/transsion/widgetscore/utils/CoreUtils;->IS_4D_VIBRATE_SUPPORT:Z

    .line 546
    const-string v0, "ro.vendor.tran_vib3_support"

    invoke-static {v0}, Lcom/transsion/widgetscore/utils/CoreUtils;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/transsion/widgetscore/utils/CoreUtils;->IS_4D_VIBRATE_OPT_SUPPORT:Z

    .line 547
    const-string v0, "ro.vendor.tran_0012ir"

    invoke-static {v0}, Lcom/transsion/widgetscore/utils/CoreUtils;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/transsion/widgetscore/utils/CoreUtils;->IS_4D_VIBRATE_OPT_0012_IR:Z

    return-void
.end method

.method public static bitmap2InputStream(Landroid/graphics/Bitmap;)Ljava/io/InputStream;
    .registers 4

    .line 474
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 475
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 476
    new-instance p0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object p0
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .registers 4

    .line 480
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 481
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gt v0, p1, :cond_b

    if-le p0, p2, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x1

    return p0

    :cond_b
    :goto_b
    int-to-float v0, v0

    int-to-float p1, p1

    div-float/2addr v0, p1

    .line 484
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p0, p0

    int-to-float p2, p2

    div-float/2addr p0, p2

    .line 485
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 486
    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static compressBitmap(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;
    .registers 7

    .line 411
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 412
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 413
    invoke-static {p0, p1, p2}, Lcom/transsion/widgetscore/utils/CoreUtils;->drawable2InputStream(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Ljava/io/InputStream;

    move-result-object p0

    .line 414
    invoke-static {p0}, Lcom/transsion/widgetscore/utils/CoreUtils;->inputStreamToByteArray(Ljava/io/InputStream;)[B

    move-result-object p0

    .line 415
    array-length p1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, p1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 416
    invoke-static {v0, p2, p2}, Lcom/transsion/widgetscore/utils/CoreUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p1

    .line 417
    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 418
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 419
    array-length v3, p0

    invoke-static {p0, v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_32

    if-ne p1, v1, :cond_32

    .line 420
    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-ne p1, p2, :cond_2e

    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eq p1, p2, :cond_32

    .line 421
    :cond_2e
    invoke-static {p0, p2, p2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_32
    return-object p0
.end method

.method public static dp2px(Landroid/content/Context;I)I
    .registers 3

    int-to-float p1, p1

    .line 595
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    .line 594
    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public static drawable2Bitmap(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;
    .registers 6

    .line 453
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    .line 454
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-gtz p0, :cond_b

    move p0, p2

    :cond_b
    if-gtz v0, :cond_e

    goto :goto_f

    :cond_e
    move p2, v0

    .line 461
    :goto_f
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 467
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    .line 468
    invoke-virtual {p1, v2, v2, p0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 469
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method public static drawable2InputStream(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Ljava/io/InputStream;
    .registers 3

    .line 448
    invoke-static {p0, p1, p2}, Lcom/transsion/widgetscore/utils/CoreUtils;->drawable2Bitmap(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 449
    invoke-static {p0}, Lcom/transsion/widgetscore/utils/CoreUtils;->bitmap2InputStream(Landroid/graphics/Bitmap;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 6

    .line 613
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 614
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 615
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 616
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 617
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 618
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method public static getHardwareType()I
    .registers 2

    .line 563
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 564
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "mt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x2

    return v0
.end method

.method public static getReflectClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 1

    .line 403
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    .line 405
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getReflectFieldInt(Ljava/lang/String;Ljava/lang/String;)I
    .registers 2

    .line 379
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 380
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x1

    .line 381
    invoke-virtual {p0, p1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const/4 p1, 0x0

    .line 382
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    return p0

    :catch_12
    move-exception p0

    .line 384
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method public static varargs getReflectMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 3

    .line 392
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_b

    const/4 p1, 0x1

    .line 393
    :try_start_5
    invoke-virtual {p0, p1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p1

    goto :goto_d

    :catch_b
    move-exception p1

    const/4 p0, 0x0

    .line 395
    :goto_d
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p0
.end method

.method public static getSystemProperties(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 552
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 553
    const-string v1, "get"

    const-class v2, Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 554
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    return-object p0

    :catch_1d
    move-exception p0

    .line 556
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSystemProperties Exception "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "widgetslib.Utils"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    const-string p0, ""

    return-object p0
.end method

.method public static inputStreamToByteArray(Ljava/io/InputStream;)[B
    .registers 5

    .line 427
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    .line 428
    new-array v1, v1, [B

    .line 431
    :goto_9
    :try_start_9
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_19

    const/4 v3, 0x0

    .line 432
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_14} :catch_17
    .catchall {:try_start_9 .. :try_end_14} :catchall_15

    goto :goto_9

    :catchall_15
    move-exception v1

    goto :goto_31

    :catch_17
    move-exception v1

    goto :goto_25

    .line 438
    :cond_19
    :try_start_19
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 439
    :goto_1c
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1f} :catch_20

    goto :goto_2c

    :catch_20
    move-exception p0

    .line 441
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2c

    .line 435
    :goto_25
    :try_start_25
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_15

    .line 438
    :try_start_28
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_20

    goto :goto_1c

    .line 444
    :goto_2c
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 438
    :goto_31
    :try_start_31
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 439
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_37} :catch_38

    goto :goto_3c

    :catch_38
    move-exception p0

    .line 441
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 443
    :goto_3c
    throw v1
.end method

.method public static is24HourFormat(Landroid/content/Context;)Z
    .registers 1

    .line 492
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isBoldTextAdjustment(Landroid/content/Context;)Z
    .registers 2

    .line 580
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    const/16 v0, 0x12c

    .line 582
    iget p0, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    if-ne p0, v0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public static isDarkMode(Landroid/content/Context;)Z
    .registers 2

    .line 589
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne p0, v0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public static isOLED()Z
    .registers 4

    .line 530
    sget v0, Lcom/transsion/widgetscore/utils/CoreUtils;->OLED_SCREEN_STATE:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1b

    .line 531
    const-string v0, "ro.transsion.lcd.type"

    invoke-static {v0}, Lcom/transsion/widgetscore/utils/CoreUtils;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 533
    sput v3, Lcom/transsion/widgetscore/utils/CoreUtils;->OLED_SCREEN_STATE:I

    return v3

    .line 536
    :cond_18
    sput v2, Lcom/transsion/widgetscore/utils/CoreUtils;->OLED_SCREEN_STATE:I

    return v2

    :cond_1b
    if-ne v0, v3, :cond_1e

    return v3

    :cond_1e
    return v2
.end method

.method public static isRtl()Z
    .registers 2

    .line 496
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 497
    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    return v1

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public static isRtlDigit()Z
    .registers 4

    .line 501
    invoke-static {}, Lcom/transsion/widgetscore/utils/CoreUtils;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%d"

    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    return v1

    :cond_22
    const/4 v0, 0x0

    return v0
.end method

.method public static isWaterfallScreen(Landroid/content/Context;)Z
    .registers 7

    const/4 v0, 0x0

    .line 506
    :try_start_1
    sget v1, Lcom/transsion/widgetscore/utils/CoreUtils;->WATERFALL_SCREEN_STATE:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v1, v2, :cond_2b

    .line 508
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "zzzzz_tran_display_edge_size"

    const-string v4, "dimen"

    const-string v5, "android"

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_22

    .line 510
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_23

    :catch_20
    move-exception p0

    goto :goto_2f

    :cond_22
    move p0, v0

    :goto_23
    if-lez p0, :cond_28

    .line 513
    sput v3, Lcom/transsion/widgetscore/utils/CoreUtils;->WATERFALL_SCREEN_STATE:I

    return v3

    .line 516
    :cond_28
    sput v0, Lcom/transsion/widgetscore/utils/CoreUtils;->WATERFALL_SCREEN_STATE:I
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2a} :catch_20

    return v0

    :cond_2b
    if-ne v1, v3, :cond_2e

    return v3

    :cond_2e
    return v0

    .line 523
    :goto_2f
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public static measureTextHeight(Landroid/graphics/Paint;)F
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 574
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p0

    .line 575
    iget v0, p0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget p0, p0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v0, p0

    const/high16 p0, 0x3f000000    # 0.5f

    mul-float/2addr v0, p0

    return v0
.end method

.method public static setMenuFontWeight(Landroid/view/MenuItem;Ljava/lang/String;)V
    .registers 6

    if-eqz p0, :cond_35

    .line 694
    invoke-interface {p0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_d

    goto :goto_35

    .line 698
    :cond_d
    new-instance v0, Landroid/text/SpannableString;

    invoke-interface {p0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 699
    new-instance v1, Landroid/text/style/TypefaceSpan;

    invoke-direct {v1, p1}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    .line 702
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/16 v1, 0x226

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    .line 703
    new-instance v1, Landroid/text/style/TypefaceSpan;

    invoke-direct {v1, p1}, Landroid/text/style/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result p1

    const/16 v3, 0x21

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 707
    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_35
    :goto_35
    return-void
.end method

.method public static setMenuIconEnable(Landroid/view/Menu;Z)V
    .registers 5

    .line 634
    :try_start_0
    const-string v0, "com.android.internal.view.menu.MenuBuilder"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 635
    const-string v1, "setOptionalIconsVisible"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    .line 636
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 638
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_22

    return-void

    :catch_22
    move-exception p0

    .line 640
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static setMenuItemSelected(Landroid/view/Menu;II)V
    .registers 4

    const/4 v0, -0x1

    .line 680
    invoke-static {p0, p1, p2, v0, v0}, Lcom/transsion/widgetscore/utils/CoreUtils;->setMenuItemSelected(Landroid/view/Menu;IIII)V

    return-void
.end method

.method public static setMenuItemSelected(Landroid/view/Menu;IIII)V
    .registers 9

    if-eqz p0, :cond_38

    if-gtz p1, :cond_5

    goto :goto_38

    :cond_5
    if-lez p3, :cond_31

    if-gtz p4, :cond_a

    goto :goto_31

    :cond_a
    const/4 v0, 0x1

    .line 661
    invoke-static {p0, v0}, Lcom/transsion/widgetscore/utils/CoreUtils;->setMenuIconEnable(Landroid/view/Menu;Z)V

    .line 663
    invoke-interface {p0}, Landroid/view/Menu;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_13
    if-ge v1, v0, :cond_38

    .line 665
    invoke-interface {p0, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 666
    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    if-ne v3, p1, :cond_2b

    .line 667
    invoke-interface {v2, p3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 670
    const-string v3, "sans-serif-medium"

    invoke-static {v2, v3}, Lcom/transsion/widgetscore/utils/CoreUtils;->setMenuFontWeight(Landroid/view/MenuItem;Ljava/lang/String;)V

    .line 671
    invoke-static {v2, p2}, Lcom/transsion/widgetscore/utils/CoreUtils;->setMenuItemTitleColor(Landroid/view/MenuItem;I)V

    goto :goto_2e

    .line 673
    :cond_2b
    invoke-interface {v2, p4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :goto_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 659
    :cond_31
    :goto_31
    invoke-interface {p0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/transsion/widgetscore/utils/CoreUtils;->setMenuItemTitleColor(Landroid/view/MenuItem;I)V

    :cond_38
    :goto_38
    return-void
.end method

.method public static setMenuItemTitleColor(Landroid/view/MenuItem;I)V
    .registers 6

    if-eqz p0, :cond_28

    .line 684
    invoke-interface {p0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_d

    goto :goto_28

    .line 688
    :cond_d
    new-instance v0, Landroid/text/SpannableString;

    invoke-interface {p0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 689
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result p1

    const/16 v2, 0x21

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 690
    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_28
    :goto_28
    return-void
.end method

.method public static sp2px(I)I
    .registers 3

    int-to-float p0, p0

    .line 600
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x2

    .line 599
    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method
