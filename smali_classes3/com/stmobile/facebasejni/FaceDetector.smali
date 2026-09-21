.class public Lcom/stmobile/facebasejni/FaceDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "FaceDetector"


# instance fields
.field private handle:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 15
    iput-wide v0, p0, Lcom/stmobile/facebasejni/FaceDetector;->handle:J

    return-void
.end method


# virtual methods
.method public createHandle(Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;Lcom/stmobile/facebasejni/common/FaceConfig$FaceKeyPointsCount;)Lcom/stmobile/facebasejni/common/StatusCode;
    .registers 4

    const/4 v0, 0x1

    .line 22
    new-array v0, v0, [I

    .line 23
    invoke-virtual {p1}, Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;->getValue()I

    move-result p1

    invoke-virtual {p2}, Lcom/stmobile/facebasejni/common/FaceConfig$FaceKeyPointsCount;->getValue()I

    move-result p2

    invoke-static {p1, p2, v0}, Lcom/stmobile/facebasejni/FaceAPI;->createDetector(II[I)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/stmobile/facebasejni/FaceDetector;->handle:J

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
    iget-wide v0, p0, Lcom/stmobile/facebasejni/FaceDetector;->handle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_9

    return-void

    .line 31
    :cond_9
    invoke-static {v0, v1}, Lcom/stmobile/facebasejni/FaceAPI;->destoryDetector(J)V

    .line 32
    iput-wide v2, p0, Lcom/stmobile/facebasejni/FaceDetector;->handle:J

    return-void
.end method

.method public detect(Landroid/graphics/Bitmap;)[Lcom/stmobile/facebasejni/common/FaceInfo;
    .registers 3

    .line 51
    sget-object v0, Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;->UP:Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;

    invoke-virtual {p0, p1, v0}, Lcom/stmobile/facebasejni/FaceDetector;->detect(Landroid/graphics/Bitmap;Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;)[Lcom/stmobile/facebasejni/common/FaceInfo;

    move-result-object p0

    return-object p0
.end method

.method public detect(Landroid/graphics/Bitmap;Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;)[Lcom/stmobile/facebasejni/common/FaceInfo;
    .registers 4

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p0, p1, p2, v0}, Lcom/stmobile/facebasejni/FaceDetector;->detect(Landroid/graphics/Bitmap;Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;[B)[Lcom/stmobile/facebasejni/common/FaceInfo;

    move-result-object p0

    return-object p0
.end method

.method public detect(Landroid/graphics/Bitmap;Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;[B)[Lcom/stmobile/facebasejni/common/FaceInfo;
    .registers 10

    if-eqz p1, :cond_3a

    .line 65
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_3a

    .line 68
    :cond_9
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v0, v1, :cond_16

    const/4 v0, 0x0

    .line 69
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_16
    if-nez p3, :cond_25

    .line 72
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    mul-int/2addr p3, v0

    mul-int/lit8 p3, p3, 0x3

    new-array p3, p3, [B

    :cond_25
    move-object v1, p3

    .line 74
    invoke-static {p1, v1}, Lcom/stmobile/facebasejni/utils/ImageUtils;->getRGBByteFromBitmap(Landroid/graphics/Bitmap;[B)V

    .line 75
    sget-object v2, Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;->BGR888:Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/stmobile/facebasejni/FaceDetector;->detect([BLcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;IILcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;)[Lcom/stmobile/facebasejni/common/FaceInfo;

    move-result-object p0

    return-object p0

    :cond_3a
    :goto_3a
    const/4 p0, 0x0

    return-object p0
.end method

.method public detect([BLcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;IILcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;)[Lcom/stmobile/facebasejni/common/FaceInfo;
    .registers 15

    const/4 v0, 0x1

    .line 36
    new-array v8, v0, [I

    .line 37
    iget-wide v1, p0, Lcom/stmobile/facebasejni/FaceDetector;->handle:J

    invoke-virtual {p2}, Lcom/stmobile/facebasejni/common/FaceCommon$CvPixelFormat;->getValue()I

    move-result v4

    invoke-virtual {p5}, Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;->getValue()I

    move-result v7

    move-object v3, p1

    move v5, p3

    move v6, p4

    invoke-static/range {v1 .. v8}, Lcom/stmobile/facebasejni/FaceAPI;->detect(J[BIIII[I)[Lcom/stmobile/facebasejni/common/FaceInfo;

    move-result-object p0

    const/4 p1, 0x0

    .line 38
    aget p1, v8, p1

    invoke-static {p1}, Lcom/stmobile/facebasejni/FaceAPI;->getStatusCode(I)Lcom/stmobile/facebasejni/common/StatusCode;

    move-result-object p1

    .line 39
    sget-object p2, Lcom/stmobile/facebasejni/common/StatusCode;->STM_OK:Lcom/stmobile/facebasejni/common/StatusCode;

    if-ne p1, p2, :cond_20

    return-object p0

    .line 42
    :cond_20
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "face detect statusCode="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/stmobile/facebasejni/common/StatusCode;->getDescription(Lcom/stmobile/facebasejni/common/StatusCode;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FaceDetector"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method
