.class public final Lcom/imaging/libwatermark/painters/WatermarkPainterNote;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/imaging/libwatermark/interfaces/IWatermarkPainter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imaging/libwatermark/painters/WatermarkPainterNote$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/imaging/libwatermark/painters/WatermarkPainterNote$Companion;

.field private static final TAG:Ljava/lang/String; = "WatermarkNotePainter"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/imaging/libwatermark/painters/WatermarkPainterNote$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/imaging/libwatermark/painters/WatermarkPainterNote$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/imaging/libwatermark/painters/WatermarkPainterNote;->Companion:Lcom/imaging/libwatermark/painters/WatermarkPainterNote$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/imaging/libwatermark/painters/WatermarkPainterNote;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public drawWatermark(Lcom/imaging/libwatermark/data/WatermarkPaintInfo;IIZILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 32

    move-object/from16 v0, p0

    const-string v1, "watermarkPaintInfo"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {v2}, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->getColorStyle()I

    move-result v1

    if-lez v1, :cond_27

    .line 42
    new-instance v1, Lcom/imaging/libwatermark/painters/WatermarkPainterNoteSpecial;

    iget-object v0, v0, Lcom/imaging/libwatermark/painters/WatermarkPainterNote;->context:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/imaging/libwatermark/painters/WatermarkPainterNoteSpecial;-><init>(Landroid/content/Context;)V

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object v0, v1

    move-object v1, v2

    move/from16 v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/imaging/libwatermark/painters/WatermarkPainterNoteSpecial;->drawWatermark(Lcom/imaging/libwatermark/data/WatermarkPaintInfo;IIZILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_27
    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v5, p5

    .line 47
    const-string v1, "WatermarkNotePainter"

    if-lez v2, :cond_446

    if-gt v3, v5, :cond_35

    goto/16 :goto_446

    :cond_35
    if-eqz p4, :cond_3a

    const/high16 v4, 0x42be0000    # 95.0f

    goto :goto_3c

    :cond_3a
    const/high16 v4, 0x42e20000    # 113.0f

    :goto_3c
    sub-int/2addr v3, v5

    if-nez p6, :cond_4b

    .line 271
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 273
    invoke-static {v2, v3, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    const-string v7, "createBitmap(width, height, config)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4d

    :cond_4b
    move-object/from16 v6, p6

    .line 56
    :goto_4d
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    int-to-float v5, v5

    const/4 v8, 0x0

    .line 57
    invoke-virtual {v7, v8, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 58
    new-instance v5, Landroid/graphics/Paint;

    const/4 v9, 0x3

    invoke-direct {v5, v9}, Landroid/graphics/Paint;-><init>(I)V

    int-to-float v2, v2

    const/high16 v10, 0x44870000    # 1080.0f

    div-float v10, v2, v10

    int-to-float v11, v3

    div-float v4, v11, v4

    .line 61
    sget-object v12, Lcom/imaging/libwatermark/utils/LogUtils;->INSTANCE:Lcom/imaging/libwatermark/utils/LogUtils;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "widthRatio = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v14, ", heightRatio = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v1, v13}, Lcom/imaging/libwatermark/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    .line 64
    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v8, v8, v2, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v7, v1, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 68
    invoke-virtual/range {p1 .. p1}, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->getState()I

    move-result v1

    const/4 v8, 0x1

    const/4 v12, 0x0

    if-eq v1, v9, :cond_9c

    if-ne v1, v8, :cond_9a

    goto :goto_9c

    :cond_9a
    move v9, v12

    goto :goto_9d

    :cond_9c
    :goto_9c
    move v9, v8

    :goto_9d
    const/4 v13, 0x2

    if-eq v1, v13, :cond_a5

    if-ne v1, v8, :cond_a3

    goto :goto_a5

    :cond_a3
    move v1, v12

    goto :goto_a6

    :cond_a5
    :goto_a5
    move v1, v8

    :goto_a6
    const/high16 v14, 0x41f00000    # 30.0f

    if-nez p4, :cond_ae

    const/high16 v15, 0x421c0000    # 39.0f

    mul-float/2addr v15, v10

    goto :goto_b0

    :cond_ae
    mul-float v15, v10, v14

    .line 74
    :goto_b0
    invoke-virtual/range {p1 .. p1}, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->getShowDeviceName()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v16

    move/from16 p2, v8

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 75
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    const/4 v14, 0x0

    move/from16 p5, v1

    if-nez v16, :cond_ea

    const-string v1, " "

    invoke-static {v8, v1, v12, v13, v14}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ea

    const/16 v21, 0x6

    const/16 v22, 0x0

    .line 77
    const-string v18, " "

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v17, v8

    invoke-static/range {v17 .. v22}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v8, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const-string v1, "substring(...)"

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    :cond_ea
    iget-object v1, v0, Lcom/imaging/libwatermark/painters/WatermarkPainterNote;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v12, "font/roboto_medium.ttf"

    invoke-static {v1, v12}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 80
    const-string v1, "#020202"

    .line 274
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 80
    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 82
    invoke-virtual/range {p1 .. p1}, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->getRealDeviceName()Ljava/lang/String;

    move-result-object v12

    move/from16 v16, v2

    const-string v2, "NOTE 50"

    move/from16 v17, v3

    const/4 v3, 0x0

    invoke-static {v12, v2, v3, v13, v14}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v12

    move/from16 v18, v4

    .line 84
    invoke-virtual/range {p1 .. p1}, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->getRealDeviceName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v19, v6

    const-string v6, "NOTE 60"

    invoke-static {v4, v6, v3, v13, v14}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v4

    const-string v3, "NOTE Edge"

    if-nez v4, :cond_139

    invoke-virtual/range {p1 .. p1}, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->getRealDeviceName()Ljava/lang/String;

    move-result-object v4

    move/from16 v20, v9

    const/4 v9, 0x0

    invoke-static {v4, v3, v9, v13, v14}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_136

    goto :goto_13c

    :cond_136
    move/from16 p2, v9

    goto :goto_13c

    :cond_139
    move/from16 v20, v9

    const/4 v9, 0x0

    .line 85
    :goto_13c
    invoke-virtual/range {p1 .. p1}, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->getRealDeviceName()Ljava/lang/String;

    move-result-object v4

    move/from16 v21, v10

    const-string v10, "GT 50"

    invoke-static {v4, v10, v9, v13, v14}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v4

    const/high16 v9, 0x43820000    # 260.0f

    const v10, 0x3f44ec4f

    const v14, 0x3f589d8a

    const/high16 v22, 0x41d80000    # 27.0f

    const/high16 v23, 0x3f800000    # 1.0f

    if-eqz v12, :cond_1ee

    .line 90
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_44e

    goto :goto_1a3

    :sswitch_15e
    const-string v2, "NOTE 50X 5G"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_167

    goto :goto_1a3

    .line 93
    :cond_167
    sget v2, Lcom/imaging/libwatermark/R$drawable;->ic_watermark_note50_x_device_logo:I

    goto :goto_1a4

    .line 90
    :sswitch_16a
    const-string v2, "NOTE 50S 5G"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_173

    goto :goto_1a3

    .line 94
    :cond_173
    sget v2, Lcom/imaging/libwatermark/R$drawable;->ic_watermark_note50_s_device_logo:I

    goto :goto_1a4

    .line 90
    :sswitch_176
    const-string v2, "NOTE 50 Pro"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17f

    goto :goto_1a3

    .line 92
    :cond_17f
    sget v2, Lcom/imaging/libwatermark/R$drawable;->ic_watermark_note50_pro_device_logo:I

    goto :goto_1a4

    .line 90
    :sswitch_182
    const-string v2, "NOTE 50 Pro 5G"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18b

    goto :goto_1a3

    .line 95
    :cond_18b
    sget v2, Lcom/imaging/libwatermark/R$drawable;->ic_watermark_note50_pro_5g_device_logo:I

    goto :goto_1a4

    .line 90
    :sswitch_18e
    const-string v2, "NOTE 50 Pro+ 5G"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_197

    goto :goto_1a3

    .line 96
    :cond_197
    sget v2, Lcom/imaging/libwatermark/R$drawable;->ic_watermark_note50_pro_plus_5g_device_logo:I

    goto :goto_1a4

    .line 90
    :sswitch_19a
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a3

    .line 91
    sget v2, Lcom/imaging/libwatermark/R$drawable;->ic_watermark_note50_device_logo:I

    goto :goto_1a4

    :cond_1a3
    :goto_1a3
    const/4 v2, 0x0

    .line 99
    :goto_1a4
    sget-object v3, Lcom/imaging/libwatermark/utils/BitmapUtils;->INSTANCE:Lcom/imaging/libwatermark/utils/BitmapUtils;

    iget-object v6, v0, Lcom/imaging/libwatermark/painters/WatermarkPainterNote;->context:Landroid/content/Context;

    invoke-virtual {v3, v6, v2}, Lcom/imaging/libwatermark/utils/BitmapUtils;->getBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_2c5

    if-eqz v20, :cond_1b2

    move/from16 v14, v23

    :cond_1b2
    if-nez p4, :cond_1b6

    move/from16 v10, v23

    :cond_1b6
    mul-float v3, v21, v9

    mul-float/2addr v3, v14

    mul-float/2addr v3, v10

    const/high16 v6, 0x41b00000    # 22.0f

    mul-float v6, v6, v18

    mul-float/2addr v6, v14

    mul-float/2addr v6, v10

    if-eqz v20, :cond_1c7

    sub-float v8, v11, v6

    int-to-float v9, v13

    div-float/2addr v8, v9

    goto :goto_1d0

    :cond_1c7
    if-nez p4, :cond_1cc

    const/high16 v14, 0x41f00000    # 30.0f

    goto :goto_1ce

    :cond_1cc
    move/from16 v14, v22

    :goto_1ce
    mul-float v8, v18, v14

    .line 110
    :goto_1d0
    new-instance v9, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    const/4 v13, 0x0

    invoke-direct {v9, v13, v13, v10, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 111
    new-instance v10, Landroid/graphics/Rect;

    float-to-int v13, v15

    float-to-int v14, v8

    add-float/2addr v3, v15

    float-to-int v3, v3

    add-float/2addr v8, v6

    float-to-int v6, v8

    invoke-direct {v10, v13, v14, v3, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 117
    invoke-virtual {v7, v2, v9, v10, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_30c

    :cond_1ee
    const/high16 v2, 0x42080000    # 34.0f

    if-eqz p2, :cond_26f

    .line 120
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_468

    goto :goto_222

    :sswitch_1fa
    const-string v3, "NOTE 60 Pro"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_203

    goto :goto_222

    .line 122
    :cond_203
    sget v3, Lcom/imaging/libwatermark/R$drawable;->ic_watermark_note60_pro_device_logo:I

    goto :goto_226

    .line 120
    :sswitch_206
    const-string v3, "NOTE 60 Ultra"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20f

    goto :goto_222

    .line 123
    :cond_20f
    sget v3, Lcom/imaging/libwatermark/R$drawable;->ic_watermark_note60_ultra_device_logo:I

    goto :goto_226

    .line 120
    :sswitch_212
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_219

    goto :goto_222

    .line 124
    :cond_219
    sget v3, Lcom/imaging/libwatermark/R$drawable;->ic_watermark_note_edge_device_logo:I

    goto :goto_226

    .line 120
    :sswitch_21c
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_224

    :goto_222
    const/4 v3, 0x0

    goto :goto_226

    .line 121
    :cond_224
    sget v3, Lcom/imaging/libwatermark/R$drawable;->ic_watermark_note60_device_logo:I

    .line 127
    :goto_226
    sget-object v6, Lcom/imaging/libwatermark/utils/BitmapUtils;->INSTANCE:Lcom/imaging/libwatermark/utils/BitmapUtils;

    iget-object v13, v0, Lcom/imaging/libwatermark/painters/WatermarkPainterNote;->context:Landroid/content/Context;

    invoke-virtual {v6, v13, v3}, Lcom/imaging/libwatermark/utils/BitmapUtils;->getBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_2c5

    if-eqz v20, :cond_234

    move/from16 v14, v23

    :cond_234
    if-nez p4, :cond_238

    move/from16 v10, v23

    :cond_238
    mul-float v6, v21, v9

    mul-float/2addr v6, v14

    mul-float/2addr v6, v10

    mul-float v2, v2, v18

    mul-float/2addr v2, v14

    mul-float/2addr v2, v10

    if-eqz v20, :cond_248

    sub-float v8, v11, v2

    const/4 v9, 0x2

    int-to-float v10, v9

    div-float/2addr v8, v10

    goto :goto_251

    :cond_248
    if-nez p4, :cond_24d

    const/high16 v14, 0x41f00000    # 30.0f

    goto :goto_24f

    :cond_24d
    move/from16 v14, v22

    :goto_24f
    mul-float v8, v18, v14

    .line 138
    :goto_251
    new-instance v9, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    const/4 v14, 0x0

    invoke-direct {v9, v14, v14, v10, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 139
    new-instance v10, Landroid/graphics/Rect;

    float-to-int v13, v15

    float-to-int v14, v8

    add-float/2addr v6, v15

    float-to-int v6, v6

    add-float/2addr v8, v2

    float-to-int v2, v8

    invoke-direct {v10, v13, v14, v6, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 145
    invoke-virtual {v7, v3, v9, v10, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_30c

    :cond_26f
    if-eqz v4, :cond_2c5

    .line 149
    const-string v3, "GT 50 Pro"

    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27c

    sget v3, Lcom/imaging/libwatermark/R$drawable;->ic_watermark_gt50_pro_device_logo:I

    goto :goto_27d

    :cond_27c
    const/4 v3, 0x0

    .line 152
    :goto_27d
    sget-object v6, Lcom/imaging/libwatermark/utils/BitmapUtils;->INSTANCE:Lcom/imaging/libwatermark/utils/BitmapUtils;

    iget-object v13, v0, Lcom/imaging/libwatermark/painters/WatermarkPainterNote;->context:Landroid/content/Context;

    invoke-virtual {v6, v13, v3}, Lcom/imaging/libwatermark/utils/BitmapUtils;->getBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_2c5

    if-eqz v20, :cond_28b

    move/from16 v14, v23

    :cond_28b
    if-nez p4, :cond_28f

    move/from16 v10, v23

    :cond_28f
    mul-float v6, v21, v9

    mul-float/2addr v6, v14

    mul-float/2addr v6, v10

    mul-float v2, v2, v18

    mul-float/2addr v2, v14

    mul-float/2addr v2, v10

    if-eqz v20, :cond_29f

    sub-float v8, v11, v2

    const/4 v9, 0x2

    int-to-float v10, v9

    div-float/2addr v8, v10

    goto :goto_2a8

    :cond_29f
    if-nez p4, :cond_2a4

    const/high16 v14, 0x41f00000    # 30.0f

    goto :goto_2a6

    :cond_2a4
    move/from16 v14, v22

    :goto_2a6
    mul-float v8, v18, v14

    .line 163
    :goto_2a8
    new-instance v9, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    const/4 v14, 0x0

    invoke-direct {v9, v14, v14, v10, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 164
    new-instance v10, Landroid/graphics/Rect;

    float-to-int v13, v15

    float-to-int v14, v8

    add-float/2addr v6, v15

    float-to-int v6, v6

    add-float/2addr v8, v2

    float-to-int v2, v8

    invoke-direct {v10, v13, v14, v6, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 170
    invoke-virtual {v7, v3, v9, v10, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_30c

    :cond_2c5
    if-nez p4, :cond_2d0

    if-eqz v20, :cond_2cd

    const v2, 0x411ab852    # 9.67f

    goto :goto_2d8

    :cond_2cd
    const/high16 v2, 0x41000000    # 8.0f

    goto :goto_2d8

    :cond_2d0
    if-eqz v20, :cond_2d6

    const v2, 0x40ea8f5c    # 7.33f

    goto :goto_2d8

    :cond_2d6
    const/high16 v2, 0x40c00000    # 6.0f

    .line 181
    :goto_2d8
    sget-object v3, Lcom/imaging/libwatermark/utils/SizeUtils;->INSTANCE:Lcom/imaging/libwatermark/utils/SizeUtils;

    iget-object v6, v0, Lcom/imaging/libwatermark/painters/WatermarkPainterNote;->context:Landroid/content/Context;

    invoke-virtual {v3, v6, v2}, Lcom/imaging/libwatermark/utils/SizeUtils;->dp2pxF(Landroid/content/Context;F)F

    move-result v2

    mul-float v2, v2, v18

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 182
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v14, 0x0

    invoke-virtual {v5, v8, v14, v2, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    if-eqz v20, :cond_2fa

    .line 184
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int v3, v17, v2

    int-to-float v2, v3

    const/4 v9, 0x2

    int-to-float v3, v9

    div-float/2addr v2, v3

    goto :goto_303

    :cond_2fa
    if-nez p4, :cond_2ff

    const/high16 v14, 0x41f00000    # 30.0f

    goto :goto_301

    :cond_2ff
    move/from16 v14, v22

    :goto_301
    mul-float v2, v18, v14

    .line 188
    :goto_303
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v2

    .line 189
    invoke-virtual {v7, v8, v15, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 193
    :goto_30c
    invoke-virtual/range {p1 .. p1}, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->getSpecialItemName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_31a

    invoke-virtual/range {p1 .. p1}, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->getLensInfo()Ljava/lang/String;

    move-result-object v2

    :cond_31a
    if-nez p4, :cond_31f

    const/high16 v3, 0x41b80000    # 23.0f

    goto :goto_321

    :cond_31f
    const/high16 v3, 0x41900000    # 18.0f

    :goto_321
    mul-float v3, v3, v18

    .line 194
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 195
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v14, 0x0

    invoke-virtual {v5, v2, v14, v3, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    sub-float v3, v16, v15

    .line 196
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v3, v6

    if-eqz p5, :cond_347

    .line 198
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v8

    sub-int v8, v17, v8

    const/16 v24, 0x2

    div-int/lit8 v8, v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_354

    :cond_347
    if-nez p4, :cond_34c

    move/from16 v8, v22

    goto :goto_34e

    :cond_34c
    const/high16 v8, 0x41c00000    # 24.0f

    :goto_34e
    mul-float v8, v8, v18

    .line 200
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    .line 202
    :goto_354
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v8, v1

    int-to-float v1, v8

    .line 203
    invoke-virtual {v7, v2, v3, v1, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/high16 v1, 0x426c0000    # 59.0f

    const/high16 v2, 0x42a20000    # 81.0f

    if-eqz v12, :cond_3b3

    if-nez p4, :cond_36c

    const/high16 v10, 0x41c00000    # 24.0f

    goto :goto_36e

    :cond_36c
    const/high16 v10, 0x41980000    # 19.0f

    :goto_36e
    mul-float v10, v10, v21

    if-nez p4, :cond_375

    move/from16 v12, v23

    goto :goto_378

    :cond_375
    const v12, 0x3f40ca46

    :goto_378
    mul-float v13, v21, v2

    mul-float/2addr v13, v12

    mul-float v14, v18, v1

    mul-float/2addr v14, v12

    .line 211
    sget-object v12, Lcom/imaging/libwatermark/utils/BitmapUtils;->INSTANCE:Lcom/imaging/libwatermark/utils/BitmapUtils;

    move/from16 p3, v1

    iget-object v1, v0, Lcom/imaging/libwatermark/painters/WatermarkPainterNote;->context:Landroid/content/Context;

    move/from16 v16, v2

    sget v2, Lcom/imaging/libwatermark/R$drawable;->ic_watermark_note_logo:I

    invoke-virtual {v12, v1, v2}, Lcom/imaging/libwatermark/utils/BitmapUtils;->getBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_3b7

    sub-float v2, v3, v10

    sub-float/2addr v2, v13

    sub-float v10, v11, v14

    const/4 v12, 0x2

    int-to-float v6, v12

    div-float/2addr v10, v6

    .line 214
    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v9, 0x0

    invoke-direct {v6, v9, v9, v12, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 215
    new-instance v8, Landroid/graphics/Rect;

    float-to-int v9, v2

    float-to-int v12, v10

    add-float/2addr v2, v13

    float-to-int v2, v2

    add-float/2addr v10, v14

    float-to-int v10, v10

    invoke-direct {v8, v9, v12, v2, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 221
    invoke-virtual {v7, v1, v6, v8, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_3b7

    :cond_3b3
    move/from16 p3, v1

    move/from16 v16, v2

    :cond_3b7
    :goto_3b7
    if-nez p2, :cond_3bb

    if-eqz v4, :cond_402

    :cond_3bb
    if-nez p4, :cond_3c0

    const/high16 v1, 0x41c00000    # 24.0f

    goto :goto_3c2

    :cond_3c0
    const/high16 v1, 0x41980000    # 19.0f

    :goto_3c2
    mul-float v10, v21, v1

    if-nez p4, :cond_3c7

    goto :goto_3ca

    :cond_3c7
    const v23, 0x3f40ca46

    :goto_3ca
    mul-float v1, v21, v16

    mul-float v1, v1, v23

    mul-float v4, v18, p3

    mul-float v4, v4, v23

    .line 231
    sget-object v2, Lcom/imaging/libwatermark/utils/BitmapUtils;->INSTANCE:Lcom/imaging/libwatermark/utils/BitmapUtils;

    iget-object v6, v0, Lcom/imaging/libwatermark/painters/WatermarkPainterNote;->context:Landroid/content/Context;

    sget v8, Lcom/imaging/libwatermark/R$drawable;->ic_watermark_note_new_logo:I

    invoke-virtual {v2, v6, v8}, Lcom/imaging/libwatermark/utils/BitmapUtils;->getBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_402

    sub-float v6, v3, v10

    sub-float/2addr v6, v1

    sub-float v8, v11, v4

    const/4 v9, 0x2

    int-to-float v9, v9

    div-float/2addr v8, v9

    .line 234
    new-instance v9, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    const/4 v14, 0x0

    invoke-direct {v9, v14, v14, v10, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 235
    new-instance v10, Landroid/graphics/Rect;

    float-to-int v12, v6

    float-to-int v13, v8

    add-float/2addr v6, v1

    float-to-int v1, v6

    add-float/2addr v8, v4

    float-to-int v4, v8

    invoke-direct {v10, v12, v13, v1, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 241
    invoke-virtual {v7, v2, v9, v10, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 246
    :cond_402
    iget-object v0, v0, Lcom/imaging/libwatermark/painters/WatermarkPainterNote;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "font/roboto_regular.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    if-nez p4, :cond_416

    const/high16 v9, 0x41980000    # 19.0f

    goto :goto_418

    :cond_416
    const/high16 v9, 0x41700000    # 15.0f

    :goto_418
    mul-float v4, v18, v9

    .line 247
    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 248
    const-string v0, "#808080"

    .line 276
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 248
    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v0, 0x3fc00000    # 1.5f

    mul-float v4, v18, v0

    if-nez p4, :cond_42d

    goto :goto_42f

    :cond_42d
    const/high16 v22, 0x41c00000    # 24.0f

    :goto_42f
    mul-float v0, v18, v22

    sub-float/2addr v11, v0

    sub-float/2addr v11, v4

    if-nez p5, :cond_43c

    .line 255
    invoke-virtual/range {p1 .. p1}, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->getLocationInfo()Ljava/lang/String;

    move-result-object v0

    .line 256
    invoke-virtual {v7, v0, v3, v11, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_43c
    if-nez v20, :cond_445

    .line 261
    invoke-virtual/range {p1 .. p1}, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->getTimeInfo()Ljava/lang/String;

    move-result-object v0

    .line 262
    invoke-virtual {v7, v0, v15, v11, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_445
    return-object v19

    .line 48
    :cond_446
    :goto_446
    sget-object v0, Lcom/imaging/libwatermark/utils/LogUtils;->INSTANCE:Lcom/imaging/libwatermark/utils/LogUtils;

    const-string v2, "invalid width or height"

    invoke-virtual {v0, v1, v2}, Lcom/imaging/libwatermark/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p6

    :sswitch_data_44e
    .sparse-switch
        -0x564b8677 -> :sswitch_19a
        -0x4c644cc3 -> :sswitch_18e
        -0xab91064 -> :sswitch_182
        0x606a5376 -> :sswitch_176
        0x6080c6a8 -> :sswitch_16a
        0x60830c83 -> :sswitch_15e
    .end sparse-switch

    :sswitch_data_468
    .sparse-switch
        -0x564b8658 -> :sswitch_21c
        0xe84514b -> :sswitch_212
        0x57485714 -> :sswitch_206
        0x621f2c15 -> :sswitch_1fa
    .end sparse-switch
.end method
