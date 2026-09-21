.class public final Lcom/transsion/widgetslib/util/ImageUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "u can\'t instantiate me..."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static addBorder(Landroid/graphics/Bitmap;IIZFZ)Landroid/graphics/Bitmap;
    .registers 10

    .line 887
    invoke-static {p0}, Lcom/transsion/widgetslib/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    const/4 v0, 0x1

    if-eqz p5, :cond_c

    goto :goto_14

    .line 888
    :cond_c
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p5

    invoke-virtual {p0, p5, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 889
    :goto_14
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p5

    .line 890
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 891
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 892
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 893
    invoke-virtual {v3, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 894
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    int-to-float p2, p1

    .line 895
    invoke-virtual {v3, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    if-eqz p3, :cond_46

    .line 897
    invoke-static {p5, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p1, p3

    div-float/2addr p2, p3

    sub-float/2addr p1, p2

    int-to-float p2, p5

    div-float/2addr p2, p3

    int-to-float p4, v1

    div-float/2addr p4, p3

    .line 898
    invoke-virtual {v2, p2, p4, p1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-object p0

    :cond_46
    shr-int/2addr p1, v0

    .line 901
    new-instance p2, Landroid/graphics/RectF;

    int-to-float p3, p1

    sub-int/2addr p5, p1

    int-to-float p5, p5

    sub-int/2addr v1, p1

    int-to-float p1, v1

    invoke-direct {p2, p3, p3, p5, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 903
    invoke-virtual {v2, p2, p4, p4, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-object p0
.end method

.method public static addCircleBorder(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 851
    invoke-static/range {v0 .. v5}, Lcom/transsion/widgetslib/util/ImageUtils;->addBorder(Landroid/graphics/Bitmap;IIZFZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static addCircleBorder(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .registers 10

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p3

    .line 867
    invoke-static/range {v0 .. v5}, Lcom/transsion/widgetslib/util/ImageUtils;->addBorder(Landroid/graphics/Bitmap;IIZFZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static addCornerBorder(Landroid/graphics/Bitmap;IIF)Landroid/graphics/Bitmap;
    .registers 10

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    .line 819
    invoke-static/range {v0 .. v5}, Lcom/transsion/widgetslib/util/ImageUtils;->addBorder(Landroid/graphics/Bitmap;IIZFZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static addCornerBorder(Landroid/graphics/Bitmap;IIFZ)Landroid/graphics/Bitmap;
    .registers 11

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    .line 837
    invoke-static/range {v0 .. v5}, Lcom/transsion/widgetslib/util/ImageUtils;->addBorder(Landroid/graphics/Bitmap;IIZFZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static addImageWatermark(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 1023
    invoke-static/range {v0 .. v5}, Lcom/transsion/widgetslib/util/ImageUtils;->addImageWatermark(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static addImageWatermark(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIIZ)Landroid/graphics/Bitmap;
    .registers 9

    .line 1043
    invoke-static {p0}, Lcom/transsion/widgetslib/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 1044
    :cond_8
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1045
    invoke-static {p1}, Lcom/transsion/widgetslib/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 1046
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 1047
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1048
    invoke-virtual {v2, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    int-to-float p2, p2

    int-to-float p3, p3

    .line 1049
    invoke-virtual {v1, p1, p2, p3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_29
    if-eqz p5, :cond_34

    .line 1051
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_34

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_34
    return-object v0
.end method

.method public static addReflection(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 3

    const/4 v0, 0x0

    .line 916
    invoke-static {p0, p1, v0}, Lcom/transsion/widgetslib/util/ImageUtils;->addReflection(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static addReflection(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .registers 24

    .line 930
    invoke-static/range {p0 .. p0}, Lcom/transsion/widgetslib/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 932
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 933
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 934
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    .line 935
    invoke-virtual {v7, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    sub-int v4, v0, p1

    const/4 v8, 0x0

    const/4 v3, 0x0

    move-object/from16 v2, p0

    move/from16 v6, p1

    .line 936
    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    add-int v2, v0, p1

    .line 938
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-static {v5, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 939
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    move-object/from16 v12, p0

    .line 940
    invoke-virtual {v6, v12, v4, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    int-to-float v8, v0

    .line 941
    invoke-virtual {v6, v3, v4, v8, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 942
    new-instance v11, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v11, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 943
    new-instance v13, Landroid/graphics/LinearGradient;

    int-to-float v15, v0

    .line 945
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const v19, 0xffffff

    sget-object v20, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    const/4 v14, 0x0

    const/16 v16, 0x0

    const v18, 0x70ffffff

    move/from16 v17, v0

    invoke-direct/range {v13 .. v20}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 949
    invoke-virtual {v11, v13}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 950
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    int-to-float v9, v5

    .line 951
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v10, v0

    const/4 v7, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 952
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_7f

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_7f
    if-eqz p2, :cond_8a

    .line 953
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_8a

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V

    :cond_8a
    return-object v2
.end method

.method public static addTextWatermark(Landroid/graphics/Bitmap;Ljava/lang/String;FIFFZ)Landroid/graphics/Bitmap;
    .registers 12

    .line 996
    invoke-static {p0}, Lcom/transsion/widgetslib/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_3f

    if-nez p1, :cond_9

    goto :goto_3f

    .line 997
    :cond_9
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 998
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 999
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1000
    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1001
    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1002
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x0

    .line 1003
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, p1, v3, v4, p3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    add-float/2addr p5, p2

    .line 1004
    invoke-virtual {v1, p1, p4, p5, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    if-eqz p6, :cond_3e

    .line 1005
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_3e

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3e
    return-object v0

    :cond_3f
    :goto_3f
    const/4 p0, 0x0

    return-object p0
.end method

.method public static addTextWatermark(Landroid/graphics/Bitmap;Ljava/lang/String;IIFF)Landroid/graphics/Bitmap;
    .registers 13

    int-to-float v2, p2

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    .line 974
    invoke-static/range {v0 .. v6}, Lcom/transsion/widgetslib/util/ImageUtils;->addTextWatermark(Landroid/graphics/Bitmap;Ljava/lang/String;FIFFZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static bitmap2Bytes(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)[B
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 76
    :cond_4
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x64

    .line 77
    invoke-virtual {p0, p1, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 78
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static bitmap2Drawable(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .registers 3

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 143
    :cond_4
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public static bytes2Bitmap([B)Landroid/graphics/Bitmap;
    .registers 3

    if-eqz p0, :cond_d

    .line 88
    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_d

    :cond_6
    const/4 v0, 0x0

    .line 90
    array-length v1, p0

    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_d
    :goto_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static bytes2Drawable(Landroid/content/Context;[B)Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 164
    invoke-static {p1}, Lcom/transsion/widgetslib/util/ImageUtils;->bytes2Bitmap([B)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/util/ImageUtils;->bitmap2Drawable(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .registers 6

    .line 1879
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 1880
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v1, 0x1

    move v2, v1

    :goto_6
    shr-int/2addr p0, v1

    if-lt p0, p1, :cond_f

    shr-int/2addr v0, v1

    if-lt v0, p2, :cond_f

    shl-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_f
    return v2
.end method

.method public static clip(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 483
    invoke-static/range {v0 .. v5}, Lcom/transsion/widgetslib/util/ImageUtils;->clip(Landroid/graphics/Bitmap;IIIIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static clip(Landroid/graphics/Bitmap;IIIIZ)Landroid/graphics/Bitmap;
    .registers 7

    .line 503
    invoke-static {p0}, Lcom/transsion/widgetslib/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 504
    :cond_8
    invoke-static {p0, p1, p2, p3, p4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p5, :cond_17

    .line 505
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_17

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_17
    return-object p1
.end method

.method public static compressByQuality(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 3

    const/4 v0, 0x0

    .line 1711
    invoke-static {p0, p1, v0}, Lcom/transsion/widgetslib/util/ImageUtils;->compressByQuality(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static compressByQuality(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .registers 5

    .line 1725
    invoke-static {p0}, Lcom/transsion/widgetslib/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 1726
    :cond_8
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1727
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v1, p1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1728
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    if-eqz p2, :cond_21

    .line 1729
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_21

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_21
    const/4 p0, 0x0

    .line 1730
    array-length p2, p1

    invoke-static {p1, p0, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static compressByQuality(Landroid/graphics/Bitmap;J)Landroid/graphics/Bitmap;
    .registers 4

    const/4 v0, 0x0

    .line 1741
    invoke-static {p0, p1, p2, v0}, Lcom/transsion/widgetslib/util/ImageUtils;->compressByQuality(Landroid/graphics/Bitmap;JZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static compressByQuality(Landroid/graphics/Bitmap;JZ)Landroid/graphics/Bitmap;
    .registers 11

    .line 1755
    invoke-static {p0}, Lcom/transsion/widgetslib/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_80

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_e

    goto/16 :goto_80

    .line 1756
    :cond_e
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1757
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1759
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    int-to-long v3, v3

    cmp-long v3, v3, p1

    const/4 v4, 0x0

    if-gtz v3, :cond_29

    .line 1760
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    goto :goto_6f

    .line 1762
    :cond_29
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1763
    invoke-virtual {p0, v1, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1764
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    int-to-long v5, v1

    cmp-long v1, v5, p1

    if-ltz v1, :cond_3d

    .line 1765
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    goto :goto_6f

    :cond_3d
    move v1, v4

    move v3, v1

    :goto_3f
    if-ge v1, v2, :cond_5f

    add-int v3, v1, v2

    .line 1772
    div-int/lit8 v3, v3, 0x2

    .line 1773
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1774
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v5, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1775
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    int-to-long v5, v5

    cmp-long v5, v5, p1

    if-nez v5, :cond_57

    goto :goto_5f

    :cond_57
    if-lez v5, :cond_5c

    add-int/lit8 v2, v3, -0x1

    goto :goto_3f

    :cond_5c
    add-int/lit8 v1, v3, 0x1

    goto :goto_3f

    :cond_5f
    :goto_5f
    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_6b

    .line 1785
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1786
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, p1, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1788
    :cond_6b
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    :goto_6f
    if-eqz p3, :cond_7a

    .line 1791
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_7a

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1792
    :cond_7a
    array-length p0, p1

    invoke-static {p1, v4, p0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_80
    :goto_80
    const/4 p0, 0x0

    return-object p0
.end method

.method public static compressBySampleSize(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 3

    const/4 v0, 0x0

    .line 1804
    invoke-static {p0, p1, v0}, Lcom/transsion/widgetslib/util/ImageUtils;->compressBySampleSize(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static compressBySampleSize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 4

    const/4 v0, 0x0

    .line 1839
    invoke-static {p0, p1, p2, v0}, Lcom/transsion/widgetslib/util/ImageUtils;->compressBySampleSize(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static compressBySampleSize(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .registers 8

    .line 1855
    invoke-static {p0}, Lcom/transsion/widgetslib/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 1856
    :cond_8
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 1857
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1858
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1859
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1860
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 1861
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1862
    invoke-static {v0, p1, p2}, Lcom/transsion/widgetslib/util/ImageUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p1

    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1863
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz p3, :cond_38

    .line 1864
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_38

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1865
    :cond_38
    array-length p0, v1

    invoke-static {v1, v3, p0, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static compressBySampleSize(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .registers 6

    .line 1818
    invoke-static {p0}, Lcom/transsion/widgetslib/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 1819
    :cond_8
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1820
    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1821
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1822
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1823
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    if-eqz p2, :cond_2a

    .line 1824
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_2a

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2a
    const/4 p0, 0x0

    .line 1825
    array-length p2, p1

    invoke-static {p1, p0, p2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static compressByScale(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .registers 4

    const/4 v0, 0x0

    .line 1683
    invoke-static {p0, p1, p2, v0}, Lcom/transsion/widgetslib/util/ImageUtils;->scale(Landroid/graphics/Bitmap;FFZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static compressByScale(Landroid/graphics/Bitmap;FFZ)Landroid/graphics/Bitmap;
    .registers 4

    .line 1699
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/widgetslib/util/ImageUtils;->scale(Landroid/graphics/Bitmap;FFZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static compressByScale(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 4

    const/4 v0, 0x0

    .line 1653
    invoke-static {p0, p1, p2, v0}, Lcom/transsion/widgetslib/util/ImageUtils;->scale(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static compressByScale(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .registers 4

    .line 1669
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/widgetslib/util/ImageUtils;->scale(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 10

    .line 1987
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1988
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 1989
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1990
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1991
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1993
    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    move-object v0, p0

    .line 1995
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 1996
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v5, 0x0

    invoke-direct {v0, v5, v5, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v2, 0x0

    invoke-virtual {v8, p0, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v7
.end method

.method public static createFileByDeleteOldFile(Ljava/io/File;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 1898
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_11

    return v0

    .line 1899
    :cond_11
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/widgetslib/util/ImageUtils;->createOrExistsDir(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_1c

    return v0

    .line 1901
    :cond_1c
    :try_start_1c
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    move-result p0
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_20} :catch_21

    return p0

    :catch_21
    move-exception p0

    .line 1903
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method private static createOrExistsDir(Ljava/io/File;)Z
    .registers 2

    if-eqz p0, :cond_17

    .line 1909
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_17

    goto :goto_15

    :cond_f
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-eqz p0, :cond_17

    :goto_15
    const/4 p0, 0x1

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method public static drawColor(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 3

    const/4 v0, 0x0

    .line 383
    invoke-static {p0, p1, v0}, Lcom/transsion/widgetslib/util/ImageUtils;->drawColor(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static drawColor(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .registers 4

    .line 397
    invoke-static {p0}, Lcom/transsion/widgetslib/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    if-eqz p2, :cond_b

    goto :goto_14

    .line 398
    :cond_b
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 399
    :goto_14
    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 400
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p0
.end method

.method public static drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 133
    invoke-static {p0, v0}, Lcom/transsion/widgetslib/util/ImageUtils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static drawable2Bitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;
    .registers 6

    .line 101
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_12

    .line 102
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 103
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 104
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 108
    :cond_12
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    const/4 v1, -0x1

    if-lez v0, :cond_3e

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-gtz v0, :cond_20

    goto :goto_3e

    .line 114
    :cond_20
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 115
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int p1, v2

    .line 116
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    if-eq v2, v1, :cond_37

    .line 117
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_39

    .line 118
    :cond_37
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 114
    :goto_39
    invoke-static {v0, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_4e

    .line 110
    :cond_3e
    :goto_3e
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result p1

    if-eq p1, v1, :cond_47

    .line 111
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_49

    .line 112
    :cond_47
    sget-object p1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_49
    const/4 v0, 0x1

    .line 109
    invoke-static {v0, v0, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 120
    :goto_4e
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 121
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 122
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object p1
.end method

.method public static drawable2Bytes(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap$CompressFormat;)[B
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 154
    :cond_4
    invoke-static {p0}, Lcom/transsion/widgetslib/util/ImageUtils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/util/ImageUtils;->bitmap2Bytes(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)[B

    move-result-object p0

    return-object p0
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .registers 6

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1957
    :cond_4
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_f

    .line 1958
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_f
    if-gtz p1, :cond_38

    if-lez p2, :cond_14

    goto :goto_38

    .line 1962
    :cond_14
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    if-lez p1, :cond_30

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    if-gtz p1, :cond_21

    goto :goto_30

    .line 1968
    :cond_21
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    .line 1969
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1967
    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_3e

    .line 1964
    :cond_30
    :goto_30
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 p2, 0x1

    invoke-static {p2, p2, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_3e

    .line 1961
    :cond_38
    :goto_38
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1977
    :goto_3e
    const-string p2, "#FFFFFF"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 1979
    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1980
    invoke-virtual {p2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1981
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object p1
.end method

.method public static fastBlur(Landroid/content/Context;Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .registers 5

    const/4 v0, 0x0

    .line 1126
    invoke-static {p0, p1, p2, p3, v0}, Lcom/transsion/widgetslib/util/ImageUtils;->fastBlur(Landroid/content/Context;Landroid/graphics/Bitmap;FFZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static fastBlur(Landroid/content/Context;Landroid/graphics/Bitmap;FFZ)Landroid/graphics/Bitmap;
    .registers 14

    .line 1147
    invoke-static {p1}, Lcom/transsion/widgetslib/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 1148
    :cond_8
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 1149
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 1150
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 1151
    invoke-virtual {v7, p2, p2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1153
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1154
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 1155
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4}, Landroid/graphics/Canvas;-><init>()V

    .line 1156
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1158
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1159
    invoke-virtual {v4, p2, p2}, Landroid/graphics/Canvas;->scale(FF)V

    const/4 v5, 0x0

    .line 1160
    invoke-virtual {v4, p1, v5, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1162
    invoke-static {p0, p1, p3, p4}, Lcom/transsion/widgetslib/util/ImageUtils;->renderScriptBlur(Landroid/content/Context;Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p1, p2, p1

    if-nez p1, :cond_5b

    if-eqz p4, :cond_5a

    .line 1167
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_5a

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5a
    return-object p0

    :cond_5b
    const/4 p1, 0x1

    .line 1170
    invoke-static {p0, v0, v1, p1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1171
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_69

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_69
    if-eqz p4, :cond_74

    .line 1172
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_74

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_74
    return-object p1
.end method

.method public static getBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .registers 6

    .line 313
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 314
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1}, Landroid/graphics/Canvas;-><init>()V

    .line 315
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 316
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 315
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 318
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 319
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 320
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method public static getBitmap(Landroid/content/Context;III)Landroid/graphics/Bitmap;
    .registers 6

    .line 335
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 336
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v1, 0x1

    .line 337
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 338
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 339
    invoke-static {v0, p2, p3}, Lcom/transsion/widgetslib/util/ImageUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p2

    iput p2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p2, 0x0

    .line 340
    iput-boolean p2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 341
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 197
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getBitmap(Ljava/io/File;II)Landroid/graphics/Bitmap;
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 210
    :cond_4
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 211
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 212
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 213
    invoke-static {v0, p1, p2}, Lcom/transsion/widgetslib/util/ImageUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p1

    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p1, 0x0

    .line 214
    iput-boolean p1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 215
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getBitmap(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 352
    :cond_4
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getBitmap(Ljava/io/FileDescriptor;II)Landroid/graphics/Bitmap;
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 367
    :cond_4
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 368
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 369
    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 370
    invoke-static {v1, p1, p2}, Lcom/transsion/widgetslib/util/ImageUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p1

    iput p1, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p1, 0x0

    .line 371
    iput-boolean p1, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 372
    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getBitmap(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 255
    :cond_4
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getBitmap(Ljava/io/InputStream;II)Landroid/graphics/Bitmap;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 268
    :cond_4
    invoke-static {p0}, Lcom/transsion/widgetslib/util/ImageUtils;->input2Byte(Ljava/io/InputStream;)[B

    move-result-object p0

    const/4 v0, 0x0

    .line 269
    invoke-static {p0, v0, p1, p2}, Lcom/transsion/widgetslib/util/ImageUtils;->getBitmap([BIII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 2

    .line 225
    invoke-static {p0}, Lcom/transsion/widgetslib/util/ImageUtils;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 226
    :cond_8
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 5

    .line 238
    invoke-static {p0}, Lcom/transsion/widgetslib/util/ImageUtils;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 239
    :cond_8
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 240
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 241
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 242
    invoke-static {v0, p1, p2}, Lcom/transsion/widgetslib/util/ImageUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p1

    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p1, 0x0

    .line 243
    iput-boolean p1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 244
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getBitmap([BI)Landroid/graphics/Bitmap;
    .registers 3

    .line 280
    array-length v0, p0

    if-nez v0, :cond_5

    const/4 p0, 0x0

    return-object p0

    .line 281
    :cond_5
    array-length v0, p0

    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getBitmap([BIII)Landroid/graphics/Bitmap;
    .registers 6

    .line 297
    array-length v0, p0

    if-nez v0, :cond_5

    const/4 p0, 0x0

    return-object p0

    .line 298
    :cond_5
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 299
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 300
    array-length v1, p0

    invoke-static {p0, p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 301
    invoke-static {v0, p2, p3}, Lcom/transsion/widgetslib/util/ImageUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p2

    iput p2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p2, 0x0

    .line 302
    iput-boolean p2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 303
    array-length p2, p0

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static getFileByPath(Ljava/lang/String;)Ljava/io/File;
    .registers 2

    .line 1893
    invoke-static {p0}, Lcom/transsion/widgetslib/util/ImageUtils;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static getFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1583
    invoke-static {p0}, Lcom/transsion/widgetslib/util/ImageUtils;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    :cond_7
    const/16 v0, 0x2e

    .line 1584
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1585
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_20

    if-lt v1, v0, :cond_19

    goto :goto_20

    :cond_19
    add-int/lit8 v0, v0, 0x1

    .line 1587
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1586
    :cond_20
    :goto_20
    const-string p0, ""

    return-object p0
.end method

.method public static getImageType(Ljava/io/File;)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_5

    .line 1560
    const-string p0, ""

    return-object p0

    :cond_5
    const/4 v0, 0x0

    .line 1563
    :try_start_6
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_2a
    .catchall {:try_start_6 .. :try_end_b} :catchall_28

    .line 1564
    :try_start_b
    invoke-static {v1}, Lcom/transsion/widgetslib/util/ImageUtils;->getImageType(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_f} :catch_26
    .catchall {:try_start_b .. :try_end_f} :catchall_23

    if-eqz v0, :cond_1a

    .line 1573
    :try_start_11
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_15

    return-object v0

    :catch_15
    move-exception p0

    .line 1576
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0

    .line 1573
    :cond_1a
    :goto_1a
    :try_start_1a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_1e

    goto :goto_34

    :catch_1e
    move-exception v0

    .line 1576
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_34

    :catchall_23
    move-exception p0

    move-object v0, v1

    goto :goto_41

    :catch_26
    move-exception v0

    goto :goto_2e

    :catchall_28
    move-exception p0

    goto :goto_41

    :catch_2a
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    .line 1569
    :goto_2e
    :try_start_2e
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_23

    if-eqz v1, :cond_34

    goto :goto_1a

    .line 1579
    :cond_34
    :goto_34
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/widgetslib/util/ImageUtils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_41
    if-eqz v0, :cond_4b

    .line 1573
    :try_start_43
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_47

    goto :goto_4b

    :catch_47
    move-exception v0

    .line 1576
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1578
    :cond_4b
    :goto_4b
    throw p0
.end method

.method private static getImageType(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const/16 v1, 0x8

    .line 1593
    :try_start_6
    new-array v2, v1, [B

    const/4 v3, 0x0

    .line 1594
    invoke-virtual {p0, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result p0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_17

    invoke-static {v2}, Lcom/transsion/widgetslib/util/ImageUtils;->getImageType([B)Ljava/lang/String;

    move-result-object p0
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_14} :catch_15

    return-object p0

    :catch_15
    move-exception p0

    goto :goto_18

    :cond_17
    return-object v0

    .line 1596
    :goto_18
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public static getImageType(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 1550
    invoke-static {p0}, Lcom/transsion/widgetslib/util/ImageUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/widgetslib/util/ImageUtils;->getImageType(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getImageType([B)Ljava/lang/String;
    .registers 2

    .line 1602
    invoke-static {p0}, Lcom/transsion/widgetslib/util/ImageUtils;->isJPEG([B)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, "JPEG"

    return-object p0

    .line 1603
    :cond_9
    invoke-static {p0}, Lcom/transsion/widgetslib/util/ImageUtils;->isGIF([B)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string p0, "GIF"

    return-object p0

    .line 1604
    :cond_12
    invoke-static {p0}, Lcom/transsion/widgetslib/util/ImageUtils;->isPNG([B)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string p0, "PNG"

    return-object p0

    .line 1605
    :cond_1b
    invoke-static {p0}, Lcom/transsion/widgetslib/util/ImageUtils;->isBMP([B)Z

    move-result p0

    if-eqz p0, :cond_24

    const-string p0, "BMP"

    return-object p0

    :cond_24
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getRotateDegree(Ljava/lang/String;)I
    .registers 3

    .line 628
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 629
    const-string p0, "Orientation"

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_21

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1e

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1b

    const/16 v0, 0x8

    if-eq p0, v0, :cond_18

    const/4 p0, 0x0

    return p0

    :cond_18
    const/16 p0, 0x10e

    return p0

    :cond_1b
    const/16 p0, 0x5a

    return p0

    :cond_1e
    const/16 p0, 0xb4

    return p0

    :catch_21
    move-exception p0

    .line 644
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method private static input2Byte(Ljava/io/InputStream;)[B
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 1925
    :cond_4
    :try_start_4
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x400

    .line 1926
    new-array v3, v2, [B

    :goto_d
    const/4 v4, 0x0

    .line 1928
    invoke-virtual {p0, v3, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1d

    .line 1929
    invoke-virtual {v1, v3, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_d

    :catchall_19
    move-exception v0

    goto :goto_36

    :catch_1b
    move-exception v1

    goto :goto_2a

    .line 1931
    :cond_1d
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_21} :catch_1b
    .catchall {:try_start_4 .. :try_end_21} :catchall_19

    .line 1937
    :try_start_21
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_25

    return-object v0

    :catch_25
    move-exception p0

    .line 1939
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0

    .line 1933
    :goto_2a
    :try_start_2a
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_19

    .line 1937
    :try_start_2d
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_31

    goto :goto_35

    :catch_31
    move-exception p0

    .line 1939
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_35
    return-object v0

    .line 1937
    :goto_36
    :try_start_36
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_3a

    goto :goto_3e

    :catch_3a
    move-exception p0

    .line 1939
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1941
    :goto_3e
    throw v0
.end method

.method private static isBMP([B)Z
    .registers 4

    .line 1630
    array-length v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-lt v0, v1, :cond_13

    aget-byte v0, p0, v2

    const/16 v1, 0x42

    if-ne v0, v1, :cond_13

    const/4 v0, 0x1

    aget-byte p0, p0, v0

    const/16 v1, 0x4d

    if-ne p0, v1, :cond_13

    return v0

    :cond_13
    return v2
.end method

.method private static isEmptyBitmap(Landroid/graphics/Bitmap;)Z
    .registers 2

    if-eqz p0, :cond_11

    .line 1635
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    if-nez p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    return p0

    :cond_11
    :goto_11
    const/4 p0, 0x1

    return p0
.end method

.method private static isGIF([B)Z
    .registers 5

    .line 1615
    array-length v0, p0

    const/4 v1, 0x6

    const/4 v2, 0x0

    if-lt v0, v1, :cond_33

    aget-byte v0, p0, v2

    const/16 v1, 0x47

    if-ne v0, v1, :cond_33

    const/4 v0, 0x1

    aget-byte v1, p0, v0

    const/16 v3, 0x49

    if-ne v1, v3, :cond_33

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    const/16 v3, 0x46

    if-ne v1, v3, :cond_33

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    const/16 v3, 0x38

    if-ne v1, v3, :cond_33

    const/4 v1, 0x4

    aget-byte v1, p0, v1

    const/16 v3, 0x37

    if-eq v1, v3, :cond_2b

    const/16 v3, 0x39

    if-ne v1, v3, :cond_33

    :cond_2b
    const/4 v1, 0x5

    aget-byte p0, p0, v1

    const/16 v1, 0x61

    if-ne p0, v1, :cond_33

    return v0

    :cond_33
    return v2
.end method

.method public static isImage(Ljava/io/File;)Z
    .registers 1

    if-eqz p0, :cond_e

    .line 1527
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/widgetslib/util/ImageUtils;->isImage(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static isImage(Ljava/lang/String;)Z
    .registers 2

    .line 1537
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 1538
    const-string v0, ".PNG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_37

    const-string v0, ".JPG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_37

    const-string v0, ".JPEG"

    .line 1539
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_37

    const-string v0, ".BMP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_37

    const-string v0, ".GIF"

    .line 1540
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_37

    const-string v0, ".WEBP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_35

    goto :goto_37

    :cond_35
    const/4 p0, 0x0

    return p0

    :cond_37
    :goto_37
    const/4 p0, 0x1

    return p0
.end method

.method private static isJPEG([B)Z
    .registers 4

    .line 1610
    array-length v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-lt v0, v1, :cond_12

    aget-byte v0, p0, v2

    const/4 v1, -0x1

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    aget-byte p0, p0, v0

    const/16 v1, -0x28

    if-ne p0, v1, :cond_12

    return v0

    :cond_12
    return v2
.end method

.method private static isPNG([B)Z
    .registers 6

    .line 1622
    array-length v0, p0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-lt v0, v1, :cond_3c

    aget-byte v0, p0, v2

    const/16 v1, -0x77

    if-ne v0, v1, :cond_3c

    const/4 v0, 0x1

    aget-byte v1, p0, v0

    const/16 v3, 0x50

    if-ne v1, v3, :cond_3c

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    const/16 v3, 0x4e

    if-ne v1, v3, :cond_3c

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    const/16 v3, 0x47

    if-ne v1, v3, :cond_3c

    const/4 v1, 0x4

    aget-byte v1, p0, v1

    const/16 v3, 0xd

    if-ne v1, v3, :cond_3c

    const/4 v1, 0x5

    aget-byte v1, p0, v1

    const/16 v3, 0xa

    if-ne v1, v3, :cond_3c

    const/4 v1, 0x6

    aget-byte v1, p0, v1

    const/16 v4, 0x1a

    if-ne v1, v4, :cond_3c

    const/4 v1, 0x7

    aget-byte p0, p0, v1

    if-ne p0, v3, :cond_3c

    return v0

    :cond_3c
    return v2
.end method

.method private static isSpace(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    .line 1914
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    if-ge v3, v1, :cond_1a

    .line 1915
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_17

    return v2

    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_1a
    return v0
.end method

.method public static renderScriptBlur(Landroid/content/Context;Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .registers 4

    const/4 v0, 0x0

    .line 1188
    invoke-static {p0, p1, p2, v0}, Lcom/transsion/widgetslib/util/ImageUtils;->renderScriptBlur(Landroid/content/Context;Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static renderScriptBlur(Landroid/content/Context;Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .registers 6

    const/4 v0, 0x1

    if-eqz p3, :cond_4

    goto :goto_c

    .line 1206
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p3

    invoke-virtual {p1, p3, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_c
    const/4 p3, 0x0

    .line 1208
    :try_start_d
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object p3

    .line 1209
    new-instance p0, Landroid/renderscript/RenderScript$RSMessageHandler;

    invoke-direct {p0}, Landroid/renderscript/RenderScript$RSMessageHandler;-><init>()V

    invoke-virtual {p3, p0}, Landroid/renderscript/RenderScript;->setMessageHandler(Landroid/renderscript/RenderScript$RSMessageHandler;)V

    .line 1210
    sget-object p0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    invoke-static {p3, p1, p0, v0}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object p0

    .line 1214
    invoke-virtual {p0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 1215
    invoke-static {p3}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-static {p3, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v1

    .line 1216
    invoke-virtual {v1, p0}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 1217
    invoke-virtual {v1, p2}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 1218
    invoke-virtual {v1, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 1219
    invoke-virtual {v0, p1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V
    :try_end_3f
    .catchall {:try_start_d .. :try_end_3f} :catchall_43

    .line 1222
    invoke-virtual {p3}, Landroid/renderscript/RenderScript;->destroy()V

    return-object p1

    :catchall_43
    move-exception p0

    if-eqz p3, :cond_49

    invoke-virtual {p3}, Landroid/renderscript/RenderScript;->destroy()V

    .line 1224
    :cond_49
    throw p0
.end method

.method public static rotate(Landroid/graphics/Bitmap;IFF)Landroid/graphics/Bitmap;
    .registers 5

    const/4 v0, 0x0

    .line 593
    invoke-static {p0, p1, p2, p3, v0}, Lcom/transsion/widgetslib/util/ImageUtils;->rotate(Landroid/graphics/Bitmap;IFFZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static rotate(Landroid/graphics/Bitmap;IFFZ)Landroid/graphics/Bitmap;
    .registers 12

    .line 611
    invoke-static {p0}, Lcom/transsion/widgetslib/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    if-nez p1, :cond_b

    return-object p0

    .line 613
    :cond_b
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p1

    .line 614
    invoke-virtual {v5, p1, p2, p3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 615
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p4, :cond_2f

    .line 616
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_2f

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2f
    return-object p0
.end method

.method public static save(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;)Z
    .registers 4

    const/4 v0, 0x0

    .line 1467
    invoke-static {p0, p1, p2, v0}, Lcom/transsion/widgetslib/util/ImageUtils;->save(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;Z)Z

    move-result p0

    return p0
.end method

.method public static save(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;Z)Z
    .registers 8

    .line 1499
    invoke-static {p0}, Lcom/transsion/widgetslib/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_51

    invoke-static {p1}, Lcom/transsion/widgetslib/util/ImageUtils;->createFileByDeleteOldFile(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_51

    :cond_e
    const/4 v0, 0x0

    .line 1503
    :try_start_f
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_19} :catch_3c
    .catchall {:try_start_f .. :try_end_19} :catchall_3a

    const/16 p1, 0x64

    .line 1504
    :try_start_1b
    invoke-virtual {p0, p2, p1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v1

    if-eqz p3, :cond_31

    .line 1505
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_31

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_2a} :catch_2e
    .catchall {:try_start_1b .. :try_end_2a} :catchall_2b

    goto :goto_31

    :catchall_2b
    move-exception p0

    move-object v0, v2

    goto :goto_46

    :catch_2e
    move-exception p0

    move-object v0, v2

    goto :goto_3d

    .line 1511
    :cond_31
    :goto_31
    :try_start_31
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_35

    goto :goto_45

    :catch_35
    move-exception p0

    .line 1514
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_45

    :catchall_3a
    move-exception p0

    goto :goto_46

    :catch_3c
    move-exception p0

    .line 1507
    :goto_3d
    :try_start_3d
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_3a

    if-eqz v0, :cond_45

    .line 1511
    :try_start_42
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_35

    :cond_45
    :goto_45
    return v1

    :goto_46
    if-eqz v0, :cond_50

    :try_start_48
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4c

    goto :goto_50

    :catch_4c
    move-exception p1

    .line 1514
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1516
    :cond_50
    :goto_50
    throw p0

    :cond_51
    :goto_51
    return v1
.end method

.method public static save(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)Z
    .registers 4

    .line 1455
    invoke-static {p1}, Lcom/transsion/widgetslib/util/ImageUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/transsion/widgetslib/util/ImageUtils;->save(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;Z)Z

    move-result p0

    return p0
.end method

.method public static save(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;Z)Z
    .registers 4

    .line 1483
    invoke-static {p1}, Lcom/transsion/widgetslib/util/ImageUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/widgetslib/util/ImageUtils;->save(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;Z)Z

    move-result p0

    return p0
.end method

.method public static scale(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .registers 4

    const/4 v0, 0x0

    .line 444
    invoke-static {p0, p1, p2, v0}, Lcom/transsion/widgetslib/util/ImageUtils;->scale(Landroid/graphics/Bitmap;FFZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static scale(Landroid/graphics/Bitmap;FFZ)Landroid/graphics/Bitmap;
    .registers 11

    .line 460
    invoke-static {p0}, Lcom/transsion/widgetslib/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 461
    :cond_8
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 462
    invoke-virtual {v5, p1, p2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 463
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p3, :cond_2b

    .line 464
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_2b

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2b
    return-object p0
.end method

.method public static scale(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 4

    const/4 v0, 0x0

    .line 413
    invoke-static {p0, p1, p2, v0}, Lcom/transsion/widgetslib/util/ImageUtils;->scale(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static scale(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .registers 5

    .line 429
    invoke-static {p0}, Lcom/transsion/widgetslib/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    const/4 v0, 0x1

    .line 430
    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p3, :cond_18

    .line 431
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_18

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_18
    return-object p1
.end method

.method public static skew(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .registers 9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 518
    invoke-static/range {v0 .. v5}, Lcom/transsion/widgetslib/util/ImageUtils;->skew(Landroid/graphics/Bitmap;FFFFZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static skew(Landroid/graphics/Bitmap;FFFF)Landroid/graphics/Bitmap;
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 552
    invoke-static/range {v0 .. v5}, Lcom/transsion/widgetslib/util/ImageUtils;->skew(Landroid/graphics/Bitmap;FFFFZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static skew(Landroid/graphics/Bitmap;FFFFZ)Landroid/graphics/Bitmap;
    .registers 13

    .line 572
    invoke-static {p0}, Lcom/transsion/widgetslib/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 573
    :cond_8
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 574
    invoke-virtual {v5, p1, p2, p3, p4}, Landroid/graphics/Matrix;->setSkew(FFFF)V

    .line 575
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p5, :cond_2b

    .line 576
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_2b

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2b
    return-object p0
.end method

.method public static skew(Landroid/graphics/Bitmap;FFZ)Landroid/graphics/Bitmap;
    .registers 10

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p3

    .line 534
    invoke-static/range {v0 .. v5}, Lcom/transsion/widgetslib/util/ImageUtils;->skew(Landroid/graphics/Bitmap;FFFFZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static stackBlur(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 3

    const/4 v0, 0x0

    .line 1236
    invoke-static {p0, p1, v0}, Lcom/transsion/widgetslib/util/ImageUtils;->stackBlur(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static stackBlur(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .registers 39

    const/4 v0, 0x1

    if-eqz p2, :cond_8

    move-object/from16 v2, p0

    :goto_5
    move/from16 v1, p1

    goto :goto_14

    .line 1248
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    move-object/from16 v2, p0

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v2, v1

    goto :goto_5

    :goto_14
    if-ge v1, v0, :cond_17

    move v1, v0

    .line 1252
    :cond_17
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 1253
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int v10, v5, v9

    .line 1255
    new-array v3, v10, [I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    move v8, v5

    .line 1256
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    add-int/lit8 v4, v5, -0x1

    add-int/lit8 v6, v9, -0x1

    add-int v7, v1, v1

    add-int/lit8 v8, v7, 0x1

    .line 1263
    new-array v11, v10, [I

    .line 1264
    new-array v12, v10, [I

    .line 1265
    new-array v10, v10, [I

    .line 1267
    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v13

    new-array v13, v13, [I

    const/4 v14, 0x2

    add-int/2addr v7, v14

    shr-int/2addr v7, v0

    mul-int/2addr v7, v7

    mul-int/lit16 v15, v7, 0x100

    move/from16 v16, v0

    .line 1271
    new-array v0, v15, [I

    const/16 p1, 0x0

    const/4 v14, 0x0

    :goto_4b
    if-ge v14, v15, :cond_54

    .line 1273
    div-int v17, v14, v7

    aput v17, v0, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_4b

    :cond_54
    const/4 v14, 0x2

    .line 1278
    new-array v7, v14, [I

    const/4 v14, 0x3

    aput v14, v7, v16

    aput v8, v7, p1

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v14, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[I

    add-int/lit8 v14, v1, 0x1

    move/from16 v15, p1

    move/from16 v17, v15

    move/from16 v18, v17

    :goto_6c
    if-ge v15, v9, :cond_17a

    move-object/from16 p2, v0

    neg-int v0, v1

    move/from16 v19, p1

    move/from16 v20, v19

    move/from16 v21, v20

    move/from16 v22, v21

    move/from16 v23, v22

    move/from16 v24, v23

    move/from16 v25, v24

    move/from16 v26, v25

    move/from16 v27, v26

    :goto_83
    const v28, 0xff00

    const/high16 v29, 0xff0000

    if-gt v0, v1, :cond_e2

    move-object/from16 v30, v2

    move-object/from16 v31, v3

    move/from16 v2, p1

    .line 1290
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int v3, v17, v3

    aget v3, v31, v3

    add-int v32, v0, v1

    .line 1291
    aget-object v32, v7, v32

    and-int v29, v3, v29

    shr-int/lit8 v29, v29, 0x10

    .line 1292
    aput v29, v32, v2

    and-int v28, v3, v28

    shr-int/lit8 v28, v28, 0x8

    .line 1293
    aput v28, v32, v16

    and-int/lit16 v3, v3, 0xff

    const/16 v28, 0x2

    .line 1294
    aput v3, v32, v28

    .line 1295
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int v3, v14, v3

    .line 1296
    aget v29, v32, v2

    mul-int v2, v29, v3

    add-int v27, v27, v2

    .line 1297
    aget v2, v32, v16

    mul-int v33, v2, v3

    add-int v19, v19, v33

    .line 1298
    aget v32, v32, v28

    mul-int v3, v3, v32

    add-int v20, v20, v3

    if-lez v0, :cond_d3

    add-int v24, v24, v29

    add-int v25, v25, v2

    add-int v26, v26, v32

    goto :goto_d9

    :cond_d3
    add-int v21, v21, v29

    add-int v22, v22, v2

    add-int v23, v23, v32

    :goto_d9
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    const/16 p1, 0x0

    goto :goto_83

    :cond_e2
    move-object/from16 v30, v2

    move-object/from16 v31, v3

    move v2, v1

    const/4 v0, 0x0

    :goto_e8
    if-ge v0, v5, :cond_16c

    .line 1313
    aget v3, p2, v27

    aput v3, v11, v17

    .line 1314
    aget v3, p2, v19

    aput v3, v12, v17

    .line 1315
    aget v3, p2, v20

    aput v3, v10, v17

    sub-int v27, v27, v21

    sub-int v19, v19, v22

    sub-int v20, v20, v23

    sub-int v3, v2, v1

    add-int/2addr v3, v8

    .line 1322
    rem-int/2addr v3, v8

    aget-object v3, v7, v3

    const/16 v32, 0x0

    .line 1324
    aget v33, v3, v32

    sub-int v21, v21, v33

    .line 1325
    aget v32, v3, v16

    sub-int v22, v22, v32

    const/16 v32, 0x2

    .line 1326
    aget v33, v3, v32

    sub-int v23, v23, v33

    if-nez v15, :cond_121

    add-int v32, v0, v1

    move/from16 v33, v0

    add-int/lit8 v0, v32, 0x1

    .line 1329
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    aput v0, v13, v33

    goto :goto_123

    :cond_121
    move/from16 v33, v0

    .line 1331
    :goto_123
    aget v0, v13, v33

    add-int v0, v18, v0

    aget v0, v31, v0

    and-int v32, v0, v29

    shr-int/lit8 v32, v32, 0x10

    const/16 v34, 0x0

    .line 1333
    aput v32, v3, v34

    and-int v34, v0, v28

    shr-int/lit8 v34, v34, 0x8

    .line 1334
    aput v34, v3, v16

    and-int/lit16 v0, v0, 0xff

    const/16 v35, 0x2

    .line 1335
    aput v0, v3, v35

    add-int v24, v24, v32

    add-int v25, v25, v34

    add-int v26, v26, v0

    add-int v27, v27, v24

    add-int v19, v19, v25

    add-int v20, v20, v26

    add-int/lit8 v2, v2, 0x1

    .line 1345
    rem-int/2addr v2, v8

    .line 1346
    rem-int v0, v2, v8

    aget-object v0, v7, v0

    const/16 v32, 0x0

    .line 1348
    aget v3, v0, v32

    add-int v21, v21, v3

    .line 1349
    aget v32, v0, v16

    add-int v22, v22, v32

    const/16 v35, 0x2

    .line 1350
    aget v0, v0, v35

    add-int v23, v23, v0

    sub-int v24, v24, v3

    sub-int v25, v25, v32

    sub-int v26, v26, v0

    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v0, v33, 0x1

    goto/16 :goto_e8

    :cond_16c
    add-int v18, v18, v5

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p2

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    const/16 p1, 0x0

    goto/16 :goto_6c

    :cond_17a
    move-object/from16 p2, v0

    move-object/from16 v30, v2

    move-object/from16 v31, v3

    const/4 v2, 0x0

    :goto_181
    if-ge v2, v5, :cond_28f

    neg-int v0, v1

    mul-int v3, v0, v5

    move/from16 v23, v2

    move v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    :goto_198
    if-gt v0, v1, :cond_1f7

    move/from16 v24, v1

    const/4 v1, 0x0

    .line 1364
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v25

    add-int v25, v25, v23

    add-int v26, v0, v24

    .line 1366
    aget-object v26, v7, v26

    .line 1368
    aget v27, v11, v25

    aput v27, v26, v1

    .line 1369
    aget v1, v12, v25

    aput v1, v26, v16

    .line 1370
    aget v1, v10, v25

    const/16 v35, 0x2

    aput v1, v26, v35

    .line 1372
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sub-int v1, v14, v1

    .line 1374
    aget v27, v11, v25

    mul-int v27, v27, v1

    add-int v22, v22, v27

    .line 1375
    aget v27, v12, v25

    mul-int v27, v27, v1

    add-int v3, v3, v27

    .line 1376
    aget v25, v10, v25

    mul-int v25, v25, v1

    add-int v4, v4, v25

    if-lez v0, :cond_1e0

    const/16 v32, 0x0

    .line 1379
    aget v1, v26, v32

    add-int v19, v19, v1

    .line 1380
    aget v1, v26, v16

    add-int v20, v20, v1

    const/16 v35, 0x2

    .line 1381
    aget v1, v26, v35

    add-int v21, v21, v1

    goto :goto_1ef

    :cond_1e0
    const/16 v32, 0x0

    const/16 v35, 0x2

    .line 1383
    aget v1, v26, v32

    add-int/2addr v15, v1

    .line 1384
    aget v1, v26, v16

    add-int v17, v17, v1

    .line 1385
    aget v1, v26, v35

    add-int v18, v18, v1

    :goto_1ef
    if-ge v0, v6, :cond_1f2

    add-int/2addr v2, v5

    :cond_1f2
    add-int/lit8 v0, v0, 0x1

    move/from16 v1, v24

    goto :goto_198

    :cond_1f7
    move/from16 v24, v1

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v22, v24

    const/4 v2, 0x0

    :goto_200
    if-ge v2, v9, :cond_285

    const/high16 v25, -0x1000000

    .line 1396
    aget v26, v31, v1

    and-int v25, v26, v25

    aget v26, p2, v0

    shl-int/lit8 v26, v26, 0x10

    or-int v25, v25, v26

    aget v26, p2, v3

    shl-int/lit8 v26, v26, 0x8

    or-int v25, v25, v26

    aget v26, p2, v4

    or-int v25, v25, v26

    aput v25, v31, v1

    sub-int/2addr v0, v15

    sub-int v3, v3, v17

    sub-int v4, v4, v18

    sub-int v25, v22, v24

    add-int v25, v25, v8

    .line 1403
    rem-int v25, v25, v8

    aget-object v25, v7, v25

    const/16 v32, 0x0

    .line 1405
    aget v26, v25, v32

    sub-int v15, v15, v26

    .line 1406
    aget v26, v25, v16

    sub-int v17, v17, v26

    const/16 v35, 0x2

    .line 1407
    aget v26, v25, v35

    sub-int v18, v18, v26

    move/from16 v26, v0

    if-nez v23, :cond_244

    add-int v0, v2, v14

    .line 1410
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int/2addr v0, v5

    aput v0, v13, v2

    .line 1412
    :cond_244
    aget v0, v13, v2

    add-int v0, v23, v0

    .line 1414
    aget v27, v11, v0

    const/16 v32, 0x0

    aput v27, v25, v32

    .line 1415
    aget v28, v12, v0

    aput v28, v25, v16

    .line 1416
    aget v0, v10, v0

    const/16 v35, 0x2

    aput v0, v25, v35

    add-int v19, v19, v27

    add-int v20, v20, v28

    add-int v21, v21, v0

    add-int v0, v26, v19

    add-int v3, v3, v20

    add-int v4, v4, v21

    add-int/lit8 v22, v22, 0x1

    .line 1426
    rem-int v22, v22, v8

    .line 1427
    aget-object v25, v7, v22

    const/16 v32, 0x0

    .line 1429
    aget v26, v25, v32

    add-int v15, v15, v26

    .line 1430
    aget v27, v25, v16

    add-int v17, v17, v27

    const/16 v35, 0x2

    .line 1431
    aget v25, v25, v35

    add-int v18, v18, v25

    sub-int v19, v19, v26

    sub-int v20, v20, v27

    sub-int v21, v21, v25

    add-int/2addr v1, v5

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_200

    :cond_285
    const/16 v32, 0x0

    const/16 v35, 0x2

    add-int/lit8 v2, v23, 0x1

    move/from16 v1, v24

    goto/16 :goto_181

    :cond_28f
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    move v8, v5

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    .line 1440
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v2
.end method

.method public static toAlpha(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    .line 1062
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lcom/transsion/widgetslib/util/ImageUtils;->toAlpha(Landroid/graphics/Bitmap;Ljava/lang/Boolean;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static toAlpha(Landroid/graphics/Bitmap;Ljava/lang/Boolean;)Landroid/graphics/Bitmap;
    .registers 3

    .line 1073
    invoke-static {p0}, Lcom/transsion/widgetslib/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 1074
    :cond_8
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1075
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1b

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_1b

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1b
    return-object v0
.end method

.method public static toGray(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    const/4 v0, 0x0

    .line 1086
    invoke-static {p0, v0}, Lcom/transsion/widgetslib/util/ImageUtils;->toGray(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static toGray(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .registers 8

    .line 1097
    invoke-static {p0}, Lcom/transsion/widgetslib/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 1098
    :cond_8
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1099
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1100
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 1101
    new-instance v3, Landroid/graphics/ColorMatrix;

    invoke-direct {v3}, Landroid/graphics/ColorMatrix;-><init>()V

    const/4 v4, 0x0

    .line 1102
    invoke-virtual {v3, v4}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 1103
    new-instance v5, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v5, v3}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 1104
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1105
    invoke-virtual {v1, p0, v4, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eqz p1, :cond_41

    .line 1106
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_41

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_41
    return-object v0
.end method

.method public static toRound(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    const/4 v0, 0x0

    .line 656
    invoke-static {p0, v0, v0, v0}, Lcom/transsion/widgetslib/util/ImageUtils;->toRound(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static toRound(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 4

    const/4 v0, 0x0

    .line 681
    invoke-static {p0, p1, p2, v0}, Lcom/transsion/widgetslib/util/ImageUtils;->toRound(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static toRound(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .registers 17

    .line 697
    invoke-static {p0}, Lcom/transsion/widgetslib/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 698
    :cond_8
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 699
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 700
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 701
    new-instance v4, Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    .line 702
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-static {v0, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    int-to-float v6, v3

    const/high16 v7, 0x40000000    # 2.0f

    div-float v8, v6, v7

    .line 704
    new-instance v9, Landroid/graphics/RectF;

    int-to-float v10, v0

    int-to-float v11, v2

    const/4 v12, 0x0

    invoke-direct {v9, v12, v12, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    sub-int/2addr v0, v3

    int-to-float v0, v0

    div-float/2addr v0, v7

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v7

    .line 705
    invoke-virtual {v9, v0, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 706
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 707
    iget v2, v9, Landroid/graphics/RectF;->left:F

    iget v3, v9, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    div-float v2, v6, v10

    div-float/2addr v6, v11

    .line 708
    invoke-virtual {v0, v2, v6}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 709
    new-instance v2, Landroid/graphics/BitmapShader;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v2, p0, v3, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 710
    invoke-virtual {v2, v0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 711
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 712
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 713
    invoke-virtual {v0, v9, v8, v8, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    if-lez p1, :cond_77

    .line 715
    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 716
    invoke-virtual {v4, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 717
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    int-to-float p1, p1

    .line 718
    invoke-virtual {v4, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    div-float/2addr p1, v7

    sub-float/2addr v8, p1

    div-float/2addr v10, v7

    div-float/2addr v11, v7

    .line 720
    invoke-virtual {v0, v10, v11, v8, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_77
    if-eqz p3, :cond_82

    .line 722
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_82

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_82
    return-object v5
.end method

.method public static toRound(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .registers 3

    const/4 v0, 0x0

    .line 667
    invoke-static {p0, v0, v0, p1}, Lcom/transsion/widgetslib/util/ImageUtils;->toRound(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static toRoundCorner(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .registers 3

    const/4 v0, 0x0

    .line 734
    invoke-static {p0, p1, v0, v0, v0}, Lcom/transsion/widgetslib/util/ImageUtils;->toRoundCorner(Landroid/graphics/Bitmap;FIIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static toRoundCorner(Landroid/graphics/Bitmap;FII)Landroid/graphics/Bitmap;
    .registers 5

    const/4 v0, 0x0

    .line 764
    invoke-static {p0, p1, p2, p3, v0}, Lcom/transsion/widgetslib/util/ImageUtils;->toRoundCorner(Landroid/graphics/Bitmap;FIIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static toRoundCorner(Landroid/graphics/Bitmap;FIIZ)Landroid/graphics/Bitmap;
    .registers 13

    .line 782
    invoke-static {p0}, Lcom/transsion/widgetslib/util/ImageUtils;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 783
    :cond_8
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 784
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 785
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 786
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-static {v0, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 787
    new-instance v5, Landroid/graphics/BitmapShader;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v5, p0, v6, v6}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 788
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 789
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 790
    new-instance v6, Landroid/graphics/RectF;

    int-to-float v0, v0

    int-to-float v2, v2

    const/4 v7, 0x0

    invoke-direct {v6, v7, v7, v0, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    int-to-float v0, p2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v0, v2

    .line 792
    invoke-virtual {v6, v2, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 793
    invoke-virtual {v5, v6, p1, p1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    if-lez p2, :cond_58

    .line 795
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 796
    invoke-virtual {v3, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 797
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 798
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 799
    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v3, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 800
    invoke-virtual {v5, v6, p1, p1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_58
    if-eqz p4, :cond_63

    .line 802
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_63

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_63
    return-object v4
.end method

.method public static toRoundCorner(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .registers 4

    const/4 v0, 0x0

    .line 748
    invoke-static {p0, p1, v0, v0, p2}, Lcom/transsion/widgetslib/util/ImageUtils;->toRoundCorner(Landroid/graphics/Bitmap;FIIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static view2Bitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 175
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 176
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 175
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 178
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 179
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_21

    .line 181
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_25

    :cond_21
    const/4 v2, -0x1

    .line 183
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 185
    :goto_25
    invoke-virtual {p0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method
