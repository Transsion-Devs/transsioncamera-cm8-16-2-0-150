.class final Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailGlideDecoder;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic $r8$lambda$TI7xgz0tENIcJQ2kz0UsKMZf_gQ(Landroid/content/Context;[BI)Landroid/graphics/Bitmap;
    .registers 3

    .line 28
    invoke-static {p0, p1, p2}, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailGlideDecoder;->decodeWithGlide(Landroid/content/Context;[BI)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static computeJpegDecodeSizes([BI)[I
    .registers 10

    .line 82
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 83
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v2, 0x0

    .line 84
    array-length v3, p0

    invoke-static {p0, v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 85
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 86
    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez p1, :cond_54

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gtz v0, :cond_1a

    goto :goto_54

    :cond_1a
    int-to-double v2, p1

    int-to-double p0, p0

    div-double p0, v2, p0

    .line 91
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    .line 92
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p0

    const/4 p1, 0x4

    if-lt p0, p1, :cond_31

    ushr-int/lit8 p1, p0, 0x1

    goto :goto_32

    :cond_31
    move p1, p0

    :goto_32
    int-to-double v4, p0

    div-double v6, v2, v4

    .line 97
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int p0, v6

    int-to-double v0, v0

    div-double v4, v0, v4

    .line 98
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    int-to-double v5, p1

    div-double/2addr v2, v5

    .line 99
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p1, v2

    div-double/2addr v0, v5

    .line 100
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 101
    filled-new-array {p0, v4, p1, v0}, [I

    move-result-object p0

    return-object p0

    .line 87
    :cond_54
    :goto_54
    filled-new-array {p0, p0, p0, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method static decode(Landroid/content/Context;[BI)Landroid/graphics/Bitmap;
    .registers 4

    .line 27
    new-instance v0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailGlideDecoder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailGlideDecoder$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;[BI)V

    invoke-static {v0}, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailGlideDecodeSession;->callRouted(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0
.end method

.method private static decodeWithGlide(Landroid/content/Context;[BI)Landroid/graphics/Bitmap;
    .registers 10

    const/4 v0, 0x2

    .line 33
    div-int/2addr p2, v0

    const/4 v1, 0x1

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 34
    invoke-static {p1, p2}, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailGlideDecoder;->computeJpegDecodeSizes([BI)[I

    move-result-object p2

    const/4 v2, 0x0

    .line 35
    aget v2, p2, v2

    .line 36
    aget v3, p2, v1

    .line 37
    aget v0, p2, v0

    const/4 v4, 0x3

    .line 38
    aget p2, p2, v4

    .line 39
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "decode-glide-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 41
    :try_start_31
    sget-object v4, Lcom/bumptech/glide/load/DecodeFormat;->PREFER_ARGB_8888:Lcom/bumptech/glide/load/DecodeFormat;

    invoke-static {v4}, Lcom/bumptech/glide/request/RequestOptions;->formatOf(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v4

    .line 42
    invoke-static {}, Lcom/transsion/camera/utils/BitmapUtils;->isWcgSupportEnabled()Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 43
    sget-object v5, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->PREFERRED_COLOR_SPACE:Lcom/bumptech/glide/load/Option;

    sget-object v6, Lcom/bumptech/glide/load/PreferredColorSpace;->DISPLAY_P3:Lcom/bumptech/glide/load/PreferredColorSpace;

    .line 45
    invoke-static {v5, v6}, Lcom/bumptech/glide/request/RequestOptions;->option(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v5

    .line 44
    invoke-virtual {v4, v5}, Lcom/bumptech/glide/request/BaseRequestOptions;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v4

    check-cast v4, Lcom/bumptech/glide/request/RequestOptions;

    .line 50
    :cond_4b
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    .line 51
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    .line 52
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load([B)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    .line 53
    invoke-virtual {p0, v4}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    .line 54
    invoke-virtual {p0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    sget-object p1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 55
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    .line 56
    invoke-virtual {p0, v0, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->override(II)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    .line 57
    invoke-virtual {p0, v0, p2}, Lcom/bumptech/glide/RequestBuilder;->submit(II)Lcom/bumptech/glide/request/FutureTarget;

    move-result-object p0

    .line 58
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;
    :try_end_79
    .catchall {:try_start_31 .. :try_end_79} :catchall_a3

    if-nez p0, :cond_80

    .line 71
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    const/4 p0, 0x0

    return-object p0

    .line 62
    :cond_80
    :try_start_80
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    if-ne p1, v2, :cond_90

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1
    :try_end_8a
    .catchall {:try_start_80 .. :try_end_8a} :catchall_a3

    if-ne p1, v3, :cond_90

    .line 71
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-object p0

    .line 65
    :cond_90
    :try_start_90
    invoke-static {p0, v2, v3, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eq p1, p0, :cond_9f

    .line 66
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_9f

    .line 67
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_9f
    .catchall {:try_start_90 .. :try_end_9f} :catchall_a3

    .line 71
    :cond_9f
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-object p1

    :catchall_a3
    move-exception p0

    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    .line 72
    throw p0
.end method
