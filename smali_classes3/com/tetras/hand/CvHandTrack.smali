.class public Lcom/tetras/hand/CvHandTrack;
.super Lcom/tetras/hand/CvHandleBase;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "CvHandTrack"


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 45
    invoke-direct {p0}, Lcom/tetras/hand/CvHandleBase;-><init>()V

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, v0, v0, p1}, Lcom/tetras/hand/CvHandTrack;->init(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lcom/tetras/hand/model/HandConfig$HandImageResize;Lcom/tetras/hand/model/HandConfig$TrackThreadCount;)V
    .registers 3

    .line 20
    invoke-direct {p0}, Lcom/tetras/hand/CvHandleBase;-><init>()V

    if-nez p1, :cond_7

    .line 22
    sget-object p1, Lcom/tetras/hand/model/HandConfig$HandImageResize;->DEFAULT_CONFIG:Lcom/tetras/hand/model/HandConfig$HandImageResize;

    :cond_7
    if-nez p2, :cond_b

    .line 25
    sget-object p2, Lcom/tetras/hand/model/HandConfig$TrackThreadCount;->DEFAULT_CONFIG:Lcom/tetras/hand/model/HandConfig$TrackThreadCount;

    .line 27
    :cond_b
    invoke-virtual {p1}, Lcom/tetras/hand/model/HandConfig$HandImageResize;->getValue()I

    move-result p1

    invoke-virtual {p2}, Lcom/tetras/hand/model/HandConfig$TrackThreadCount;->getValue()I

    move-result p2

    or-int/2addr p1, p2

    const/4 p2, 0x0

    .line 28
    invoke-direct {p0, p2, p2, p1}, Lcom/tetras/hand/CvHandTrack;->init(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lcom/tetras/hand/model/HandConfig$HandImageResize;Lcom/tetras/hand/model/HandConfig$TrackThreadCount;Z)V
    .registers 4

    .line 31
    invoke-direct {p0}, Lcom/tetras/hand/CvHandleBase;-><init>()V

    if-nez p1, :cond_7

    .line 33
    sget-object p1, Lcom/tetras/hand/model/HandConfig$HandImageResize;->DEFAULT_CONFIG:Lcom/tetras/hand/model/HandConfig$HandImageResize;

    :cond_7
    if-nez p2, :cond_b

    .line 36
    sget-object p2, Lcom/tetras/hand/model/HandConfig$TrackThreadCount;->DEFAULT_CONFIG:Lcom/tetras/hand/model/HandConfig$TrackThreadCount;

    .line 38
    :cond_b
    invoke-virtual {p1}, Lcom/tetras/hand/model/HandConfig$HandImageResize;->getValue()I

    move-result p1

    invoke-virtual {p2}, Lcom/tetras/hand/model/HandConfig$TrackThreadCount;->getValue()I

    move-result p2

    or-int/2addr p1, p2

    if-eqz p3, :cond_18

    or-int/lit8 p1, p1, 0x2

    :cond_18
    const/4 p2, 0x0

    .line 42
    invoke-direct {p0, p2, p2, p1}, Lcom/tetras/hand/CvHandTrack;->init(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    .line 62
    invoke-direct {p0}, Lcom/tetras/hand/CvHandleBase;-><init>()V

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/tetras/hand/CvHandTrack;->init(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private init(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    .line 67
    invoke-static {p1, p2, p3}, Lcom/tetras/hand/CvHandLibrary;->cvHandCreateTrack(Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/tetras/hand/CvHandleBase;->mCvHandTrackHandle:J

    return-void
.end method


# virtual methods
.method public detect([BLcom/tetras/hand/model/CvPixelFormat;IIILcom/tetras/util/HandOrientation;)[Lcom/tetras/hand/model/CvHandInfo;
    .registers 16

    .line 177
    invoke-virtual {p6}, Lcom/tetras/util/HandOrientation;->getValue()I

    move-result v7

    .line 178
    iget-wide v0, p0, Lcom/tetras/hand/CvHandleBase;->mCvHandTrackHandle:J

    invoke-virtual {p2}, Lcom/tetras/hand/model/CvPixelFormat;->getValue()I

    move-result v3

    iget-object v8, p0, Lcom/tetras/hand/CvHandleBase;->mResultCode:[I

    move-object v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v8}, Lcom/tetras/hand/CvHandLibrary;->cvHandDetect(J[BIIIII[I)[Lcom/tetras/hand/model/CvHandInfo;

    move-result-object p1

    .line 179
    invoke-virtual {p0}, Lcom/tetras/hand/CvHandleBase;->checkResultCode()V

    return-object p1
.end method

.method public getVersion()Ljava/lang/String;
    .registers 1

    .line 50
    invoke-static {}, Lcom/tetras/hand/CvHandLibrary;->cvGetVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public handGestureSwipeStatus()I
    .registers 1

    .line 201
    invoke-static {}, Lcom/tetras/hand/CvHandLibrary;->cvHandGestureSwipeStatus()I

    move-result p0

    return p0
.end method

.method protected releaseHandle()V
    .registers 3

    .line 240
    iget-wide v0, p0, Lcom/tetras/hand/CvHandleBase;->mCvHandTrackHandle:J

    invoke-static {v0, v1}, Lcom/tetras/hand/CvHandLibrary;->cvHandDestroyTrack(J)V

    return-void
.end method

.method public reset()V
    .registers 3

    .line 219
    invoke-virtual {p0}, Lcom/tetras/hand/CvHandleBase;->isHandleInitialized()Z

    move-result v0

    if-nez v0, :cond_e

    .line 221
    const-string p0, "CvHandTrack"

    const-string v0, "reset Handle not Initialized"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 225
    :cond_e
    iget-wide v0, p0, Lcom/tetras/hand/CvHandleBase;->mCvHandTrackHandle:J

    invoke-static {v0, v1}, Lcom/tetras/hand/CvHandLibrary;->cvHandTrackReset(J)V

    return-void
.end method

.method public setHandLimitCount(I)V
    .registers 4

    .line 229
    invoke-virtual {p0}, Lcom/tetras/hand/CvHandleBase;->isHandleInitialized()Z

    move-result v0

    if-nez v0, :cond_e

    .line 231
    const-string p0, "CvHandTrack"

    const-string p1, "Handle not Initialized"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 235
    :cond_e
    iget-wide v0, p0, Lcom/tetras/hand/CvHandleBase;->mCvHandTrackHandle:J

    invoke-static {v0, v1, p1}, Lcom/tetras/hand/CvHandLibrary;->setHandLimitCount(JI)V

    return-void
.end method

.method public setTrackInterval(I)V
    .registers 4

    .line 205
    invoke-virtual {p0}, Lcom/tetras/hand/CvHandleBase;->isHandleInitialized()Z

    move-result v0

    if-nez v0, :cond_e

    .line 207
    const-string p0, "CvHandTrack"

    const-string p1, "reset Handle not Initialized"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 211
    :cond_e
    iget-wide v0, p0, Lcom/tetras/hand/CvHandleBase;->mCvHandTrackHandle:J

    invoke-static {v0, v1, p1}, Lcom/tetras/hand/CvHandLibrary;->setTrackInterval(JI)V

    return-void
.end method

.method public track(Landroid/graphics/Bitmap;)[Lcom/tetras/hand/model/CvHandInfo;
    .registers 3

    const/4 v0, 0x0

    .line 80
    invoke-virtual {p0, p1, v0}, Lcom/tetras/hand/CvHandTrack;->track(Landroid/graphics/Bitmap;[B)[Lcom/tetras/hand/model/CvHandInfo;

    move-result-object p0

    return-object p0
.end method

.method public track(Landroid/graphics/Bitmap;[B)[Lcom/tetras/hand/model/CvHandInfo;
    .registers 9

    if-eqz p1, :cond_39

    .line 93
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_39

    .line 99
    :cond_9
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v0, v1, :cond_15

    const/4 v0, 0x0

    .line 100
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    :cond_15
    if-nez p2, :cond_23

    .line 103
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/tetras/hand/CvHandleBase;->creatBufferIfNeed(II)[B

    move-result-object p2

    :cond_23
    move-object v1, p2

    .line 105
    invoke-static {p1, v1}, Lcom/tetras/util/ColorConvertUtil;->getBGRFromBitmap(Landroid/graphics/Bitmap;[B)V

    .line 106
    sget-object v2, Lcom/tetras/hand/model/CvPixelFormat;->BGR888:Lcom/tetras/hand/model/CvPixelFormat;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Lcom/tetras/util/HandOrientation;->UP:Lcom/tetras/util/HandOrientation;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/tetras/hand/CvHandTrack;->track([BLcom/tetras/hand/model/CvPixelFormat;IILcom/tetras/util/HandOrientation;)[Lcom/tetras/hand/model/CvHandInfo;

    move-result-object p0

    return-object p0

    .line 95
    :cond_39
    :goto_39
    const-string p0, "CvHandTrack"

    const-string/jumbo p1, "track image is null or Recycled"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public track([BII)[Lcom/tetras/hand/model/CvHandInfo;
    .registers 5

    .line 140
    sget-object v0, Lcom/tetras/hand/model/CvPixelFormat;->NV21:Lcom/tetras/hand/model/CvPixelFormat;

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/tetras/hand/CvHandTrack;->track([BLcom/tetras/hand/model/CvPixelFormat;II)[Lcom/tetras/hand/model/CvHandInfo;

    move-result-object p0

    return-object p0
.end method

.method public track([BLcom/tetras/hand/model/CvPixelFormat;II)[Lcom/tetras/hand/model/CvHandInfo;
    .registers 11

    .line 193
    sget-object v5, Lcom/tetras/util/HandOrientation;->UP:Lcom/tetras/util/HandOrientation;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/tetras/hand/CvHandTrack;->track([BLcom/tetras/hand/model/CvPixelFormat;IILcom/tetras/util/HandOrientation;)[Lcom/tetras/hand/model/CvHandInfo;

    move-result-object p0

    return-object p0
.end method

.method public track([BLcom/tetras/hand/model/CvPixelFormat;IIILcom/tetras/util/HandOrientation;)[Lcom/tetras/hand/model/CvHandInfo;
    .registers 16

    .line 158
    invoke-virtual {p6}, Lcom/tetras/util/HandOrientation;->getValue()I

    move-result v7

    .line 159
    iget-wide v0, p0, Lcom/tetras/hand/CvHandleBase;->mCvHandTrackHandle:J

    invoke-virtual {p2}, Lcom/tetras/hand/model/CvPixelFormat;->getValue()I

    move-result v3

    iget-object v8, p0, Lcom/tetras/hand/CvHandleBase;->mResultCode:[I

    move-object v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v8}, Lcom/tetras/hand/CvHandLibrary;->cvHandTrack(J[BIIIII[I)[Lcom/tetras/hand/model/CvHandInfo;

    move-result-object p1

    .line 160
    invoke-virtual {p0}, Lcom/tetras/hand/CvHandleBase;->checkResultCode()V

    return-object p1
.end method

.method public track([BLcom/tetras/hand/model/CvPixelFormat;IILcom/tetras/util/HandOrientation;)[Lcom/tetras/hand/model/CvHandInfo;
    .registers 16

    .line 122
    invoke-virtual {p2, p2}, Lcom/tetras/hand/model/CvPixelFormat;->getStride(Lcom/tetras/hand/model/CvPixelFormat;)I

    move-result v0

    .line 123
    invoke-virtual {p5}, Lcom/tetras/util/HandOrientation;->getValue()I

    move-result v8

    .line 124
    iget-wide v1, p0, Lcom/tetras/hand/CvHandleBase;->mCvHandTrackHandle:J

    invoke-virtual {p2}, Lcom/tetras/hand/model/CvPixelFormat;->getValue()I

    move-result v4

    mul-int v7, v0, p3

    iget-object v9, p0, Lcom/tetras/hand/CvHandleBase;->mResultCode:[I

    move-object v3, p1

    move v5, p3

    move v6, p4

    invoke-static/range {v1 .. v9}, Lcom/tetras/hand/CvHandLibrary;->cvHandTrack(J[BIIIII[I)[Lcom/tetras/hand/model/CvHandInfo;

    move-result-object p1

    .line 125
    invoke-virtual {p0}, Lcom/tetras/hand/CvHandleBase;->checkResultCode()V

    return-object p1
.end method
