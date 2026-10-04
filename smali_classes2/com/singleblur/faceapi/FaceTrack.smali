.class public Lcom/singleblur/faceapi/FaceTrack;
.super Lcom/singleblur/faceapi/FaceHandleBase;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "FaceTrack"


# direct methods
.method public constructor <init>()V
    .registers 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    .line 19
    invoke-direct/range {v0 .. v5}, Lcom/singleblur/faceapi/FaceTrack;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/singleblur/faceapi/model/FaceConfig$FaceImageResize;Lcom/singleblur/faceapi/model/FaceConfig$FaceKeyPointCount;Lcom/singleblur/faceapi/model/FaceConfig$TrackThreadCount;)V

    return-void
.end method

.method public constructor <init>(Lcom/singleblur/faceapi/model/FaceConfig$FaceImageResize;Lcom/singleblur/faceapi/model/FaceConfig$FaceKeyPointCount;Lcom/singleblur/faceapi/model/FaceConfig$TrackThreadCount;)V
    .registers 10

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 24
    invoke-direct/range {v0 .. v5}, Lcom/singleblur/faceapi/FaceTrack;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/singleblur/faceapi/model/FaceConfig$FaceImageResize;Lcom/singleblur/faceapi/model/FaceConfig$FaceKeyPointCount;Lcom/singleblur/faceapi/model/FaceConfig$TrackThreadCount;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/singleblur/faceapi/model/FaceConfig$FaceImageResize;Lcom/singleblur/faceapi/model/FaceConfig$FaceKeyPointCount;Lcom/singleblur/faceapi/model/FaceConfig$TrackThreadCount;)V
    .registers 6

    .line 35
    invoke-direct {p0}, Lcom/singleblur/faceapi/FaceHandleBase;-><init>()V

    if-nez p3, :cond_7

    .line 37
    sget-object p3, Lcom/singleblur/faceapi/model/FaceConfig$FaceImageResize;->RESIZE_320W:Lcom/singleblur/faceapi/model/FaceConfig$FaceImageResize;

    :cond_7
    if-nez p4, :cond_b

    .line 40
    sget-object p4, Lcom/singleblur/faceapi/model/FaceConfig$FaceKeyPointCount;->POINT_COUNT_21:Lcom/singleblur/faceapi/model/FaceConfig$FaceKeyPointCount;

    :cond_b
    if-nez p5, :cond_f

    .line 43
    sget-object p5, Lcom/singleblur/faceapi/model/FaceConfig$TrackThreadCount;->DEFAULT_CONFIG:Lcom/singleblur/faceapi/model/FaceConfig$TrackThreadCount;

    .line 45
    :cond_f
    invoke-virtual {p3}, Lcom/singleblur/faceapi/model/FaceConfig$FaceImageResize;->getValue()I

    move-result p3

    invoke-virtual {p4}, Lcom/singleblur/faceapi/model/FaceConfig$FaceKeyPointCount;->getValue()I

    move-result p4

    or-int/2addr p3, p4

    invoke-virtual {p5}, Lcom/singleblur/faceapi/model/FaceConfig$TrackThreadCount;->getValue()I

    move-result p4

    or-int/2addr p3, p4

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/singleblur/faceapi/FaceTrack;->init(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private init(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    .line 53
    invoke-static {p1, p2, p3}, Lcom/singleblur/faceapi/FaceLibrary;->cvFaceCreateTracker(Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/singleblur/faceapi/FaceHandleBase;->mCvFaceHandle:J

    return-void
.end method


# virtual methods
.method protected releaseHandle()V
    .registers 3

    .line 204
    iget-wide v0, p0, Lcom/singleblur/faceapi/FaceHandleBase;->mCvFaceHandle:J

    invoke-static {v0, v1}, Lcom/singleblur/faceapi/FaceLibrary;->cvFaceDestroyTracker(J)V

    return-void
.end method

.method public reset()V
    .registers 3

    .line 166
    invoke-virtual {p0}, Lcom/singleblur/faceapi/FaceHandleBase;->isHandleInitialized()Z

    move-result v0

    if-nez v0, :cond_e

    .line 168
    const-string p0, "FaceTrack"

    const-string v0, "reset Handle not Initialized"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 172
    :cond_e
    iget-wide v0, p0, Lcom/singleblur/faceapi/FaceHandleBase;->mCvFaceHandle:J

    invoke-static {v0, v1}, Lcom/singleblur/faceapi/FaceLibrary;->cvFaceResetTracker(J)V

    return-void
.end method

.method public setFaceLimit(I)V
    .registers 4

    .line 192
    invoke-virtual {p0}, Lcom/singleblur/faceapi/FaceHandleBase;->isHandleInitialized()Z

    move-result v0

    if-nez v0, :cond_e

    .line 194
    const-string p0, "FaceTrack"

    const-string p1, "setFaceLimit Handle not Initialized"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 198
    :cond_e
    iget-wide v0, p0, Lcom/singleblur/faceapi/FaceHandleBase;->mCvFaceHandle:J

    if-gtz p1, :cond_13

    const/4 p1, -0x1

    :cond_13
    invoke-static {v0, v1, p1}, Lcom/singleblur/faceapi/FaceLibrary;->cvFaceTrackSetDetectFaceCntLimit(JI)I

    move-result p1

    .line 199
    invoke-virtual {p0, p1}, Lcom/singleblur/faceapi/FaceHandleBase;->checkResultCode(I)V

    return-void
.end method

.method public setFaceTrackInterval(I)V
    .registers 4

    .line 183
    iget-wide v0, p0, Lcom/singleblur/faceapi/FaceHandleBase;->mCvFaceHandle:J

    invoke-static {v0, v1, p1}, Lcom/singleblur/faceapi/FaceLibrary;->cvFaceTrackSetDetectInterval(JI)I

    return-void
.end method

.method public showInsideModelVersion()V
    .registers 1

    .line 176
    invoke-static {}, Lcom/singleblur/faceapi/FaceLibrary;->cvFaceShowInsideModel()V

    return-void
.end method

.method public track(Landroid/graphics/Bitmap;)[Lcom/singleblur/faceapi/model/FaceInfo;
    .registers 3

    .line 98
    sget-object v0, Lcom/singleblur/faceapi/model/FaceOrientation;->UP:Lcom/singleblur/faceapi/model/FaceOrientation;

    invoke-virtual {p0, p1, v0}, Lcom/singleblur/faceapi/FaceTrack;->track(Landroid/graphics/Bitmap;Lcom/singleblur/faceapi/model/FaceOrientation;)[Lcom/singleblur/faceapi/model/FaceInfo;

    move-result-object p0

    return-object p0
.end method

.method public track(Landroid/graphics/Bitmap;Lcom/singleblur/faceapi/model/FaceOrientation;)[Lcom/singleblur/faceapi/model/FaceInfo;
    .registers 4

    const/4 v0, 0x0

    .line 105
    invoke-virtual {p0, p1, p2, v0}, Lcom/singleblur/faceapi/FaceTrack;->track(Landroid/graphics/Bitmap;Lcom/singleblur/faceapi/model/FaceOrientation;[B)[Lcom/singleblur/faceapi/model/FaceInfo;

    move-result-object p0

    return-object p0
.end method

.method public track(Landroid/graphics/Bitmap;Lcom/singleblur/faceapi/model/FaceOrientation;[B)[Lcom/singleblur/faceapi/model/FaceInfo;
    .registers 13

    if-eqz p1, :cond_56

    .line 112
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_56

    .line 118
    :cond_9
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v0, v1, :cond_15

    const/4 v0, 0x0

    .line 119
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    :cond_15
    if-nez p3, :cond_25

    .line 122
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0, p3, v0}, Lcom/singleblur/faceapi/FaceHandleBase;->createBufferIfNeed(II)[B

    move-result-object p3

    :goto_23
    move-object v3, p3

    goto :goto_34

    .line 123
    :cond_25
    array-length v0, p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x4

    if-ne v0, v1, :cond_4e

    goto :goto_23

    .line 126
    :goto_34
    invoke-static {p1, v3}, Lcom/singleblur/faceapi/utils/ColorConvertUtil;->getBGRADataFromBitmap(Landroid/graphics/Bitmap;[B)V

    .line 127
    sget-object v4, Lcom/singleblur/faceapi/model/CvPixelFormat;->BGRA8888:Lcom/singleblur/faceapi/model/CvPixelFormat;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    mul-int/lit8 v7, p1, 0x4

    move-object v2, p0

    move-object v8, p2

    invoke-virtual/range {v2 .. v8}, Lcom/singleblur/faceapi/FaceTrack;->track([BLcom/singleblur/faceapi/model/CvPixelFormat;IIILcom/singleblur/faceapi/model/FaceOrientation;)[Lcom/singleblur/faceapi/model/FaceInfo;

    move-result-object p0

    return-object p0

    .line 124
    :cond_4e
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "detect buffer is illegal !"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 114
    :cond_56
    :goto_56
    const-string p0, "FaceTrack"

    const-string p1, "track image is null or Recycled"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public track([BLcom/singleblur/faceapi/model/CvPixelFormat;II)[Lcom/singleblur/faceapi/model/FaceInfo;
    .registers 11

    .line 135
    sget-object v5, Lcom/singleblur/faceapi/model/FaceOrientation;->UP:Lcom/singleblur/faceapi/model/FaceOrientation;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/singleblur/faceapi/FaceTrack;->track([BLcom/singleblur/faceapi/model/CvPixelFormat;IILcom/singleblur/faceapi/model/FaceOrientation;)[Lcom/singleblur/faceapi/model/FaceInfo;

    move-result-object p0

    return-object p0
.end method

.method public track([BLcom/singleblur/faceapi/model/CvPixelFormat;IIILcom/singleblur/faceapi/model/FaceOrientation;)[Lcom/singleblur/faceapi/model/FaceInfo;
    .registers 16

    .line 88
    iget-wide v0, p0, Lcom/singleblur/faceapi/FaceHandleBase;->mCvFaceHandle:J

    invoke-virtual {p2}, Lcom/singleblur/faceapi/model/CvPixelFormat;->getValue()I

    move-result v3

    .line 89
    invoke-virtual {p6}, Lcom/singleblur/faceapi/model/FaceOrientation;->getValue()I

    move-result v7

    iget-object v8, p0, Lcom/singleblur/faceapi/FaceHandleBase;->mResultCode:[I

    move-object v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    .line 88
    invoke-static/range {v0 .. v8}, Lcom/singleblur/faceapi/FaceLibrary;->cvFaceTrackBytes(J[BIIIII[I)[Lcom/singleblur/faceapi/model/FaceInfo;

    move-result-object p1

    .line 90
    invoke-virtual {p0}, Lcom/singleblur/faceapi/FaceHandleBase;->checkResultCode()V

    return-object p1
.end method

.method public track([BLcom/singleblur/faceapi/model/CvPixelFormat;IILcom/singleblur/faceapi/model/FaceOrientation;)[Lcom/singleblur/faceapi/model/FaceInfo;
    .registers 13

    move v5, p3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    .line 143
    invoke-virtual/range {v0 .. v6}, Lcom/singleblur/faceapi/FaceTrack;->track([BLcom/singleblur/faceapi/model/CvPixelFormat;IIILcom/singleblur/faceapi/model/FaceOrientation;)[Lcom/singleblur/faceapi/model/FaceInfo;

    move-result-object p0

    return-object p0
.end method

.method public track([IIILcom/singleblur/faceapi/model/FaceOrientation;)[Lcom/singleblur/faceapi/model/FaceInfo;
    .registers 11

    .line 150
    sget-object v2, Lcom/singleblur/faceapi/model/CvPixelFormat;->BGR888:Lcom/singleblur/faceapi/model/CvPixelFormat;

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/singleblur/faceapi/FaceTrack;->track([ILcom/singleblur/faceapi/model/CvPixelFormat;IILcom/singleblur/faceapi/model/FaceOrientation;)[Lcom/singleblur/faceapi/model/FaceInfo;

    move-result-object p0

    return-object p0
.end method

.method public track([ILcom/singleblur/faceapi/model/CvPixelFormat;IIILcom/singleblur/faceapi/model/FaceOrientation;)[Lcom/singleblur/faceapi/model/FaceInfo;
    .registers 16

    .line 69
    iget-wide v0, p0, Lcom/singleblur/faceapi/FaceHandleBase;->mCvFaceHandle:J

    invoke-virtual {p2}, Lcom/singleblur/faceapi/model/CvPixelFormat;->getValue()I

    move-result v3

    .line 70
    invoke-virtual {p6}, Lcom/singleblur/faceapi/model/FaceOrientation;->getValue()I

    move-result v7

    iget-object v8, p0, Lcom/singleblur/faceapi/FaceHandleBase;->mResultCode:[I

    move-object v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    .line 69
    invoke-static/range {v0 .. v8}, Lcom/singleblur/faceapi/FaceLibrary;->cvFaceTrackInts(J[IIIIII[I)[Lcom/singleblur/faceapi/model/FaceInfo;

    move-result-object p1

    .line 71
    invoke-virtual {p0}, Lcom/singleblur/faceapi/FaceHandleBase;->checkResultCode()V

    return-object p1
.end method

.method public track([ILcom/singleblur/faceapi/model/CvPixelFormat;IILcom/singleblur/faceapi/model/FaceOrientation;)[Lcom/singleblur/faceapi/model/FaceInfo;
    .registers 13

    mul-int/lit8 v5, p3, 0x4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    .line 158
    invoke-virtual/range {v0 .. v6}, Lcom/singleblur/faceapi/FaceTrack;->track([ILcom/singleblur/faceapi/model/CvPixelFormat;IIILcom/singleblur/faceapi/model/FaceOrientation;)[Lcom/singleblur/faceapi/model/FaceInfo;

    move-result-object p0

    return-object p0
.end method
