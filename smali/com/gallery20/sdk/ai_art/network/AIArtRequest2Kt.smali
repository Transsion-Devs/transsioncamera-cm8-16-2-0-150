.class public final Lcom/gallery20/sdk/ai_art/network/AIArtRequest2Kt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final PROCESS_TIMEOUT_MILLIS:I = 0xea60

.field private static final QUERY_INTERVAL_MILLIS:J = 0x7d0L

.field private static final TAG:Ljava/lang/String; = "AIArtRequest"

.field private static final templateIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 24

    .line 87
    const-string v0, "style_embroidery"

    const-string v1, "embroidery"

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    .line 88
    const-string v0, "style_graffiti"

    const-string v1, "Graffiti"

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    .line 89
    const-string v0, "style_malevich"

    const-string v1, "malevich"

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    .line 90
    const-string v0, "style_monet"

    const-string v1, "monet"

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    .line 91
    const-string v0, "style_picasso"

    const-string v1, "picasso"

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    .line 92
    const-string v0, "style_van_gogh"

    const-string v1, "vangogh"

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    .line 93
    const-string v0, "style_wood_carve"

    const-string v1, "wood"

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    .line 94
    const-string v0, "style_stone"

    const-string v1, "stone"

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    .line 95
    const-string v0, "style_anime"

    const-string v1, "anime"

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    .line 96
    const-string v0, "style_glass"

    const-string v1, "stained_glass"

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    .line 97
    const-string v0, "style_tinga_tinga"

    const-string v1, "api_tinga"

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v12

    .line 98
    const-string v0, "style_babylon"

    const-string v1, "api_babylon"

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v13

    .line 99
    const-string v0, "style_frida_kahlo"

    const-string v1, "api_fridaKahlo"

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v14

    .line 100
    const-string v0, "style_mondrian"

    const-string v1, "api_mondrian"

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v15

    .line 101
    const-string v0, "partial_africa_bogolanfini"

    const-string v1, "mud"

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v16

    .line 102
    const-string v0, "partial_indonesian_batik"

    const-string v1, "api_batik"

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v17

    .line 103
    const-string v0, "partial_painted_tattoo"

    const-string v1, "api_india_hanna"

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v18

    .line 104
    const-string v0, "partial_anime_customization"

    const-string v1, "figure"

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v19

    .line 105
    const-string v0, "partial_blue_and_white_porcelain"

    const-string v1, "BluePorcelain"

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v20

    .line 106
    const-string v0, "partial_gold_plated_garments"

    const-string v1, "GoldenCloth"

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v21

    .line 107
    const-string v0, "partial_khokhloma_gold_patterned"

    const-string v1, "api_KhokhlomaCloth"

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v22

    .line 108
    const-string v0, "partial_marseille"

    const-string v1, "ShukaCloth"

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v23

    filled-new-array/range {v2 .. v23}, [Lkotlin/Pair;

    move-result-object v0

    .line 86
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2Kt;->templateIdMap:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$calculateSmartProgress(JJ)D
    .registers 4

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2Kt;->calculateSmartProgress(JJ)D

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$decodeBitmapWithoutWatermark([B)Landroid/graphics/Bitmap;
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2Kt;->decodeBitmapWithoutWatermark([B)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTemplateIdMap$p()Ljava/util/Map;
    .registers 1

    .line 1
    sget-object v0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2Kt;->templateIdMap:Ljava/util/Map;

    return-object v0
.end method

.method public static final synthetic access$toTargetSize([BII)[B
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2Kt;->toTargetSize([BII)[B

    move-result-object p0

    return-object p0
.end method

.method private static final calculateSmartProgress(JJ)D
    .registers 11

    cmp-long v0, p0, p2

    const-wide v5, 0x3fe999999999999aL    # 0.8

    if-ltz v0, :cond_a

    return-wide v5

    :cond_a
    long-to-float p0, p0

    long-to-float p1, p2

    div-float/2addr p0, p1

    const-wide/high16 p1, -0x3ff8000000000000L    # -3.0

    .line 346
    invoke-static {p1, p2}, Ljava/lang/Math;->exp(D)D

    move-result-wide p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double p1, v0, p1

    div-double p1, v5, p1

    const/high16 p3, -0x3fc00000    # -3.0f

    mul-float/2addr p0, p3

    float-to-double v2, p0

    .line 347
    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float p0, v2

    float-to-double v2, p0

    sub-double/2addr v0, v2

    mul-double v1, v0, p1

    const-wide/16 v3, 0x0

    .line 348
    invoke-static/range {v1 .. v6}, Lkotlin/ranges/RangesKt;->coerceIn(DDD)D

    move-result-wide p0

    return-wide p0
.end method

.method private static final decodeBitmapWithoutWatermark([B)Landroid/graphics/Bitmap;
    .registers 4

    .line 76
    invoke-static {p0}, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2Kt;->dumpJpegHeight([B)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_b

    .line 77
    invoke-static {p0}, Lcom/gallery20/base/CommonExtKt;->toBitmap([B)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 78
    :cond_b
    invoke-static {p0}, Lcom/gallery20/base/CommonExtKt;->toBitmap([B)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 79
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x0

    invoke-static {p0, v2, v2, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "createBitmap(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 81
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2a
    return-object v0
.end method

.method private static final dumpJpegHeight([B)Ljava/lang/Integer;
    .registers 9

    .line 122
    new-instance v0, Landroidx/exifinterface/media/ExifInterface;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    const-string p0, "UserComment"

    invoke-virtual {v0, p0}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_79

    invoke-static {p0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1b

    move-object v2, p0

    goto :goto_1c

    :cond_1b
    move-object v2, v0

    :goto_1c
    if-nez v2, :cond_1f

    goto :goto_79

    .line 123
    :cond_1f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dumpJpegHeight: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "AIArtRequest"

    invoke-static {v1, p0}, Lcom/gallery20/base/LogExtKt;->ld(Ljava/lang/String;Ljava/lang/Object;)V

    .line 124
    const-string p0, "-"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_4b

    goto :goto_4c

    :cond_4b
    move-object p0, v0

    :goto_4c
    if-eqz p0, :cond_79

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_79

    const-string p0, "x"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_79

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_79

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_79
    :goto_79
    return-object v0
.end method

.method private static final toTargetSize([BII)[B
    .registers 5

    .line 334
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 335
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 352
    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string p2, "createScaledBitmap(this, width, height, filter)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 336
    invoke-static {p1, v1, v0, p2}, Lcom/gallery20/base/CommonExtKt;->toJpegBytes$default(Landroid/graphics/Bitmap;IILjava/lang/Object;)[B

    move-result-object p2

    .line 337
    filled-new-array {p0, p1}, [Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 353
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_26
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_36

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    .line 337
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_26

    :cond_36
    return-object p2
.end method
