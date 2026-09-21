.class public final Lcom/imaging/libwatermark/painters/WatermarkPainterCamon;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/imaging/libwatermark/interfaces/IWatermarkPainter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imaging/libwatermark/painters/WatermarkPainterCamon$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/imaging/libwatermark/painters/WatermarkPainterCamon$Companion;

.field private static final TAG:Ljava/lang/String; = "WatermarkPainterCamon"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/imaging/libwatermark/painters/WatermarkPainterCamon$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/imaging/libwatermark/painters/WatermarkPainterCamon$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/imaging/libwatermark/painters/WatermarkPainterCamon;->Companion:Lcom/imaging/libwatermark/painters/WatermarkPainterCamon$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/imaging/libwatermark/painters/WatermarkPainterCamon;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public drawWatermark(Lcom/imaging/libwatermark/data/WatermarkPaintInfo;IIZILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 30

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p5

    const-string v4, "watermarkPaintInfo"

    move-object/from16 v5, p1

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    const-string v4, "WatermarkPainterCamon"

    if-lez v1, :cond_27a

    if-gt v2, v3, :cond_17

    goto/16 :goto_27a

    :cond_17
    if-eqz p4, :cond_1c

    const/high16 v6, 0x42be0000    # 95.0f

    goto :goto_1e

    :cond_1c
    const/high16 v6, 0x42e20000    # 113.0f

    :goto_1e
    sub-int/2addr v2, v3

    if-nez p6, :cond_2d

    .line 176
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 178
    invoke-static {v1, v2, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    const-string v8, "createBitmap(width, height, config)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2f

    :cond_2d
    move-object/from16 v7, p6

    .line 48
    :goto_2f
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    int-to-float v3, v3

    const/4 v9, 0x0

    .line 49
    invoke-virtual {v8, v9, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 50
    new-instance v3, Landroid/graphics/Paint;

    const/4 v10, 0x3

    invoke-direct {v3, v10}, Landroid/graphics/Paint;-><init>(I)V

    int-to-float v11, v1

    const/high16 v12, 0x44870000    # 1080.0f

    div-float v12, v11, v12

    int-to-float v13, v2

    div-float v6, v13, v6

    .line 53
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

    .line 56
    sget v10, Lcom/imaging/libwatermark/R$drawable;->ic_watermark_camon_grey_side:I

    .line 57
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "colorStyle="

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->getColorStyle()I

    move-result v9

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14, v4, v9}, Lcom/imaging/libwatermark/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v5}, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->getColorStyle()I

    move-result v9

    const/4 v15, 0x1

    if-ne v9, v15, :cond_92

    .line 60
    const-string v9, "#131313"

    .line 179
    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    .line 60
    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    sget v10, Lcom/imaging/libwatermark/R$drawable;->ic_watermark_camon_black_side:I

    goto :goto_96

    :cond_92
    const/4 v9, -0x1

    .line 65
    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    :goto_96
    new-instance v9, Landroid/graphics/RectF;

    const/4 v15, 0x0

    invoke-direct {v9, v15, v15, v11, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v8, v9, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    if-nez p4, :cond_a5

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v11, v9

    goto :goto_aa

    :cond_a5
    const v9, 0x441c8000    # 626.0f

    mul-float v11, v12, v9

    .line 78
    :goto_aa
    sget-object v9, Lcom/imaging/libwatermark/utils/BitmapUtils;->INSTANCE:Lcom/imaging/libwatermark/utils/BitmapUtils;

    iget-object v15, v0, Lcom/imaging/libwatermark/painters/WatermarkPainterCamon;->context:Landroid/content/Context;

    invoke-virtual {v9, v15, v10}, Lcom/imaging/libwatermark/utils/BitmapUtils;->getBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v9

    const/4 v10, 0x0

    if-eqz v9, :cond_ce

    .line 79
    new-instance v15, Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    move/from16 p5, v6

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v15, v10, v10, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 80
    new-instance v5, Landroid/graphics/Rect;

    float-to-int v6, v11

    invoke-direct {v5, v6, v10, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 81
    invoke-virtual {v8, v9, v15, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_d0

    :cond_ce
    move/from16 p5, v6

    .line 85
    :goto_d0
    invoke-virtual/range {p1 .. p1}, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->getState()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_dd

    const/4 v6, 0x1

    if-ne v5, v6, :cond_db

    goto :goto_de

    :cond_db
    move v9, v10

    goto :goto_df

    :cond_dd
    const/4 v6, 0x1

    :goto_de
    move v9, v6

    :goto_df
    const/4 v11, 0x2

    if-eq v5, v11, :cond_e7

    if-ne v5, v6, :cond_e5

    goto :goto_e7

    :cond_e5
    move v6, v10

    goto :goto_e8

    :cond_e7
    :goto_e7
    const/4 v6, 0x1

    :goto_e8
    if-nez p4, :cond_ee

    const/high16 v5, 0x421c0000    # 39.0f

    :goto_ec
    mul-float/2addr v5, v12

    goto :goto_f1

    :cond_ee
    const/high16 v5, 0x41f00000    # 30.0f

    goto :goto_ec

    .line 91
    :goto_f1
    invoke-virtual/range {p1 .. p1}, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->getShowDeviceName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 92
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_12c

    const-string v1, " "

    move/from16 p3, v2

    const/4 v2, 0x0

    invoke-static {v15, v1, v10, v11, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12e

    const/16 v21, 0x6

    const/16 v22, 0x0

    .line 94
    const-string v18, " "

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v17, v15

    invoke-static/range {v17 .. v22}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v1

    const/16 v16, 0x1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v15, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    const-string v1, "substring(...)"

    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_12e

    :cond_12c
    move/from16 p3, v2

    .line 96
    :cond_12e
    :goto_12e
    iget-object v1, v0, Lcom/imaging/libwatermark/painters/WatermarkPainterCamon;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "font/tos_bold.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 99
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 100
    invoke-virtual/range {p1 .. p1}, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->getColorStyle()I

    move-result v2

    if-nez v2, :cond_14e

    const/high16 v2, -0x1000000

    .line 101
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_152

    :cond_14e
    const/4 v2, -0x1

    .line 103
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    :goto_152
    const/high16 v16, 0x41c00000    # 24.0f

    if-nez p4, :cond_15e

    if-eqz v9, :cond_15b

    const/high16 v17, 0x41e80000    # 29.0f

    goto :goto_165

    :cond_15b
    move/from16 v17, v16

    goto :goto_165

    :cond_15e
    if-eqz v9, :cond_163

    const/high16 v17, 0x41b00000    # 22.0f

    goto :goto_165

    :cond_163
    const/high16 v17, 0x41900000    # 18.0f

    :goto_165
    mul-float v2, p5, v17

    .line 110
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 111
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v3, v15, v10, v2, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "textRect.height="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v4, v2}, Lcom/imaging/libwatermark/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v9, :cond_19b

    .line 114
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int v4, p3, v4

    int-to-float v4, v4

    int-to-float v10, v11

    div-float/2addr v4, v10

    add-float/2addr v2, v4

    goto :goto_1a4

    :cond_19b
    if-nez p4, :cond_1a0

    const/high16 v2, 0x42580000    # 54.0f

    goto :goto_1a2

    :cond_1a0
    const/high16 v2, 0x42380000    # 46.0f

    :goto_1a2
    mul-float v2, v2, p5

    .line 118
    :goto_1a4
    invoke-virtual {v8, v15, v5, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    if-nez p4, :cond_1ac

    const/high16 v4, 0x41000000    # 8.0f

    goto :goto_1ae

    :cond_1ac
    const/high16 v4, 0x40c00000    # 6.0f

    :goto_1ae
    mul-float/2addr v12, v4

    .line 122
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v5

    add-float/2addr v4, v12

    .line 123
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v2, v10

    if-nez p4, :cond_1c6

    if-eqz v9, :cond_1c3

    const/high16 v10, 0x40d00000    # 6.5f

    goto :goto_1cd

    :cond_1c3
    const/high16 v10, 0x40b00000    # 5.5f

    goto :goto_1cd

    :cond_1c6
    if-eqz v9, :cond_1cb

    const/high16 v10, 0x40a00000    # 5.0f

    goto :goto_1cd

    :cond_1cb
    const/high16 v10, 0x40800000    # 4.0f

    :goto_1cd
    mul-float v10, v10, p5

    const/high16 v12, -0x10000

    .line 129
    invoke-virtual {v3, v12}, Landroid/graphics/Paint;->setColor(I)V

    add-float/2addr v4, v10

    add-float/2addr v2, v10

    .line 130
    invoke-virtual {v8, v4, v2, v10, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 133
    invoke-virtual/range {p1 .. p1}, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->getSpecialItemName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1e7

    invoke-virtual/range {p1 .. p1}, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->getLensInfo()Ljava/lang/String;

    move-result-object v2

    :cond_1e7
    if-nez p4, :cond_1ee

    const/high16 v4, 0x41b80000    # 23.0f

    move/from16 v18, v4

    goto :goto_1f0

    :cond_1ee
    const/high16 v18, 0x41900000    # 18.0f

    :goto_1f0
    mul-float v4, p5, v18

    .line 134
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 135
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v10, 0x0

    invoke-virtual {v3, v2, v10, v4, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 136
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int v4, p2, v4

    int-to-float v4, v4

    sub-float/2addr v4, v5

    if-eqz v6, :cond_217

    .line 138
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int v1, p3, v1

    int-to-float v1, v1

    int-to-float v11, v11

    div-float/2addr v1, v11

    add-float/2addr v10, v1

    goto :goto_220

    :cond_217
    if-nez p4, :cond_21c

    const/high16 v1, 0x42540000    # 53.0f

    goto :goto_21e

    :cond_21c
    const/high16 v1, 0x42340000    # 45.0f

    :goto_21e
    mul-float v10, p5, v1

    .line 143
    :goto_220
    invoke-virtual/range {p1 .. p1}, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->getColorStyle()I

    move-result v1

    if-nez v1, :cond_230

    .line 144
    const-string v1, "#020202"

    .line 181
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 144
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_234

    :cond_230
    const/4 v1, -0x1

    .line 146
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 148
    :goto_234
    invoke-virtual {v8, v2, v4, v10, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 151
    iget-object v0, v0, Lcom/imaging/libwatermark/painters/WatermarkPainterCamon;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "font/tos_regular.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    if-nez p4, :cond_24b

    const/high16 v0, 0x41980000    # 19.0f

    goto :goto_24d

    :cond_24b
    const/high16 v0, 0x41700000    # 15.0f

    :goto_24d
    mul-float v0, v0, p5

    .line 152
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 153
    const-string v0, "#808080"

    .line 182
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 153
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v0, 0x3fc00000    # 1.5f

    mul-float v0, v0, p5

    if-nez p4, :cond_263

    const/high16 v16, 0x41d80000    # 27.0f

    :cond_263
    mul-float v1, p5, v16

    sub-float/2addr v13, v1

    sub-float/2addr v13, v0

    if-nez v6, :cond_270

    .line 160
    invoke-virtual/range {p1 .. p1}, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->getLocationInfo()Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-virtual {v8, v0, v4, v13, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_270
    if-nez v9, :cond_279

    .line 166
    invoke-virtual/range {p1 .. p1}, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->getTimeInfo()Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-virtual {v8, v0, v5, v13, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_279
    return-object v7

    .line 39
    :cond_27a
    :goto_27a
    sget-object v0, Lcom/imaging/libwatermark/utils/LogUtils;->INSTANCE:Lcom/imaging/libwatermark/utils/LogUtils;

    const-string v1, "invalid width or height"

    invoke-virtual {v0, v4, v1}, Lcom/imaging/libwatermark/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p6
.end method
