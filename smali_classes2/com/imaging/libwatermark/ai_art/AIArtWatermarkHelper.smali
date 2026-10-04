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

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkHelper;->info:Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;

    return-void
.end method


# virtual methods
.method public generate(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "image"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-object v2, v0, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkHelper;->info:Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;

    invoke-virtual {v2}, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;->getProWatermarkOn()Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 53
    new-instance v2, Lcom/imaging/libwatermark/ai_art/ParamWrapper;

    iget-object v3, v0, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkHelper;->info:Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;

    invoke-direct {v2, v1, v3}, Lcom/imaging/libwatermark/ai_art/ParamWrapper;-><init>(Landroid/graphics/Bitmap;Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;)V

    .line 54
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v2}, Lcom/imaging/libwatermark/ai_art/ParamWrapper;->getWatermarkHeight()I

    move-result v5

    add-int/2addr v4, v5

    .line 100
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 102
    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    const-string v3, "createBitmap(width, height, config)"

    invoke-static {v12, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 56
    invoke-virtual {v3, v1, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 57
    new-instance v6, Lcom/imaging/libwatermark/painters/WatermarkPainter;

    invoke-static {}, Lcom/gallery20/base/base_app/BaseSdkKt;->getApp()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v0, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkHelper;->info:Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;

    invoke-virtual {v4}, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;->getRealDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v3, v4}, Lcom/imaging/libwatermark/painters/WatermarkPainter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 58
    new-instance v7, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;

    iget-object v3, v0, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkHelper;->info:Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;

    invoke-virtual {v3}, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;->getShowDeviceName()Ljava/lang/String;

    move-result-object v15

    iget-object v3, v0, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkHelper;->info:Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;

    invoke-virtual {v3}, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;->getRealDeviceName()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x3c

    const/16 v22, 0x0

    const/4 v14, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v13, v7

    invoke-direct/range {v13 .. v22}, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 59
    iget-object v0, v0, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkHelper;->info:Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;

    invoke-virtual {v0}, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;->getItemName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->setSpecialItemName(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v2}, Lcom/imaging/libwatermark/ai_art/ParamWrapper;->getWatermarkWidth()I

    move-result v8

    invoke-virtual {v2}, Lcom/imaging/libwatermark/ai_art/ParamWrapper;->getWatermarkHeight()I

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    add-int v9, v0, v3

    invoke-virtual {v2}, Lcom/imaging/libwatermark/ai_art/ParamWrapper;->isLandscape()Z

    move-result v10

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-virtual/range {v6 .. v12}, Lcom/imaging/libwatermark/painters/WatermarkPainter;->drawWatermark(Lcom/imaging/libwatermark/data/WatermarkPaintInfo;IIZILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    return-object v12

    .line 65
    :cond_8b
    new-instance v2, Lcom/imaging/libwatermark/WatermarkParam;

    invoke-direct {v2}, Lcom/imaging/libwatermark/WatermarkParam;-><init>()V

    .line 66
    iget-object v0, v0, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkHelper;->info:Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;

    invoke-virtual {v0}, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;->getItemName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/imaging/libwatermark/WatermarkParam;->setSpecialItemName(Ljava/lang/String;)V

    .line 67
    sget-object v0, Lcom/imaging/libwatermark/WatermarkState;->OFF_ALL:Lcom/imaging/libwatermark/WatermarkState;

    invoke-virtual {v2, v0}, Lcom/imaging/libwatermark/WatermarkParam;->setWatermarkState(Lcom/imaging/libwatermark/WatermarkState;)V

    .line 69
    new-instance v0, Lcom/imaging/libwatermark/WatermarkHelper;

    invoke-direct {v0, v2}, Lcom/imaging/libwatermark/WatermarkHelper;-><init>(Lcom/imaging/libwatermark/WatermarkParam;)V

    invoke-virtual {v0, v1}, Lcom/imaging/libwatermark/WatermarkHelper;->generateOverlay(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public generate([B[B)[B
    .registers 8

    const-string v0, "jpeg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exifJpeg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-static {p1}, Lcom/gallery20/base/CommonExtKt;->toBitmap([B)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 74
    invoke-virtual {p0, p1}, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkHelper;->generate(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 75
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

    .line 76
    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 77
    :try_start_31
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_e5

    const/4 v3, 0x0

    .line 76
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 79
    new-instance v2, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {v2, v1}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/File;)V

    .line 80
    new-instance v3, Landroidx/exifinterface/media/ExifInterface;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v4}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3, v2}, Lcom/imaging/libwatermark/ai_art/ExifExtKt;->copyTo(Landroidx/exifinterface/media/ExifInterface;Landroidx/exifinterface/media/ExifInterface;)V

    .line 81
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v3, "ImageWidth"

    invoke-virtual {v2, v3, p2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v3, "ImageLength"

    invoke-virtual {v2, v3, p2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object p2, p0, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkHelper;->info:Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;

    invoke-virtual {p2}, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;->getProWatermarkOn()Z

    move-result p2

    if-eqz p2, :cond_b5

    .line 84
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

    .line 86
    :cond_b5
    const-string p0, "SceneType"

    const-string p2, "30"

    invoke-virtual {v2, p0, p2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface;->saveAttributes()V

    .line 89
    filled-new-array {p1, v0}, [Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 104
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_cd
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_dd

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    .line 89
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_cd

    .line 91
    :cond_dd
    invoke-static {v1}, Lkotlin/io/FilesKt;->readBytes(Ljava/io/File;)[B

    move-result-object p0

    .line 92
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    return-object p0

    :catchall_e5
    move-exception p0

    .line 76
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

    .line 42
    iget-object v0, p0, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkHelper;->info:Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;

    invoke-virtual {v0}, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;->getProWatermarkOn()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 43
    new-instance v0, Lcom/imaging/libwatermark/ai_art/ParamWrapper;

    iget-object v1, p0, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkHelper;->info:Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;

    invoke-direct {v0, p1, v1}, Lcom/imaging/libwatermark/ai_art/ParamWrapper;-><init>(Landroid/graphics/Bitmap;Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;)V

    .line 44
    new-instance v2, Lcom/imaging/libwatermark/painters/WatermarkPainter;

    invoke-static {}, Lcom/gallery20/base/base_app/BaseSdkKt;->getApp()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkHelper;->info:Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;

    invoke-virtual {v3}, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;->getRealDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/imaging/libwatermark/painters/WatermarkPainter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 45
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

    .line 46
    iget-object p0, p0, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkHelper;->info:Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;

    invoke-virtual {p0}, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;->getItemName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->setSpecialItemName(Ljava/lang/String;)V

    .line 48
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

    .line 42
    :cond_5b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "don\'t support this when pro watermark off"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
