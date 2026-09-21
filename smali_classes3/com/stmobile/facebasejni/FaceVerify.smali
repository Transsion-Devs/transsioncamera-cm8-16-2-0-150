.class public Lcom/stmobile/facebasejni/FaceVerify;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "FaceVerify"


# instance fields
.field private handle:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 14
    iput-wide v0, p0, Lcom/stmobile/facebasejni/FaceVerify;->handle:J

    return-void
.end method


# virtual methods
.method public compareFeature(JJ)F
    .registers 13

    const/4 v0, 0x1

    .line 67
    new-array v7, v0, [I

    .line 68
    iget-wide v1, p0, Lcom/stmobile/facebasejni/FaceVerify;->handle:J

    move-wide v3, p1

    move-wide v5, p3

    invoke-static/range {v1 .. v7}, Lcom/stmobile/facebasejni/FaceAPI;->compareFeature(JJJ[I)F

    move-result p0

    return p0
.end method

.method public createHandle(Ljava/lang/String;Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;)Lcom/stmobile/facebasejni/common/StatusCode;
    .registers 6

    const/4 v0, 0x1

    .line 21
    new-array v0, v0, [I

    .line 22
    invoke-virtual {p2}, Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;->getValue()I

    move-result p2

    invoke-static {p1, p2, v0}, Lcom/stmobile/facebasejni/FaceAPI;->createVerify(Ljava/lang/String;I[I)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/stmobile/facebasejni/FaceVerify;->handle:J

    .line 23
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "createHandle handle=%d"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/stmobile/facebasejni/FaceVerify;->handle:J

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FaceVerify"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 24
    aget p0, v0, p0

    invoke-static {p0}, Lcom/stmobile/facebasejni/FaceAPI;->getStatusCode(I)Lcom/stmobile/facebasejni/common/StatusCode;

    move-result-object p0

    return-object p0
.end method

.method public destoryHandle()V
    .registers 6

    .line 28
    iget-wide v0, p0, Lcom/stmobile/facebasejni/FaceVerify;->handle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_9

    return-void

    .line 31
    :cond_9
    invoke-static {v0, v1}, Lcom/stmobile/facebasejni/FaceAPI;->destoryVerify(J)V

    .line 32
    iput-wide v2, p0, Lcom/stmobile/facebasejni/FaceVerify;->handle:J

    return-void
.end method

.method public getFeature(Landroid/graphics/Bitmap;[B[Lcom/stmobile/facebasejni/common/FaceInfo;I)[J
    .registers 12

    if-eqz p1, :cond_3b

    .line 52
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_3b

    .line 55
    :cond_9
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v0, v1, :cond_16

    const/4 v0, 0x0

    .line 56
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_16
    if-nez p2, :cond_25

    .line 59
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    mul-int/2addr p2, v0

    mul-int/lit8 p2, p2, 0x3

    new-array p2, p2, [B

    :cond_25
    move-object v1, p2

    .line 61
    invoke-static {p1, v1}, Lcom/stmobile/facebasejni/utils/ImageUtils;->getRGBByteFromBitmap(Landroid/graphics/Bitmap;[B)V

    .line 62
    sget-object v2, Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;->BGR888:Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p0

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/stmobile/facebasejni/FaceVerify;->getFeature([BLcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;II[Lcom/stmobile/facebasejni/common/FaceInfo;I)[J

    move-result-object p0

    return-object p0

    :cond_3b
    :goto_3b
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFeature(Landroid/graphics/Bitmap;[Lcom/stmobile/facebasejni/common/FaceInfo;I)[J
    .registers 5

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/stmobile/facebasejni/FaceVerify;->getFeature(Landroid/graphics/Bitmap;[B[Lcom/stmobile/facebasejni/common/FaceInfo;I)[J

    move-result-object p0

    return-object p0
.end method

.method public getFeature([BLcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;II[Lcom/stmobile/facebasejni/common/FaceInfo;I)[J
    .registers 17

    const/4 v0, 0x1

    .line 36
    new-array v9, v0, [I

    .line 37
    iget-wide v1, p0, Lcom/stmobile/facebasejni/FaceVerify;->handle:J

    invoke-virtual {p2}, Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;->getValue()I

    move-result v4

    move-object v3, p1

    move v5, p3

    move v6, p4

    move-object v7, p5

    move/from16 v8, p6

    invoke-static/range {v1 .. v9}, Lcom/stmobile/facebasejni/FaceAPI;->getFeature(J[BIII[Lcom/stmobile/facebasejni/common/FaceInfo;I[I)[J

    move-result-object p0

    const/4 p1, 0x0

    .line 38
    aget p1, v9, p1

    invoke-static {p1}, Lcom/stmobile/facebasejni/FaceAPI;->getStatusCode(I)Lcom/stmobile/facebasejni/common/StatusCode;

    move-result-object p1

    .line 39
    sget-object p2, Lcom/stmobile/facebasejni/common/StatusCode;->STM_OK:Lcom/stmobile/facebasejni/common/StatusCode;

    if-ne p1, p2, :cond_1f

    return-object p0

    .line 42
    :cond_1f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "face detect attribute statusCode="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/stmobile/facebasejni/common/StatusCode;->getDescription(Lcom/stmobile/facebasejni/common/StatusCode;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FaceVerify"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method
