.class public final Lcom/imaging/libwatermark/ai_art/AIArtWatermarkHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/imaging/libwatermark/ai_art/IAIArtWatermarkHelper;


# instance fields
.field private final info:Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;


# direct methods
.method public constructor <init>(Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;)V
    .registers 3

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkHelper;->info:Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;

    return-void
.end method


# virtual methods
.method public generate(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "image"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v2, v0, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkHelper;->info:Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;

    invoke-virtual {v2}, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;->getProWatermarkOn()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_8b

    .line 50
    new-instance v2, Lcom/imaging/libwatermark/ai_art/ParamWrapper;

    iget-object v4, v0, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkHelper;->info:Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;

    invoke-direct {v2, v1, v4}, Lcom/imaging/libwatermark/ai_art/ParamWrapper;-><init>(Landroid/graphics/Bitmap;Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;)V

    .line 51
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v2}, Lcom/imaging/libwatermark/ai_art/ParamWrapper;->getWatermarkHeight()I

    move-result v6

    add-int/2addr v5, v6

    .line 101
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 103
    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    const-string v4, "createBitmap(width, height, config)"

    invoke-static {v13, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v5, 0x0

    .line 53
    invoke-virtual {v4, v1, v3, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 54
    new-instance v7, Lcom/imaging/libwatermark/painters/WatermarkPainter;

    invoke-static {}, Lcom/gallery20/base/base_app/BaseSdkKt;->getApp()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v0, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkHelper;->info:Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;

    invoke-virtual {v4}, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;->getRealDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v3, v4}, Lcom/imaging/libwatermark/painters/WatermarkPainter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 55
    new-instance v14, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;

    iget-object v3, v0, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkHelper;->info:Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;

    invoke-virtual {v3}, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;->getShowDeviceName()Ljava/lang/String;

    move-result-object v16

    iget-object v3, v0, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkHelper;->info:Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;

    invoke-virtual {v3}, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;->getRealDeviceName()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x3c

    const/16 v23, 0x0

    const/4 v15, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v14 .. v23}, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 56
    iget-object v0, v0, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkHelper;->info:Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;

    invoke-virtual {v0}, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;->getItemName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->setSpecialItemName(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v2}, Lcom/imaging/libwatermark/ai_art/ParamWrapper;->getWatermarkWidth()I

    move-result v9

    invoke-virtual {v2}, Lcom/imaging/libwatermark/ai_art/ParamWrapper;->getWatermarkHeight()I

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    add-int v10, v0, v3

    invoke-virtual {v2}, Lcom/imaging/libwatermark/ai_art/ParamWrapper;->isLandscape()Z

    move-result v11

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    move-object v8, v14

    invoke-virtual/range {v7 .. v13}, Lcom/imaging/libwatermark/painters/WatermarkPainter;->drawWatermark(Lcom/imaging/libwatermark/data/WatermarkPaintInfo;IIZILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    return-object v13

    .line 62
    :cond_8b
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 63
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 64
    sget v5, Lcom/imaging/libwatermark/R$drawable;->camon_aigc_default:I

    invoke-static {v5}, Lcom/gallery20/base/CommonExtKt;->toBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 65
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v1, v6

    .line 66
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v1

    .line 67
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v1

    .line 68
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    const/4 v10, 0x0

    invoke-direct {v1, v10, v10, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v9, v3

    sub-float/2addr v9, v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float/2addr v7, v10

    invoke-direct {v8, v3, v9, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v4, v5, v1, v8, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 69
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 70
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public generate([B[B)[B
    .registers 8

    const-string v0, "jpeg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exifJpeg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-static {p1}, Lcom/gallery20/base/CommonExtKt;->toBitmap([B)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 75
    invoke-virtual {p0, p1}, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkHelper;->generate(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 76
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/imaging/libwatermark/ai_art/AIArtConstantKt;->getTEMP_DIR()Ljava/io/File;

    move-result-object v2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_2c

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_2c
    new-instance v2, Ljava/io/FileOutputStream;

    .line 77
    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 78
    :try_start_31
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_e5

    const/4 v3, 0x0

    .line 77
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 80
    new-instance v2, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {v2, v1}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/File;)V

    .line 81
    new-instance v3, Landroidx/exifinterface/media/ExifInterface;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v4}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3, v2}, Lcom/imaging/libwatermark/ai_art/ExifExtKt;->copyTo(Landroidx/exifinterface/media/ExifInterface;Landroidx/exifinterface/media/ExifInterface;)V

    .line 82
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v3, "ImageWidth"

    invoke-virtual {v2, v3, p2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v3, "ImageLength"

    invoke-virtual {v2, v3, p2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object p2, p0, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkHelper;->info:Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;

    invoke-virtual {p2}, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;->getProWatermarkOn()Z

    move-result p2

    if-eqz p2, :cond_b5

    .line 85
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1-"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x78

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "-1-0-{}-0-12#"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkHelper;->info:Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;

    invoke-virtual {p0}, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;->getItemName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/imaging/libwatermark/ai_art/WatermarkExifBeanKt;->newWatermarkExifBean(Ljava/lang/String;)Lcom/imaging/libwatermark/ai_art/WatermarkExifBean;

    move-result-object p0

    invoke-static {p0}, Lcom/gallery20/base/CommonExtKt;->toGson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gallery20/base/CommonExtKt;->toBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x23

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "UserComment"

    invoke-virtual {v2, p2, p0}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_b5
    const-string p0, "SceneType"

    const-string p2, "30"

    invoke-virtual {v2, p0, p2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface;->saveAttributes()V

    .line 90
    filled-new-array {p1, v0}, [Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 105
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_cd
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_dd

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    .line 90
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_cd

    .line 92
    :cond_dd
    invoke-static {v1}, Lkotlin/io/FilesKt;->readBytes(Ljava/io/File;)[B

    move-result-object p0

    .line 93
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    return-object p0

    :catchall_e5
    move-exception p0

    .line 77
    :try_start_e6
    throw p0
    :try_end_e7
    .catchall {:try_start_e6 .. :try_end_e7} :catchall_e7

    :catchall_e7
    move-exception p1

    invoke-static {v2, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public generateWatermark(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 16

    const-string v0, "image"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkHelper;->info:Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;

    invoke-virtual {v0}, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;->getProWatermarkOn()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 40
    new-instance v0, Lcom/imaging/libwatermark/ai_art/ParamWrapper;

    iget-object v1, p0, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkHelper;->info:Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;

    invoke-direct {v0, p1, v1}, Lcom/imaging/libwatermark/ai_art/ParamWrapper;-><init>(Landroid/graphics/Bitmap;Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;)V

    .line 41
    new-instance v2, Lcom/imaging/libwatermark/painters/WatermarkPainter;

    invoke-static {}, Lcom/gallery20/base/base_app/BaseSdkKt;->getApp()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkHelper;->info:Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;

    invoke-virtual {v3}, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;->getRealDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/imaging/libwatermark/painters/WatermarkPainter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    new-instance v3, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;

    iget-object v1, p0, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkHelper;->info:Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;

    invoke-virtual {v1}, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;->getShowDeviceName()Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkHelper;->info:Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;

    invoke-virtual {v1}, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;->getRealDeviceName()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x3c

    const/4 v13, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v3

    invoke-direct/range {v4 .. v13}, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 43
    iget-object p0, p0, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkHelper;->info:Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;

    invoke-virtual {p0}, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;->getItemName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->setSpecialItemName(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0}, Lcom/imaging/libwatermark/ai_art/ParamWrapper;->getWatermarkWidth()I

    move-result v4

    invoke-virtual {v0}, Lcom/imaging/libwatermark/ai_art/ParamWrapper;->getWatermarkHeight()I

    move-result v5

    invoke-virtual {v0}, Lcom/imaging/libwatermark/ai_art/ParamWrapper;->isLandscape()Z

    move-result v6

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/imaging/libwatermark/painters/WatermarkPainter;->drawWatermark(Lcom/imaging/libwatermark/data/WatermarkPaintInfo;IIZILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_5a

    return-object p1

    :cond_5a
    return-object p0

    .line 39
    :cond_5b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "don\'t support this when pro watermark off"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
