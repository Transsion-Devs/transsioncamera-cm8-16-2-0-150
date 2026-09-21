.class public Lcom/transsion/camera/feature/mode/doc/utils/SmartCropper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SmartCropper"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static crop(Landroid/graphics/Bitmap;[Landroid/graphics/Point;)Landroid/graphics/Bitmap;
    .registers 12

    if-eqz p0, :cond_5f

    if-eqz p1, :cond_5f

    .line 176
    array-length v0, p1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_57

    .line 179
    sget-object v0, Lcom/youtu/ocr/ximage/DocDetector;->sharedInstance:Lcom/youtu/ocr/ximage/DocDetector;

    const/4 v1, 0x0

    move v2, v1

    .line 180
    :goto_c
    array-length v3, p1

    if-ge v2, v3, :cond_33

    .line 181
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, p1, v2

    iget v4, v4, Landroid/graphics/Point;->x:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "  : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p1, v2

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SmartCropper"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 185
    :cond_33
    aget-object v1, p1, v1

    iget v2, v1, Landroid/graphics/Point;->x:I

    .line 186
    iget v3, v1, Landroid/graphics/Point;->y:I

    const/4 v1, 0x1

    .line 187
    aget-object v1, p1, v1

    iget v4, v1, Landroid/graphics/Point;->x:I

    .line 188
    iget v5, v1, Landroid/graphics/Point;->y:I

    const/4 v1, 0x2

    .line 189
    aget-object v1, p1, v1

    iget v6, v1, Landroid/graphics/Point;->x:I

    .line 190
    iget v7, v1, Landroid/graphics/Point;->y:I

    const/4 v1, 0x3

    .line 191
    aget-object p1, p1, v1

    iget v8, p1, Landroid/graphics/Point;->x:I

    .line 192
    iget v9, p1, Landroid/graphics/Point;->y:I

    filled-new-array/range {v2 .. v9}, [I

    move-result-object p1

    .line 193
    invoke-virtual {v0, p0, p1}, Lcom/youtu/ocr/ximage/DocDetector;->rectifyByBitmap(Landroid/graphics/Bitmap;[I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 177
    :cond_57
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The length of cropPoints must be 4 , and sort by leftTop, rightTop, rightBottom, leftBottom"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 174
    :cond_5f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "srcBmp and cropPoints cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static scan(Landroid/graphics/Bitmap;)[Landroid/graphics/Point;
    .registers 21

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 21
    const-string v2, "SmartCropper"

    if-nez v0, :cond_d

    .line 22
    const-string v0, "srcBmp == null"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 26
    :cond_d
    sget-object v3, Lcom/youtu/ocr/ximage/DocDetector;->sharedInstance:Lcom/youtu/ocr/ximage/DocDetector;

    .line 27
    invoke-virtual {v3, v0}, Lcom/youtu/ocr/ximage/DocDetector;->xnnDetectorApply(Landroid/graphics/Bitmap;)[Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;

    move-result-object v3

    if-nez v3, :cond_1b

    .line 29
    const-string v0, "detectorPoint == null"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1b
    const/4 v1, 0x0

    move v4, v1

    .line 32
    :goto_1d
    array-length v5, v3

    if-ge v4, v5, :cond_47

    .line 33
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "detectorPoint"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v3, v4

    iget v6, v6, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;->x:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, "  : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v3, v4

    iget v6, v6, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;->y:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 35
    :cond_47
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 36
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 37
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 38
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    filled-new-array {v2, v4, v5, v6}, [Landroid/graphics/Point;

    move-result-object v2

    .line 39
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 41
    aget-object v5, v3, v1

    iget v6, v5, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;->x:F

    int-to-float v4, v4

    mul-float v7, v6, v4

    float-to-int v7, v7

    const/4 v8, 0x1

    aget-object v9, v3, v8

    iget v10, v9, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;->x:F

    mul-float v11, v10, v4

    float-to-int v11, v11

    const/4 v12, 0x3

    const/4 v13, 0x2

    if-gt v7, v11, :cond_da

    mul-float v7, v6, v4

    float-to-int v7, v7

    aget-object v11, v3, v13

    iget v14, v11, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;->x:F

    mul-float v15, v14, v4

    float-to-int v15, v15

    if-gt v7, v15, :cond_da

    iget v7, v5, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;->y:F

    int-to-float v15, v0

    move/from16 v16, v1

    mul-float v1, v7, v15

    float-to-int v1, v1

    iget v11, v11, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;->y:F

    move/from16 p0, v8

    mul-float v8, v11, v15

    float-to-int v8, v8

    if-gt v1, v8, :cond_d5

    mul-float v1, v7, v15

    float-to-int v1, v1

    aget-object v8, v3, v12

    move/from16 v17, v12

    iget v12, v8, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;->y:F

    move/from16 v18, v13

    mul-float v13, v12, v15

    float-to-int v13, v13

    if-gt v1, v13, :cond_df

    .line 46
    aget-object v0, v2, v16

    mul-float/2addr v6, v4

    float-to-int v1, v6

    iput v1, v0, Landroid/graphics/Point;->x:I

    mul-float/2addr v7, v15

    float-to-int v1, v7

    .line 47
    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 48
    aget-object v0, v2, p0

    mul-float/2addr v10, v4

    float-to-int v1, v10

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 49
    iget v1, v9, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;->y:F

    mul-float/2addr v1, v15

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 50
    aget-object v0, v2, v18

    mul-float/2addr v14, v4

    float-to-int v1, v14

    iput v1, v0, Landroid/graphics/Point;->x:I

    mul-float/2addr v11, v15

    float-to-int v1, v11

    .line 51
    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 52
    aget-object v0, v2, v17

    iget v1, v8, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;->x:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    mul-float/2addr v12, v15

    float-to-int v1, v12

    .line 53
    iput v1, v0, Landroid/graphics/Point;->y:I

    return-object v2

    :cond_d5
    :goto_d5
    move/from16 v17, v12

    move/from16 v18, v13

    goto :goto_df

    :cond_da
    move/from16 v16, v1

    move/from16 p0, v8

    goto :goto_d5

    .line 54
    :cond_df
    :goto_df
    aget-object v1, v3, v17

    iget v7, v1, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;->x:F

    mul-float v8, v7, v4

    float-to-int v8, v8

    mul-float v11, v6, v4

    float-to-int v11, v11

    if-gt v8, v11, :cond_13b

    mul-float v8, v7, v4

    float-to-int v8, v8

    mul-float v11, v10, v4

    float-to-int v11, v11

    if-gt v8, v11, :cond_13b

    iget v8, v1, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;->y:F

    int-to-float v11, v0

    mul-float v12, v8, v11

    float-to-int v12, v12

    iget v13, v9, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;->y:F

    mul-float v14, v13, v11

    float-to-int v14, v14

    if-gt v12, v14, :cond_13b

    mul-float v12, v8, v11

    float-to-int v12, v12

    aget-object v14, v3, v18

    iget v15, v14, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;->y:F

    move-object/from16 v19, v2

    mul-float v2, v15, v11

    float-to-int v2, v2

    if-gt v12, v2, :cond_13d

    .line 58
    aget-object v0, v19, v16

    mul-float/2addr v7, v4

    float-to-int v1, v7

    iput v1, v0, Landroid/graphics/Point;->x:I

    mul-float/2addr v8, v11

    float-to-int v1, v8

    .line 59
    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 60
    aget-object v0, v19, p0

    mul-float/2addr v6, v4

    float-to-int v1, v6

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 61
    iget v1, v5, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;->y:F

    mul-float/2addr v1, v11

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 62
    aget-object v0, v19, v18

    mul-float/2addr v10, v4

    float-to-int v1, v10

    iput v1, v0, Landroid/graphics/Point;->x:I

    mul-float/2addr v13, v11

    float-to-int v1, v13

    .line 63
    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 64
    aget-object v0, v19, v17

    iget v1, v14, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;->x:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    mul-float/2addr v15, v11

    float-to-int v1, v15

    .line 65
    iput v1, v0, Landroid/graphics/Point;->y:I

    return-object v19

    :cond_13b
    move-object/from16 v19, v2

    .line 66
    :cond_13d
    aget-object v2, v3, v18

    iget v3, v2, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;->x:F

    mul-float v8, v3, v4

    float-to-int v8, v8

    mul-float v11, v7, v4

    float-to-int v11, v11

    if-gt v8, v11, :cond_193

    mul-float v8, v3, v4

    float-to-int v8, v8

    mul-float v11, v6, v4

    float-to-int v11, v11

    if-gt v8, v11, :cond_193

    iget v8, v2, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;->y:F

    int-to-float v11, v0

    mul-float v12, v8, v11

    float-to-int v12, v12

    iget v13, v5, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;->y:F

    mul-float v14, v13, v11

    float-to-int v14, v14

    if-gt v12, v14, :cond_193

    mul-float v12, v8, v11

    float-to-int v12, v12

    iget v14, v9, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;->y:F

    mul-float v15, v14, v11

    float-to-int v15, v15

    if-gt v12, v15, :cond_193

    .line 70
    aget-object v0, v19, v16

    mul-float/2addr v3, v4

    float-to-int v2, v3

    iput v2, v0, Landroid/graphics/Point;->x:I

    mul-float/2addr v8, v11

    float-to-int v2, v8

    .line 71
    iput v2, v0, Landroid/graphics/Point;->y:I

    .line 72
    aget-object v0, v19, p0

    mul-float/2addr v7, v4

    float-to-int v2, v7

    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 73
    iget v1, v1, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;->y:F

    mul-float/2addr v1, v11

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 74
    aget-object v0, v19, v18

    mul-float/2addr v6, v4

    float-to-int v1, v6

    iput v1, v0, Landroid/graphics/Point;->x:I

    mul-float/2addr v13, v11

    float-to-int v1, v13

    .line 75
    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 76
    aget-object v0, v19, v17

    mul-float/2addr v10, v4

    float-to-int v1, v10

    iput v1, v0, Landroid/graphics/Point;->x:I

    mul-float/2addr v14, v11

    float-to-int v1, v14

    .line 77
    iput v1, v0, Landroid/graphics/Point;->y:I

    return-object v19

    .line 79
    :cond_193
    aget-object v8, v19, v16

    mul-float/2addr v10, v4

    float-to-int v10, v10

    iput v10, v8, Landroid/graphics/Point;->x:I

    .line 80
    iget v9, v9, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;->y:F

    int-to-float v0, v0

    mul-float/2addr v9, v0

    float-to-int v9, v9

    iput v9, v8, Landroid/graphics/Point;->y:I

    .line 81
    aget-object v8, v19, p0

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v8, Landroid/graphics/Point;->x:I

    .line 82
    iget v2, v2, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;->y:F

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, v8, Landroid/graphics/Point;->y:I

    .line 83
    aget-object v2, v19, v18

    mul-float/2addr v7, v4

    float-to-int v3, v7

    iput v3, v2, Landroid/graphics/Point;->x:I

    .line 84
    iget v1, v1, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;->y:F

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, v2, Landroid/graphics/Point;->y:I

    .line 85
    aget-object v1, v19, v17

    mul-float/2addr v6, v4

    float-to-int v2, v6

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 86
    iget v2, v5, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;->y:F

    mul-float/2addr v2, v0

    float-to-int v0, v2

    iput v0, v1, Landroid/graphics/Point;->y:I

    return-object v19
.end method

.method public static scan([BII)[Landroid/graphics/Point;
    .registers 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    if-eqz v0, :cond_1b7

    .line 96
    sget-object v3, Lcom/youtu/ocr/ximage/DocDetector;->sharedInstance:Lcom/youtu/ocr/ximage/DocDetector;

    const/4 v4, 0x0

    .line 97
    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/youtu/ocr/ximage/DocDetector;->xnnDetectorApply([BIII)[Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 99
    const-string v0, "SmartCropper"

    const-string v1, "detectorPoint == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_1a
    move v3, v4

    .line 102
    :goto_1b
    array-length v5, v0

    if-ge v3, v5, :cond_21

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 105
    :cond_21
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 106
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 107
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 108
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    filled-new-array {v3, v5, v6, v7}, [Landroid/graphics/Point;

    move-result-object v3

    .line 112
    aget-object v5, v0, v4

    iget v6, v5, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;->x:F

    int-to-float v1, v1

    mul-float v7, v6, v1

    float-to-int v7, v7

    const/4 v8, 0x1

    aget-object v9, v0, v8

    iget v10, v9, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;->x:F

    mul-float v11, v10, v1

    float-to-int v11, v11

    const/4 v12, 0x2

    const/4 v13, 0x3

    if-ge v7, v11, :cond_ad

    mul-float v7, v6, v1

    float-to-int v7, v7

    aget-object v11, v0, v12

    iget v14, v11, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;->x:F

    mul-float v15, v14, v1

    float-to-int v15, v15

    if-ge v7, v15, :cond_ad

    iget v7, v5, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;->y:F

    int-to-float v15, v2

    move/from16 v16, v4

    mul-float v4, v7, v15

    float-to-int v4, v4

    iget v11, v11, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;->y:F

    move/from16 p0, v8

    mul-float v8, v11, v15

    float-to-int v8, v8

    if-ge v4, v8, :cond_a8

    mul-float v4, v7, v15

    float-to-int v4, v4

    aget-object v8, v0, v13

    move/from16 p1, v12

    iget v12, v8, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;->y:F

    move/from16 v17, v13

    mul-float v13, v12, v15

    float-to-int v13, v13

    if-ge v4, v13, :cond_b2

    .line 117
    aget-object v0, v3, v16

    mul-float/2addr v6, v1

    float-to-int v2, v6

    iput v2, v0, Landroid/graphics/Point;->x:I

    mul-float/2addr v7, v15

    float-to-int v2, v7

    .line 118
    iput v2, v0, Landroid/graphics/Point;->y:I

    .line 119
    aget-object v0, v3, p0

    mul-float/2addr v10, v1

    float-to-int v2, v10

    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 120
    iget v2, v9, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;->y:F

    mul-float/2addr v2, v15

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Point;->y:I

    .line 121
    aget-object v0, v3, p1

    mul-float/2addr v14, v1

    float-to-int v2, v14

    iput v2, v0, Landroid/graphics/Point;->x:I

    mul-float/2addr v11, v15

    float-to-int v2, v11

    .line 122
    iput v2, v0, Landroid/graphics/Point;->y:I

    .line 123
    aget-object v0, v3, v17

    iget v2, v8, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;->x:F

    mul-float/2addr v2, v1

    float-to-int v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    mul-float/2addr v12, v15

    float-to-int v1, v12

    .line 124
    iput v1, v0, Landroid/graphics/Point;->y:I

    goto/16 :goto_1ae

    :cond_a8
    :goto_a8
    move/from16 p1, v12

    move/from16 v17, v13

    goto :goto_b2

    :cond_ad
    move/from16 v16, v4

    move/from16 p0, v8

    goto :goto_a8

    :cond_b2
    :goto_b2
    mul-float v4, v6, v1

    float-to-int v4, v4

    .line 125
    aget-object v7, v0, p1

    iget v8, v7, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;->x:F

    mul-float v11, v8, v1

    float-to-int v11, v11

    if-le v4, v11, :cond_118

    mul-float v4, v6, v1

    float-to-int v4, v4

    aget-object v11, v0, v17

    iget v12, v11, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;->x:F

    mul-float v13, v12, v1

    float-to-int v13, v13

    if-le v4, v13, :cond_118

    iget v4, v5, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;->y:F

    int-to-float v13, v2

    mul-float v14, v4, v13

    float-to-int v14, v14

    iget v15, v9, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;->y:F

    move-object/from16 v18, v0

    mul-float v0, v15, v13

    float-to-int v0, v0

    if-ge v14, v0, :cond_115

    mul-float v0, v4, v13

    float-to-int v0, v0

    iget v14, v7, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;->y:F

    move/from16 v19, v1

    mul-float v1, v14, v13

    float-to-int v1, v1

    if-ge v0, v1, :cond_11b

    .line 129
    aget-object v0, v3, v16

    mul-float v12, v12, v19

    float-to-int v1, v12

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 130
    iget v1, v11, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;->y:F

    mul-float/2addr v1, v13

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 131
    aget-object v0, v3, p0

    mul-float v6, v6, v19

    float-to-int v1, v6

    iput v1, v0, Landroid/graphics/Point;->x:I

    mul-float/2addr v4, v13

    float-to-int v1, v4

    .line 132
    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 133
    aget-object v0, v3, p1

    mul-float v10, v10, v19

    float-to-int v1, v10

    iput v1, v0, Landroid/graphics/Point;->x:I

    mul-float/2addr v15, v13

    float-to-int v1, v15

    .line 134
    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 135
    aget-object v0, v3, v17

    mul-float v8, v8, v19

    float-to-int v1, v8

    iput v1, v0, Landroid/graphics/Point;->x:I

    mul-float/2addr v14, v13

    float-to-int v1, v14

    .line 136
    iput v1, v0, Landroid/graphics/Point;->y:I

    goto/16 :goto_1ae

    :cond_115
    :goto_115
    move/from16 v19, v1

    goto :goto_11b

    :cond_118
    move-object/from16 v18, v0

    goto :goto_115

    :cond_11b
    :goto_11b
    mul-float v1, v6, v19

    float-to-int v0, v1

    mul-float v1, v10, v19

    float-to-int v1, v1

    if-le v0, v1, :cond_175

    mul-float v1, v6, v19

    float-to-int v0, v1

    mul-float v1, v8, v19

    float-to-int v1, v1

    if-le v0, v1, :cond_175

    .line 137
    iget v0, v5, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;->y:F

    int-to-float v1, v2

    mul-float v4, v0, v1

    float-to-int v4, v4

    iget v11, v7, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;->y:F

    mul-float v12, v11, v1

    float-to-int v12, v12

    if-le v4, v12, :cond_175

    mul-float v4, v0, v1

    float-to-int v4, v4

    aget-object v12, v18, v17

    iget v13, v12, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;->y:F

    mul-float v14, v13, v1

    float-to-int v14, v14

    if-le v4, v14, :cond_175

    .line 141
    aget-object v2, v3, v16

    mul-float v8, v8, v19

    float-to-int v4, v8

    iput v4, v2, Landroid/graphics/Point;->x:I

    mul-float/2addr v11, v1

    float-to-int v4, v11

    .line 142
    iput v4, v2, Landroid/graphics/Point;->y:I

    .line 143
    aget-object v2, v3, p0

    iget v4, v12, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;->x:F

    mul-float v4, v4, v19

    float-to-int v4, v4

    iput v4, v2, Landroid/graphics/Point;->x:I

    mul-float/2addr v13, v1

    float-to-int v4, v13

    .line 144
    iput v4, v2, Landroid/graphics/Point;->y:I

    .line 145
    aget-object v2, v3, p1

    mul-float v6, v6, v19

    float-to-int v4, v6

    iput v4, v2, Landroid/graphics/Point;->x:I

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 146
    iput v0, v2, Landroid/graphics/Point;->y:I

    .line 147
    aget-object v0, v3, v17

    mul-float v10, v10, v19

    float-to-int v2, v10

    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 148
    iget v2, v9, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;->y:F

    mul-float/2addr v2, v1

    float-to-int v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    goto :goto_1ae

    .line 150
    :cond_175
    aget-object v0, v3, v16

    mul-float v10, v10, v19

    float-to-int v1, v10

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 151
    iget v1, v9, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;->y:F

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 152
    aget-object v0, v3, p0

    mul-float v8, v8, v19

    float-to-int v1, v8

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 153
    iget v1, v7, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;->y:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 154
    aget-object v0, v3, p1

    aget-object v1, v18, v17

    iget v4, v1, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;->x:F

    mul-float v4, v4, v19

    float-to-int v4, v4

    iput v4, v0, Landroid/graphics/Point;->x:I

    .line 155
    iget v1, v1, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;->y:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 156
    aget-object v0, v3, v17

    mul-float v6, v6, v19

    float-to-int v1, v6

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 157
    iget v1, v5, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;->y:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    :goto_1ae
    move/from16 v4, v16

    :goto_1b0
    const/4 v0, 0x4

    if-ge v4, v0, :cond_1b6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1b0

    :cond_1b6
    return-object v3

    .line 93
    :cond_1b7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "srcBmp cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
