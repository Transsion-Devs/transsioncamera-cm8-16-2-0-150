.class public Lcom/byteamazing/utils/TextMeshUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/byteamazing/annotation/EffectKeep;
.end annotation


# direct methods
.method private static callIStaticGenerateBitmapForEmoji([BI)Landroid/graphics/Bitmap;
    .registers 6
    .annotation build Lcom/byteamazing/annotation/EffectKeep;
    .end annotation

    .line 332
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    .line 334
    new-instance p0, Landroid/text/TextPaint;

    invoke-direct {p0}, Landroid/text/TextPaint;-><init>()V

    int-to-float p1, p1

    .line 335
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 p1, 0x1

    .line 336
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 337
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 338
    sget-object p1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 341
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x0

    .line 342
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 344
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 345
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 346
    iget v3, p1, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    int-to-float v3, v3

    iget p1, p1, Landroid/graphics/Rect;->top:I

    neg-int p1, p1

    int-to-float p1, p1

    invoke-virtual {v2, v0, v3, p1, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 348
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 349
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    return-object v1
.end method

.method private static callIStaticGenerateBitmapFromTextMesh([BLjava/lang/String;IIIFIFIFFFIIII)Landroid/graphics/Bitmap;
    .registers 35
    .annotation build Lcom/byteamazing/annotation/EffectKeep;
    .end annotation

    move/from16 v0, p4

    move/from16 v1, p13

    move/from16 v2, p14

    move/from16 v3, p15

    .line 156
    new-instance v4, Ljava/lang/String;

    move-object/from16 v5, p0

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    .line 157
    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v6, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 158
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 159
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 160
    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 161
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 162
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 165
    new-instance v8, Landroid/text/TextPaint;

    invoke-direct {v8}, Landroid/text/TextPaint;-><init>()V

    move/from16 v9, p3

    .line 166
    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    move/from16 v9, p2

    int-to-float v9, v9

    .line 167
    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v10, 0x1

    .line 168
    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 169
    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    if-nez v1, :cond_4c

    .line 171
    sget-object v7, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_59

    :cond_4c
    if-ne v1, v10, :cond_54

    .line 173
    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_59

    .line 175
    :cond_54
    sget-object v7, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    :goto_59
    and-int/lit8 v7, p6, 0x10

    const/16 v11, 0x10

    if-ne v7, v11, :cond_62

    .line 183
    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    :cond_62
    and-int/lit8 v7, p6, 0x20

    const/16 v11, 0x20

    if-ne v7, v11, :cond_6b

    .line 186
    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    :cond_6b
    and-int/lit8 v7, p6, 0x4

    const/4 v11, 0x4

    if-ne v7, v11, :cond_79

    move/from16 v7, p5

    neg-float v7, v7

    const/high16 v11, 0x42b40000    # 90.0f

    div-float/2addr v7, v11

    .line 191
    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setTextSkewX(F)V

    :cond_79
    and-int/lit8 v7, p6, 0x8

    const/16 v11, 0x8

    if-ne v7, v11, :cond_82

    .line 195
    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    :cond_82
    and-int/lit8 v7, p6, 0x2

    const/4 v11, 0x2

    if-ne v7, v11, :cond_92

    move/from16 v7, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    .line 198
    invoke-virtual {v8, v7, v11, v12, v13}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 200
    :cond_92
    invoke-virtual {v8}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v7

    .line 201
    iget v11, v7, Landroid/graphics/Paint$FontMetrics;->top:F

    .line 202
    iget v12, v7, Landroid/graphics/Paint$FontMetrics;->bottom:F

    .line 207
    const-string v13, "\n"

    invoke-virtual {v4, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 208
    array-length v13, v4

    and-int/lit8 v14, p6, 0x1

    const v16, 0x3dcccccd    # 0.1f

    const/high16 v17, 0x40000000    # 2.0f

    if-ne v14, v10, :cond_152

    .line 217
    new-instance v14, Landroid/text/TextPaint;

    invoke-direct {v14}, Landroid/text/TextPaint;-><init>()V

    move/from16 v15, p8

    const-wide/high16 p0, 0x3fe0000000000000L    # 0.5

    .line 218
    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 219
    invoke-virtual {v8}, Landroid/graphics/Paint;->getTextSize()F

    move-result v15

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 220
    invoke-virtual {v8}, Landroid/graphics/Paint;->isAntiAlias()Z

    move-result v15

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 221
    sget-object v15, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v15, 0x40a00000    # 5.0f

    mul-float v15, v15, p7

    div-float/2addr v15, v9

    .line 222
    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 223
    invoke-virtual {v8}, Landroid/graphics/Paint;->getTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 225
    invoke-virtual {v8}, Landroid/graphics/Paint;->getTextSkewX()F

    move-result v15

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 226
    invoke-virtual {v8, v6}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 227
    invoke-virtual {v14, v10}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    int-to-float v15, v0

    div-float/2addr v15, v9

    .line 233
    iget v6, v7, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v6, v6

    iget v10, v7, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v6, v10

    mul-float v10, v6, v16

    move-object/from16 p14, v2

    const/4 v2, 0x0

    :goto_f2
    move-object/from16 p3, v4

    if-ge v2, v13, :cond_14f

    .line 238
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    div-float v18, v11, v17

    sub-float v4, v4, v18

    div-float v18, v12, v17

    sub-float v4, v4, v18

    float-to-int v4, v4

    move/from16 v18, v9

    move/from16 p5, v10

    int-to-double v9, v4

    add-int/lit8 v4, v13, -0x1

    move-wide/from16 p6, v9

    int-to-double v9, v4

    mul-double v9, v9, p0

    move-wide/from16 p8, v9

    int-to-double v9, v2

    sub-double v9, p8, v9

    add-float v4, p5, v6

    move-wide/from16 p8, v9

    float-to-double v9, v4

    mul-double v9, v9, p8

    sub-double v9, p6, v9

    double-to-int v4, v9

    .line 243
    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    if-nez v1, :cond_12e

    .line 246
    aget-object v9, p3, v2

    iget v10, v5, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    int-to-float v4, v4

    invoke-virtual {v3, v9, v10, v4, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_146

    :cond_12e
    const/4 v9, 0x1

    if-ne v1, v9, :cond_13d

    .line 248
    aget-object v9, p3, v2

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    int-to-float v10, v10

    int-to-float v4, v4

    invoke-virtual {v3, v9, v10, v4, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_146

    .line 250
    :cond_13d
    aget-object v9, p3, v2

    iget v10, v5, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    int-to-float v4, v4

    invoke-virtual {v3, v9, v10, v4, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_146
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v4, p3

    move/from16 v10, p5

    move/from16 v9, v18

    goto :goto_f2

    :cond_14f
    :goto_14f
    move/from16 v18, v9

    goto :goto_159

    :cond_152
    move-object/from16 p14, v2

    const-wide/high16 p0, 0x3fe0000000000000L    # 0.5

    move-object/from16 p3, v4

    goto :goto_14f

    :goto_159
    int-to-float v0, v0

    div-float v0, v0, v18

    .line 281
    iget v2, v7, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v2, v2

    iget v4, v7, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v2, v4

    mul-float v16, v16, v2

    const/4 v6, 0x0

    :goto_165
    if-ge v6, v13, :cond_1af

    .line 286
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    div-float v7, v11, v17

    sub-float/2addr v4, v7

    div-float v7, v12, v17

    sub-float/2addr v4, v7

    float-to-int v4, v4

    int-to-double v9, v4

    add-int/lit8 v4, v13, -0x1

    int-to-double v14, v4

    mul-double v14, v14, p0

    move-wide/from16 p4, v9

    int-to-double v9, v6

    sub-double/2addr v14, v9

    add-float v4, v16, v2

    float-to-double v9, v4

    mul-double/2addr v14, v9

    sub-double v9, p4, v14

    double-to-int v4, v9

    .line 291
    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    if-nez v1, :cond_194

    .line 294
    aget-object v7, p3, v6

    iget v9, v5, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    int-to-float v4, v4

    invoke-virtual {v3, v7, v9, v4, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/4 v9, 0x1

    goto :goto_1ac

    :cond_194
    const/4 v9, 0x1

    if-ne v1, v9, :cond_1a3

    .line 296
    aget-object v7, p3, v6

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    int-to-float v10, v10

    int-to-float v4, v4

    invoke-virtual {v3, v7, v10, v4, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1ac

    .line 298
    :cond_1a3
    aget-object v7, p3, v6

    iget v10, v5, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    int-to-float v4, v4

    invoke-virtual {v3, v7, v10, v4, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_1ac
    add-int/lit8 v6, v6, 0x1

    goto :goto_165

    .line 324
    :cond_1af
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 325
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    return-object p14
.end method

.method private static generateImage(Ljava/lang/String;F[BIZFIZFFIF)Landroid/graphics/Bitmap;
    .registers 22
    .annotation build Lcom/byteamazing/annotation/EffectKeep;
    .end annotation

    .line 405
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/String;-><init>([B)V

    .line 407
    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2}, Landroid/text/TextPaint;-><init>()V

    .line 408
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v0, 0x1

    .line 409
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 410
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 411
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 412
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 415
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 416
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    new-array v3, v3, [F

    .line 417
    invoke-virtual {p2, p0, v3}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 418
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p2, p0, v5, v4, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 419
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "paint1 left:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " right:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " bottom:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " top:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " advance:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v3, v5

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AE_TEXT_TAG"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    if-nez p4, :cond_79

    move v4, v3

    goto :goto_7a

    :cond_79
    move v4, p5

    :goto_7a
    if-nez p7, :cond_7f

    move v5, v3

    move v6, v5

    goto :goto_85

    :cond_7f
    move/from16 v3, p8

    move/from16 v5, p9

    move/from16 v6, p11

    .line 431
    :goto_85
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    add-float/2addr v7, v4

    .line 432
    new-instance v8, Landroid/text/TextPaint;

    invoke-direct {v8}, Landroid/text/TextPaint;-><init>()V

    const/high16 v9, 0x40000000    # 2.0f

    if-nez p4, :cond_9d

    if-eqz p7, :cond_bf

    .line 435
    :cond_9d
    invoke-virtual {v8, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 436
    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 437
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 438
    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    mul-float/2addr v4, v9

    mul-float/2addr v4, p1

    .line 439
    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move/from16 v0, p6

    .line 440
    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz p7, :cond_bf

    mul-float/2addr v6, p1

    mul-float/2addr v3, p1

    mul-float/2addr v5, p1

    move/from16 v0, p10

    .line 444
    invoke-virtual {v8, v6, v3, v5, v0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 448
    :cond_bf
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v9, v7

    mul-float/2addr v9, p1

    add-float/2addr v0, v9

    float-to-int v0, v0

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v9

    float-to-int v1, v1

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 450
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    if-nez p4, :cond_de

    if-eqz p7, :cond_ed

    .line 453
    :cond_de
    iget v3, v2, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    int-to-float v3, v3

    mul-float v4, v7, p1

    add-float/2addr v3, v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    neg-int v5, v5

    int-to-float v5, v5

    add-float/2addr v5, v4

    invoke-virtual {v1, p0, v3, v5, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 455
    :cond_ed
    iget v3, v2, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    int-to-float v3, v3

    mul-float/2addr v7, p1

    add-float/2addr v3, v7

    iget p1, v2, Landroid/graphics/Rect;->top:I

    neg-int p1, p1

    int-to-float p1, p1

    add-float/2addr p1, v7

    invoke-virtual {v1, p0, v3, p1, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 457
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 458
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    return-object v0
.end method

.method private static generateImageSize(Ljava/lang/String;F[BIZFIZFFIF)[F
    .registers 13
    .annotation build Lcom/byteamazing/annotation/EffectKeep;
    .end annotation

    .line 363
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/String;-><init>([B)V

    .line 365
    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2}, Landroid/text/TextPaint;-><init>()V

    .line 366
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 p6, 0x1

    .line 367
    invoke-virtual {p2, p6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 368
    sget-object p10, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 369
    sget-object p10, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, p10}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 370
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 373
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    .line 374
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p10

    new-array p10, p10, [F

    .line 375
    invoke-virtual {p2, p0, p10}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 376
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p11

    const/4 v0, 0x0

    invoke-virtual {p2, p0, v0, p11, p3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    const/4 p0, 0x0

    if-nez p4, :cond_38

    move p5, p0

    :cond_38
    if-nez p7, :cond_3c

    move p8, p0

    move p9, p8

    .line 388
    :cond_3c
    invoke-static {p8}, Ljava/lang/Math;->abs(F)F

    move-result p0

    invoke-static {p9}, Ljava/lang/Math;->abs(F)F

    move-result p4

    invoke-static {p0, p4}, Ljava/lang/Math;->max(FF)F

    move-result p0

    add-float/2addr p5, p0

    .line 391
    iget p0, p3, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    .line 392
    iget p4, p3, Landroid/graphics/Rect;->right:I

    int-to-float p4, p4

    .line 393
    iget p7, p3, Landroid/graphics/Rect;->bottom:I

    neg-int p7, p7

    int-to-float p7, p7

    .line 394
    iget p3, p3, Landroid/graphics/Rect;->top:I

    neg-int p3, p3

    int-to-float p3, p3

    .line 395
    aget p8, p10, v0

    mul-float/2addr p5, p1

    .line 397
    invoke-virtual {p2}, Landroid/graphics/Paint;->ascent()F

    move-result p1

    .line 398
    invoke-virtual {p2}, Landroid/graphics/Paint;->descent()F

    move-result p2

    const/16 p9, 0x8

    new-array p9, p9, [F

    aput p0, p9, v0

    aput p4, p9, p6

    const/4 p0, 0x2

    aput p7, p9, p0

    const/4 p0, 0x3

    aput p3, p9, p0

    const/4 p0, 0x4

    aput p8, p9, p0

    const/4 p0, 0x5

    aput p5, p9, p0

    const/4 p0, 0x6

    aput p1, p9, p0

    const/4 p0, 0x7

    aput p2, p9, p0

    return-object p9
.end method

.method private static getAndroidSystemFontPaths()[Ljava/lang/String;
    .registers 10
    .annotation build Lcom/byteamazing/annotation/EffectKeep;
    .end annotation

    const/4 v0, 0x0

    .line 469
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 471
    new-instance v2, Ljava/io/File;

    const-string v3, "/system/etc/fonts.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 472
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_cb
    .catchall {:try_start_1 .. :try_end_11} :catchall_c7

    .line 473
    :try_start_11
    const-string v2, "utf-8"

    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 475
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 476
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 477
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_24} :catch_d3
    .catchall {:try_start_11 .. :try_end_24} :catchall_3b

    move-object v6, v0

    :goto_25
    const/4 v7, 0x1

    if-eq v2, v7, :cond_ba

    const/4 v7, 0x2

    .line 482
    const-string v8, "family"

    if-eq v2, v7, :cond_a7

    const/4 v7, 0x3

    if-eq v2, v7, :cond_3e

    const/4 v7, 0x4

    if-eq v2, v7, :cond_35

    goto/16 :goto_b4

    .line 520
    :cond_35
    :try_start_35
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_b4

    :catchall_3b
    move-exception v0

    goto/16 :goto_cd

    .line 493
    :cond_3e
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_88

    const/4 v2, 0x0

    move v7, v2

    .line 496
    :goto_4a
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_62

    .line 498
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "Regular"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5f

    goto :goto_63

    :cond_5f
    add-int/lit8 v7, v7, 0x1

    goto :goto_4a

    :cond_62
    const/4 v7, -0x1

    .line 504
    :goto_63
    new-instance v8, Ljava/lang/String;

    const-string v9, "/system/fonts/"

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    if-ltz v7, :cond_7a

    .line 506
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b4

    .line 508
    :cond_7a
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b4

    .line 510
    :cond_88
    const-string v2, "font"

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_98

    .line 512
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b4

    .line 514
    :cond_98
    const-string v2, "familyset"

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b4

    .line 516
    const-string v6, "ending"

    goto :goto_b4

    .line 486
    :cond_a7
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b4

    .line 488
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 524
    :cond_b4
    :goto_b4
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto/16 :goto_25

    .line 527
    :cond_ba
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 528
    invoke-interface {v4, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_c3} :catch_d3
    .catchall {:try_start_35 .. :try_end_c3} :catchall_3b

    .line 541
    :try_start_c3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_c6} :catch_c6

    :catch_c6
    return-object v1

    :catchall_c7
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_cd

    :catch_cb
    move-object v3, v0

    goto :goto_d3

    :goto_cd
    if-eqz v3, :cond_d2

    :try_start_cf
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_d2} :catch_d2

    .line 547
    :catch_d2
    :cond_d2
    throw v0

    :catch_d3
    :goto_d3
    if-eqz v3, :cond_d8

    .line 541
    :try_start_d5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_d5 .. :try_end_d8} :catch_d8

    :catch_d8
    :cond_d8
    return-object v0
.end method

.method private static getDeviceDpi()F
    .registers 1
    .annotation build Lcom/byteamazing/annotation/EffectKeep;
    .end annotation

    .line 356
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 357
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    return v0
.end method
