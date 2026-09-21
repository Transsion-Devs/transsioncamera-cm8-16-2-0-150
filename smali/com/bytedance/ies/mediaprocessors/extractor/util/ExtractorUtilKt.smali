.class public final Lcom/bytedance/ies/mediaprocessors/extractor/util/ExtractorUtilKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final adjustToExtractor(Landroid/graphics/Bitmap;Ljava/lang/Integer;)Landroid/graphics/Bitmap;
    .registers 5

    const-string v0, "$this$adjustToExtractor"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_c

    .line 142
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_e

    :cond_c
    const/16 p1, 0x100

    .line 143
    :goto_e
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_2a

    .line 144
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    move v2, v0

    move v0, p1

    move p1, v2

    goto :goto_38

    .line 148
    :cond_2a
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    :goto_38
    const/4 v1, 0x1

    .line 150
    invoke-static {p0, p1, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    const-string p1, "Bitmap.createScaledBitma\u2026  scaleHeight, true\n    )"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic adjustToExtractor$default(Landroid/graphics/Bitmap;Ljava/lang/Integer;ILjava/lang/Object;)Landroid/graphics/Bitmap;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_a

    const/16 p1, 0x100

    .line 139
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_a
    invoke-static {p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor/util/ExtractorUtilKt;->adjustToExtractor(Landroid/graphics/Bitmap;Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs extractFeatures(Lcom/bytedance/ies/mediaprocessors/extractor_jni/Extractor;Landroid/content/Context;Lcom/bytedance/ies/mediaprocessors/extractor_jni/AlgorithmType;Z[Landroid/net/Uri;)Lcom/bytedance/ies/mediaprocessors/extractor_jni/FeatureResultList;
    .registers 7

    const-string v0, "$this$extractFeatures"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "algorithmType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uris"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    new-instance v0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Input;

    invoke-direct {v0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Input;-><init>()V

    .line 161
    array-length v1, p4

    invoke-static {p4, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Landroid/net/Uri;

    invoke-static {p1, p4}, Lcom/bytedance/ies/mediaprocessors/extractor/util/ExtractorUtilKt;->generateResourceList(Landroid/content/Context;[Landroid/net/Uri;)Lcom/bytedance/ies/mediaprocessors/extractor_jni/ResourceList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Input;->setResList(Lcom/bytedance/ies/mediaprocessors/extractor_jni/ResourceList;)V

    .line 162
    invoke-static {p2}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/CoverUtil;->getAlgorithmConf(Lcom/bytedance/ies/mediaprocessors/extractor_jni/AlgorithmType;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Input;->setAlgorithmConf(Ljava/lang/String;)V

    .line 164
    sget-object p1, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AlgorithmType;->RELATION_RECOG:Lcom/bytedance/ies/mediaprocessors/extractor_jni/AlgorithmType;

    if-ne p2, p1, :cond_34

    sget-object p2, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AlgorithmType;->NH_CLASSIFICATION:Lcom/bytedance/ies/mediaprocessors/extractor_jni/AlgorithmType;

    :cond_34
    invoke-virtual {v0, p2}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Input;->setType(Lcom/bytedance/ies/mediaprocessors/extractor_jni/AlgorithmType;)V

    .line 166
    invoke-virtual {p0, v0, p3}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Extractor;->extractFeatures(Lcom/bytedance/ies/mediaprocessors/extractor_jni/Input;Z)Lcom/bytedance/ies/mediaprocessors/extractor_jni/FeatureResultList;

    move-result-object p0

    const-string p1, "extractFeatures(input, autoSave)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic extractFeatures$default(Lcom/bytedance/ies/mediaprocessors/extractor_jni/Extractor;Landroid/content/Context;Lcom/bytedance/ies/mediaprocessors/extractor_jni/AlgorithmType;Z[Landroid/net/Uri;ILjava/lang/Object;)Lcom/bytedance/ies/mediaprocessors/extractor_jni/FeatureResultList;
    .registers 7

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_5

    const/4 p3, 0x1

    .line 158
    :cond_5
    invoke-static {p0, p1, p2, p3, p4}, Lcom/bytedance/ies/mediaprocessors/extractor/util/ExtractorUtilKt;->extractFeatures(Lcom/bytedance/ies/mediaprocessors/extractor_jni/Extractor;Landroid/content/Context;Lcom/bytedance/ies/mediaprocessors/extractor_jni/AlgorithmType;Z[Landroid/net/Uri;)Lcom/bytedance/ies/mediaprocessors/extractor_jni/FeatureResultList;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs extractMultiFeatures(Lcom/bytedance/ies/mediaprocessors/extractor_jni/Extractor;Landroid/content/Context;Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecAlgorithmType;Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;Ljava/lang/String;ZLcom/bytedance/ies/mediaprocessors/extractor_jni/ErrorPair;[Landroid/net/Uri;)Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecMultiResult;
    .registers 9

    const-string v0, "$this$extractMultiFeatures"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vecAlgorithmType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uris"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    array-length v0, p7

    invoke-static {p7, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p7

    check-cast p7, [Landroid/net/Uri;

    invoke-static {p1, p7}, Lcom/bytedance/ies/mediaprocessors/extractor/util/ExtractorUtilKt;->generateResourceList(Landroid/content/Context;[Landroid/net/Uri;)Lcom/bytedance/ies/mediaprocessors/extractor_jni/ResourceList;

    move-result-object p1

    .line 177
    new-instance p7, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiAlgorithmInput;

    if-eqz p3, :cond_29

    goto :goto_2e

    :cond_29
    new-instance p3, Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;

    invoke-direct {p3}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;-><init>()V

    :goto_2e
    invoke-direct {p7, p1, p4, p2, p3}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiAlgorithmInput;-><init>(Lcom/bytedance/ies/mediaprocessors/extractor_jni/ResourceList;Ljava/lang/String;Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecAlgorithmType;Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;)V

    .line 178
    invoke-virtual {p0, p7, p5, p6}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Extractor;->extractFeatures(Lcom/bytedance/ies/mediaprocessors/extractor_jni/MultiAlgorithmInput;ZLcom/bytedance/ies/mediaprocessors/extractor_jni/ErrorPair;)Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecMultiResult;

    move-result-object p0

    const-string p1, "extractFeatures(multiInput, autoSave, errorPair)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic extractMultiFeatures$default(Lcom/bytedance/ies/mediaprocessors/extractor_jni/Extractor;Landroid/content/Context;Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecAlgorithmType;Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;Ljava/lang/String;ZLcom/bytedance/ies/mediaprocessors/extractor_jni/ErrorPair;[Landroid/net/Uri;ILjava/lang/Object;)Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecMultiResult;
    .registers 11

    and-int/lit8 p9, p8, 0x4

    const/4 v0, 0x0

    if-eqz p9, :cond_6

    move-object p3, v0

    :cond_6
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_b

    const/4 p5, 0x1

    :cond_b
    and-int/lit8 p8, p8, 0x20

    if-eqz p8, :cond_10

    move-object p6, v0

    .line 174
    :cond_10
    invoke-static/range {p0 .. p7}, Lcom/bytedance/ies/mediaprocessors/extractor/util/ExtractorUtilKt;->extractMultiFeatures(Lcom/bytedance/ies/mediaprocessors/extractor_jni/Extractor;Landroid/content/Context;Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecAlgorithmType;Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecString;Ljava/lang/String;ZLcom/bytedance/ies/mediaprocessors/extractor_jni/ErrorPair;[Landroid/net/Uri;)Lcom/bytedance/ies/mediaprocessors/extractor_jni/VecMultiResult;

    move-result-object p0

    return-object p0
.end method

.method public static final generateImageBuffer(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/Integer;)Lcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;
    .registers 6

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    new-instance v0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;

    invoke-direct {v0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;-><init>()V

    .line 57
    invoke-static {p0, p1, p2}, Lcom/bytedance/ies/mediaprocessors/extractor/util/ExtractorUtilKt;->loadExtractorBitmap(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_32

    .line 58
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;->setWidth(I)V

    .line 59
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;->setHeight(I)V

    .line 60
    invoke-static {p0}, Lcom/bytedance/ies/mediaprocessors/extractor/util/ExtractorUtilKt;->toByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object p1

    .line 61
    array-length p2, p1

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;->setLength(J)V

    .line 62
    invoke-virtual {v0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;->setData([B)V

    .line 63
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_32
    return-object v0
.end method

.method public static synthetic generateImageBuffer$default(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;
    .registers 5

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_a

    const/16 p2, 0x100

    .line 55
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :cond_a
    invoke-static {p0, p1, p2}, Lcom/bytedance/ies/mediaprocessors/extractor/util/ExtractorUtilKt;->generateImageBuffer(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/Integer;)Lcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static final generateResource(Landroid/content/Context;Landroid/net/Uri;)Lcom/bytedance/ies/mediaprocessors/extractor_jni/Resource;
    .registers 5

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    new-instance v0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Resource;

    invoke-direct {v0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Resource;-><init>()V

    .line 46
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Resource;->setAssetId(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Resource;->setAssetPath(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 48
    invoke-static {p0, p1, v1, v2, v1}, Lcom/bytedance/ies/mediaprocessors/extractor/util/ExtractorUtilKt;->generateImageBuffer$default(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/Resource;->setBuffer(Lcom/bytedance/ies/mediaprocessors/extractor_jni/ImageBuffer;)V

    return-object v0
.end method

.method public static final varargs generateResourceList(Landroid/content/Context;[Landroid/net/Uri;)Lcom/bytedance/ies/mediaprocessors/extractor_jni/ResourceList;
    .registers 6

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uris"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    new-instance v0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ResourceList;

    invoke-direct {v0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ResourceList;-><init>()V

    .line 181
    array-length v1, p1

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_1f

    aget-object v3, p1, v2

    .line 39
    invoke-static {p0, v3}, Lcom/bytedance/ies/mediaprocessors/extractor/util/ExtractorUtilKt;->generateResource(Landroid/content/Context;Landroid/net/Uri;)Lcom/bytedance/ies/mediaprocessors/extractor_jni/Resource;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ResourceList;->add(Lcom/bytedance/ies/mediaprocessors/extractor_jni/Resource;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_1f
    return-object v0
.end method

.method public static final loadBitmapFromUri(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/Integer;)Landroid/graphics/Bitmap;
    .registers 11

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uri.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "video"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x100

    if-eqz v0, :cond_82

    .line 77
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 80
    :try_start_25
    invoke-virtual {v0, p0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const/16 v3, 0x12

    .line 81
    invoke-virtual {v0, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_39

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_3a

    :catchall_35
    move-exception p0

    goto :goto_7e

    :catch_37
    move-exception p0

    goto :goto_77

    :cond_39
    move v3, v2

    :goto_3a
    const/16 v5, 0x13

    .line 82
    invoke-virtual {v0, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_46

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :cond_46
    if-le v3, v2, :cond_55

    int-to-float v3, v3

    int-to-float v2, v2

    div-float/2addr v3, v2

    if-eqz p2, :cond_51

    .line 85
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_51
    int-to-float p2, v1

    mul-float/2addr p2, v3

    float-to-int p2, p2

    goto :goto_64

    :cond_55
    int-to-float v2, v2

    int-to-float v3, v3

    div-float/2addr v2, v3

    if-eqz p2, :cond_5e

    .line 89
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_5e
    int-to-float p2, v1

    mul-float/2addr p2, v2

    float-to-int p2, p2

    move v7, v1

    move v1, p2

    move p2, v7

    .line 93
    :goto_64
    new-instance v2, Landroid/util/Size;

    invoke-direct {v2, p2, v1}, Landroid/util/Size;-><init>(II)V

    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-eqz p0, :cond_73

    invoke-virtual {p0, p1, v2, v4}, Landroid/content/ContentResolver;->loadThumbnail(Landroid/net/Uri;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_73} :catch_37
    .catchall {:try_start_25 .. :try_end_73} :catchall_35

    .line 110
    :cond_73
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    return-object v4

    .line 108
    :goto_77
    :try_start_77
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7a
    .catchall {:try_start_77 .. :try_end_7a} :catchall_35

    .line 110
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    return-object v4

    :goto_7e
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    throw p0

    .line 115
    :cond_82
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-eqz p0, :cond_d7

    .line 114
    const-string v0, "r"

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    if-eqz p0, :cond_d7

    .line 116
    :try_start_90
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v0, 0x1

    .line 117
    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 119
    const-string v5, "it"

    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-static {v5, v4, p1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 120
    iget v5, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 121
    iget v6, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 122
    iput v0, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-eqz p2, :cond_b3

    .line 124
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_b3

    :catchall_b1
    move-exception p1

    goto :goto_d1

    :cond_b3
    :goto_b3
    shr-int/lit8 p2, v1, 0x1

    :goto_b5
    if-le v5, p2, :cond_c3

    if-le v6, p2, :cond_c3

    .line 126
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/2addr v0, v3

    iput v0, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 127
    div-int/lit8 v5, v5, 0x2

    .line 128
    div-int/lit8 v6, v6, 0x2

    goto :goto_b5

    .line 130
    :cond_c3
    iput-boolean v2, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 131
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-static {p2, v4, p1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_cd
    .catchall {:try_start_90 .. :try_end_cd} :catchall_b1

    .line 115
    invoke-static {p0, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p1

    :goto_d1
    :try_start_d1
    throw p1
    :try_end_d2
    .catchall {:try_start_d1 .. :try_end_d2} :catchall_d2

    :catchall_d2
    move-exception p2

    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2

    :cond_d7
    return-object v4
.end method

.method public static synthetic loadBitmapFromUri$default(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/Integer;ILjava/lang/Object;)Landroid/graphics/Bitmap;
    .registers 5

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_a

    const/16 p2, 0x100

    .line 75
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :cond_a
    invoke-static {p0, p1, p2}, Lcom/bytedance/ies/mediaprocessors/extractor/util/ExtractorUtilKt;->loadBitmapFromUri(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static final loadExtractorBitmap(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/Integer;)Landroid/graphics/Bitmap;
    .registers 4

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-static {p0, p1, p2}, Lcom/bytedance/ies/mediaprocessors/extractor/util/ExtractorUtilKt;->loadBitmapFromUri(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 72
    invoke-static {p0, p2}, Lcom/bytedance/ies/mediaprocessors/extractor/util/ExtractorUtilKt;->adjustToExtractor(Landroid/graphics/Bitmap;Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_15
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic loadExtractorBitmap$default(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/Integer;ILjava/lang/Object;)Landroid/graphics/Bitmap;
    .registers 5

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_a

    const/16 p2, 0x100

    .line 70
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :cond_a
    invoke-static {p0, p1, p2}, Lcom/bytedance/ies/mediaprocessors/extractor/util/ExtractorUtilKt;->loadExtractorBitmap(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static final toByteArray(Landroid/graphics/Bitmap;)[B
    .registers 2

    const-string v0, "$this$toByteArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 32
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 33
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    const-string v0, "buf.array()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
