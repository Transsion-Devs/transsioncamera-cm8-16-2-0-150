.class public Lcom/transsion/camera/feature/setting/videohdr/utils/WaterMark;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field public static final WATERMARK_PADDING_BOTTOM:I = 0x6

.field public static final WATERMARK_PADDING_LEFT:I = 0x6


# instance fields
.field public mWaterMarkBuffer:[B

.field public mWaterMarkH:I

.field public mWaterMarkW:I

.field public wmHeight:F

.field public wmLeft:F

.field public wmTexTransform:[F

.field public wmTop:F

.field public wmViewPortH:I

.field public wmViewPortW:I

.field public wmWidth:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 12
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "WaterMark"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/videohdr/utils/WaterMark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method private constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 30
    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 31
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/videohdr/utils/WaterMark;->mWaterMarkBuffer:[B

    .line 32
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/setting/videohdr/utils/WaterMark;->mWaterMarkW:I

    .line 33
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/setting/videohdr/utils/WaterMark;->mWaterMarkH:I

    const/16 p1, 0x10

    .line 35
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videohdr/utils/WaterMark;->wmTexTransform:[F

    const/4 p0, 0x0

    .line 36
    invoke-static {p1, p0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method

.method public static decodeWaterMark(Landroid/graphics/Bitmap;)Lcom/transsion/camera/feature/setting/videohdr/utils/WaterMark;
    .registers 2

    if-eqz p0, :cond_f

    .line 40
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_f

    .line 43
    :cond_9
    new-instance v0, Lcom/transsion/camera/feature/setting/videohdr/utils/WaterMark;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/videohdr/utils/WaterMark;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0

    :cond_f
    :goto_f
    const/4 p0, 0x0

    return-object p0
.end method

.method private setPositionForBackCamera(IIIIII)V
    .registers 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p6

    .line 127
    sget-object v5, Lcom/transsion/camera/feature/setting/videohdr/utils/WaterMark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lily [setPositionForBackCamera], left:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " , bottom:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " , previewW:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " , previewH:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p4

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " , deviceOri:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " , sensorOri:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    add-int/2addr v3, v4

    add-int/lit16 v3, v3, 0x168

    .line 128
    rem-int/lit16 v3, v3, 0x168

    const/16 v4, 0x10

    .line 130
    new-array v9, v4, [F

    const/4 v5, 0x0

    .line 131
    invoke-static {v9, v5}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v15, 0x0

    .line 132
    invoke-static {v9, v5, v6, v6, v15}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    int-to-float v11, v3

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v12, 0x0

    .line 133
    invoke-static/range {v9 .. v14}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    const/high16 v6, -0x41000000    # -0.5f

    .line 134
    invoke-static {v9, v5, v6, v6, v15}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 136
    rem-int/lit16 v6, v3, 0xb4

    if-eqz v6, :cond_73

    const/4 v6, 0x1

    goto :goto_74

    :cond_73
    move v6, v5

    :goto_74
    if-eqz v6, :cond_78

    move v10, v8

    goto :goto_79

    :cond_78
    move v10, v7

    :goto_79
    if-eqz v6, :cond_7c

    goto :goto_7d

    :cond_7c
    move v7, v8

    .line 140
    :goto_7d
    iget v6, v0, Lcom/transsion/camera/feature/setting/videohdr/utils/WaterMark;->mWaterMarkW:I

    int-to-float v8, v6

    const/high16 v11, 0x3f800000    # 1.0f

    mul-float/2addr v8, v11

    int-to-float v12, v10

    div-float/2addr v8, v12

    .line 141
    iget v13, v0, Lcom/transsion/camera/feature/setting/videohdr/utils/WaterMark;->mWaterMarkH:I

    int-to-float v14, v13

    mul-float/2addr v14, v11

    move/from16 p3, v11

    int-to-float v11, v7

    div-float/2addr v14, v11

    if-eqz v3, :cond_cc

    const/16 v15, 0x5a

    if-eq v3, v15, :cond_c0

    const/16 v15, 0xb4

    if-eq v3, v15, :cond_b0

    const/16 v13, 0x10e

    if-eq v3, v13, :cond_9e

    const/4 v1, 0x0

    const/4 v15, 0x0

    goto :goto_d5

    :cond_9e
    int-to-float v2, v2

    mul-float v2, v2, p3

    div-float v15, v2, v11

    add-int/2addr v1, v6

    int-to-float v1, v1

    mul-float v1, v1, p3

    div-float/2addr v1, v12

    sub-float v1, p3, v1

    :goto_aa
    move/from16 v16, v14

    move v14, v8

    move/from16 v8, v16

    goto :goto_d5

    :cond_b0
    add-int/2addr v1, v6

    int-to-float v1, v1

    mul-float v1, v1, p3

    div-float/2addr v1, v12

    sub-float v15, p3, v1

    add-int v1, v2, v13

    int-to-float v1, v1

    mul-float v1, v1, p3

    div-float/2addr v1, v11

    sub-float v1, p3, v1

    goto :goto_d5

    :cond_c0
    add-int/2addr v2, v13

    int-to-float v2, v2

    mul-float v2, v2, p3

    div-float/2addr v2, v11

    sub-float v15, p3, v2

    int-to-float v1, v1

    mul-float v1, v1, p3

    div-float/2addr v1, v12

    goto :goto_aa

    :cond_cc
    int-to-float v1, v1

    mul-float v1, v1, p3

    div-float v15, v1, v12

    int-to-float v1, v2

    mul-float v1, v1, p3

    div-float/2addr v1, v11

    .line 172
    :goto_d5
    iput v10, v0, Lcom/transsion/camera/feature/setting/videohdr/utils/WaterMark;->wmViewPortW:I

    .line 173
    iput v7, v0, Lcom/transsion/camera/feature/setting/videohdr/utils/WaterMark;->wmViewPortH:I

    .line 174
    iput v8, v0, Lcom/transsion/camera/feature/setting/videohdr/utils/WaterMark;->wmWidth:F

    .line 175
    iput v14, v0, Lcom/transsion/camera/feature/setting/videohdr/utils/WaterMark;->wmHeight:F

    .line 176
    iput v15, v0, Lcom/transsion/camera/feature/setting/videohdr/utils/WaterMark;->wmLeft:F

    .line 177
    iput v1, v0, Lcom/transsion/camera/feature/setting/videohdr/utils/WaterMark;->wmTop:F

    .line 178
    iget-object v0, v0, Lcom/transsion/camera/feature/setting/videohdr/utils/WaterMark;->wmTexTransform:[F

    invoke-static {v9, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private setPositionForFrontCamera(IIIIII)V
    .registers 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p6

    .line 68
    sget-object v5, Lcom/transsion/camera/feature/setting/videohdr/utils/WaterMark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lily [setPositionForFrontCamera], left:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " , bottom:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " , previewW:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " , previewH:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p4

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " , deviceOri:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " , sensorOri:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    sub-int v3, v4, v3

    add-int/lit16 v3, v3, 0x168

    .line 70
    rem-int/lit16 v3, v3, 0x168

    rsub-int v3, v3, 0x168

    .line 71
    rem-int/lit16 v3, v3, 0x168

    const/16 v4, 0x10

    .line 73
    new-array v9, v4, [F

    const/4 v5, 0x0

    .line 74
    invoke-static {v9, v5}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v15, 0x0

    .line 75
    invoke-static {v9, v5, v6, v6, v15}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    int-to-float v11, v3

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v12, 0x0

    .line 76
    invoke-static/range {v9 .. v14}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    const/high16 v6, -0x41000000    # -0.5f

    .line 77
    invoke-static {v9, v5, v6, v6, v15}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 79
    rem-int/lit16 v6, v3, 0xb4

    if-eqz v6, :cond_78

    const/4 v6, 0x1

    goto :goto_79

    :cond_78
    move v6, v5

    :goto_79
    if-eqz v6, :cond_7d

    move v10, v8

    goto :goto_7e

    :cond_7d
    move v10, v7

    :goto_7e
    if-eqz v6, :cond_81

    goto :goto_82

    :cond_81
    move v7, v8

    .line 83
    :goto_82
    iget v6, v0, Lcom/transsion/camera/feature/setting/videohdr/utils/WaterMark;->mWaterMarkW:I

    int-to-float v8, v6

    const/high16 v11, 0x3f800000    # 1.0f

    mul-float/2addr v8, v11

    int-to-float v12, v10

    div-float/2addr v8, v12

    .line 84
    iget v13, v0, Lcom/transsion/camera/feature/setting/videohdr/utils/WaterMark;->mWaterMarkH:I

    int-to-float v14, v13

    mul-float/2addr v14, v11

    move/from16 p3, v11

    int-to-float v11, v7

    div-float/2addr v14, v11

    if-eqz v3, :cond_d0

    const/16 v15, 0x5a

    if-eq v3, v15, :cond_c4

    const/16 v15, 0xb4

    if-eq v3, v15, :cond_b4

    const/16 v13, 0x10e

    if-eq v3, v13, :cond_a3

    const/4 v1, 0x0

    const/4 v15, 0x0

    goto :goto_db

    :cond_a3
    neg-float v3, v14

    int-to-float v2, v2

    mul-float v2, v2, p3

    div-float/2addr v2, v11

    sub-float v15, p3, v2

    add-int/2addr v1, v6

    int-to-float v1, v1

    mul-float v1, v1, p3

    div-float/2addr v1, v12

    sub-float v1, p3, v1

    :goto_b1
    move v14, v8

    move v8, v3

    goto :goto_db

    :cond_b4
    neg-float v8, v8

    add-int/2addr v1, v6

    int-to-float v1, v1

    mul-float v1, v1, p3

    div-float v15, v1, v12

    add-int v1, v2, v13

    int-to-float v1, v1

    mul-float v1, v1, p3

    div-float/2addr v1, v11

    sub-float v1, p3, v1

    goto :goto_db

    :cond_c4
    neg-float v3, v14

    add-int/2addr v2, v13

    int-to-float v2, v2

    mul-float v2, v2, p3

    div-float v15, v2, v11

    int-to-float v1, v1

    mul-float v1, v1, p3

    div-float/2addr v1, v12

    goto :goto_b1

    :cond_d0
    neg-float v8, v8

    int-to-float v1, v1

    mul-float v1, v1, p3

    div-float/2addr v1, v12

    sub-float v15, p3, v1

    int-to-float v1, v2

    mul-float v1, v1, p3

    div-float/2addr v1, v11

    .line 117
    :goto_db
    iput v10, v0, Lcom/transsion/camera/feature/setting/videohdr/utils/WaterMark;->wmViewPortW:I

    .line 118
    iput v7, v0, Lcom/transsion/camera/feature/setting/videohdr/utils/WaterMark;->wmViewPortH:I

    .line 119
    iput v8, v0, Lcom/transsion/camera/feature/setting/videohdr/utils/WaterMark;->wmWidth:F

    .line 120
    iput v14, v0, Lcom/transsion/camera/feature/setting/videohdr/utils/WaterMark;->wmHeight:F

    .line 121
    iput v15, v0, Lcom/transsion/camera/feature/setting/videohdr/utils/WaterMark;->wmLeft:F

    .line 122
    iput v1, v0, Lcom/transsion/camera/feature/setting/videohdr/utils/WaterMark;->wmTop:F

    .line 123
    iget-object v0, v0, Lcom/transsion/camera/feature/setting/videohdr/utils/WaterMark;->wmTexTransform:[F

    invoke-static {v9, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public setWaterMarkPosition(IIIIIIZ)V
    .registers 8

    if-eqz p7, :cond_6

    .line 61
    invoke-direct/range {p0 .. p6}, Lcom/transsion/camera/feature/setting/videohdr/utils/WaterMark;->setPositionForBackCamera(IIIIII)V

    return-void

    .line 63
    :cond_6
    invoke-direct/range {p0 .. p6}, Lcom/transsion/camera/feature/setting/videohdr/utils/WaterMark;->setPositionForFrontCamera(IIIIII)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WaterMarkPoi{wmViewPortW="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/setting/videohdr/utils/WaterMark;->wmViewPortW:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", wmViewPortH="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/setting/videohdr/utils/WaterMark;->wmViewPortH:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", wmLeft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/setting/videohdr/utils/WaterMark;->wmLeft:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", wmTop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/setting/videohdr/utils/WaterMark;->wmTop:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", wmWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/setting/videohdr/utils/WaterMark;->wmWidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", wmHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/setting/videohdr/utils/WaterMark;->wmHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", wmTexTransform="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videohdr/utils/WaterMark;->wmTexTransform:[F

    .line 55
    invoke-static {p0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
