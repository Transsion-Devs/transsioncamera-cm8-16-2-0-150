.class public final Lcn/everphoto/sdk/extension/BitmapProcessor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final INSTANCE:Lcn/everphoto/sdk/extension/BitmapProcessor;

.field private static final QUALITY:I = 0x64

.field private static final TAG:Ljava/lang/String; = "BitmapProcessor"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 12
    const-string v0, "BitmapProcessor"

    new-instance v1, Lcn/everphoto/sdk/extension/BitmapProcessor;

    invoke-direct {v1}, Lcn/everphoto/sdk/extension/BitmapProcessor;-><init>()V

    sput-object v1, Lcn/everphoto/sdk/extension/BitmapProcessor;->INSTANCE:Lcn/everphoto/sdk/extension/BitmapProcessor;

    .line 20
    :try_start_9
    const-string v1, "ec_jpeg_decoder"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 21
    const-string v1, "load ep-coder.so success"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_9 .. :try_end_13} :catch_14

    return-void

    .line 23
    :catch_14
    const-string v1, "load ep-coder.so fail!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final native decode(Ljava/lang/String;I)Lcn/everphoto/sdk/extension/BitmapInfo;
.end method

.method private final handlePreferConfig(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 7

    if-eqz p1, :cond_5b

    .line 72
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq p0, v0, :cond_5b

    .line 73
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "originBitmap.config: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "BitmapProcessor"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 75
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, p0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 76
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 77
    iput-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 p0, 0x0

    .line 78
    invoke-static {p1, p0, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_5a

    .line 80
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "decodeBitmap.config: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5a
    return-object p0

    :cond_5b
    return-object p1
.end method


# virtual methods
.method public final calculateSample(III)I
    .registers 4

    if-le p2, p1, :cond_3

    move p1, p2

    :cond_3
    if-le p1, p3, :cond_f

    int-to-float p0, p1

    int-to-float p1, p3

    div-float/2addr p0, p1

    float-to-double p0, p0

    .line 119
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0

    :cond_f
    const/4 p0, 0x1

    return p0
.end method

.method public final getBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 12

    const-string v0, "filePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 50
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    .line 51
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 52
    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 55
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 56
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 59
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "originWidth: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", originHeight: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 57
    const-string v6, "BitmapProcessor"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "decodeFile cost: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v0

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 63
    invoke-virtual {p0, v3, v4, p2}, Lcn/everphoto/sdk/extension/BitmapProcessor;->calculateSample(III)I

    move-result p2

    iput p2, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 64
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object p2, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 65
    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 66
    invoke-direct {p0, p1, v2}, Lcn/everphoto/sdk/extension/BitmapProcessor;->handlePreferConfig(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public final getBitmapInfo(Ljava/lang/String;III)Lcn/everphoto/sdk/extension/BitmapInfo;
    .registers 8

    const-string v0, "filePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0, p2, p3, p4}, Lcn/everphoto/sdk/extension/BitmapProcessor;->calculateSample(III)I

    move-result p2

    .line 96
    :try_start_9
    const-string p3, "jpg"

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, p3, v2, v1, v0}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1f

    const-string p3, "jpeg"

    invoke-static {p1, p3, v2, v1, v0}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_20

    goto :goto_1f

    :catch_1d
    move-exception p2

    goto :goto_2b

    :cond_1f
    :goto_1f
    const/4 v2, 0x1

    :cond_20
    const/16 p3, 0x8

    if-gt p2, p3, :cond_2e

    if-eqz v2, :cond_2e

    .line 98
    invoke-direct {p0, p1, p4}, Lcn/everphoto/sdk/extension/BitmapProcessor;->decode(Ljava/lang/String;I)Lcn/everphoto/sdk/extension/BitmapInfo;

    move-result-object p0
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_2a} :catch_1d

    return-object p0

    .line 101
    :goto_2b
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 103
    :cond_2e
    invoke-virtual {p0, p1, p4}, Lcn/everphoto/sdk/extension/BitmapProcessor;->getBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 104
    new-instance p2, Lcn/everphoto/sdk/extension/BitmapInfo;

    invoke-direct {p2}, Lcn/everphoto/sdk/extension/BitmapInfo;-><init>()V

    if-eqz p1, :cond_5b

    .line 105
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p3

    if-nez p3, :cond_5b

    .line 106
    invoke-virtual {p0, p1}, Lcn/everphoto/sdk/extension/BitmapProcessor;->getBytes(Landroid/graphics/Bitmap;)[B

    move-result-object p0

    invoke-virtual {p2, p0}, Lcn/everphoto/sdk/extension/BitmapInfo;->setBuffer([B)V

    .line 107
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    invoke-virtual {p2, p0}, Lcn/everphoto/sdk/extension/BitmapInfo;->setWidth(I)V

    .line 108
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    invoke-virtual {p2, p0}, Lcn/everphoto/sdk/extension/BitmapInfo;->setHeight(I)V

    .line 109
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result p0

    invoke-virtual {p2, p0}, Lcn/everphoto/sdk/extension/BitmapInfo;->setStride(I)V

    :cond_5b
    return-object p2
.end method

.method public final getBytes(Landroid/graphics/Bitmap;)[B
    .registers 2

    const-string p0, "bitmap"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p0

    .line 41
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 42
    invoke-virtual {p1, p0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 43
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    const-string p1, "buf.array()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
