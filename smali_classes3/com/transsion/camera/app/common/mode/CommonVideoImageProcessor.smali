.class public Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;
.super Lcom/transsion/camera/app/common/mode/ImageProcessor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;,
        Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$IExecuteListener;,
        Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$JpegInfo;
    }
.end annotation


# instance fields
.field private volatile mAlgorithmMigrate:Z

.field private mResultPairProducer:Lcom/transsion/camera/utils/PairProducer;

.field private mSizeConvert:Lcom/transsion/camera/app/common/algorithm/size/SizeConvert;

.field protected mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;


# direct methods
.method static bridge synthetic -$$Nest$monYuvImage(Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;Lcom/transsion/camera/adapter/CameraResults;[BIIIIZ)V
    .registers 8

    .line 0
    invoke-direct/range {p0 .. p7}, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;->onYuvImage(Lcom/transsion/camera/adapter/CameraResults;[BIIIIZ)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;)V
    .registers 2

    .line 41
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ImageProcessor;-><init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;)V

    .line 42
    new-instance p1, Lcom/transsion/camera/utils/PairProducer;

    invoke-direct {p1}, Lcom/transsion/camera/utils/PairProducer;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;->mResultPairProducer:Lcom/transsion/camera/utils/PairProducer;

    return-void
.end method

.method private addLocationInfoToResults(Lcom/transsion/camera/adapter/CameraResults;)V
    .registers 7

    .line 259
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTempLocation:Landroid/location/Location;

    .line 261
    :try_start_2
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

    if-eqz v1, :cond_28

    .line 262
    const-string v2, "key_location"

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/location/LocationManager;->getCurrentLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_d

    goto :goto_28

    :catch_d
    move-exception v1

    .line 265
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get location exception, use temp location: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 265
    invoke-static {v2, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_28
    :goto_28
    if-nez v0, :cond_32

    .line 269
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "addLocationInfoToResults location is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 272
    :cond_32
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/transsion/camera/adapter/CameraResults;->setGpsLatitude(D)V

    .line 273
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/transsion/camera/adapter/CameraResults;->setGpsLongitude(D)V

    .line 274
    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/adapter/CameraResults;->setGpsTimeStamp(J)V

    return-void
.end method

.method private getDstJpegSize(II)Landroid/util/Size;
    .registers 4

    .line 323
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p1, p2}, Landroid/util/Size;-><init>(II)V

    .line 324
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;->mSizeConvert:Lcom/transsion/camera/app/common/algorithm/size/SizeConvert;

    if-nez p1, :cond_11

    .line 325
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "getDstJpegSize mSizeConvert is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0

    .line 328
    :cond_11
    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/algorithm/size/SizeConvert;->getOriginalSize(Landroid/util/Size;)Landroid/util/Size;

    move-result-object p1

    .line 329
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getDstJpegSize originalSize: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p1
.end method

.method private onPairJpegInfo(Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$JpegInfo;)V
    .registers 4

    .line 241
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onPairJpegInfo"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 244
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;->writeJpegExif(Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$JpegInfo;)[B

    move-result-object v0

    .line 247
    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$JpegInfo;->-$$Nest$fgetmBGImage(Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$JpegInfo;)Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;->onJpeg([BZ)V

    return-void
.end method

.method private onPictureData([BIIIIZIJ)V
    .registers 13

    .line 74
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CapturePerformance] onPictureData in ImageProcessor orientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/16 v0, 0x100

    if-ne v0, p2, :cond_29

    move-object p2, p1

    move p3, p6

    move v0, p7

    .line 77
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPictureCallback:Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;

    move-wide p5, p8

    move p4, v0

    invoke-interface/range {p1 .. p6}, Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;->notifyPictureTaken([BZIJ)I

    const/4 p1, 0x0

    .line 78
    invoke-virtual {p0, p2, p1, p3}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->saveJpegToFile([BLandroid/graphics/Bitmap;Z)V

    return-void

    :cond_29
    move p7, p5

    move p5, p3

    move p3, p6

    move p6, p4

    move p4, p2

    move-object p2, p1

    const/16 p1, 0x11

    if-eq p1, p4, :cond_38

    const p1, 0x32315659

    if-ne p1, p4, :cond_3b

    :cond_38
    move p8, p3

    move-object p3, p2

    goto :goto_52

    .line 88
    :cond_3b
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "invalid image format: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 80
    :goto_52
    new-instance p2, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;

    invoke-direct/range {p2 .. p8}, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;-><init>([BIIIIZ)V

    .line 81
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;->mResultPairProducer:Lcom/transsion/camera/utils/PairProducer;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/utils/PairProducer;->addSecond(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    if-nez p1, :cond_67

    .line 83
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onPictureData pair is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 86
    :cond_67
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Lcom/transsion/camera/adapter/CameraResults;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;

    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;->onPictureDataAndCameraResults(Lcom/transsion/camera/adapter/CameraResults;Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;)V

    return-void
.end method

.method private onPictureDataAndCameraResults(Lcom/transsion/camera/adapter/CameraResults;Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;)V
    .registers 4

    const/4 v0, 0x0

    .line 107
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;->onPictureDataAndCameraResults(Lcom/transsion/camera/adapter/CameraResults;Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$IExecuteListener;)V

    return-void
.end method

.method private onPictureDataAndCameraResults(Lcom/transsion/camera/adapter/CameraResults;Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$IExecuteListener;)V
    .registers 6

    .line 112
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onPictureDataAndCameraResults"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 113
    new-instance v0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$1;-><init>(Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;Lcom/transsion/camera/adapter/CameraResults;Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$IExecuteListener;)V

    invoke-static {v0}, Lcom/transsion/camera/app/common/algorithm/util/ThreadPool;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onYuvImage(Lcom/transsion/camera/adapter/CameraResults;[BIIIIZ)V
    .registers 18

    .line 127
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "[CapturePerformance] onYuvImage start"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p2

    move v3, p3

    move v4, p4

    move v2, p5

    move/from16 v5, p6

    .line 130
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;->algorithmProcess([BIIII)[B

    move-result-object v1

    .line 134
    invoke-direct {p0, p3, p4}, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;->getDstJpegSize(II)Landroid/util/Size;

    move-result-object v2

    .line 135
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v5

    .line 136
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    .line 137
    invoke-static/range {p6 .. p6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    rem-int/lit16 v8, v6, 0x168

    const/16 v6, 0x5a

    if-eq v8, v6, :cond_38

    const/16 v6, 0x10e

    if-ne v8, v6, :cond_2d

    goto :goto_38

    :cond_2d
    move v7, v2

    move v6, v5

    :goto_2f
    move-object v0, p0

    move v4, p3

    move v3, p5

    move/from16 v9, p7

    move v5, p4

    move-object v2, v1

    move-object v1, p1

    goto :goto_3b

    :cond_38
    :goto_38
    move v6, v2

    move v7, v5

    goto :goto_2f

    .line 148
    :goto_3b
    invoke-direct/range {v0 .. v9}, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;->transformAndEncode(Lcom/transsion/camera/adapter/CameraResults;[BIIIIIIZ)V

    .line 152
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[CapturePerformance] onYuvImage end"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private transformAndEncode(Lcom/transsion/camera/adapter/CameraResults;[BIIIIIIZ)V
    .registers 19

    .line 226
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "[CapturePerformance] transformAndEncode"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 229
    iget-boolean v8, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mMirror:Z

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-virtual/range {v0 .. v8}, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;->jpegEncode([BIIIIIIZ)[B

    move-result-object v2

    if-nez v2, :cond_21

    .line 232
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onNv21 jpegData is null"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 236
    :cond_21
    new-instance v0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$JpegInfo;

    move-object v1, p1

    move v3, p6

    move/from16 v4, p7

    move/from16 v5, p9

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$JpegInfo;-><init>(Lcom/transsion/camera/adapter/CameraResults;[BIIZ)V

    .line 237
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;->onPairJpegInfo(Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$JpegInfo;)V

    return-void
.end method

.method private writeJpegExif(Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$JpegInfo;)[B
    .registers 5

    .line 251
    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$JpegInfo;->-$$Nest$fgetmResults(Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$JpegInfo;)Lcom/transsion/camera/adapter/CameraResults;

    move-result-object v0

    .line 252
    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$JpegInfo;->-$$Nest$fgetmWidth(Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$JpegInfo;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/adapter/CameraResults;->setImageWidth(J)V

    .line 253
    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$JpegInfo;->-$$Nest$fgetmHeight(Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$JpegInfo;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/adapter/CameraResults;->setImageLength(J)V

    .line 254
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;->addLocationInfoToResults(Lcom/transsion/camera/adapter/CameraResults;)V

    .line 255
    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$JpegInfo;->-$$Nest$fgetmJpeg(Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$JpegInfo;)[B

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1, v0}, Lcom/transsion/camera/app/common/algorithm/exif/ExifWriter;->writeExif([B[BLcom/transsion/camera/adapter/CameraResults;)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public algorithmMigrate(Z)V
    .registers 2

    .line 55
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;->mAlgorithmMigrate:Z

    return-void
.end method

.method protected algorithmProcess([BIIII)[B
    .registers 6

    return-object p1
.end method

.method protected getContentValues([BLandroid/graphics/Bitmap;Landroid/location/Location;Ljava/lang/String;)Landroid/content/ContentValues;
    .registers 5

    .line 362
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;->mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    invoke-virtual {p0, p1, p3, p4}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->createSnapShotContentValues([BLandroid/location/Location;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object p0

    return-object p0
.end method

.method protected getProcessedContentValues([BLandroid/graphics/Bitmap;Landroid/location/Location;Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .registers 5

    .line 368
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;->mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    const-string p2, ""

    invoke-virtual {p0, p1, p3, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->createSnapShotContentValues([BLandroid/location/Location;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object p0

    return-object p0
.end method

.method public init(Lcom/transsion/camera/app/common/location/LocationManager;Lcom/transsion/camera/app/common/algorithm/size/SizeConvert;Landroid/content/Context;)V
    .registers 4

    .line 47
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->init(Lcom/transsion/camera/app/common/location/LocationManager;Lcom/transsion/camera/app/common/algorithm/size/SizeConvert;Landroid/content/Context;)V

    .line 48
    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;->mSizeConvert:Lcom/transsion/camera/app/common/algorithm/size/SizeConvert;

    return-void
.end method

.method protected isSupportedAcquirePhotoTimeout()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected jpegEncode([BIIIIIIZ)[B
    .registers 9

    .line 345
    invoke-static/range {p1 .. p8}, Lcom/transsion/camera/app/common/algorithm/jpegcodec/JpegCodec;->jpegSoftEncode([BIIIIIIZ)[B

    move-result-object p0

    return-object p0
.end method

.method public onCaptureCompleted(Lcom/transsion/camera/adapter/CameraResults;)V
    .registers 5

    .line 60
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->onCaptureCompleted(Lcom/transsion/camera/adapter/CameraResults;)V

    .line 61
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CapturePerformance] onCaptureCompleted in ImageProcessor + mAlgorithmMigrate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;->mAlgorithmMigrate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 62
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;->mAlgorithmMigrate:Z

    if-eqz v0, :cond_3a

    .line 63
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;->mResultPairProducer:Lcom/transsion/camera/utils/PairProducer;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/utils/PairProducer;->addFirst(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    if-nez p1, :cond_2f

    .line 65
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onCaptureCompleted pair is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 68
    :cond_2f
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/camera/adapter/CameraResults;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;->onPictureDataAndCameraResults(Lcom/transsion/camera/adapter/CameraResults;Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;)V

    :cond_3a
    return-void
.end method

.method protected onJpeg([BZ)V
    .registers 9

    .line 102
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPictureCallback:Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    move-object v1, p1

    move v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;->notifyPictureTaken([BZIJ)I

    const/4 p1, 0x0

    .line 103
    invoke-virtual {p0, v1, p1, v2}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->saveJpegToFile([BLandroid/graphics/Bitmap;Z)V

    return-void
.end method

.method protected onPictureData(Lcom/transsion/camera/app/common/mode/PictureInfo;)V
    .registers 12

    .line 94
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->getData()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->getFormat()I

    move-result v2

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->getHeight()I

    move-result v4

    .line 95
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->getOrientation()I

    move-result v5

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->isBGImage()Z

    move-result v6

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->getPicCountRemaining()I

    move-result v7

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->getTimestamp()J

    move-result-wide v8

    move-object v0, p0

    .line 94
    invoke-direct/range {v0 .. v9}, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;->onPictureData([BIIIIZIJ)V

    return-void
.end method

.method protected onPictureDataFail(J)V
    .registers 3

    return-void
.end method

.method protected onUpdateFastThumbSurface(Landroid/util/Size;)Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public onUpdateThumbnailSurface(Landroid/util/Size;)Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method protected setVideoHelper(Lcom/transsion/camera/app/common/mode/CommonVideoHelper;)V
    .registers 2

    .line 52
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;->mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    return-void
.end method

.method public supportProcessingMedia()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
