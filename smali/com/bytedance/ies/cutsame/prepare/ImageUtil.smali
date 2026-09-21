.class public final Lcom/bytedance/ies/cutsame/prepare/ImageUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEGREE_180:I = 0xb4

.field private static final DEGREE_270:I = 0x10e

.field private static final DEGREE_90:I = 0x5a

.field public static final INSTANCE:Lcom/bytedance/ies/cutsame/prepare/ImageUtil;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/bytedance/ies/cutsame/prepare/ImageUtil;

    invoke-direct {v0}, Lcom/bytedance/ies/cutsame/prepare/ImageUtil;-><init>()V

    sput-object v0, Lcom/bytedance/ies/cutsame/prepare/ImageUtil;->INSTANCE:Lcom/bytedance/ies/cutsame/prepare/ImageUtil;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final calcSampleSize(III)I
    .registers 4

    .line 65
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/4 p1, 0x1

    .line 66
    :goto_5
    div-int p2, p0, p1

    if-le p2, p3, :cond_c

    shl-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_c
    return p1
.end method

.method public static synthetic fixImageRotationAndLimit$default(Lcom/bytedance/ies/cutsame/prepare/ImageUtil;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Lkotlin/Pair;
    .registers 7

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_6

    const/16 p4, 0x780

    .line 24
    :cond_6
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bytedance/ies/cutsame/prepare/ImageUtil;->fixImageRotationAndLimit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method private final getExifOrientation(Landroid/content/Context;Ljava/lang/String;)I
    .registers 5

    .line 85
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    goto :goto_10

    .line 89
    :cond_8
    sget-object p0, Lcom/bytedance/ies/cutsame/util/FileUtils;->INSTANCE:Lcom/bytedance/ies/cutsame/util/FileUtils;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/cutsame/util/FileUtils;->isFileExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    :goto_10
    return v0

    .line 93
    :cond_11
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/cutsame/util/FileUtils;->getExifInterface(Landroid/content/Context;Ljava/lang/String;)Landroid/media/ExifInterface;

    move-result-object p0

    const/4 p1, -0x1

    if-nez p0, :cond_19

    goto :goto_1f

    .line 96
    :cond_19
    const-string p2, "Orientation"

    invoke-virtual {p0, p2, p1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p1

    :goto_1f
    const/4 p0, 0x3

    if-eq p1, p0, :cond_30

    const/4 p0, 0x6

    if-eq p1, p0, :cond_2d

    const/16 p0, 0x8

    if-eq p1, p0, :cond_2a

    return v0

    :cond_2a
    const/16 p0, 0x10e

    return p0

    :cond_2d
    const/16 p0, 0x5a

    return p0

    :cond_30
    const/16 p0, 0xb4

    return p0
.end method

.method private final resizeBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 11

    .line 73
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 74
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float p0, p3

    .line 76
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p0, p3

    .line 77
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p2, p2

    .line 78
    invoke-virtual {v5, p2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 79
    invoke-virtual {v5, p0, p0}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    move-object v0, p1

    .line 80
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    const-string p1, "createBitmap(bitmap, 0, \u2026th, height, matrix, true)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final fixImageRotationAndLimit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lkotlin/Pair;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "srcImage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dstImage"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/bytedance/ies/cutsame/prepare/ImageUtil;->getExifOrientation(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 31
    invoke-static {p1, p2}, Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil;->getImageType(Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil$ImageType;

    move-result-object v1

    .line 32
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    .line 33
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 34
    sget-object v3, Lcom/bytedance/ies/cutsame/util/FileUtils;->INSTANCE:Lcom/bytedance/ies/cutsame/util/FileUtils;

    invoke-virtual {v3, p1, p2, v2}, Lcom/bytedance/ies/cutsame/util/FileUtils;->decodeOptions(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    if-nez v0, :cond_43

    .line 35
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-ge v4, p4, :cond_43

    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ge v4, p4, :cond_43

    .line 36
    invoke-virtual {v3, p2, p3}, Lcom/bytedance/ies/cutsame/util/FileUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    new-instance p0, Lkotlin/Pair;

    iget p1, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget p2, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 40
    :cond_43
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {p0, v4, v5, p4}, Lcom/bytedance/ies/cutsame/prepare/ImageUtil;->calcSampleSize(III)I

    move-result v4

    const/4 v5, 0x0

    .line 41
    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 42
    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 43
    invoke-virtual {v3, p1, p2, v2}, Lcom/bytedance/ies/cutsame/util/FileUtils;->decodeOptions(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_68

    new-instance p0, Lkotlin/Pair;

    .line 44
    iget p1, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 45
    iget p2, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 43
    invoke-direct {p0, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 49
    :cond_68
    invoke-direct {p0, p1, v0, p4}, Lcom/bytedance/ies/cutsame/prepare/ImageUtil;->resizeBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 50
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    .line 51
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    .line 52
    new-instance p4, Ljava/io/FileOutputStream;

    invoke-direct {p4, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 53
    :try_start_79
    sget-object p3, Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil$ImageType;->JPG:Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil$ImageType;

    const/16 v0, 0x5a

    if-ne v1, p3, :cond_87

    .line 54
    sget-object p3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, p3, v0, p4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_8c

    :catchall_85
    move-exception p0

    goto :goto_a0

    .line 56
    :cond_87
    sget-object p3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, p3, v0, p4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 58
    :goto_8c
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_8e
    .catchall {:try_start_79 .. :try_end_8e} :catchall_85

    const/4 p0, 0x0

    .line 52
    invoke-static {p4, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 60
    new-instance p0, Lkotlin/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 52
    :goto_a0
    :try_start_a0
    throw p0
    :try_end_a1
    .catchall {:try_start_a0 .. :try_end_a1} :catchall_a1

    :catchall_a1
    move-exception p1

    invoke-static {p4, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method
