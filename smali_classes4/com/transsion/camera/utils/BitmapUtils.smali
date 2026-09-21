.class public abstract Lcom/transsion/camera/utils/BitmapUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static sWcgSupport:Z


# direct methods
.method public static synthetic $r8$lambda$bSHXvcf4pyXf4H7iSRFO4D7_5UQ(IILandroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .registers 5

    const/4 p4, 0x1

    .line 272
    invoke-virtual {p2, p4}, Landroid/graphics/ImageDecoder;->setAllocator(I)V

    const/16 p4, 0x5a

    if-eq p0, p4, :cond_1e

    const/16 p4, 0x10e

    if-ne p0, p4, :cond_d

    goto :goto_1e

    .line 277
    :cond_d
    invoke-virtual {p3}, Landroid/graphics/ImageDecoder$ImageInfo;->getSize()Landroid/util/Size;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    int-to-double p3, p0

    int-to-double p0, p1

    div-double/2addr p3, p0

    invoke-static {p3, p4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    :goto_1c
    double-to-int p0, p0

    goto :goto_2e

    .line 275
    :cond_1e
    :goto_1e
    invoke-virtual {p3}, Landroid/graphics/ImageDecoder$ImageInfo;->getSize()Landroid/util/Size;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    int-to-double p3, p0

    int-to-double p0, p1

    div-double/2addr p3, p0

    invoke-static {p3, p4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    goto :goto_1c

    .line 279
    :goto_2e
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/graphics/ImageDecoder;->setTargetSampleSize(I)V

    .line 280
    sget-boolean p0, Lcom/transsion/camera/utils/BitmapUtils;->sWcgSupport:Z

    if-eqz p0, :cond_42

    .line 281
    sget-object p0, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    invoke-static {p0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/graphics/ImageDecoder;->setTargetColorSpace(Landroid/graphics/ColorSpace;)V

    :cond_42
    return-void
.end method

.method public static synthetic $r8$lambda$q9YSC94NZnqb4L6HGqLspgcHq6s(ILandroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .registers 6

    const/4 p3, 0x1

    .line 244
    invoke-virtual {p1, p3}, Landroid/graphics/ImageDecoder;->setAllocator(I)V

    .line 245
    invoke-virtual {p2}, Landroid/graphics/ImageDecoder$ImageInfo;->getSize()Landroid/util/Size;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p2

    int-to-double p2, p2

    int-to-double v0, p0

    div-double/2addr p2, v0

    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p2

    double-to-int p0, p2

    .line 246
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/ImageDecoder;->setTargetSampleSize(I)V

    .line 247
    sget-boolean p0, Lcom/transsion/camera/utils/BitmapUtils;->sWcgSupport:Z

    if-eqz p0, :cond_28

    .line 248
    sget-object p0, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    invoke-static {p0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/ImageDecoder;->setTargetColorSpace(Landroid/graphics/ColorSpace;)V

    :cond_28
    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 54
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "BitmapUtils"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/utils/BitmapUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public static bitmapToJpeg(Landroid/graphics/Bitmap;)[B
    .registers 4

    .line 626
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_1e

    .line 627
    :try_start_5
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 628
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_14

    .line 629
    :try_start_10
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_1e

    return-object p0

    :catchall_14
    move-exception p0

    .line 626
    :try_start_15
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_19

    goto :goto_1d

    :catchall_19
    move-exception v0

    :try_start_1a
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1d
    throw p0
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1e} :catch_1e

    :catch_1e
    move-exception p0

    .line 630
    sget-object v0, Lcom/transsion/camera/utils/BitmapUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bitmapToJpeg exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static blurBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 40

    move-object/from16 v0, p0

    move/from16 v8, p1

    const/4 v9, 0x1

    if-lt v8, v9, :cond_29f

    if-nez v0, :cond_b

    goto/16 :goto_29f

    .line 725
    :cond_b
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 727
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 728
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    mul-int v11, v3, v17

    .line 730
    new-array v1, v11, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move v6, v3

    move/from16 v7, v17

    .line 731
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    add-int/lit8 v0, v3, -0x1

    add-int/lit8 v2, v7, -0x1

    add-int v4, v8, v8

    add-int/lit8 v5, v4, 0x1

    .line 738
    new-array v6, v11, [I

    .line 739
    new-array v12, v11, [I

    .line 740
    new-array v11, v11, [I

    .line 742
    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v13

    new-array v13, v13, [I

    const/4 v14, 0x2

    add-int/2addr v4, v14

    shr-int/2addr v4, v9

    mul-int/2addr v4, v4

    mul-int/lit16 v15, v4, 0x100

    move/from16 v16, v9

    .line 746
    new-array v9, v15, [I

    const/4 v14, 0x0

    const/16 v17, 0x0

    :goto_49
    if-ge v14, v15, :cond_52

    .line 748
    div-int v18, v14, v4

    aput v18, v9, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_49

    :cond_52
    const/4 v14, 0x2

    .line 753
    new-array v4, v14, [I

    const/4 v14, 0x3

    aput v14, v4, v16

    aput v5, v4, v17

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v14, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    add-int/lit8 v14, v8, 0x1

    move/from16 v15, v17

    move/from16 v18, v15

    move/from16 v19, v18

    :goto_6a
    if-ge v15, v7, :cond_17b

    move-object/from16 v20, v1

    neg-int v1, v8

    move/from16 v21, v17

    move/from16 v22, v21

    move/from16 v23, v22

    move/from16 v24, v23

    move/from16 v25, v24

    move/from16 v26, v25

    move/from16 v27, v26

    move/from16 v28, v27

    move/from16 v29, v28

    :goto_81
    const v30, 0xff00

    const/high16 v31, 0xff0000

    if-gt v1, v8, :cond_e0

    move-object/from16 v32, v4

    move/from16 v33, v5

    move/from16 v4, v17

    .line 765
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int v5, v18, v5

    aget v5, v20, v5

    add-int v17, v1, v8

    .line 766
    aget-object v34, v32, v17

    and-int v17, v5, v31

    shr-int/lit8 v17, v17, 0x10

    .line 767
    aput v17, v34, v4

    and-int v17, v5, v30

    shr-int/lit8 v17, v17, 0x8

    .line 768
    aput v17, v34, v16

    and-int/lit16 v5, v5, 0xff

    const/16 v30, 0x2

    .line 769
    aput v5, v34, v30

    .line 770
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    sub-int v5, v14, v5

    .line 771
    aget v31, v34, v4

    mul-int v4, v31, v5

    add-int v21, v21, v4

    .line 772
    aget v4, v34, v16

    mul-int v35, v4, v5

    add-int v22, v22, v35

    .line 773
    aget v34, v34, v30

    mul-int v5, v5, v34

    add-int v23, v23, v5

    if-lez v1, :cond_d1

    add-int v27, v27, v31

    add-int v28, v28, v4

    add-int v29, v29, v34

    goto :goto_d7

    :cond_d1
    add-int v24, v24, v31

    add-int v25, v25, v4

    add-int v26, v26, v34

    :goto_d7
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v4, v32

    move/from16 v5, v33

    const/16 v17, 0x0

    goto :goto_81

    :cond_e0
    move-object/from16 v32, v4

    move/from16 v33, v5

    move v4, v8

    const/4 v1, 0x0

    :goto_e6
    if-ge v1, v3, :cond_16d

    .line 788
    aget v5, v9, v21

    aput v5, v6, v18

    .line 789
    aget v5, v9, v22

    aput v5, v12, v18

    .line 790
    aget v5, v9, v23

    aput v5, v11, v18

    sub-int v21, v21, v24

    sub-int v22, v22, v25

    sub-int v23, v23, v26

    sub-int v5, v4, v8

    add-int v5, v5, v33

    .line 797
    rem-int v5, v5, v33

    aget-object v5, v32, v5

    const/16 v17, 0x0

    .line 799
    aget v34, v5, v17

    sub-int v24, v24, v34

    .line 800
    aget v34, v5, v16

    sub-int v25, v25, v34

    const/16 v34, 0x2

    .line 801
    aget v35, v5, v34

    sub-int v26, v26, v35

    if-nez v15, :cond_121

    add-int v34, v1, v8

    move/from16 v35, v1

    add-int/lit8 v1, v34, 0x1

    .line 804
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    aput v1, v13, v35

    goto :goto_123

    :cond_121
    move/from16 v35, v1

    .line 806
    :goto_123
    aget v1, v13, v35

    add-int v1, v19, v1

    aget v1, v20, v1

    and-int v34, v1, v31

    shr-int/lit8 v34, v34, 0x10

    const/16 v17, 0x0

    .line 808
    aput v34, v5, v17

    and-int v36, v1, v30

    shr-int/lit8 v36, v36, 0x8

    .line 809
    aput v36, v5, v16

    and-int/lit16 v1, v1, 0xff

    const/16 v37, 0x2

    .line 810
    aput v1, v5, v37

    add-int v27, v27, v34

    add-int v28, v28, v36

    add-int v29, v29, v1

    add-int v21, v21, v27

    add-int v22, v22, v28

    add-int v23, v23, v29

    add-int/lit8 v4, v4, 0x1

    .line 820
    rem-int v4, v4, v33

    .line 821
    rem-int v1, v4, v33

    aget-object v1, v32, v1

    const/16 v17, 0x0

    .line 823
    aget v5, v1, v17

    add-int v24, v24, v5

    .line 824
    aget v34, v1, v16

    add-int v25, v25, v34

    const/16 v37, 0x2

    .line 825
    aget v1, v1, v37

    add-int v26, v26, v1

    sub-int v27, v27, v5

    sub-int v28, v28, v34

    sub-int v29, v29, v1

    add-int/lit8 v18, v18, 0x1

    add-int/lit8 v1, v35, 0x1

    goto/16 :goto_e6

    :cond_16d
    add-int v19, v19, v3

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, v20

    move-object/from16 v4, v32

    move/from16 v5, v33

    const/16 v17, 0x0

    goto/16 :goto_6a

    :cond_17b
    move-object/from16 v20, v1

    move-object/from16 v32, v4

    move/from16 v33, v5

    const/4 v4, 0x0

    :goto_182
    if-ge v4, v3, :cond_28e

    neg-int v0, v8

    mul-int v1, v0, v3

    const/4 v5, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    :goto_197
    if-gt v0, v8, :cond_1f8

    move/from16 v26, v3

    const/4 v3, 0x0

    .line 840
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v17

    add-int v27, v17, v4

    add-int v17, v0, v8

    .line 842
    aget-object v28, v32, v17

    .line 844
    aget v17, v6, v27

    aput v17, v28, v3

    .line 845
    aget v3, v12, v27

    aput v3, v28, v16

    .line 846
    aget v3, v11, v27

    const/16 v37, 0x2

    aput v3, v28, v37

    .line 848
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int v3, v14, v3

    .line 850
    aget v29, v6, v27

    mul-int v29, v29, v3

    add-int v5, v5, v29

    .line 851
    aget v29, v12, v27

    mul-int v29, v29, v3

    add-int v15, v15, v29

    .line 852
    aget v27, v11, v27

    mul-int v27, v27, v3

    add-int v18, v18, v27

    if-lez v0, :cond_1df

    const/16 v17, 0x0

    .line 855
    aget v3, v28, v17

    add-int v23, v23, v3

    .line 856
    aget v3, v28, v16

    add-int v24, v24, v3

    const/16 v37, 0x2

    .line 857
    aget v3, v28, v37

    add-int v25, v25, v3

    goto :goto_1ef

    :cond_1df
    const/16 v17, 0x0

    const/16 v37, 0x2

    .line 859
    aget v3, v28, v17

    add-int v19, v19, v3

    .line 860
    aget v3, v28, v16

    add-int v21, v21, v3

    .line 861
    aget v3, v28, v37

    add-int v22, v22, v3

    :goto_1ef
    if-ge v0, v2, :cond_1f3

    add-int v1, v1, v26

    :cond_1f3
    add-int/lit8 v0, v0, 0x1

    move/from16 v3, v26

    goto :goto_197

    :cond_1f8
    move/from16 v26, v3

    move v1, v4

    move v3, v8

    const/4 v0, 0x0

    :goto_1fd
    if-ge v0, v7, :cond_284

    const/high16 v27, -0x1000000

    .line 871
    aget v28, v20, v1

    and-int v27, v28, v27

    aget v28, v9, v5

    shl-int/lit8 v28, v28, 0x10

    or-int v27, v27, v28

    aget v28, v9, v15

    shl-int/lit8 v28, v28, 0x8

    or-int v27, v27, v28

    aget v28, v9, v18

    or-int v27, v27, v28

    aput v27, v20, v1

    sub-int v5, v5, v19

    sub-int v15, v15, v21

    sub-int v18, v18, v22

    sub-int v27, v3, v8

    add-int v27, v27, v33

    .line 878
    rem-int v27, v27, v33

    aget-object v27, v32, v27

    const/16 v17, 0x0

    .line 880
    aget v28, v27, v17

    sub-int v19, v19, v28

    .line 881
    aget v28, v27, v16

    sub-int v21, v21, v28

    const/16 v37, 0x2

    .line 882
    aget v28, v27, v37

    sub-int v22, v22, v28

    move/from16 v28, v0

    if-nez v4, :cond_243

    add-int v0, v28, v14

    .line 885
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int v0, v0, v26

    aput v0, v13, v28

    .line 887
    :cond_243
    aget v0, v13, v28

    add-int/2addr v0, v4

    .line 889
    aget v29, v6, v0

    const/16 v17, 0x0

    aput v29, v27, v17

    .line 890
    aget v30, v12, v0

    aput v30, v27, v16

    .line 891
    aget v0, v11, v0

    const/16 v37, 0x2

    aput v0, v27, v37

    add-int v23, v23, v29

    add-int v24, v24, v30

    add-int v25, v25, v0

    add-int v5, v5, v23

    add-int v15, v15, v24

    add-int v18, v18, v25

    add-int/lit8 v3, v3, 0x1

    .line 901
    rem-int v3, v3, v33

    .line 902
    aget-object v0, v32, v3

    const/16 v17, 0x0

    .line 904
    aget v27, v0, v17

    add-int v19, v19, v27

    .line 905
    aget v29, v0, v16

    add-int v21, v21, v29

    const/16 v37, 0x2

    .line 906
    aget v0, v0, v37

    add-int v22, v22, v0

    sub-int v23, v23, v27

    sub-int v24, v24, v29

    sub-int v25, v25, v0

    add-int v1, v1, v26

    add-int/lit8 v0, v28, 0x1

    goto/16 :goto_1fd

    :cond_284
    const/16 v17, 0x0

    const/16 v37, 0x2

    add-int/lit8 v4, v4, 0x1

    move/from16 v3, v26

    goto/16 :goto_182

    :cond_28e
    move/from16 v26, v3

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v12, 0x0

    move/from16 v16, v26

    move/from16 v17, v7

    move-object/from16 v11, v20

    move/from16 v13, v26

    .line 915
    invoke-virtual/range {v10 .. v17}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v10

    :cond_29f
    :goto_29f
    return-object p0
.end method

.method private static computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .registers 11

    .line 380
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v0, v0

    .line 381
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v2, p0

    const/4 p0, 0x1

    if-gtz p2, :cond_b

    move v4, p0

    goto :goto_18

    :cond_b
    mul-double v4, v0, v2

    int-to-double v6, p2

    div-double/2addr v4, v6

    .line 383
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    :goto_18
    if-gtz p1, :cond_1d

    const/16 v0, 0x80

    goto :goto_2d

    :cond_1d
    int-to-double v5, p1

    div-double/2addr v0, v5

    .line 385
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    div-double/2addr v2, v5

    .line 386
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    .line 385
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-int v0, v0

    :goto_2d
    if-ge v0, v4, :cond_30

    goto :goto_37

    :cond_30
    if-gtz p2, :cond_35

    if-gtz p1, :cond_35

    return p0

    :cond_35
    if-gtz p1, :cond_38

    :goto_37
    return v4

    :cond_38
    return v0
.end method

.method private static computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .registers 3

    .line 363
    invoke-static {p0, p1, p2}, Lcom/transsion/camera/utils/BitmapUtils;->computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p0

    const/16 p1, 0x8

    if-gt p0, p1, :cond_f

    const/4 p1, 0x1

    :goto_9
    if-ge p1, p0, :cond_e

    shl-int/lit8 p1, p1, 0x1

    goto :goto_9

    :cond_e
    return p1

    :cond_f
    add-int/lit8 p0, p0, 0x7

    .line 372
    div-int/2addr p0, p1

    mul-int/2addr p0, p1

    return p0
.end method

.method private static covertYuvDataToJpeg([BIIII)[B
    .registers 13

    .line 324
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 325
    new-instance v2, Landroid/graphics/YuvImage;

    const/4 v7, 0x0

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v2 .. v7}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 326
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-ltz p4, :cond_1b

    const/16 p1, 0x64

    if-le p4, p1, :cond_20

    :cond_1b
    const/4 p1, 0x2

    .line 330
    invoke-static {p1}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(I)I

    move-result p4

    .line 334
    :cond_20
    invoke-virtual {v2, v0, p4, p0}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 335
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static createBitmapFromByte([BI)Landroid/graphics/Bitmap;
    .registers 7

    const/4 v0, 0x0

    .line 340
    :try_start_1
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 341
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 342
    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 343
    iget-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v2, :cond_3f

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_3f

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v2, v4, :cond_1c

    goto :goto_3f

    .line 346
    :cond_1c
    invoke-static {v1, v4, p1}, Lcom/transsion/camera/utils/BitmapUtils;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p1

    iput p1, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 347
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 349
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 350
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object p1, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 351
    sget-boolean p1, Lcom/transsion/camera/utils/BitmapUtils;->sWcgSupport:Z

    if-eqz p1, :cond_39

    .line 352
    sget-object p1, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    invoke-static {p1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object p1

    iput-object p1, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    goto :goto_39

    :catch_37
    move-exception p0

    goto :goto_40

    .line 354
    :cond_39
    :goto_39
    array-length p1, p0

    invoke-static {p0, v3, p1, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_3e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_3e} :catch_37

    return-object p0

    :cond_3f
    :goto_3f
    return-object v0

    .line 356
    :goto_40
    sget-object p1, Lcom/transsion/camera/utils/BitmapUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[createBitmapFromByte] Got oom exception:"

    invoke-static {p1, v1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static createBitmapFromExif(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .registers 1

    .line 228
    invoke-static {p0}, Lcom/transsion/camera/utils/ExifUtils;->createExifInterface(Ljava/io/InputStream;)Landroid/media/ExifInterface;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/utils/BitmapUtils;->getThumbnailFromExif(Landroid/media/ExifInterface;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static createBitmapFromExif(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 1

    .line 224
    invoke-static {p0}, Lcom/transsion/camera/utils/ExifUtils;->createExifInterface(Ljava/lang/String;)Landroid/media/ExifInterface;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/utils/BitmapUtils;->getThumbnailFromExif(Landroid/media/ExifInterface;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static createBitmapFromExif([B)Landroid/graphics/Bitmap;
    .registers 1

    .line 220
    invoke-static {p0}, Lcom/transsion/camera/utils/ExifUtils;->createExifInterface([B)Landroid/media/ExifInterface;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/utils/BitmapUtils;->getThumbnailFromExif(Landroid/media/ExifInterface;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static createBitmapFromJpeg([BI)Landroid/graphics/Bitmap;
    .registers 3

    .line 243
    new-instance v0, Lcom/transsion/camera/utils/BitmapUtils$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/transsion/camera/utils/BitmapUtils$$ExternalSyntheticLambda1;-><init>(I)V

    .line 253
    :try_start_5
    invoke-static {p0}, Landroid/graphics/ImageDecoder;->createSource([B)Landroid/graphics/ImageDecoder$Source;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/graphics/ImageDecoder;->decodeBitmap(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 254
    sget-object p1, Lcom/transsion/camera/utils/BitmapUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[createBitmapFromJpeg] end"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_14} :catch_15
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_14} :catch_15

    return-object p0

    :catch_15
    move-exception p0

    .line 257
    sget-object p1, Lcom/transsion/camera/utils/BitmapUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[createBitmapFromJpeg] fail"

    invoke-static {p1, v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static createBitmapFromJpeg([BIZ)Landroid/graphics/Bitmap;
    .registers 5

    .line 263
    invoke-static {p0}, Lcom/transsion/camera/utils/ExifUtils;->createExifInterface([B)Landroid/media/ExifInterface;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 266
    invoke-static {v0}, Lcom/transsion/camera/utils/ExifUtils;->getOrientationFromExif(Landroid/media/ExifInterface;)I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 271
    :goto_c
    new-instance v1, Lcom/transsion/camera/utils/BitmapUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p1}, Lcom/transsion/camera/utils/BitmapUtils$$ExternalSyntheticLambda0;-><init>(II)V

    .line 286
    :try_start_11
    invoke-static {p0}, Landroid/graphics/ImageDecoder;->createSource([B)Landroid/graphics/ImageDecoder$Source;

    move-result-object p0

    invoke-static {p0, v1}, Landroid/graphics/ImageDecoder;->decodeBitmap(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 287
    sget-object p1, Lcom/transsion/camera/utils/BitmapUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[createBitmapFromJpeg] end"

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 288
    invoke-static {p0, v0, p2}, Lcom/transsion/camera/utils/BitmapUtils;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_24} :catch_25
    .catch Ljava/lang/OutOfMemoryError; {:try_start_11 .. :try_end_24} :catch_25

    return-object p0

    :catch_25
    move-exception p0

    .line 290
    sget-object p1, Lcom/transsion/camera/utils/BitmapUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "[createBitmapFromJpeg] fail"

    invoke-static {p1, p2, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static createBitmapFromVideo(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;
    .registers 5

    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    .line 118
    invoke-static {v0, p0, p1, v1, v2}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromVideo(Ljava/lang/String;Ljava/io/FileDescriptor;IJ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static createBitmapFromVideo(Ljava/io/FileDescriptor;IJ)Landroid/graphics/Bitmap;
    .registers 5

    const/4 v0, 0x0

    .line 110
    invoke-static {v0, p0, p1, p2, p3}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromVideo(Ljava/lang/String;Ljava/io/FileDescriptor;IJ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static createBitmapFromVideo(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 5

    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    .line 114
    invoke-static {p0, v0, p1, v1, v2}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromVideo(Ljava/lang/String;Ljava/io/FileDescriptor;IJ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static createBitmapFromVideo(Ljava/lang/String;IJ)Landroid/graphics/Bitmap;
    .registers 5

    const/4 v0, 0x0

    .line 106
    invoke-static {p0, v0, p1, p2, p3}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromVideo(Ljava/lang/String;Ljava/io/FileDescriptor;IJ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static createBitmapFromVideo(Ljava/lang/String;Ljava/io/FileDescriptor;IJ)Landroid/graphics/Bitmap;
    .registers 14

    .line 123
    sget-object v0, Lcom/transsion/camera/utils/BitmapUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[createBitmapFromVideo+] path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", fd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 124
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    const/4 v1, 0x0

    if-eqz p0, :cond_3b

    .line 127
    :try_start_2e
    invoke-virtual {v2, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/lang/RuntimeException; {:try_start_2e .. :try_end_31} :catch_36
    .catchall {:try_start_2e .. :try_end_31} :catchall_32

    goto :goto_40

    :catchall_32
    move-exception v0

    move-object p0, v0

    goto/16 :goto_10e

    :catch_36
    move-exception v0

    move-object p0, v0

    move v6, p2

    :goto_39
    move-object p1, v1

    goto :goto_86

    :cond_3b
    if-eqz p1, :cond_118

    .line 129
    :try_start_3d
    invoke-virtual {v2, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 133
    :goto_40
    const-string p0, "[createBitmapFromVideo 1]"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/16 p0, 0x9

    .line 136
    invoke-virtual {v2, p0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    const-wide/16 v3, 0x3e8

    mul-long/2addr p0, v3

    const-wide/16 v3, 0x2

    div-long/2addr p0, v3

    const-wide/16 v3, 0x0

    cmp-long v3, p3, v3

    if-ltz v3, :cond_5d

    move-wide v3, p3

    goto :goto_5e

    :cond_5d
    move-wide v3, p0

    .line 140
    :goto_5e
    invoke-virtual {v2, v3, v4}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_62
    .catch Ljava/lang/RuntimeException; {:try_start_3d .. :try_end_62} :catch_82
    .catchall {:try_start_3d .. :try_end_62} :catchall_32

    if-nez p0, :cond_72

    const/4 v5, 0x1

    move v7, p2

    move v6, p2

    .line 142
    :try_start_67
    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaMetadataRetriever;->getScaledFrameAtTime(JIII)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_73

    :catch_6c
    move-exception v0

    move-object p1, v0

    move-object v8, p1

    move-object p1, p0

    move-object p0, v8

    goto :goto_86

    :cond_72
    move v6, p2

    .line 145
    :goto_73
    const-string p1, "[createBitmapFromVideo 2]"

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_78
    .catch Ljava/lang/RuntimeException; {:try_start_67 .. :try_end_78} :catch_6c
    .catchall {:try_start_67 .. :try_end_78} :catchall_32

    .line 151
    :try_start_78
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_7b
    .catch Ljava/lang/RuntimeException; {:try_start_78 .. :try_end_7b} :catch_7c

    goto :goto_9a

    :catch_7c
    move-exception v0

    move-object p1, v0

    .line 153
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9a

    :catch_82
    move-exception v0

    move v6, p2

    move-object p0, v0

    goto :goto_39

    .line 147
    :goto_86
    :try_start_86
    sget-object p2, Lcom/transsion/camera/utils/BitmapUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p3, "[createBitmapFromVideo 3]"

    invoke-static {p2, p3}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_90
    .catchall {:try_start_86 .. :try_end_90} :catchall_32

    .line 151
    :try_start_90
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_93
    .catch Ljava/lang/RuntimeException; {:try_start_90 .. :try_end_93} :catch_94

    goto :goto_99

    :catch_94
    move-exception v0

    move-object p0, v0

    .line 153
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_99
    move-object p0, p1

    :goto_9a
    if-nez p0, :cond_a4

    .line 157
    sget-object p0, Lcom/transsion/camera/utils/BitmapUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "Video thumbnail bitmap is null !"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1

    .line 161
    :cond_a4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    .line 162
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    .line 163
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p3

    if-le p3, v6, :cond_c7

    int-to-float p4, v6

    int-to-float p3, p3

    div-float/2addr p4, p3

    int-to-float p1, p1

    mul-float/2addr p1, p4

    .line 167
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p2, p2

    mul-float/2addr p4, p2

    .line 168
    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p2

    const/4 p3, 0x1

    .line 169
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_e9

    .line 171
    :cond_c7
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p3

    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 172
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 173
    new-instance p3, Landroid/graphics/Canvas;

    invoke-direct {p3, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 174
    new-instance p4, Landroid/graphics/Matrix;

    invoke-direct {p4}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p3, p0, p4, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 176
    :goto_e9
    sget-object p2, Lcom/transsion/camera/utils/BitmapUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p3, "[createBitmapFromVideo 4]"

    invoke-static {p2, p3}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p3

    if-nez p3, :cond_f9

    .line 179
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 182
    :cond_f9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[createBitmapFromVideo-] result = "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p1

    .line 151
    :goto_10e
    :try_start_10e
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_111
    .catch Ljava/lang/RuntimeException; {:try_start_10e .. :try_end_111} :catch_112

    goto :goto_117

    :catch_112
    move-exception v0

    move-object p1, v0

    .line 153
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 155
    :goto_117
    throw p0

    .line 151
    :cond_118
    :try_start_118
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_11b
    .catch Ljava/lang/RuntimeException; {:try_start_118 .. :try_end_11b} :catch_11c

    return-object v1

    :catch_11c
    move-exception v0

    move-object p0, v0

    .line 153
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v1
.end method

.method public static createBitmapFromYUV([BIIIIIIZ)Landroid/graphics/Bitmap;
    .registers 11

    .line 298
    sget-object v0, Lcom/transsion/camera/utils/BitmapUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[createBitmapFromYuv] yuvData = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", yuvWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", yuvHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", orientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", yuvFormat = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p0, :cond_78

    .line 302
    invoke-static {p0, p1, p2, p3, p5}, Lcom/transsion/camera/utils/BitmapUtils;->covertYuvDataToJpeg([BIIII)[B

    move-result-object p0

    .line 303
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-double p1, p1

    int-to-double p3, p4

    div-double/2addr p1, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    .line 304
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p1

    .line 305
    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 306
    iput p1, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 307
    sget-boolean p1, Lcom/transsion/camera/utils/BitmapUtils;->sWcgSupport:Z

    if-eqz p1, :cond_60

    .line 308
    sget-object p1, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    invoke-static {p1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object p1

    iput-object p1, p2, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    .line 311
    :cond_60
    :try_start_60
    array-length p1, p0

    const/4 p3, 0x0

    invoke-static {p0, p3, p1, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 312
    const-string p1, "[createBitmapFromYuv] end"

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 313
    invoke-static {p0, p6, p7}, Lcom/transsion/camera/utils/BitmapUtils;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_6f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_60 .. :try_end_6f} :catch_70

    return-object p0

    :catch_70
    move-exception p0

    .line 315
    sget-object p1, Lcom/transsion/camera/utils/BitmapUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "createBitmapFromYuv fail"

    invoke-static {p1, p2, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_78
    return-object v1
.end method

.method public static createScaledBitmapFromVideo(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;
    .registers 3

    const/4 v0, 0x0

    .line 191
    invoke-static {v0, p0, p1}, Lcom/transsion/camera/utils/BitmapUtils;->createScaledBitmapFromVideo(Ljava/lang/String;Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static createScaledBitmapFromVideo(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 3

    const/4 v0, 0x0

    .line 187
    invoke-static {p0, v0, p1}, Lcom/transsion/camera/utils/BitmapUtils;->createScaledBitmapFromVideo(Ljava/lang/String;Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static createScaledBitmapFromVideo(Ljava/lang/String;Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;
    .registers 11

    .line 195
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 196
    sget-object v0, Lcom/transsion/camera/utils/BitmapUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[createScaledBitmapFromVideo] path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", fd = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v7, 0x0

    if-eqz p0, :cond_38

    .line 199
    :try_start_2e
    invoke-virtual {v1, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    goto :goto_3d

    :catchall_32
    move-exception v0

    move-object p0, v0

    goto :goto_5d

    :catch_35
    move-exception v0

    move-object p0, v0

    goto :goto_50

    :cond_38
    if-eqz p1, :cond_67

    .line 201
    invoke-virtual {v1, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    :goto_3d
    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    move v6, p2

    move v5, p2

    .line 205
    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaMetadataRetriever;->getScaledFrameAtTime(JIII)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_46
    .catch Ljava/lang/RuntimeException; {:try_start_2e .. :try_end_46} :catch_35
    .catchall {:try_start_2e .. :try_end_46} :catchall_32

    .line 211
    :try_start_46
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_49
    .catch Ljava/lang/RuntimeException; {:try_start_46 .. :try_end_49} :catch_4a

    return-object p0

    :catch_4a
    move-exception v0

    move-object p1, v0

    .line 213
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p0

    .line 208
    :goto_50
    :try_start_50
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_32

    .line 211
    :try_start_53
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_56
    .catch Ljava/lang/RuntimeException; {:try_start_53 .. :try_end_56} :catch_57

    goto :goto_5c

    :catch_57
    move-exception v0

    move-object p0, v0

    .line 213
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_5c
    return-object v7

    .line 211
    :goto_5d
    :try_start_5d
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_60
    .catch Ljava/lang/RuntimeException; {:try_start_5d .. :try_end_60} :catch_61

    goto :goto_66

    :catch_61
    move-exception v0

    move-object p1, v0

    .line 213
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 215
    :goto_66
    throw p0

    .line 211
    :cond_67
    :try_start_67
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_6a
    .catch Ljava/lang/RuntimeException; {:try_start_67 .. :try_end_6a} :catch_6b

    return-object v7

    :catch_6b
    move-exception v0

    move-object p0, v0

    .line 213
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v7
.end method

.method public static decodeBitmap(I)Landroid/graphics/Bitmap;
    .registers 2

    .line 664
    sget-object v0, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 1

    .line 660
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static encodeYUV420SP([B[III)V
    .registers 19

    move/from16 v0, p2

    move/from16 v1, p3

    mul-int v2, v0, v1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_a
    if-ge v4, v1, :cond_7f

    move v7, v3

    :goto_d
    if-ge v7, v0, :cond_7c

    .line 434
    aget v8, p1, v6

    const/high16 v9, 0xff0000

    and-int/2addr v9, v8

    shr-int/lit8 v9, v9, 0x10

    const v10, 0xff00

    and-int/2addr v10, v8

    shr-int/lit8 v10, v10, 0x8

    const/16 v11, 0xff

    and-int/2addr v8, v11

    mul-int/lit8 v12, v9, 0x42

    mul-int/lit16 v13, v10, 0x81

    add-int/2addr v12, v13

    mul-int/lit8 v13, v8, 0x19

    add-int/2addr v12, v13

    add-int/lit16 v12, v12, 0x80

    shr-int/lit8 v12, v12, 0x8

    add-int/lit8 v12, v12, 0x10

    mul-int/lit8 v13, v9, -0x26

    mul-int/lit8 v14, v10, 0x4a

    sub-int/2addr v13, v14

    mul-int/lit8 v14, v8, 0x70

    add-int/2addr v13, v14

    add-int/lit16 v13, v13, 0x80

    shr-int/lit8 v13, v13, 0x8

    add-int/lit16 v13, v13, 0x80

    mul-int/lit8 v9, v9, 0x70

    mul-int/lit8 v10, v10, 0x5e

    sub-int/2addr v9, v10

    mul-int/lit8 v8, v8, 0x12

    sub-int/2addr v9, v8

    add-int/lit16 v9, v9, 0x80

    shr-int/lit8 v8, v9, 0x8

    add-int/lit16 v8, v8, 0x80

    add-int/lit8 v9, v5, 0x1

    if-gez v12, :cond_4f

    move v12, v3

    goto :goto_52

    :cond_4f
    if-le v12, v11, :cond_52

    move v12, v11

    :cond_52
    :goto_52
    int-to-byte v10, v12

    .line 447
    aput-byte v10, p0, v5

    .line 448
    rem-int/lit8 v5, v4, 0x2

    if-nez v5, :cond_76

    rem-int/lit8 v5, v6, 0x2

    if-nez v5, :cond_76

    add-int/lit8 v5, v2, 0x1

    if-gez v8, :cond_63

    move v8, v3

    goto :goto_66

    :cond_63
    if-le v8, v11, :cond_66

    move v8, v11

    :cond_66
    :goto_66
    int-to-byte v8, v8

    .line 449
    aput-byte v8, p0, v2

    add-int/lit8 v2, v2, 0x2

    if-gez v13, :cond_6f

    move v11, v3

    goto :goto_73

    :cond_6f
    if-le v13, v11, :cond_72

    goto :goto_73

    :cond_72
    move v11, v13

    :goto_73
    int-to-byte v8, v11

    .line 450
    aput-byte v8, p0, v5

    :cond_76
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v7, 0x1

    move v5, v9

    goto :goto_d

    :cond_7c
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_7f
    return-void
.end method

.method public static getAlpha(Landroid/graphics/Bitmap;)[B
    .registers 11

    .line 458
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    new-array v2, v0, [I

    .line 459
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v1, v3

    new-array v9, v1, [B

    .line 460
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 p0, 0x0

    :goto_2a
    if-ge p0, v0, :cond_42

    .line 463
    aget v1, v2, p0

    ushr-int/lit8 v1, v1, 0x18

    const/16 v3, 0x80

    if-ge v1, v3, :cond_38

    int-to-byte v1, v1

    .line 465
    aput-byte v1, v9, p0

    goto :goto_3f

    :cond_38
    add-int/lit8 v1, v1, -0x80

    or-int/lit8 v1, v1, -0x80

    int-to-byte v1, v1

    .line 467
    aput-byte v1, v9, p0

    :goto_3f
    add-int/lit8 p0, p0, 0x1

    goto :goto_2a

    :cond_42
    return-object v9
.end method

.method public static getColorSpace()Landroid/graphics/ColorSpace;
    .registers 1

    .line 668
    sget-boolean v0, Lcom/transsion/camera/utils/BitmapUtils;->sWcgSupport:Z

    if-eqz v0, :cond_b

    .line 669
    sget-object v0, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    return-object v0

    .line 671
    :cond_b
    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    return-object v0
.end method

.method public static getNV21(IILandroid/graphics/Bitmap;)[B
    .registers 12

    mul-int v0, p0, p1

    .line 411
    new-array v2, v0, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move v7, p0

    move v4, p0

    move v8, p1

    move-object v1, p2

    .line 412
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    int-to-float p0, v8

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p0, p1

    float-to-double v5, p0

    .line 413
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int p0, v5

    mul-int/lit8 p0, p0, 0x2

    int-to-float p2, v4

    div-float/2addr p2, p1

    float-to-double p1, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    mul-int/2addr p0, p1

    add-int/2addr v0, p0

    new-array p0, v0, [B

    .line 414
    invoke-static {p0, v2, v4, v8}, Lcom/transsion/camera/utils/BitmapUtils;->encodeYUV420SP([B[III)V

    return-object p0
.end method

.method public static getTargetBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .registers 9

    .line 489
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 490
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 491
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 492
    invoke-virtual {v5, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    move-object v0, p0

    .line 493
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static getThumbnailFromExif(Landroid/media/ExifInterface;)Landroid/graphics/Bitmap;
    .registers 2

    if-eqz p0, :cond_17

    .line 232
    invoke-virtual {p0}, Landroid/media/ExifInterface;->hasThumbnail()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 233
    invoke-virtual {p0}, Landroid/media/ExifInterface;->getThumbnailBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 235
    invoke-static {p0}, Lcom/transsion/camera/utils/ExifUtils;->getOrientationFromExif(Landroid/media/ExifInterface;)I

    move-result p0

    .line 236
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_17
    const/4 p0, 0x0

    return-object p0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 1

    .line 61
    invoke-static {p0}, Lcom/transsion/camera/utils/ScreenUtils;->isWcgSupported(Landroid/content/Context;)Z

    move-result p0

    sput-boolean p0, Lcom/transsion/camera/utils/BitmapUtils;->sWcgSupport:Z

    return-void
.end method

.method public static intToBytes(I)[B
    .registers 5

    const/4 v0, 0x4

    .line 474
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_10

    mul-int/lit8 v3, v2, 0x8

    shr-int v3, p0, v3

    int-to-byte v3, v3

    .line 476
    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_10
    return-object v1
.end method

.method public static mergeBytes([B[B)[B
    .registers 5

    .line 482
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 483
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 484
    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static montageBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 13

    .line 584
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    const-string v1, "montageBitmap: bmp1 or bmp2 is recycled, return null"

    const/4 v2, 0x0

    if-nez v0, :cond_ff

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_11

    goto/16 :goto_ff

    .line 588
    :cond_11
    sget-object v0, Lcom/transsion/camera/utils/BitmapUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "montageBitmap bmp1: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 589
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "montageBitmap bmp2: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 591
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 592
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    const/4 v6, 0x0

    if-eq v5, v3, :cond_df

    .line 594
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int/2addr v5, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    div-int/2addr v5, v7

    .line 595
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    add-int/2addr v7, v5

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 596
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 597
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "montageBitmap canvas: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/graphics/Canvas;->getWidth()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/graphics/Canvas;->getHeight()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/graphics/Canvas;->getDensity()I

    move-result v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 598
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_db

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_cb

    goto :goto_db

    .line 602
    :cond_cb
    invoke-static {p1, v3, v5}, Lcom/transsion/camera/utils/BitmapUtils;->resizeBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 603
    invoke-virtual {v8, p0, v6, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 604
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v8, p1, v6, p0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v7

    .line 599
    :cond_db
    :goto_db
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v2

    .line 607
    :cond_df
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 608
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 609
    invoke-virtual {v1, p0, v6, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 610
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v1, p1, v6, p0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v0

    .line 585
    :cond_ff
    :goto_ff
    sget-object p0, Lcom/transsion/camera/utils/BitmapUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v2
.end method

.method public static releaseBitmap(Landroid/widget/ImageView;)V
    .registers 4

    if-nez p0, :cond_3

    goto :goto_2f

    .line 564
    :cond_3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 566
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1d

    .line 567
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 568
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 569
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 572
    :cond_1d
    instance-of v1, v0, Landroid/graphics/drawable/VectorDrawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_27

    const/4 v1, 0x0

    .line 573
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2a

    .line 575
    :cond_27
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2a
    if-eqz v0, :cond_2f

    .line 579
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_2f
    :goto_2f
    return-void
.end method

.method public static releaseBitmapDrawable(Landroid/graphics/drawable/BitmapDrawable;)V
    .registers 2

    if-eqz p0, :cond_11

    .line 713
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 714
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_11

    .line 715
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_11
    return-void
.end method

.method public static resizeBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 10

    int-to-float p1, p1

    .line 617
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    int-to-float p2, p2

    .line 618
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    .line 619
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 620
    invoke-virtual {v5, p1, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 621
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

    return-object p0
.end method

.method public static rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .registers 11

    if-nez p1, :cond_8

    if-eqz p2, :cond_5

    goto :goto_8

    :cond_5
    move-object v1, p0

    goto/16 :goto_ad

    :cond_8
    :goto_8
    if-eqz p0, :cond_5

    .line 69
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 70
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    if-eqz p2, :cond_5e

    add-int/lit16 p1, p1, 0x168

    .line 74
    rem-int/lit16 p1, p1, 0x168

    const/4 p2, 0x0

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_53

    const/16 v2, 0xb4

    if-ne p1, v2, :cond_27

    goto :goto_53

    :cond_27
    const/16 v2, 0x5a

    if-eq p1, v2, :cond_47

    const/16 v2, 0x10e

    if-ne p1, v2, :cond_30

    goto :goto_47

    .line 82
    :cond_30
    sget-object p2, Lcom/transsion/camera/utils/BitmapUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mirror bitmap Invalid degrees="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_5e

    .line 79
    :cond_47
    :goto_47
    invoke-virtual {v6, v1, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 80
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v6, v0, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_5e

    .line 76
    :cond_53
    :goto_53
    invoke-virtual {v6, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 77
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v6, v0, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_5e
    :goto_5e
    if-eqz p1, :cond_77

    .line 85
    rem-int/lit8 p2, p1, 0x5a

    if-nez p2, :cond_77

    int-to-float p1, p1

    .line 87
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    invoke-virtual {v6, p1, p2, v1}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    goto :goto_8d

    .line 89
    :cond_77
    sget-object p2, Lcom/transsion/camera/utils/BitmapUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rotate bitmap Invalid degrees="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 93
    :goto_8d
    :try_start_8d
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5
    :try_end_95
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8d .. :try_end_95} :catch_a7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8d .. :try_end_95} :catch_a7

    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    :try_start_99
    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eq v1, p0, :cond_a6

    .line 95
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_a2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_99 .. :try_end_a2} :catch_a3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_99 .. :try_end_a2} :catch_a3

    return-object p0

    :catch_a3
    move-exception v0

    :goto_a4
    move-object p0, v0

    goto :goto_aa

    :cond_a6
    return-object v1

    :catch_a7
    move-exception v0

    move-object v1, p0

    goto :goto_a4

    .line 99
    :goto_aa
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_ad
    return-object v1
.end method

.method public static rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 3

    const/4 v0, 0x0

    .line 65
    invoke-static {p0, p1, v0}, Lcom/transsion/camera/utils/BitmapUtils;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static saveBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .registers 7

    if-nez p1, :cond_a

    .line 677
    sget-object p0, Lcom/transsion/camera/utils/BitmapUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "bm is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 681
    :cond_a
    sget-object v0, Lcom/transsion/camera/utils/BitmapUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "\u4fdd\u5b58\u56fe\u7247"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 682
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 683
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/MyAlbums/Preview/"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 684
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_38

    .line 685
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 688
    :cond_38
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMdd_HHmmss"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 689
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 691
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".jpg"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 694
    :try_start_65
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 695
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 696
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p1, v2, v4, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 697
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 698
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 699
    const-string p1, "\u5df2\u7ecf\u4fdd\u5b58"

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_81
    .catch Ljava/io/FileNotFoundException; {:try_start_65 .. :try_end_81} :catch_84
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_81} :catch_82

    goto :goto_96

    :catch_82
    move-exception p1

    goto :goto_86

    :catch_84
    move-exception p1

    goto :goto_8a

    .line 706
    :goto_86
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_96

    .line 702
    :goto_8a
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 703
    sget-object v0, Lcom/transsion/camera/utils/BitmapUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 708
    :goto_96
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    return-void
.end method

.method public static scaleDownBitmapLinearAntiAlias(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 500
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 503
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/high16 v2, 0x3f400000    # 0.75f

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1a

    .line 505
    invoke-static {p0, p1}, Lcom/transsion/camera/utils/BitmapUtils;->getTargetBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 507
    :cond_1a
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    .line 510
    invoke-static {p0, v3}, Lcom/transsion/camera/utils/BitmapUtils;->getTargetBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 511
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    int-to-float v2, v2

    div-float/2addr v4, v2

    :cond_2b
    :goto_2b
    cmpl-float v4, v4, p1

    if-lez v4, :cond_46

    .line 513
    invoke-static {p0, v3}, Lcom/transsion/camera/utils/BitmapUtils;->getTargetBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 514
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    mul-float v5, v4, v3

    cmpg-float v5, v5, p1

    if-gez v5, :cond_2b

    div-float v3, p1, v4

    const v5, 0x3c23d70a    # 0.01f

    sub-float/2addr v3, v5

    goto :goto_2b

    .line 519
    :cond_46
    sget-object p1, Lcom/transsion/camera/utils/BitmapUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scaleDownBitmapLinearAntiAlias "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p0
.end method
