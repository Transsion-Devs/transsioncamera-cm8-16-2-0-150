.class public Lcom/youtu/ocr/ximage/DocDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;
    }
.end annotation


# static fields
.field private static mGussianBlur:Lcom/youtu/ocr/ximage/GussianBlur;

.field public static final sharedInstance:Lcom/youtu/ocr/ximage/DocDetector;

.field private static size:I


# instance fields
.field private mDetectResultList:Ljava/util/List;

.field private mRangeInPx:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 16
    const-string v0, "YTCommonXImage"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 17
    const-string v0, "common"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 25
    new-instance v0, Lcom/youtu/ocr/ximage/DocDetector;

    invoke-direct {v0}, Lcom/youtu/ocr/ximage/DocDetector;-><init>()V

    sput-object v0, Lcom/youtu/ocr/ximage/DocDetector;->sharedInstance:Lcom/youtu/ocr/ximage/DocDetector;

    const/4 v0, 0x5

    .line 27
    sput v0, Lcom/youtu/ocr/ximage/DocDetector;->size:I

    .line 30
    new-instance v1, Lcom/youtu/ocr/ximage/GussianBlur;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/youtu/ocr/ximage/GussianBlur;-><init>(II)V

    sput-object v1, Lcom/youtu/ocr/ximage/DocDetector;->mGussianBlur:Lcom/youtu/ocr/ximage/GussianBlur;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x19

    .line 28
    iput v0, p0, Lcom/youtu/ocr/ximage/DocDetector;->mRangeInPx:I

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    sget v1, Lcom/youtu/ocr/ximage/DocDetector;->size:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/youtu/ocr/ximage/DocDetector;->mDetectResultList:Ljava/util/List;

    return-void
.end method

.method private blueDetectResult(Lcom/youtu/ocr/ximage/IText$DetectResult;)Lcom/youtu/ocr/ximage/IText$DetectResult;
    .registers 28

    move-object/from16 v0, p0

    .line 215
    iget-object v1, v0, Lcom/youtu/ocr/ximage/DocDetector;->mDetectResultList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sget v2, Lcom/youtu/ocr/ximage/DocDetector;->size:I

    if-ge v1, v2, :cond_14

    .line 216
    const-string v0, "DocDetector"

    const-string v1, "blueDetectResult error return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_14
    const-wide/16 v2, 0x0

    move-wide v4, v2

    move-wide v6, v4

    move-wide v8, v6

    move-wide v10, v8

    move-wide v12, v10

    move-wide v14, v12

    move-wide/from16 v16, v14

    move-wide/from16 v18, v16

    const/16 p1, 0x0

    const/4 v3, 0x0

    .line 228
    :goto_23
    sget v1, Lcom/youtu/ocr/ximage/DocDetector;->size:I

    if-ge v3, v1, :cond_11b

    .line 229
    iget-object v1, v0, Lcom/youtu/ocr/ximage/DocDetector;->mDetectResultList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youtu/ocr/ximage/IText$DetectResult;

    invoke-virtual {v1}, Lcom/youtu/ocr/ximage/IText$DetectResult;->getHasResult()Z

    move-result v1

    if-nez v1, :cond_38

    move v2, v3

    goto/16 :goto_115

    .line 232
    :cond_38
    iget-object v1, v0, Lcom/youtu/ocr/ximage/DocDetector;->mDetectResultList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youtu/ocr/ximage/IText$DetectResult;

    iget-object v1, v1, Lcom/youtu/ocr/ximage/IText$DetectResult;->pointArr:[Landroid/graphics/Point;

    aget-object v1, v1, p1

    iget v1, v1, Landroid/graphics/Point;->x:I

    move/from16 v20, v3

    const/16 v21, 0x1

    int-to-double v2, v1

    sget-object v1, Lcom/youtu/ocr/ximage/DocDetector;->mGussianBlur:Lcom/youtu/ocr/ximage/GussianBlur;

    invoke-virtual {v1}, Lcom/youtu/ocr/ximage/GussianBlur;->getmGussianWeight()[D

    move-result-object v1

    aget-wide v22, v1, v20

    mul-double v2, v2, v22

    add-double v16, v16, v2

    .line 234
    iget-object v1, v0, Lcom/youtu/ocr/ximage/DocDetector;->mDetectResultList:Ljava/util/List;

    move/from16 v2, v20

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youtu/ocr/ximage/IText$DetectResult;

    iget-object v1, v1, Lcom/youtu/ocr/ximage/IText$DetectResult;->pointArr:[Landroid/graphics/Point;

    aget-object v1, v1, p1

    iget v1, v1, Landroid/graphics/Point;->y:I

    move-wide/from16 v22, v14

    int-to-double v14, v1

    sget-object v1, Lcom/youtu/ocr/ximage/DocDetector;->mGussianBlur:Lcom/youtu/ocr/ximage/GussianBlur;

    invoke-virtual {v1}, Lcom/youtu/ocr/ximage/GussianBlur;->getmGussianWeight()[D

    move-result-object v1

    aget-wide v24, v1, v2

    mul-double v14, v14, v24

    add-double/2addr v4, v14

    .line 237
    iget-object v1, v0, Lcom/youtu/ocr/ximage/DocDetector;->mDetectResultList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youtu/ocr/ximage/IText$DetectResult;

    iget-object v1, v1, Lcom/youtu/ocr/ximage/IText$DetectResult;->pointArr:[Landroid/graphics/Point;

    aget-object v1, v1, v21

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-double v14, v1

    sget-object v1, Lcom/youtu/ocr/ximage/DocDetector;->mGussianBlur:Lcom/youtu/ocr/ximage/GussianBlur;

    invoke-virtual {v1}, Lcom/youtu/ocr/ximage/GussianBlur;->getmGussianWeight()[D

    move-result-object v1

    aget-wide v24, v1, v2

    mul-double v14, v14, v24

    add-double/2addr v6, v14

    .line 239
    iget-object v1, v0, Lcom/youtu/ocr/ximage/DocDetector;->mDetectResultList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youtu/ocr/ximage/IText$DetectResult;

    iget-object v1, v1, Lcom/youtu/ocr/ximage/IText$DetectResult;->pointArr:[Landroid/graphics/Point;

    aget-object v1, v1, v21

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-double v14, v1

    sget-object v1, Lcom/youtu/ocr/ximage/DocDetector;->mGussianBlur:Lcom/youtu/ocr/ximage/GussianBlur;

    invoke-virtual {v1}, Lcom/youtu/ocr/ximage/GussianBlur;->getmGussianWeight()[D

    move-result-object v1

    aget-wide v20, v1, v2

    mul-double v14, v14, v20

    add-double/2addr v8, v14

    .line 242
    iget-object v1, v0, Lcom/youtu/ocr/ximage/DocDetector;->mDetectResultList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youtu/ocr/ximage/IText$DetectResult;

    iget-object v1, v1, Lcom/youtu/ocr/ximage/IText$DetectResult;->pointArr:[Landroid/graphics/Point;

    const/4 v3, 0x2

    aget-object v1, v1, v3

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-double v14, v1

    sget-object v1, Lcom/youtu/ocr/ximage/DocDetector;->mGussianBlur:Lcom/youtu/ocr/ximage/GussianBlur;

    invoke-virtual {v1}, Lcom/youtu/ocr/ximage/GussianBlur;->getmGussianWeight()[D

    move-result-object v1

    aget-wide v20, v1, v2

    mul-double v14, v14, v20

    add-double/2addr v10, v14

    .line 244
    iget-object v1, v0, Lcom/youtu/ocr/ximage/DocDetector;->mDetectResultList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youtu/ocr/ximage/IText$DetectResult;

    iget-object v1, v1, Lcom/youtu/ocr/ximage/IText$DetectResult;->pointArr:[Landroid/graphics/Point;

    aget-object v1, v1, v3

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-double v14, v1

    sget-object v1, Lcom/youtu/ocr/ximage/DocDetector;->mGussianBlur:Lcom/youtu/ocr/ximage/GussianBlur;

    invoke-virtual {v1}, Lcom/youtu/ocr/ximage/GussianBlur;->getmGussianWeight()[D

    move-result-object v1

    aget-wide v20, v1, v2

    mul-double v14, v14, v20

    add-double/2addr v12, v14

    .line 247
    iget-object v1, v0, Lcom/youtu/ocr/ximage/DocDetector;->mDetectResultList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youtu/ocr/ximage/IText$DetectResult;

    iget-object v1, v1, Lcom/youtu/ocr/ximage/IText$DetectResult;->pointArr:[Landroid/graphics/Point;

    const/4 v3, 0x3

    aget-object v1, v1, v3

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-double v14, v1

    sget-object v1, Lcom/youtu/ocr/ximage/DocDetector;->mGussianBlur:Lcom/youtu/ocr/ximage/GussianBlur;

    invoke-virtual {v1}, Lcom/youtu/ocr/ximage/GussianBlur;->getmGussianWeight()[D

    move-result-object v1

    aget-wide v20, v1, v2

    mul-double v14, v14, v20

    add-double v14, v22, v14

    .line 249
    iget-object v1, v0, Lcom/youtu/ocr/ximage/DocDetector;->mDetectResultList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youtu/ocr/ximage/IText$DetectResult;

    iget-object v1, v1, Lcom/youtu/ocr/ximage/IText$DetectResult;->pointArr:[Landroid/graphics/Point;

    aget-object v1, v1, v3

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-double v0, v1

    sget-object v3, Lcom/youtu/ocr/ximage/DocDetector;->mGussianBlur:Lcom/youtu/ocr/ximage/GussianBlur;

    invoke-virtual {v3}, Lcom/youtu/ocr/ximage/GussianBlur;->getmGussianWeight()[D

    move-result-object v3

    aget-wide v20, v3, v2

    mul-double v0, v0, v20

    add-double v18, v18, v0

    :goto_115
    add-int/lit8 v3, v2, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_23

    :cond_11b
    move-wide/from16 v22, v14

    const/16 v21, 0x1

    .line 252
    new-instance v0, Landroid/graphics/Point;

    move-wide/from16 v2, v16

    double-to-int v1, v2

    double-to-int v2, v4

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 253
    new-instance v1, Landroid/graphics/Point;

    double-to-int v2, v6

    double-to-int v3, v8

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 254
    new-instance v2, Landroid/graphics/Point;

    double-to-int v3, v10

    double-to-int v4, v12

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 255
    new-instance v3, Landroid/graphics/Point;

    double-to-int v4, v14

    move-wide/from16 v5, v18

    double-to-int v5, v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 260
    filled-new-array {v0, v1, v2, v3}, [Landroid/graphics/Point;

    move-result-object v0

    .line 262
    new-instance v1, Lcom/youtu/ocr/ximage/IText$DetectResult;

    move/from16 v2, v21

    invoke-direct {v1, v2, v0}, Lcom/youtu/ocr/ximage/IText$DetectResult;-><init>(Z[Landroid/graphics/Point;)V

    return-object v1
.end method

.method public static init(Landroid/content/Context;)V
    .registers 1

    return-void
.end method


# virtual methods
.method public coordinateTransform([Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;I)V
    .registers 5

    const/4 v0, 0x0

    .line 409
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_f

    .line 410
    aget-object v1, p1, v0

    invoke-virtual {p0, p2, v1}, Lcom/youtu/ocr/ximage/DocDetector;->standardCoordinate2RealCoordinate(ILcom/youtu/ocr/ximage/DocDetector$DetectorPoint;)Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;

    move-result-object v1

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    return-void
.end method

.method public rectifyByBitmap(Landroid/graphics/Bitmap;[I)Landroid/graphics/Bitmap;
    .registers 9

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 488
    :cond_4
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    aget v1, p2, v1

    const/4 v2, 0x1

    aget v2, p2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 489
    new-instance v1, Landroid/graphics/Point;

    const/4 v2, 0x2

    aget v2, p2, v2

    const/4 v3, 0x3

    aget v3, p2, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 490
    new-instance v2, Landroid/graphics/Point;

    const/4 v3, 0x4

    aget v3, p2, v3

    const/4 v4, 0x5

    aget v4, p2, v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 491
    new-instance v3, Landroid/graphics/Point;

    const/4 v4, 0x6

    aget v4, p2, v4

    const/4 v5, 0x7

    aget p2, p2, v5

    invoke-direct {v3, v4, p2}, Landroid/graphics/Point;-><init>(II)V

    filled-new-array {v0, v1, v2, v3}, [Landroid/graphics/Point;

    move-result-object p2

    .line 492
    invoke-virtual {p0, p1, p2}, Lcom/youtu/ocr/ximage/DocDetector;->xnnQuad(Landroid/graphics/Bitmap;[Landroid/graphics/Point;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public native setParam(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public standardCoordinate2RealCoordinate(ILcom/youtu/ocr/ximage/DocDetector$DetectorPoint;)Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;
    .registers 4

    const/high16 p0, 0x3f800000    # 1.0f

    if-nez p1, :cond_f

    .line 432
    new-instance p1, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;

    iget v0, p2, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;->y:F

    sub-float/2addr p0, v0

    iget p2, p2, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;->x:F

    invoke-direct {p1, p0, p2}, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;-><init>(FF)V

    return-object p1

    :cond_f
    const/16 v0, 0x5a

    if-ne p1, v0, :cond_1d

    .line 434
    new-instance p0, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;

    iget p1, p2, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;->x:F

    iget p2, p2, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;->y:F

    invoke-direct {p0, p1, p2}, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;-><init>(FF)V

    return-object p0

    :cond_1d
    const/16 v0, 0xb4

    if-ne p1, v0, :cond_2c

    .line 436
    new-instance p1, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;

    iget v0, p2, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;->y:F

    iget p2, p2, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;->x:F

    sub-float/2addr p0, p2

    invoke-direct {p1, v0, p0}, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;-><init>(FF)V

    return-object p1

    :cond_2c
    const/16 v0, 0x10e

    if-ne p1, v0, :cond_3d

    .line 438
    new-instance p1, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;

    iget v0, p2, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;->x:F

    sub-float v0, p0, v0

    iget p2, p2, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;->y:F

    sub-float/2addr p0, p2

    invoke-direct {p1, v0, p0}, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;-><init>(FF)V

    return-object p1

    :cond_3d
    return-object p2
.end method

.method public native xnnApply(Landroid/graphics/Bitmap;)Ljava/lang/String;
.end method

.method public native xnnApplyByByte([BIII)Ljava/lang/String;
.end method

.method public native xnnDestory()V
.end method

.method public xnnDetectorApply(Landroid/graphics/Bitmap;)[Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;
    .registers 4

    .line 289
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 290
    invoke-virtual {p0, p1}, Lcom/youtu/ocr/ximage/DocDetector;->xnnApply(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p0

    .line 291
    const-string p1, "\\"

    const-string v1, ""

    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 292
    const-string p1, "null object"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    const/4 p0, 0x0

    return-object p0

    .line 295
    :cond_1b
    const-class p1, [Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;

    invoke-virtual {v0, p0, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;

    return-object p0
.end method

.method public xnnDetectorApply([BIII)[Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;
    .registers 21

    move-object/from16 v0, p0

    .line 300
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 301
    invoke-virtual/range {p0 .. p4}, Lcom/youtu/ocr/ximage/DocDetector;->xnnApplyByByte([BIII)Ljava/lang/String;

    move-result-object v2

    .line 303
    const-string v3, "\\"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 304
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    const/4 v0, 0x0

    return-object v0

    .line 307
    :cond_1b
    const-class v3, [Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;

    .line 308
    new-instance v2, Lcom/youtu/ocr/ximage/IText$DetectResult;

    invoke-direct {v2}, Lcom/youtu/ocr/ximage/IText$DetectResult;-><init>()V

    if-eqz v1, :cond_420

    .line 311
    new-instance v3, Landroid/graphics/Point;

    const/4 v4, 0x0

    aget-object v5, v1, v4

    iget v6, v5, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;->x:F

    move/from16 v7, p2

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iget v5, v5, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;->y:F

    move/from16 v8, p3

    int-to-float v8, v8

    mul-float/2addr v5, v8

    float-to-int v5, v5

    invoke-direct {v3, v6, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 312
    new-instance v5, Landroid/graphics/Point;

    const/4 v6, 0x1

    aget-object v9, v1, v6

    iget v10, v9, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;->x:F

    mul-float/2addr v10, v7

    float-to-int v10, v10

    iget v9, v9, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;->y:F

    mul-float/2addr v9, v8

    float-to-int v9, v9

    invoke-direct {v5, v10, v9}, Landroid/graphics/Point;-><init>(II)V

    .line 313
    new-instance v9, Landroid/graphics/Point;

    const/4 v10, 0x2

    aget-object v11, v1, v10

    iget v12, v11, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;->x:F

    mul-float/2addr v12, v7

    float-to-int v12, v12

    iget v11, v11, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;->y:F

    mul-float/2addr v11, v8

    float-to-int v11, v11

    invoke-direct {v9, v12, v11}, Landroid/graphics/Point;-><init>(II)V

    .line 314
    new-instance v11, Landroid/graphics/Point;

    const/4 v12, 0x3

    aget-object v13, v1, v12

    iget v14, v13, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;->x:F

    mul-float/2addr v14, v7

    float-to-int v14, v14

    iget v13, v13, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;->y:F

    mul-float/2addr v13, v8

    float-to-int v13, v13

    invoke-direct {v11, v14, v13}, Landroid/graphics/Point;-><init>(II)V

    .line 315
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "point0 = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " point1 = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " point2 = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " point3 = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "DocDetector"

    invoke-static {v14, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    filled-new-array {v3, v5, v9, v11}, [Landroid/graphics/Point;

    move-result-object v5

    .line 317
    invoke-virtual {v2, v5}, Lcom/youtu/ocr/ximage/IText$DetectResult;->setPointArr([Landroid/graphics/Point;)V

    .line 318
    iget-object v9, v0, Lcom/youtu/ocr/ximage/DocDetector;->mDetectResultList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_390

    .line 319
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 321
    iget-object v11, v0, Lcom/youtu/ocr/ximage/DocDetector;->mDetectResultList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    sub-int/2addr v13, v6

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/youtu/ocr/ximage/IText$DetectResult;

    invoke-virtual {v11}, Lcom/youtu/ocr/ximage/IText$DetectResult;->getPointArr()[Landroid/graphics/Point;

    move-result-object v11

    move v15, v4

    move v13, v6

    move/from16 p1, v12

    .line 322
    :goto_c7
    array-length v12, v11

    if-ge v13, v12, :cond_10a

    .line 323
    aget-object v12, v11, v13

    iget v12, v12, Landroid/graphics/Point;->x:I

    move/from16 p2, v10

    iget v10, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v12, v10

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v10

    aget-object v12, v11, v13

    iget v12, v12, Landroid/graphics/Point;->y:I

    move/from16 p3, v6

    iget v6, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v12, v6

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v6

    add-int/2addr v10, v6

    aget-object v6, v11, v15

    iget v6, v6, Landroid/graphics/Point;->x:I

    iget v12, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v12

    .line 324
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    aget-object v12, v11, v15

    iget v12, v12, Landroid/graphics/Point;->y:I

    move/from16 p4, v4

    iget v4, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v12, v4

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/2addr v6, v4

    if-ge v10, v6, :cond_101

    move v15, v13

    :cond_101
    add-int/lit8 v13, v13, 0x1

    move/from16 v10, p2

    move/from16 v6, p3

    move/from16 v4, p4

    goto :goto_c7

    :cond_10a
    move/from16 p4, v4

    move/from16 p3, v6

    move/from16 p2, v10

    const/4 v3, 0x4

    .line 328
    new-array v4, v3, [Landroid/graphics/Point;

    .line 329
    aget-object v6, v5, p4

    aput-object v6, v4, v15

    add-int/lit8 v6, v15, 0x1

    .line 330
    rem-int/2addr v6, v3

    aget-object v10, v5, p3

    aput-object v10, v4, v6

    add-int/lit8 v6, v15, 0x2

    .line 331
    rem-int/2addr v6, v3

    aget-object v10, v5, p2

    aput-object v10, v4, v6

    add-int/lit8 v15, v15, 0x3

    .line 332
    rem-int/2addr v15, v3

    aget-object v5, v5, p1

    aput-object v5, v4, v15

    .line 333
    invoke-virtual {v2, v4}, Lcom/youtu/ocr/ximage/IText$DetectResult;->setPointArr([Landroid/graphics/Point;)V

    .line 334
    iget-object v5, v0, Lcom/youtu/ocr/ximage/DocDetector;->mDetectResultList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youtu/ocr/ximage/IText$DetectResult;

    invoke-virtual {v5}, Lcom/youtu/ocr/ximage/IText$DetectResult;->getPointArr()[Landroid/graphics/Point;

    move-result-object v5

    aget-object v5, v5, p4

    iget-object v6, v0, Lcom/youtu/ocr/ximage/DocDetector;->mDetectResultList:Ljava/util/List;

    .line 335
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youtu/ocr/ximage/IText$DetectResult;

    invoke-virtual {v6}, Lcom/youtu/ocr/ximage/IText$DetectResult;->getPointArr()[Landroid/graphics/Point;

    move-result-object v6

    aget-object v6, v6, p3

    iget-object v10, v0, Lcom/youtu/ocr/ximage/DocDetector;->mDetectResultList:Ljava/util/List;

    .line 336
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/youtu/ocr/ximage/IText$DetectResult;

    invoke-virtual {v10}, Lcom/youtu/ocr/ximage/IText$DetectResult;->getPointArr()[Landroid/graphics/Point;

    move-result-object v10

    aget-object v10, v10, p2

    iget-object v11, v0, Lcom/youtu/ocr/ximage/DocDetector;->mDetectResultList:Ljava/util/List;

    .line 337
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/youtu/ocr/ximage/IText$DetectResult;

    invoke-virtual {v11}, Lcom/youtu/ocr/ximage/IText$DetectResult;->getPointArr()[Landroid/graphics/Point;

    move-result-object v11

    aget-object v11, v11, p1

    filled-new-array {v5, v6, v10, v11}, [Landroid/graphics/Point;

    move-result-object v5

    .line 338
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 339
    aget-object v10, v4, p4

    iget v10, v10, Landroid/graphics/Point;->x:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    aget-object v10, v4, p4

    iget v10, v10, Landroid/graphics/Point;->y:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    aget-object v10, v4, p3

    iget v10, v10, Landroid/graphics/Point;->x:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    aget-object v10, v4, p3

    iget v10, v10, Landroid/graphics/Point;->y:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    aget-object v10, v4, p2

    iget v10, v10, Landroid/graphics/Point;->x:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    aget-object v10, v4, p2

    iget v10, v10, Landroid/graphics/Point;->y:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    aget-object v10, v4, p1

    iget v10, v10, Landroid/graphics/Point;->x:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    aget-object v4, v4, p1

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 348
    aget-object v10, v5, p4

    iget v10, v10, Landroid/graphics/Point;->x:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    aget-object v10, v5, p4

    iget v10, v10, Landroid/graphics/Point;->y:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    aget-object v10, v5, p3

    iget v10, v10, Landroid/graphics/Point;->x:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    aget-object v10, v5, p3

    iget v10, v10, Landroid/graphics/Point;->y:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    aget-object v10, v5, p2

    iget v10, v10, Landroid/graphics/Point;->x:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    aget-object v10, v5, p2

    iget v10, v10, Landroid/graphics/Point;->y:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    aget-object v10, v5, p1

    iget v10, v10, Landroid/graphics/Point;->x:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    aget-object v5, v5, p1

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 357
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    move/from16 v5, p4

    .line 358
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v10, v5

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v5, p3

    .line 359
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v10, v5

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v5, p2

    .line 360
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v10, v5

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v5, p1

    .line 361
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v10, v5

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x5

    .line 363
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x6

    .line 364
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x7

    .line 365
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_354
    :goto_354
    if-ge v4, v3, :cond_369

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v4, v4, 0x1

    check-cast v6, Ljava/lang/Integer;

    .line 368
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget v10, v0, Lcom/youtu/ocr/ximage/DocDetector;->mRangeInPx:I

    if-le v6, v10, :cond_354

    add-int/lit8 v5, v5, 0x1

    goto :goto_354

    :cond_369
    const/4 v4, 0x1

    if-le v5, v4, :cond_391

    .line 373
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "maxdiff: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " clear"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v3, v0, Lcom/youtu/ocr/ximage/DocDetector;->mDetectResultList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    const/4 v4, 0x1

    goto :goto_391

    :cond_390
    move v4, v6

    .line 381
    :cond_391
    :goto_391
    invoke-virtual {v2, v4}, Lcom/youtu/ocr/ximage/IText$DetectResult;->setHasResult(Z)V

    .line 383
    iget-boolean v3, v2, Lcom/youtu/ocr/ximage/IText$DetectResult;->hasResult:Z

    if-eqz v3, :cond_3a7

    .line 384
    iget-object v3, v0, Lcom/youtu/ocr/ximage/DocDetector;->mDetectResultList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sget v4, Lcom/youtu/ocr/ximage/DocDetector;->size:I

    if-ge v3, v4, :cond_3a7

    .line 385
    iget-object v3, v0, Lcom/youtu/ocr/ximage/DocDetector;->mDetectResultList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    :cond_3a7
    invoke-direct {v0, v2}, Lcom/youtu/ocr/ximage/DocDetector;->blueDetectResult(Lcom/youtu/ocr/ximage/IText$DetectResult;)Lcom/youtu/ocr/ximage/IText$DetectResult;

    move-result-object v0

    const/4 v5, 0x0

    .line 392
    aget-object v2, v1, v5

    invoke-virtual {v0}, Lcom/youtu/ocr/ximage/IText$DetectResult;->getPointArr()[Landroid/graphics/Point;

    move-result-object v3

    aget-object v3, v3, v5

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    div-float/2addr v3, v7

    iput v3, v2, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;->x:F

    .line 393
    aget-object v2, v1, v5

    invoke-virtual {v0}, Lcom/youtu/ocr/ximage/IText$DetectResult;->getPointArr()[Landroid/graphics/Point;

    move-result-object v3

    aget-object v3, v3, v5

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    div-float/2addr v3, v8

    iput v3, v2, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;->y:F

    const/4 v4, 0x1

    .line 394
    aget-object v2, v1, v4

    invoke-virtual {v0}, Lcom/youtu/ocr/ximage/IText$DetectResult;->getPointArr()[Landroid/graphics/Point;

    move-result-object v3

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    div-float/2addr v3, v7

    iput v3, v2, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;->x:F

    .line 395
    aget-object v2, v1, v4

    invoke-virtual {v0}, Lcom/youtu/ocr/ximage/IText$DetectResult;->getPointArr()[Landroid/graphics/Point;

    move-result-object v3

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    div-float/2addr v3, v8

    iput v3, v2, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;->y:F

    const/4 v5, 0x2

    .line 396
    aget-object v2, v1, v5

    invoke-virtual {v0}, Lcom/youtu/ocr/ximage/IText$DetectResult;->getPointArr()[Landroid/graphics/Point;

    move-result-object v3

    aget-object v3, v3, v5

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    div-float/2addr v3, v7

    iput v3, v2, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;->x:F

    .line 397
    aget-object v2, v1, v5

    invoke-virtual {v0}, Lcom/youtu/ocr/ximage/IText$DetectResult;->getPointArr()[Landroid/graphics/Point;

    move-result-object v3

    aget-object v3, v3, v5

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    div-float/2addr v3, v8

    iput v3, v2, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;->y:F

    const/4 v5, 0x3

    .line 398
    aget-object v2, v1, v5

    invoke-virtual {v0}, Lcom/youtu/ocr/ximage/IText$DetectResult;->getPointArr()[Landroid/graphics/Point;

    move-result-object v3

    aget-object v3, v3, v5

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    div-float/2addr v3, v7

    iput v3, v2, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;->x:F

    .line 399
    aget-object v2, v1, v5

    invoke-virtual {v0}, Lcom/youtu/ocr/ximage/IText$DetectResult;->getPointArr()[Landroid/graphics/Point;

    move-result-object v0

    aget-object v0, v0, v5

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    div-float/2addr v0, v8

    iput v0, v2, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;->y:F

    return-object v1

    .line 378
    :cond_420
    iget-object v0, v0, Lcom/youtu/ocr/ximage/DocDetector;->mDetectResultList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object v1
.end method

.method public native xnnEnhance(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
.end method

.method public native xnnInitedByByte([B)Z
.end method

.method public native xnnQuad(Landroid/graphics/Bitmap;[Landroid/graphics/Point;)Landroid/graphics/Bitmap;
.end method
