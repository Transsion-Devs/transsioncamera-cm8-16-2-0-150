.class public final Lcom/imaging/libwatermark/painters/WatermarkPainterNoteSpecial;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/imaging/libwatermark/interfaces/IWatermarkPainter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imaging/libwatermark/painters/WatermarkPainterNoteSpecial$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/imaging/libwatermark/painters/WatermarkPainterNoteSpecial$Companion;

.field private static final TAG:Ljava/lang/String; = "WatermarkPainterNoteSpecial"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/imaging/libwatermark/painters/WatermarkPainterNoteSpecial$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/imaging/libwatermark/painters/WatermarkPainterNoteSpecial$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/imaging/libwatermark/painters/WatermarkPainterNoteSpecial;->Companion:Lcom/imaging/libwatermark/painters/WatermarkPainterNoteSpecial$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/imaging/libwatermark/painters/WatermarkPainterNoteSpecial;->context:Landroid/content/Context;

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

    .line 42
    const-string v4, "WatermarkPainterNoteSpecial"

    if-lez v1, :cond_34f

    if-gt v2, v3, :cond_17

    goto/16 :goto_34f

    .line 47
    :cond_17
    invoke-virtual {v5}, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->getColorStyle()I

    move-result v6

    if-eqz p4, :cond_20

    const/high16 v7, 0x42be0000    # 95.0f

    goto :goto_22

    :cond_20
    const/high16 v7, 0x42e20000    # 113.0f

    :goto_22
    sub-int/2addr v2, v3

    if-nez p6, :cond_31

    .line 221
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 223
    invoke-static {v1, v2, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    const-string v9, "createBitmap(width, height, config)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_33

    :cond_31
    move-object/from16 v8, p6

    .line 52
    :goto_33
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    int-to-float v3, v3

    const/4 v10, 0x0

    .line 53
    invoke-virtual {v9, v10, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 54
    new-instance v3, Landroid/graphics/Paint;

    const/4 v11, 0x3

    invoke-direct {v3, v11}, Landroid/graphics/Paint;-><init>(I)V

    int-to-float v12, v1

    const/high16 v13, 0x44870000    # 1080.0f

    div-float v13, v12, v13

    int-to-float v14, v2

    div-float v7, v14, v7

    .line 57
    sget-object v15, Lcom/imaging/libwatermark/utils/LogUtils;->INSTANCE:Lcom/imaging/libwatermark/utils/LogUtils;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "widthRatio = "

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, ", heightRatio = "

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v4, v10}, Lcom/imaging/libwatermark/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x2

    const/4 v11, 0x0

    if-ne v6, v10, :cond_95

    if-eqz p4, :cond_72

    .line 61
    sget v15, Lcom/imaging/libwatermark/R$drawable;->ic_note60_special_bg_landscape:I

    goto :goto_74

    .line 62
    :cond_72
    sget v15, Lcom/imaging/libwatermark/R$drawable;->ic_note60_special_bg_portrait:I

    .line 63
    :goto_74
    sget-object v10, Lcom/imaging/libwatermark/utils/BitmapUtils;->INSTANCE:Lcom/imaging/libwatermark/utils/BitmapUtils;

    iget-object v4, v0, Lcom/imaging/libwatermark/painters/WatermarkPainterNoteSpecial;->context:Landroid/content/Context;

    invoke-virtual {v10, v4, v15}, Lcom/imaging/libwatermark/utils/BitmapUtils;->getBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_93

    .line 64
    new-instance v10, Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v10, v11, v11, v15, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 65
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v11, v11, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 66
    invoke-virtual {v9, v4, v10, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_93
    const/4 v1, -0x1

    goto :goto_a2

    :cond_95
    const/4 v1, -0x1

    .line 69
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    new-instance v4, Landroid/graphics/RectF;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5, v12, v14}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v9, v4, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 75
    :goto_a2
    invoke-virtual/range {p1 .. p1}, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->getState()I

    move-result v4

    const/4 v5, 0x1

    const/4 v10, 0x3

    if-eq v4, v10, :cond_b0

    if-ne v4, v5, :cond_ad

    goto :goto_b0

    :cond_ad
    move v10, v11

    :goto_ae
    const/4 v15, 0x2

    goto :goto_b2

    :cond_b0
    :goto_b0
    move v10, v5

    goto :goto_ae

    :goto_b2
    if-eq v4, v15, :cond_b9

    if-ne v4, v5, :cond_b7

    goto :goto_b9

    :cond_b7
    move v4, v11

    goto :goto_ba

    :cond_b9
    :goto_b9
    move v4, v5

    :goto_ba
    const/high16 v15, 0x42200000    # 40.0f

    mul-float/2addr v15, v13

    .line 81
    invoke-virtual/range {p1 .. p1}, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->getShowDeviceName()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_ff

    move/from16 p3, v5

    const-string v5, " "

    move/from16 v16, v2

    const/4 v2, 0x0

    move/from16 p5, v4

    const/4 v4, 0x2

    invoke-static {v1, v5, v11, v4, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fd

    const/16 v21, 0x6

    const/16 v22, 0x0

    .line 84
    const-string v18, " "

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v17, v1

    invoke-static/range {v17 .. v22}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v1

    move-object/from16 v2, v17

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "substring(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_105

    :cond_fd
    :goto_fd
    move-object v2, v1

    goto :goto_104

    :cond_ff
    move/from16 v16, v2

    move/from16 p5, v4

    goto :goto_fd

    :goto_104
    move-object v1, v2

    .line 86
    :goto_105
    iget-object v2, v0, Lcom/imaging/libwatermark/painters/WatermarkPainterNoteSpecial;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v4, "font/roboto_medium.ttf"

    invoke-static {v2, v4}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 87
    const-string v2, "#020202"

    .line 224
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 87
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 91
    const-string v4, "NOTE 60 Ultra"

    const-string v5, "NOTE 60 Pro"

    const/4 v11, 0x2

    if-ne v6, v11, :cond_13d

    .line 93
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_132

    sget v4, Lcom/imaging/libwatermark/R$drawable;->ic_note60_pro_special_white:I

    goto :goto_14e

    .line 94
    :cond_132
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13b

    sget v4, Lcom/imaging/libwatermark/R$drawable;->ic_note60_ultra_special_white:I

    goto :goto_14e

    :cond_13b
    const/4 v4, 0x0

    goto :goto_14e

    .line 99
    :cond_13d
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_146

    sget v4, Lcom/imaging/libwatermark/R$drawable;->ic_note60_pro_special_black:I

    goto :goto_14e

    .line 100
    :cond_146
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13b

    sget v4, Lcom/imaging/libwatermark/R$drawable;->ic_note60_ultra_special_black:I

    :goto_14e
    const/high16 v11, 0x40000000    # 2.0f

    if-eqz v4, :cond_1a4

    .line 106
    sget-object v1, Lcom/imaging/libwatermark/utils/BitmapUtils;->INSTANCE:Lcom/imaging/libwatermark/utils/BitmapUtils;

    iget-object v5, v0, Lcom/imaging/libwatermark/painters/WatermarkPainterNoteSpecial;->context:Landroid/content/Context;

    invoke-virtual {v1, v5, v4}, Lcom/imaging/libwatermark/utils/BitmapUtils;->getBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_19a

    if-nez p4, :cond_161

    const/high16 v4, 0x43260000    # 166.0f

    goto :goto_163

    :cond_161
    const/high16 v4, 0x430b0000    # 139.0f

    :goto_163
    mul-float/2addr v4, v13

    if-nez p4, :cond_169

    const/high16 v5, 0x41880000    # 17.0f

    goto :goto_16b

    :cond_169
    const/high16 v5, 0x41600000    # 14.0f

    :goto_16b
    mul-float/2addr v5, v7

    sub-float/2addr v14, v5

    div-float/2addr v14, v11

    move/from16 v18, v11

    .line 110
    new-instance v11, Landroid/graphics/Rect;

    move/from16 v19, v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    move/from16 v20, v5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    move/from16 v21, v7

    const/4 v7, 0x0

    invoke-direct {v11, v7, v7, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    add-float v4, v15, v19

    .line 112
    new-instance v5, Landroid/graphics/Rect;

    float-to-int v7, v15

    move-object/from16 v19, v8

    float-to-int v8, v14

    move/from16 v22, v10

    float-to-int v10, v4

    add-float v14, v14, v20

    float-to-int v14, v14

    invoke-direct {v5, v7, v8, v10, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 118
    invoke-virtual {v9, v1, v11, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_198
    const/4 v11, 0x2

    goto :goto_1e8

    :cond_19a
    move/from16 v21, v7

    move-object/from16 v19, v8

    move/from16 v22, v10

    move/from16 v18, v11

    move v4, v15

    goto :goto_198

    :cond_1a4
    move/from16 v21, v7

    move-object/from16 v19, v8

    move/from16 v22, v10

    move/from16 v18, v11

    if-nez p4, :cond_1b1

    const/high16 v4, 0x41000000    # 8.0f

    goto :goto_1b3

    :cond_1b1
    const/high16 v4, 0x40c00000    # 6.0f

    .line 127
    :goto_1b3
    sget-object v5, Lcom/imaging/libwatermark/utils/SizeUtils;->INSTANCE:Lcom/imaging/libwatermark/utils/SizeUtils;

    iget-object v7, v0, Lcom/imaging/libwatermark/painters/WatermarkPainterNoteSpecial;->context:Landroid/content/Context;

    invoke-virtual {v5, v7, v4}, Lcom/imaging/libwatermark/utils/SizeUtils;->dp2pxF(Landroid/content/Context;F)F

    move-result v4

    mul-float v7, v21, v4

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 128
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v7, 0x0

    invoke-virtual {v3, v1, v7, v4, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    const/4 v11, 0x2

    if-ne v6, v11, :cond_1cd

    const/4 v4, -0x1

    goto :goto_1cf

    :cond_1cd
    const/high16 v4, -0x1000000

    .line 129
    :goto_1cf
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 130
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int v4, v16, v4

    int-to-float v4, v4

    int-to-float v5, v11

    div-float/2addr v4, v5

    const/high16 v5, 0x434e0000    # 206.0f

    mul-float/2addr v5, v13

    .line 132
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v4

    .line 133
    invoke-virtual {v9, v1, v15, v7, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move v4, v5

    :goto_1e8
    if-ne v6, v11, :cond_1ed

    .line 138
    sget v1, Lcom/imaging/libwatermark/R$drawable;->ic_pininferina_logo_white:I

    goto :goto_1ef

    .line 139
    :cond_1ed
    sget v1, Lcom/imaging/libwatermark/R$drawable;->ic_pininferina_logo_black:I

    .line 140
    :goto_1ef
    sget-object v5, Lcom/imaging/libwatermark/utils/BitmapUtils;->INSTANCE:Lcom/imaging/libwatermark/utils/BitmapUtils;

    iget-object v7, v0, Lcom/imaging/libwatermark/painters/WatermarkPainterNoteSpecial;->context:Landroid/content/Context;

    invoke-virtual {v5, v7, v1}, Lcom/imaging/libwatermark/utils/BitmapUtils;->getBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_23c

    const/high16 v8, 0x41200000    # 10.0f

    mul-float/2addr v8, v13

    add-float/2addr v4, v8

    if-nez p4, :cond_202

    const/high16 v8, 0x43880000    # 272.0f

    goto :goto_204

    :cond_202
    const/high16 v8, 0x43650000    # 229.0f

    :goto_204
    mul-float/2addr v8, v13

    if-nez p4, :cond_20a

    const/high16 v10, 0x41b00000    # 22.0f

    goto :goto_20c

    :cond_20a
    const/high16 v10, 0x41980000    # 19.0f

    :goto_20c
    mul-float v10, v10, v21

    if-nez p4, :cond_213

    const/high16 v11, 0x42480000    # 50.0f

    goto :goto_215

    :cond_213
    const/high16 v11, 0x42240000    # 41.0f

    :goto_215
    mul-float v11, v11, v21

    .line 145
    new-instance v14, Landroid/graphics/Rect;

    const/high16 v20, 0x41b00000    # 22.0f

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    move/from16 v23, v8

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    move/from16 v24, v10

    const/4 v10, 0x0

    invoke-direct {v14, v10, v10, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 146
    new-instance v7, Landroid/graphics/Rect;

    float-to-int v8, v4

    float-to-int v10, v11

    add-float v4, v4, v23

    float-to-int v4, v4

    add-float v11, v11, v24

    float-to-int v11, v11

    invoke-direct {v7, v8, v10, v4, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 152
    invoke-virtual {v9, v1, v14, v7, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_23e

    :cond_23c
    const/high16 v20, 0x41b00000    # 22.0f

    .line 156
    :goto_23e
    invoke-virtual/range {p1 .. p1}, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->getLensInfo()Ljava/lang/String;

    move-result-object v1

    const/4 v11, 0x2

    if-ne v6, v11, :cond_247

    const/4 v4, -0x1

    goto :goto_249

    :cond_247
    const/high16 v4, -0x1000000

    .line 157
    :goto_249
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v4, 0x41900000    # 18.0f

    if-nez p4, :cond_253

    move/from16 v7, v20

    goto :goto_254

    :cond_253
    move v7, v4

    :goto_254
    mul-float v7, v7, v21

    .line 159
    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 160
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v10, 0x0

    invoke-virtual {v3, v1, v10, v7, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    sub-float/2addr v12, v15

    .line 161
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    sub-float v7, v12, v7

    if-eqz p5, :cond_27d

    if-eqz v22, :cond_27d

    .line 163
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v8

    sub-int v8, v16, v8

    int-to-float v8, v8

    div-float v8, v8, v18

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v8, v10

    goto :goto_286

    :cond_27d
    if-nez p4, :cond_282

    const/high16 v8, 0x42540000    # 53.0f

    goto :goto_284

    :cond_282
    const/high16 v8, 0x42300000    # 44.0f

    :goto_284
    mul-float v8, v8, v21

    .line 167
    :goto_286
    invoke-virtual {v9, v1, v7, v8, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    if-eqz v22, :cond_28e

    if-eqz p5, :cond_28e

    return-object v19

    :cond_28e
    if-nez p4, :cond_293

    const/high16 v1, 0x42ae0000    # 87.0f

    goto :goto_295

    :cond_293
    const/high16 v1, 0x42920000    # 73.0f

    :goto_295
    mul-float v7, v21, v1

    .line 173
    iget-object v1, v0, Lcom/imaging/libwatermark/painters/WatermarkPainterNoteSpecial;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v8, "font/roboto_regular.ttf"

    invoke-static {v1, v8}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    if-nez p4, :cond_2aa

    move v1, v4

    goto :goto_2ac

    :cond_2aa
    const/high16 v1, 0x41700000    # 15.0f

    :goto_2ac
    mul-float v1, v1, v21

    .line 174
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v11, 0x2

    if-ne v6, v11, :cond_2bb

    .line 176
    const-string v1, "#EBBAC1"

    .line 225
    :goto_2b6
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    goto :goto_2be

    .line 176
    :cond_2bb
    const-string v1, "#808080"

    goto :goto_2b6

    .line 175
    :goto_2be
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 177
    invoke-virtual/range {p1 .. p1}, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->getTimeInfo()Ljava/lang/String;

    move-result-object v1

    .line 178
    invoke-virtual/range {p1 .. p1}, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->getLocationInfo()Ljava/lang/String;

    move-result-object v8

    if-nez v22, :cond_33a

    if-nez p5, :cond_33a

    .line 181
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v3, v1, v11, v10, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 182
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v12, v10

    .line 183
    invoke-virtual {v9, v1, v12, v7, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/4 v11, 0x2

    if-ne v6, v11, :cond_2e9

    if-nez p4, :cond_2e6

    .line 186
    sget v1, Lcom/imaging/libwatermark/R$drawable;->ic_pininferina_divider_red_portrait:I

    goto :goto_2f0

    .line 187
    :cond_2e6
    sget v1, Lcom/imaging/libwatermark/R$drawable;->ic_pininferina_divider_red_landscape:I

    goto :goto_2f0

    :cond_2e9
    if-nez p4, :cond_2ee

    .line 189
    sget v1, Lcom/imaging/libwatermark/R$drawable;->ic_pininferina_divider_gray_portrait:I

    goto :goto_2f0

    .line 190
    :cond_2ee
    sget v1, Lcom/imaging/libwatermark/R$drawable;->ic_pininferina_divider_gray_landscape:I

    :goto_2f0
    mul-float v13, v13, v20

    sub-float v6, v12, v13

    if-eqz p4, :cond_2f9

    const/high16 v10, 0x40400000    # 3.0f

    goto :goto_2fb

    :cond_2f9
    const/high16 v10, 0x40900000    # 4.5f

    :goto_2fb
    mul-float v10, v10, v21

    add-float/2addr v10, v7

    .line 194
    iget-object v0, v0, Lcom/imaging/libwatermark/painters/WatermarkPainterNoteSpecial;->context:Landroid/content/Context;

    invoke-virtual {v5, v0, v1}, Lcom/imaging/libwatermark/utils/BitmapUtils;->getBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_328

    .line 195
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    const/4 v13, 0x0

    invoke-direct {v1, v13, v13, v5, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    if-nez p4, :cond_318

    const/high16 v4, 0x41a80000    # 21.0f

    :cond_318
    mul-float v4, v4, v21

    .line 197
    new-instance v5, Landroid/graphics/Rect;

    float-to-int v11, v6

    sub-float v4, v10, v4

    float-to-int v4, v4

    float-to-int v12, v12

    float-to-int v10, v10

    invoke-direct {v5, v11, v4, v12, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 203
    invoke-virtual {v9, v0, v1, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 205
    :cond_328
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v10, 0x0

    invoke-virtual {v3, v8, v10, v0, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 206
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v6, v0

    .line 207
    invoke-virtual {v9, v8, v6, v7, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-object v19

    :cond_33a
    if-eqz v22, :cond_33d

    move-object v1, v8

    .line 210
    :cond_33d
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v10, 0x0

    invoke-virtual {v3, v1, v10, v0, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 211
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v12, v0

    .line 212
    invoke-virtual {v9, v1, v12, v7, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-object v19

    .line 43
    :cond_34f
    :goto_34f
    sget-object v0, Lcom/imaging/libwatermark/utils/LogUtils;->INSTANCE:Lcom/imaging/libwatermark/utils/LogUtils;

    const-string v1, "invalid width or height"

    invoke-virtual {v0, v4, v1}, Lcom/imaging/libwatermark/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p6
.end method
