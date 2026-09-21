.class public final Lcom/imaging/libwatermark/painters/WatermarkPainterSpark;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/imaging/libwatermark/interfaces/IWatermarkPainter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imaging/libwatermark/painters/WatermarkPainterSpark$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/imaging/libwatermark/painters/WatermarkPainterSpark$Companion;

.field private static final TAG:Ljava/lang/String; = "WatermarkPainterSpark"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/imaging/libwatermark/painters/WatermarkPainterSpark$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/imaging/libwatermark/painters/WatermarkPainterSpark$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/imaging/libwatermark/painters/WatermarkPainterSpark;->Companion:Lcom/imaging/libwatermark/painters/WatermarkPainterSpark$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/imaging/libwatermark/painters/WatermarkPainterSpark;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public drawWatermark(Lcom/imaging/libwatermark/data/WatermarkPaintInfo;IIZILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 32

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p5

    const-string v4, "watermarkPaintInfo"

    move-object/from16 v5, p1

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    const-string v4, "WatermarkPainterSpark"

    if-lez v1, :cond_280

    if-gt v2, v3, :cond_17

    goto/16 :goto_280

    :cond_17
    if-eqz p4, :cond_1c

    const/high16 v6, 0x42be0000    # 95.0f

    goto :goto_1e

    :cond_1c
    const/high16 v6, 0x42e20000    # 113.0f

    :goto_1e
    sub-int/2addr v2, v3

    if-nez p6, :cond_2d

    .line 42
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    const-string v8, "createBitmap(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2f

    :cond_2d
    move-object/from16 v7, p6

    .line 43
    :goto_2f
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    int-to-float v3, v3

    const/4 v9, 0x0

    .line 44
    invoke-virtual {v8, v9, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 45
    new-instance v3, Landroid/graphics/Paint;

    const/4 v10, 0x3

    invoke-direct {v3, v10}, Landroid/graphics/Paint;-><init>(I)V

    int-to-float v11, v1

    const/high16 v12, 0x44870000    # 1080.0f

    div-float v12, v11, v12

    int-to-float v13, v2

    div-float v6, v13, v6

    .line 48
    sget-object v14, Lcom/imaging/libwatermark/utils/LogUtils;->INSTANCE:Lcom/imaging/libwatermark/utils/LogUtils;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "widthRatio = "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, ", heightRatio = "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v4, v10}, Lcom/imaging/libwatermark/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, -0x1

    .line 51
    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10, v9, v9, v11, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v8, v10, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    if-eqz p4, :cond_76

    .line 56
    sget v9, Lcom/imaging/libwatermark/R$drawable;->ic_watermark_spark_side_landscape:I

    goto :goto_78

    .line 58
    :cond_76
    sget v9, Lcom/imaging/libwatermark/R$drawable;->ic_watermark_spark_side_portrait:I

    .line 60
    :goto_78
    sget-object v10, Lcom/imaging/libwatermark/utils/BitmapUtils;->INSTANCE:Lcom/imaging/libwatermark/utils/BitmapUtils;

    iget-object v15, v0, Lcom/imaging/libwatermark/painters/WatermarkPainterSpark;->context:Landroid/content/Context;

    invoke-virtual {v10, v15, v9}, Lcom/imaging/libwatermark/utils/BitmapUtils;->getBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v9

    if-eqz v9, :cond_af

    .line 61
    new-instance v15, Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    move/from16 p6, v6

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    move-object/from16 v16, v7

    const/4 v7, 0x0

    invoke-direct {v15, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v5, v13

    .line 62
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 63
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    sub-float/2addr v11, v5

    .line 64
    new-instance v5, Landroid/graphics/Rect;

    float-to-int v6, v11

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 65
    invoke-virtual {v8, v9, v15, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_b3

    :cond_af
    move/from16 p6, v6

    move-object/from16 v16, v7

    .line 69
    :goto_b3
    invoke-virtual/range {p1 .. p1}, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->getState()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x3

    if-eq v5, v7, :cond_c0

    if-ne v5, v6, :cond_be

    goto :goto_c0

    :cond_be
    const/4 v7, 0x0

    goto :goto_c1

    :cond_c0
    :goto_c0
    move v7, v6

    :goto_c1
    const/4 v9, 0x2

    if-eq v5, v9, :cond_c9

    if-ne v5, v6, :cond_c7

    goto :goto_c9

    :cond_c7
    const/4 v5, 0x0

    goto :goto_ca

    :cond_c9
    :goto_c9
    move v5, v6

    :goto_ca
    const/high16 v11, 0x41f00000    # 30.0f

    const/high16 v15, 0x421c0000    # 39.0f

    if-nez p4, :cond_d7

    mul-float v17, v12, v15

    :goto_d2
    move/from16 p3, v6

    move/from16 v6, v17

    goto :goto_da

    :cond_d7
    mul-float v17, v12, v11

    goto :goto_d2

    .line 75
    :goto_da
    invoke-virtual/range {p1 .. p1}, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->getShowDeviceName()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 76
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_114

    const-string v15, " "

    const/4 v1, 0x0

    move/from16 v24, v2

    const/4 v2, 0x0

    invoke-static {v11, v15, v2, v9, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_116

    const/16 v22, 0x6

    const/16 v23, 0x0

    .line 78
    const-string v19, " "

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v18, v11

    invoke-static/range {v18 .. v23}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v11, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    const-string v1, "substring(...)"

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_116

    :cond_114
    move/from16 v24, v2

    .line 80
    :cond_116
    :goto_116
    iget-object v1, v0, Lcom/imaging/libwatermark/painters/WatermarkPainterSpark;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "font/tos_bold.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float v1, v1, p6

    .line 84
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/high16 v15, -0x1000000

    .line 85
    invoke-virtual {v3, v15}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v18, 0x41c00000    # 24.0f

    if-nez p4, :cond_13f

    if-eqz v7, :cond_13c

    const/high16 v19, 0x41e80000    # 29.0f

    goto :goto_146

    :cond_13c
    move/from16 v19, v18

    goto :goto_146

    :cond_13f
    if-eqz v7, :cond_144

    const/high16 v19, 0x41b00000    # 22.0f

    goto :goto_146

    :cond_144
    const/high16 v19, 0x41900000    # 18.0f

    :goto_146
    mul-float v15, p6, v19

    .line 91
    invoke-virtual {v3, v15}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 92
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v15

    const/4 v9, 0x0

    invoke-virtual {v3, v11, v9, v15, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 93
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "draw device name,textRect="

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14, v4, v9}, Lcom/imaging/libwatermark/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v7, :cond_17e

    .line 95
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v15

    sub-int v15, v24, v15

    int-to-float v15, v15

    move/from16 v20, v1

    move/from16 v21, v5

    const/4 v1, 0x2

    int-to-float v5, v1

    div-float/2addr v15, v5

    add-float/2addr v9, v15

    goto :goto_18b

    :cond_17e
    move/from16 v20, v1

    move/from16 v21, v5

    if-nez p4, :cond_187

    const/high16 v1, 0x42580000    # 54.0f

    goto :goto_189

    :cond_187
    const/high16 v1, 0x42380000    # 46.0f

    :goto_189
    mul-float v9, p6, v1

    .line 99
    :goto_18b
    invoke-virtual {v8, v11, v6, v9, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 102
    invoke-virtual/range {p1 .. p1}, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->getSpecialItemName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_19c

    invoke-virtual/range {p1 .. p1}, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->getLensInfo()Ljava/lang/String;

    move-result-object v1

    :cond_19c
    if-nez p4, :cond_1a1

    const/high16 v15, 0x41b80000    # 23.0f

    goto :goto_1a3

    :cond_1a1
    const/high16 v15, 0x41900000    # 18.0f

    :goto_1a3
    mul-float v5, p6, v15

    .line 103
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 104
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v9, 0x0

    invoke-virtual {v3, v1, v9, v5, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 105
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int v5, p2, v5

    int-to-float v5, v5

    sub-float/2addr v5, v6

    const/high16 v9, 0x42340000    # 45.0f

    if-eqz v21, :cond_1cd

    .line 107
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int v2, v24, v2

    int-to-float v2, v2

    const/4 v15, 0x2

    int-to-float v15, v15

    div-float/2addr v2, v15

    add-float/2addr v11, v2

    goto :goto_1d5

    :cond_1cd
    if-nez p4, :cond_1d2

    const/high16 v2, 0x42540000    # 53.0f

    goto :goto_1d3

    :cond_1d2
    move v2, v9

    :goto_1d3
    mul-float v11, p6, v2

    .line 111
    :goto_1d5
    const-string v2, "#020202"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    invoke-virtual {v8, v1, v5, v11, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 115
    iget-object v1, v0, Lcom/imaging/libwatermark/painters/WatermarkPainterSpark;->context:Landroid/content/Context;

    sget v2, Lcom/imaging/libwatermark/R$drawable;->ic_watermark_spark_red_point:I

    invoke-virtual {v10, v1, v2}, Lcom/imaging/libwatermark/utils/BitmapUtils;->getBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_240

    .line 116
    new-instance v10, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    const/4 v2, 0x0

    invoke-direct {v10, v2, v2, v11, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 117
    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    if-nez p4, :cond_206

    if-eqz v21, :cond_203

    move v11, v9

    goto :goto_20d

    :cond_203
    const/high16 v11, 0x41f00000    # 30.0f

    goto :goto_20d

    :cond_206
    if-eqz v21, :cond_20b

    const/high16 v11, 0x421c0000    # 39.0f

    goto :goto_20d

    :cond_20b
    const/high16 v11, 0x41d80000    # 27.0f

    :goto_20d
    mul-float v9, p6, v11

    add-float v11, v9, v2

    const/high16 v15, 0x41200000    # 10.0f

    mul-float/2addr v12, v15

    sub-float v12, v5, v12

    sub-float v2, v12, v2

    .line 126
    new-instance v15, Landroid/graphics/Rect;

    float-to-int v2, v2

    float-to-int v9, v9

    float-to-int v12, v12

    float-to-int v11, v11

    invoke-direct {v15, v2, v9, v12, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "draw point,srcRect = "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ",desRect = "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v4, v2}, Lcom/imaging/libwatermark/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {v8, v1, v10, v15, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 132
    :cond_240
    iget-object v0, v0, Lcom/imaging/libwatermark/painters/WatermarkPainterSpark;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "font/tos_regular.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    if-nez p4, :cond_254

    const/high16 v0, 0x41980000    # 19.0f

    goto :goto_256

    :cond_254
    const/high16 v0, 0x41700000    # 15.0f

    :goto_256
    mul-float v0, v0, p6

    .line 133
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 134
    const-string v0, "#808080"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    if-nez p4, :cond_268

    const/high16 v18, 0x41d80000    # 27.0f

    :cond_268
    mul-float v0, p6, v18

    sub-float/2addr v13, v0

    sub-float v13, v13, v20

    if-nez v21, :cond_276

    .line 140
    invoke-virtual/range {p1 .. p1}, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->getLocationInfo()Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-virtual {v8, v0, v5, v13, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_276
    if-nez v7, :cond_27f

    .line 146
    invoke-virtual/range {p1 .. p1}, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->getTimeInfo()Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-virtual {v8, v0, v6, v13, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_27f
    return-object v16

    .line 34
    :cond_280
    :goto_280
    sget-object v0, Lcom/imaging/libwatermark/utils/LogUtils;->INSTANCE:Lcom/imaging/libwatermark/utils/LogUtils;

    const-string v1, "invalid width or height"

    invoke-virtual {v0, v4, v1}, Lcom/imaging/libwatermark/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p6
.end method
