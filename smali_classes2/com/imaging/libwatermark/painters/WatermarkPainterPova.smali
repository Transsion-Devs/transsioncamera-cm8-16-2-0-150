.class public final Lcom/imaging/libwatermark/painters/WatermarkPainterPova;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/imaging/libwatermark/interfaces/IWatermarkPainter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imaging/libwatermark/painters/WatermarkPainterPova$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/imaging/libwatermark/painters/WatermarkPainterPova$Companion;

.field private static final TAG:Ljava/lang/String; = "WatermarkPainterPova"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/imaging/libwatermark/painters/WatermarkPainterPova$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/imaging/libwatermark/painters/WatermarkPainterPova$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/imaging/libwatermark/painters/WatermarkPainterPova;->Companion:Lcom/imaging/libwatermark/painters/WatermarkPainterPova$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/imaging/libwatermark/painters/WatermarkPainterPova;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public drawWatermark(Lcom/imaging/libwatermark/data/WatermarkPaintInfo;IIZILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 33

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p5

    const-string v4, "watermarkPaintInfo"

    move-object/from16 v5, p1

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    const-string v4, "WatermarkPainterPova"

    if-lez v1, :cond_301

    if-gt v2, v3, :cond_17

    goto/16 :goto_301

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

    .line 55
    invoke-virtual {v5}, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->getState()I

    move-result v9

    const/4 v10, 0x1

    const/4 v15, 0x3

    if-eq v9, v15, :cond_7e

    if-ne v9, v10, :cond_7c

    goto :goto_7e

    :cond_7c
    const/4 v15, 0x0

    goto :goto_7f

    :cond_7e
    :goto_7e
    move v15, v10

    :goto_7f
    const/4 v5, 0x2

    if-eq v9, v5, :cond_87

    if-ne v9, v10, :cond_85

    goto :goto_87

    :cond_85
    const/4 v9, 0x0

    goto :goto_88

    :cond_87
    :goto_87
    move v9, v10

    :goto_88
    if-nez p4, :cond_93

    const/high16 v16, 0x421c0000    # 39.0f

    :goto_8c
    mul-float v16, v16, v12

    move/from16 p3, v10

    move/from16 v10, v16

    goto :goto_96

    :cond_93
    const/high16 v16, 0x41f00000    # 30.0f

    goto :goto_8c

    .line 61
    :goto_96
    invoke-virtual/range {p1 .. p1}, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->getShowDeviceName()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 62
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    move/from16 v23, v6

    const/4 v6, 0x0

    if-nez v16, :cond_db

    move-object/from16 v16, v7

    const-string v7, " "

    move/from16 v24, v9

    move/from16 v25, v11

    const/4 v9, 0x2

    const/4 v11, 0x0

    invoke-static {v5, v7, v11, v9, v6}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d9

    const/16 v21, 0x6

    const/16 v22, 0x0

    .line 64
    const-string v18, " "

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v17, v5

    invoke-static/range {v17 .. v22}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v5

    move-object/from16 v7, v17

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v7, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v7, "substring(...)"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_e3

    :cond_d9
    :goto_d9
    move-object v7, v5

    goto :goto_e2

    :cond_db
    move-object/from16 v16, v7

    move/from16 v24, v9

    move/from16 v25, v11

    goto :goto_d9

    :goto_e2
    move-object v5, v7

    :goto_e3
    const/high16 v7, 0x3fc00000    # 1.5f

    mul-float v7, v7, v23

    .line 67
    const-string v9, "POVA 7"

    move/from16 v17, v7

    const/4 v7, 0x0

    const/4 v11, 0x2

    invoke-static {v5, v9, v7, v11, v6}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_106

    .line 68
    const-string v9, "POVA Curve"

    invoke-static {v5, v9, v7, v11, v6}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_106

    .line 69
    const-string v9, "POVA 8"

    invoke-static {v5, v9, v7, v11, v6}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_104

    goto :goto_106

    :cond_104
    move/from16 p3, v7

    .line 71
    :cond_106
    :goto_106
    const-string v9, "POVA Slim 5G"

    invoke-static {v5, v9, v7, v11, v6}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz p3, :cond_11a

    .line 73
    iget-object v7, v0, Lcom/imaging/libwatermark/painters/WatermarkPainterPova;->context:Landroid/content/Context;

    sget v9, Lcom/imaging/libwatermark/R$font;->transota_regular:I

    invoke-static {v7, v9}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_125

    .line 75
    :cond_11a
    iget-object v7, v0, Lcom/imaging/libwatermark/painters/WatermarkPainterPova;->context:Landroid/content/Context;

    sget v9, Lcom/imaging/libwatermark/R$font;->custom_semibold:I

    invoke-static {v7, v9}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :goto_125
    if-eqz p3, :cond_166

    .line 80
    sget-object v9, Lcom/imaging/libwatermark/utils/BitmapUtils;->INSTANCE:Lcom/imaging/libwatermark/utils/BitmapUtils;

    iget-object v11, v0, Lcom/imaging/libwatermark/painters/WatermarkPainterPova;->context:Landroid/content/Context;

    const/high16 v18, 0x3f800000    # 1.0f

    sget v7, Lcom/imaging/libwatermark/R$drawable;->ic_watermark_pova_side:I

    invoke-virtual {v9, v11, v7}, Lcom/imaging/libwatermark/utils/BitmapUtils;->getBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v7

    if-eqz v7, :cond_161

    .line 81
    new-instance v9, Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    move/from16 v19, v6

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    move/from16 v20, v12

    const/4 v12, 0x0

    invoke-direct {v9, v12, v12, v11, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    mul-float v6, v13, v18

    .line 82
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v6, v11

    .line 83
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v6, v11

    sub-float v11, v25, v6

    .line 84
    new-instance v6, Landroid/graphics/Rect;

    float-to-int v11, v11

    invoke-direct {v6, v11, v12, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 85
    invoke-virtual {v8, v7, v9, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_16c

    :cond_161
    move/from16 v19, v6

    move/from16 v20, v12

    goto :goto_16c

    :cond_166
    move/from16 v19, v6

    move/from16 v20, v12

    const/high16 v18, 0x3f800000    # 1.0f

    :goto_16c
    if-eqz v19, :cond_1a1

    .line 90
    sget-object v6, Lcom/imaging/libwatermark/utils/BitmapUtils;->INSTANCE:Lcom/imaging/libwatermark/utils/BitmapUtils;

    iget-object v7, v0, Lcom/imaging/libwatermark/painters/WatermarkPainterPova;->context:Landroid/content/Context;

    sget v9, Lcom/imaging/libwatermark/R$drawable;->ic_watermark_pova_km9_side:I

    invoke-virtual {v6, v7, v9}, Lcom/imaging/libwatermark/utils/BitmapUtils;->getBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_1a1

    .line 91
    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    const/4 v12, 0x0

    invoke-direct {v7, v12, v12, v9, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    mul-float v9, v13, v18

    .line 92
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v9, v11

    .line 93
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v9, v11

    sub-float v11, v25, v9

    .line 94
    new-instance v9, Landroid/graphics/Rect;

    float-to-int v11, v11

    invoke-direct {v9, v11, v12, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 95
    invoke-virtual {v8, v6, v7, v9, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 100
    :cond_1a1
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    const/high16 v7, -0x1000000

    .line 101
    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setColor(I)V

    if-nez p4, :cond_1b5

    if-eqz v15, :cond_1b2

    const/high16 v11, 0x41e80000    # 29.0f

    goto :goto_1bc

    :cond_1b2
    const/high16 v11, 0x41c00000    # 24.0f

    goto :goto_1bc

    :cond_1b5
    if-eqz v15, :cond_1ba

    const/high16 v11, 0x41b00000    # 22.0f

    goto :goto_1bc

    :cond_1ba
    const/high16 v11, 0x41900000    # 18.0f

    :goto_1bc
    mul-float v11, v11, v23

    .line 107
    invoke-virtual {v3, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 108
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v3, v5, v12, v11, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 109
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "draw device name,textRect="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v4, v11}, Lcom/imaging/libwatermark/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v15, :cond_1f0

    .line 111
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v12

    sub-int v12, v2, v12

    int-to-float v12, v12

    const/4 v7, 0x2

    int-to-float v9, v7

    div-float/2addr v12, v9

    add-float/2addr v11, v12

    goto :goto_1f9

    :cond_1f0
    if-nez p4, :cond_1f5

    const/high16 v7, 0x42580000    # 54.0f

    goto :goto_1f7

    :cond_1f5
    const/high16 v7, 0x42380000    # 46.0f

    :goto_1f7
    mul-float v11, v23, v7

    .line 115
    :goto_1f9
    invoke-virtual {v8, v5, v10, v11, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    if-nez p3, :cond_204

    if-eqz v19, :cond_201

    goto :goto_204

    :cond_201
    move/from16 v19, v2

    goto :goto_261

    .line 119
    :cond_204
    :goto_204
    sget-object v5, Lcom/imaging/libwatermark/utils/BitmapUtils;->INSTANCE:Lcom/imaging/libwatermark/utils/BitmapUtils;

    iget-object v7, v0, Lcom/imaging/libwatermark/painters/WatermarkPainterPova;->context:Landroid/content/Context;

    sget v9, Lcom/imaging/libwatermark/R$drawable;->ic_watermark_pova_point:I

    invoke-virtual {v5, v7, v9}, Lcom/imaging/libwatermark/utils/BitmapUtils;->getBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_201

    .line 120
    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    const/4 v1, 0x0

    invoke-direct {v7, v1, v1, v9, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 121
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v11, v1

    sub-float v1, v1, v17

    add-float v11, v11, v17

    .line 123
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v9, v10

    const/high16 v12, 0x40a00000    # 5.0f

    mul-float v12, v12, v20

    add-float/2addr v9, v12

    sub-float v12, v11, v1

    add-float/2addr v12, v9

    move/from16 v19, v2

    .line 125
    new-instance v2, Landroid/graphics/Rect;

    float-to-int v9, v9

    float-to-int v1, v1

    float-to-int v12, v12

    float-to-int v11, v11

    invoke-direct {v2, v9, v1, v12, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "draw point,srcRect = "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ",desRect = "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v4, v1}, Lcom/imaging/libwatermark/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual {v8, v5, v7, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_261
    if-eqz p3, :cond_26e

    .line 135
    iget-object v1, v0, Lcom/imaging/libwatermark/painters/WatermarkPainterPova;->context:Landroid/content/Context;

    sget v2, Lcom/imaging/libwatermark/R$font;->tos_regular:I

    invoke-static {v1, v2}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 137
    :cond_26e
    invoke-virtual/range {p1 .. p1}, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->getSpecialItemName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_27c

    invoke-virtual/range {p1 .. p1}, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->getLensInfo()Ljava/lang/String;

    move-result-object v1

    :cond_27c
    if-nez p4, :cond_281

    const/high16 v7, 0x41b80000    # 23.0f

    goto :goto_283

    :cond_281
    const/high16 v7, 0x41900000    # 18.0f

    :goto_283
    mul-float v2, v23, v7

    .line 138
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 139
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v12, 0x0

    invoke-virtual {v3, v1, v12, v2, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 140
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int v2, p2, v2

    int-to-float v2, v2

    sub-float/2addr v2, v10

    if-eqz v24, :cond_2ab

    .line 142
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int v5, v19, v5

    int-to-float v5, v5

    const/4 v9, 0x2

    int-to-float v6, v9

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    goto :goto_2b4

    :cond_2ab
    if-nez p4, :cond_2b0

    const/high16 v4, 0x42540000    # 53.0f

    goto :goto_2b2

    :cond_2b0
    const/high16 v4, 0x42340000    # 45.0f

    :goto_2b2
    mul-float v4, v4, v23

    .line 146
    :goto_2b4
    const-string v5, "#020202"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 147
    invoke-virtual {v8, v1, v2, v4, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    if-nez p4, :cond_2c5

    const/high16 v1, 0x41980000    # 19.0f

    goto :goto_2c7

    :cond_2c5
    const/high16 v1, 0x41700000    # 15.0f

    :goto_2c7
    mul-float v6, v23, v1

    .line 150
    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 151
    const-string v1, "#808080"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    if-nez p4, :cond_2da

    const/high16 v9, 0x41d80000    # 27.0f

    goto :goto_2dc

    :cond_2da
    const/high16 v9, 0x41c00000    # 24.0f

    :goto_2dc
    mul-float v6, v23, v9

    sub-float/2addr v13, v6

    sub-float v13, v13, v17

    if-nez p3, :cond_2ee

    .line 157
    iget-object v0, v0, Lcom/imaging/libwatermark/painters/WatermarkPainterPova;->context:Landroid/content/Context;

    sget v1, Lcom/imaging/libwatermark/R$font;->custom_light:I

    invoke-static {v0, v1}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_2ee
    if-nez v24, :cond_2f7

    .line 160
    invoke-virtual/range {p1 .. p1}, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->getLocationInfo()Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-virtual {v8, v0, v2, v13, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_2f7
    if-nez v15, :cond_300

    .line 166
    invoke-virtual/range {p1 .. p1}, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->getTimeInfo()Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-virtual {v8, v0, v10, v13, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_300
    return-object v16

    .line 34
    :cond_301
    :goto_301
    sget-object v0, Lcom/imaging/libwatermark/utils/LogUtils;->INSTANCE:Lcom/imaging/libwatermark/utils/LogUtils;

    const-string v1, "invalid width or height"

    invoke-virtual {v0, v4, v1}, Lcom/imaging/libwatermark/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p6
.end method
