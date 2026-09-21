.class public final Lcom/imaging/libwatermark/painters/WatermarkPainterZero;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/imaging/libwatermark/interfaces/IWatermarkPainter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imaging/libwatermark/painters/WatermarkPainterZero$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/imaging/libwatermark/painters/WatermarkPainterZero$Companion;

.field private static final TAG:Ljava/lang/String; = "WatermarkPainterZero"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/imaging/libwatermark/painters/WatermarkPainterZero$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/imaging/libwatermark/painters/WatermarkPainterZero$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/imaging/libwatermark/painters/WatermarkPainterZero;->Companion:Lcom/imaging/libwatermark/painters/WatermarkPainterZero$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/imaging/libwatermark/painters/WatermarkPainterZero;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public drawWatermark(Lcom/imaging/libwatermark/data/WatermarkPaintInfo;IIZILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 31

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p5

    const-string v4, "watermarkPaintInfo"

    move-object/from16 v5, p1

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    const-string v4, "WatermarkPainterZero"

    if-lez v1, :cond_2ac

    if-gt v2, v3, :cond_17

    goto/16 :goto_2ac

    :cond_17
    if-eqz p4, :cond_1c

    const/high16 v6, 0x42be0000    # 95.0f

    goto :goto_1e

    :cond_1c
    const/high16 v6, 0x42e20000    # 113.0f

    :goto_1e
    sub-int/2addr v2, v3

    if-nez p6, :cond_2d

    .line 46
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    const-string v8, "createBitmap(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2f

    :cond_2d
    move-object/from16 v7, p6

    .line 47
    :goto_2f
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    int-to-float v3, v3

    const/4 v9, 0x0

    .line 48
    invoke-virtual {v8, v9, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 49
    new-instance v3, Landroid/graphics/Paint;

    const/4 v10, 0x3

    invoke-direct {v3, v10}, Landroid/graphics/Paint;-><init>(I)V

    int-to-float v1, v1

    const/high16 v11, 0x44870000    # 1080.0f

    div-float v11, v1, v11

    int-to-float v12, v2

    div-float v6, v12, v6

    .line 52
    sget-object v13, Lcom/imaging/libwatermark/utils/LogUtils;->INSTANCE:Lcom/imaging/libwatermark/utils/LogUtils;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "widthRatio = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v15, ", heightRatio = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v4, v14}, Lcom/imaging/libwatermark/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, -0x1

    .line 55
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v9, v9, v1, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v8, v4, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 59
    invoke-virtual {v5}, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->getState()I

    move-result v4

    const/4 v9, 0x1

    if-eq v4, v10, :cond_7d

    if-ne v4, v9, :cond_7b

    goto :goto_7d

    :cond_7b
    const/4 v10, 0x0

    goto :goto_7e

    :cond_7d
    :goto_7d
    move v10, v9

    :goto_7e
    const/4 v14, 0x2

    if-eq v4, v14, :cond_86

    if-ne v4, v9, :cond_84

    goto :goto_86

    :cond_84
    const/4 v4, 0x0

    goto :goto_87

    :cond_86
    :goto_86
    move v4, v9

    :goto_87
    const/high16 v15, 0x41f00000    # 30.0f

    if-nez p4, :cond_94

    const/high16 v16, 0x421c0000    # 39.0f

    mul-float v16, v16, v11

    :goto_8f
    move/from16 p2, v9

    move/from16 v9, v16

    goto :goto_97

    :cond_94
    mul-float v16, v11, v15

    goto :goto_8f

    .line 65
    :goto_97
    invoke-virtual {v5}, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->getShowDeviceName()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 66
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    const/4 v13, 0x0

    if-nez v16, :cond_d3

    move/from16 v16, v1

    const-string v1, " "

    move/from16 v23, v2

    const/4 v2, 0x0

    invoke-static {v15, v1, v2, v14, v13}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d7

    const/16 v21, 0x6

    const/16 v22, 0x0

    .line 68
    const-string v18, " "

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v17, v15

    invoke-static/range {v17 .. v22}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v15, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    const-string v1, "substring(...)"

    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_d7

    :cond_d3
    move/from16 v16, v1

    move/from16 v23, v2

    .line 70
    :cond_d7
    :goto_d7
    iget-object v1, v0, Lcom/imaging/libwatermark/painters/WatermarkPainterZero;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "font/roboto_medium.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 71
    const-string v1, "#020202"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 73
    const-string v2, "ZERO 40"

    move/from16 p2, v4

    const/4 v4, 0x0

    invoke-static {v15, v2, v4, v14, v13}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v13

    .line 76
    invoke-virtual {v5}, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->getRealDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/high16 v17, 0x41d80000    # 27.0f

    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x41c00000    # 24.0f

    if-lez v4, :cond_10e

    goto :goto_110

    :cond_10e
    if-nez v13, :cond_15b

    :goto_110
    if-nez p4, :cond_11b

    if-eqz v10, :cond_118

    const v2, 0x411ab852    # 9.67f

    goto :goto_123

    :cond_118
    const/high16 v2, 0x41000000    # 8.0f

    goto :goto_123

    :cond_11b
    if-eqz v10, :cond_121

    const v2, 0x40ea8f5c    # 7.33f

    goto :goto_123

    :cond_121
    const/high16 v2, 0x40c00000    # 6.0f

    .line 83
    :goto_123
    sget-object v4, Lcom/imaging/libwatermark/utils/SizeUtils;->INSTANCE:Lcom/imaging/libwatermark/utils/SizeUtils;

    iget-object v14, v0, Lcom/imaging/libwatermark/painters/WatermarkPainterZero;->context:Landroid/content/Context;

    invoke-virtual {v4, v14, v2}, Lcom/imaging/libwatermark/utils/SizeUtils;->dp2pxF(Landroid/content/Context;F)F

    move-result v2

    mul-float/2addr v2, v6

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 84
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v3, v15, v4, v2, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    if-eqz v10, :cond_144

    .line 86
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int v2, v23, v2

    int-to-float v2, v2

    const/4 v4, 0x2

    int-to-float v14, v4

    div-float/2addr v2, v14

    goto :goto_14c

    :cond_144
    if-nez p4, :cond_149

    const/high16 v2, 0x41f00000    # 30.0f

    goto :goto_14b

    :cond_149
    move/from16 v2, v17

    :goto_14b
    mul-float/2addr v2, v6

    .line 90
    :goto_14c
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    .line 91
    invoke-virtual {v8, v15, v9, v4, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_155
    move/from16 p3, v6

    move-object/from16 v20, v7

    goto/16 :goto_1ca

    .line 94
    :cond_15b
    const-string v4, "ZERO 40 5G"

    invoke-static {v15, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_166

    sget v2, Lcom/imaging/libwatermark/R$drawable;->ic_watermark_zero40_5g_device_logo:I

    goto :goto_170

    .line 95
    :cond_166
    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16f

    sget v2, Lcom/imaging/libwatermark/R$drawable;->ic_watermark_zero40_device_logo:I

    goto :goto_170

    :cond_16f
    const/4 v2, 0x0

    .line 98
    :goto_170
    sget-object v4, Lcom/imaging/libwatermark/utils/BitmapUtils;->INSTANCE:Lcom/imaging/libwatermark/utils/BitmapUtils;

    iget-object v14, v0, Lcom/imaging/libwatermark/painters/WatermarkPainterZero;->context:Landroid/content/Context;

    invoke-virtual {v4, v14, v2}, Lcom/imaging/libwatermark/utils/BitmapUtils;->getBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_155

    if-eqz v10, :cond_17f

    move/from16 v4, v18

    goto :goto_182

    :cond_17f
    const v4, 0x3f5f4738

    :goto_182
    if-nez p4, :cond_187

    move/from16 v14, v18

    goto :goto_18a

    :cond_187
    const v14, 0x3f4267f1    # 0.7593985f

    :goto_18a
    const/high16 v15, 0x43850000    # 266.0f

    mul-float/2addr v15, v11

    mul-float/2addr v15, v4

    mul-float/2addr v15, v14

    const/high16 v20, 0x420c0000    # 35.0f

    mul-float v21, v6, v20

    mul-float v21, v21, v4

    mul-float v21, v21, v14

    if-eqz v10, :cond_1a2

    sub-float v4, v12, v21

    move/from16 p3, v4

    const/4 v14, 0x2

    int-to-float v4, v14

    div-float v4, p3, v4

    goto :goto_1a9

    :cond_1a2
    if-nez p4, :cond_1a5

    goto :goto_1a7

    :cond_1a5
    move/from16 v20, v19

    :goto_1a7
    mul-float v4, v6, v20

    .line 108
    :goto_1a9
    new-instance v14, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    move/from16 p3, v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    move-object/from16 v20, v7

    const/4 v7, 0x0

    invoke-direct {v14, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 109
    new-instance v5, Landroid/graphics/Rect;

    float-to-int v6, v9

    float-to-int v7, v4

    add-float/2addr v15, v9

    float-to-int v15, v15

    add-float v4, v4, v21

    float-to-int v4, v4

    invoke-direct {v5, v6, v7, v15, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 115
    invoke-virtual {v8, v2, v14, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 120
    :goto_1ca
    invoke-virtual/range {p1 .. p1}, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->getSpecialItemName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1d8

    invoke-virtual/range {p1 .. p1}, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->getLensInfo()Ljava/lang/String;

    move-result-object v2

    :cond_1d8
    if-nez p4, :cond_1dd

    const/high16 v4, 0x41b80000    # 23.0f

    goto :goto_1df

    :cond_1dd
    const/high16 v4, 0x41900000    # 18.0f

    :goto_1df
    mul-float v6, p3, v4

    .line 121
    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 122
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v7, 0x0

    invoke-virtual {v3, v2, v7, v4, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    sub-float v4, v16, v9

    .line 123
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    if-eqz p2, :cond_203

    .line 125
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int v5, v23, v5

    const/4 v14, 0x2

    div-int/2addr v5, v14

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_210

    :cond_203
    if-nez p4, :cond_208

    move/from16 v5, v17

    goto :goto_20a

    :cond_208
    move/from16 v5, v19

    :goto_20a
    mul-float v6, p3, v5

    .line 127
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 129
    :goto_210
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v5, v1

    int-to-float v1, v5

    .line 130
    invoke-virtual {v8, v2, v4, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    if-eqz v13, :cond_268

    if-nez p4, :cond_224

    move/from16 v2, v19

    goto :goto_226

    :cond_224
    const/high16 v2, 0x41980000    # 19.0f

    :goto_226
    mul-float/2addr v2, v11

    if-nez p4, :cond_22a

    goto :goto_22d

    :cond_22a
    const v18, 0x3f40ca46

    :goto_22d
    const/high16 v5, 0x434a0000    # 202.0f

    mul-float/2addr v11, v5

    mul-float v11, v11, v18

    const/high16 v5, 0x42440000    # 49.0f

    mul-float v6, p3, v5

    mul-float v6, v6, v18

    .line 138
    sget-object v5, Lcom/imaging/libwatermark/utils/BitmapUtils;->INSTANCE:Lcom/imaging/libwatermark/utils/BitmapUtils;

    iget-object v7, v0, Lcom/imaging/libwatermark/painters/WatermarkPainterZero;->context:Landroid/content/Context;

    sget v13, Lcom/imaging/libwatermark/R$drawable;->ic_watermark_go_pro_logo:I

    invoke-virtual {v5, v7, v13}, Lcom/imaging/libwatermark/utils/BitmapUtils;->getBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_268

    sub-float v2, v4, v2

    sub-float/2addr v2, v11

    sub-float v7, v12, v6

    const/4 v14, 0x2

    int-to-float v13, v14

    div-float/2addr v7, v13

    .line 141
    new-instance v13, Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    const/4 v1, 0x0

    invoke-direct {v13, v1, v1, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 142
    new-instance v1, Landroid/graphics/Rect;

    float-to-int v14, v2

    float-to-int v15, v7

    add-float/2addr v2, v11

    float-to-int v2, v2

    add-float/2addr v7, v6

    float-to-int v6, v7

    invoke-direct {v1, v14, v15, v2, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 148
    invoke-virtual {v8, v5, v13, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 153
    :cond_268
    iget-object v0, v0, Lcom/imaging/libwatermark/painters/WatermarkPainterZero;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "font/roboto_regular.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    if-nez p4, :cond_27c

    const/high16 v1, 0x41980000    # 19.0f

    goto :goto_27e

    :cond_27c
    const/high16 v1, 0x41700000    # 15.0f

    :goto_27e
    mul-float v6, p3, v1

    .line 154
    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 155
    const-string v0, "#808080"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v0, 0x3fc00000    # 1.5f

    mul-float v6, p3, v0

    if-nez p4, :cond_293

    goto :goto_295

    :cond_293
    move/from16 v17, v19

    :goto_295
    mul-float v0, p3, v17

    sub-float/2addr v12, v0

    sub-float/2addr v12, v6

    if-nez p2, :cond_2a2

    .line 162
    invoke-virtual/range {p1 .. p1}, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->getLocationInfo()Ljava/lang/String;

    move-result-object v0

    .line 163
    invoke-virtual {v8, v0, v4, v12, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_2a2
    if-nez v10, :cond_2ab

    .line 168
    invoke-virtual/range {p1 .. p1}, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->getTimeInfo()Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-virtual {v8, v0, v9, v12, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_2ab
    return-object v20

    .line 38
    :cond_2ac
    :goto_2ac
    sget-object v0, Lcom/imaging/libwatermark/utils/LogUtils;->INSTANCE:Lcom/imaging/libwatermark/utils/LogUtils;

    const-string v1, "invalid width or height"

    invoke-virtual {v0, v4, v1}, Lcom/imaging/libwatermark/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p6
.end method
