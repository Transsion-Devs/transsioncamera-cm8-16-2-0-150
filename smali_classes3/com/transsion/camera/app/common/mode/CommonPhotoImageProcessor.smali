.class public Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;
.super Lcom/transsion/camera/app/common/mode/ImageProcessor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;,
        Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$IExecuteListener;,
        Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$JpegInfo;,
        Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ThumbnailInfo;
    }
.end annotation


# static fields
.field private static final MIN_THUMBNAIL_SIZE:I = 0x64

.field public static sDebugRenderFaceInfoToImageFunction:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "[B[B>;"
        }
    .end annotation
.end field


# instance fields
.field private volatile mAlgorithmMigrate:Z

.field protected volatile mCSImageCallback:Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;

.field private mExecuteListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$IExecuteListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mExecuteListenersLock:Ljava/lang/Object;

.field protected mFastThumbSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

.field volatile mIsShotJpeg:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected mPhotoHelper:Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;

.field private mResultPairProducer:Lcom/transsion/camera/utils/PairProducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/utils/PairProducer;"
        }
    .end annotation
.end field

.field private mSizeConvert:Lcom/transsion/camera/app/common/algorithm/size/SizeConvert;

.field private mSizeConverted:Z

.field private mThumbnailPairProducer:Lcom/transsion/camera/utils/PairProducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/utils/PairProducer;"
        }
    .end annotation
.end field

.field private final mThumbnailPairProducerLock:Ljava/lang/Object;

.field protected mThumbnailSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;


# direct methods
.method static bridge synthetic -$$Nest$fgetmThumbnailPairProducerLock(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mThumbnailPairProducerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcheckExecuteCompleted(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->checkExecuteCompleted()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgenerateThumbnail(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;[BIIII)Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ThumbnailInfo;
    .registers 6

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->generateThumbnail([BIIII)Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ThumbnailInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monThumbnailGenerated(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ThumbnailInfo;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->onThumbnailGenerated(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ThumbnailInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monYuvImage(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;Lcom/transsion/camera/adapter/CameraResults;[BIIIIZ)V
    .registers 8

    .line 0
    invoke-direct/range {p0 .. p7}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->onYuvImage(Lcom/transsion/camera/adapter/CameraResults;[BIIIIZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveExecuteListenerLocked(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$IExecuteListener;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->removeExecuteListenerLocked(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$IExecuteListener;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;)V
    .registers 4

    .line 88
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ImageProcessor;-><init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;)V

    const/4 p1, 0x0

    .line 63
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mPhotoHelper:Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;

    .line 74
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mThumbnailPairProducerLock:Ljava/lang/Object;

    .line 76
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mIsShotJpeg:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 83
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mExecuteListenersLock:Ljava/lang/Object;

    .line 84
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mExecuteListeners:Ljava/util/List;

    .line 89
    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mCSImageCallback:Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;

    .line 90
    new-instance p1, Lcom/transsion/camera/utils/PairProducer;

    invoke-direct {p1}, Lcom/transsion/camera/utils/PairProducer;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mResultPairProducer:Lcom/transsion/camera/utils/PairProducer;

    .line 91
    new-instance p1, Lcom/transsion/camera/utils/PairProducer;

    invoke-direct {p1}, Lcom/transsion/camera/utils/PairProducer;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mThumbnailPairProducer:Lcom/transsion/camera/utils/PairProducer;

    return-void
.end method

.method private addExecuteListenerLocked(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$IExecuteListener;)V
    .registers 5

    .line 170
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mExecuteListenersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 171
    :try_start_3
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mExecuteListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addExecuteListenerLocked size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mExecuteListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 173
    monitor-exit v0

    return-void

    :catchall_26
    move-exception p0

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw p0
.end method

.method private addLocationInfoToResults(Lcom/transsion/camera/adapter/CameraResults;)V
    .registers 7

    .line 606
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTempLocation:Landroid/location/Location;

    .line 608
    :try_start_2
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

    if-eqz v1, :cond_28

    .line 609
    const-string v2, "key_location"

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/location/LocationManager;->getCurrentLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_d

    goto :goto_28

    :catch_d
    move-exception v1

    .line 612
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get location exception, use temp location: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 612
    invoke-static {v2, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_28
    :goto_28
    if-nez v0, :cond_32

    .line 616
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "addLocationInfoToResults location is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 619
    :cond_32
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/transsion/camera/adapter/CameraResults;->setGpsLatitude(D)V

    .line 620
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/transsion/camera/adapter/CameraResults;->setGpsLongitude(D)V

    .line 621
    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/adapter/CameraResults;->setGpsTimeStamp(J)V

    return-void
.end method

.method private algorithmPostViewData([BIIIIJ)V
    .registers 17

    .line 715
    new-instance v0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$4;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-wide v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$4;-><init>(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;[BIIIIJ)V

    invoke-static {v0}, Lcom/transsion/camera/app/common/algorithm/util/ThreadPool;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private checkExecuteCompleted()V
    .registers 2

    .line 192
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->isExecuteListenersEmptyLocked()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 193
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->realReleaseImageProcessor()V

    :cond_9
    return-void
.end method

.method private createExecuteListener()Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$IExecuteListener;
    .registers 2

    .line 157
    new-instance v0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$2;-><init>(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;)V

    .line 165
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->addExecuteListenerLocked(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$IExecuteListener;)V

    return-object v0
.end method

.method private encodeThumbnail([BIIIIZLandroid/util/Size;)[B
    .registers 17

    .line 796
    invoke-virtual/range {p7 .. p7}, Landroid/util/Size;->getWidth()I

    move-result v5

    .line 797
    invoke-virtual/range {p7 .. p7}, Landroid/util/Size;->getHeight()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v7, p5

    move v8, p6

    .line 796
    invoke-virtual/range {v0 .. v8}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->jpegEncode([BIIIIIIZ)[B

    move-result-object p0

    return-object p0
.end method

.method private generateJpegWithoutThumbnail(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$JpegInfo;)V
    .registers 4

    .line 575
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "generateJpegWithoutThumbnail"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 578
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->writeJpegExif(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$JpegInfo;Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ThumbnailInfo;)[B

    move-result-object v0

    .line 581
    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$JpegInfo;->-$$Nest$fgetmBGImage(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$JpegInfo;)Z

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->onJpeg([BZI)V

    return-void
.end method

.method private generateThumbnail([BIIII)Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ThumbnailInfo;
    .registers 14

    .line 749
    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result p5

    rem-int/lit16 v5, p5, 0x168

    const/16 p5, 0x5a

    if-eq v5, p5, :cond_12

    const/16 p5, 0x10e

    if-ne v5, p5, :cond_f

    goto :goto_12

    :cond_f
    move p5, p3

    move v0, p4

    goto :goto_14

    :cond_12
    :goto_12
    move v0, p3

    move p5, p4

    .line 756
    :goto_14
    invoke-direct {p0, p5, v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->getThumbnailSize(II)Landroid/util/Size;

    move-result-object v7

    .line 757
    iget-boolean v6, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mMirror:Z

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->encodeThumbnail([BIIIIZLandroid/util/Size;)[B

    move-result-object p0

    .line 759
    new-instance p1, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ThumbnailInfo;

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result p2

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result p3

    invoke-direct {p1, p0, p2, p3}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ThumbnailInfo;-><init>([BII)V

    return-object p1
.end method

.method private getDstJpegSize(II)Landroid/util/Size;
    .registers 4

    .line 670
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p1, p2}, Landroid/util/Size;-><init>(II)V

    .line 671
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mSizeConverted:Z

    if-nez p1, :cond_20

    .line 672
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getDstJpegSize not covert size: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0

    .line 675
    :cond_20
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mSizeConvert:Lcom/transsion/camera/app/common/algorithm/size/SizeConvert;

    if-nez p1, :cond_2c

    .line 676
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "getDstJpegSize mSizeConvert is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0

    .line 679
    :cond_2c
    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/algorithm/size/SizeConvert;->getOriginalSize(Landroid/util/Size;)Landroid/util/Size;

    move-result-object p1

    .line 680
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

.method private getThumbnailSize(II)Landroid/util/Size;
    .registers 7

    if-le p1, p2, :cond_4

    move v0, p1

    goto :goto_5

    :cond_4
    move v0, p2

    :goto_5
    if-ge p1, p2, :cond_9

    move v1, p1

    goto :goto_a

    :cond_9
    move v1, p2

    .line 765
    :goto_a
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->greatestCommonDivisor(II)I

    move-result v0

    .line 766
    div-int v1, p1, v0

    .line 767
    div-int v0, p2, v0

    .line 769
    :goto_12
    rem-int/lit8 v2, v1, 0x10

    if-nez v2, :cond_55

    rem-int/lit8 v2, v0, 0x10

    if-nez v2, :cond_55

    const/16 v2, 0x64

    if-lt v1, v2, :cond_55

    if-ge v0, v2, :cond_21

    goto :goto_55

    .line 774
    :cond_21
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getThumbnailSize width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", height: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", thumbnailWidth: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", thumbnailHeight: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 776
    new-instance p0, Landroid/util/Size;

    invoke-direct {p0, v1, v0}, Landroid/util/Size;-><init>(II)V

    return-object p0

    :cond_55
    :goto_55
    mul-int/lit8 v1, v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    goto :goto_12
.end method

.method private greatestCommonDivisor(II)I
    .registers 3

    .line 787
    rem-int/2addr p1, p2

    if-nez p1, :cond_4

    return p2

    .line 791
    :cond_4
    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->greatestCommonDivisor(II)I

    move-result p0

    return p0
.end method

.method private isExecuteListenersEmptyLocked()Z
    .registers 5

    .line 184
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mExecuteListenersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 185
    :try_start_3
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mExecuteListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 186
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isExecuteListenersEmptyLocked size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez v1, :cond_23

    const/4 p0, 0x1

    goto :goto_24

    :cond_23
    const/4 p0, 0x0

    .line 187
    :goto_24
    monitor-exit v0

    return p0

    :catchall_26
    move-exception p0

    .line 188
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw p0
.end method

.method private onPairJpegInfoAndThumbnailInfo(Landroid/util/Pair;)V
    .registers 4

    .line 585
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onPairJpegInfoAndThumbnailInfo"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 588
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$JpegInfo;

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ThumbnailInfo;

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->writeJpegExif(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$JpegInfo;Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ThumbnailInfo;)[B

    move-result-object v0

    .line 591
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$JpegInfo;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$JpegInfo;->-$$Nest$fgetmBGImage(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$JpegInfo;)Z

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->onJpeg([BZI)V

    return-void
.end method

.method private onPictureDataAndCameraResults(Lcom/transsion/camera/adapter/CameraResults;Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;)V
    .registers 4

    const/4 v0, 0x0

    .line 428
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->onPictureDataAndCameraResults(Lcom/transsion/camera/adapter/CameraResults;Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$IExecuteListener;)V

    return-void
.end method

.method private onPictureDataAndCameraResults(Lcom/transsion/camera/adapter/CameraResults;Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$IExecuteListener;)V
    .registers 6

    .line 433
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onPictureDataAndCameraResults"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 434
    new-instance v0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$3;-><init>(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;Lcom/transsion/camera/adapter/CameraResults;Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$IExecuteListener;)V

    invoke-static {v0}, Lcom/transsion/camera/app/common/algorithm/util/ThreadPool;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onThumbnailGenerated(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ThumbnailInfo;)V
    .registers 3

    .line 738
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mThumbnailPairProducer:Lcom/transsion/camera/utils/PairProducer;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/utils/PairProducer;->addSecond(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    if-nez p1, :cond_10

    .line 740
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "pair JpegInfo and ThumbnailInfo failed"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 743
    :cond_10
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->onPairJpegInfoAndThumbnailInfo(Landroid/util/Pair;)V

    return-void
.end method

.method private onYuvImage(Lcom/transsion/camera/adapter/CameraResults;[BIIIIZ)V
    .registers 18

    .line 448
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "[CapturePerformance] onYuvImage start"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p2

    move v3, p3

    move v4, p4

    move v2, p5

    move/from16 v5, p6

    .line 451
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->algorithmProcess([BIIII)[B

    move-result-object v1

    .line 454
    invoke-direct {p0, p3, p4}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->getDstJpegSize(II)Landroid/util/Size;

    move-result-object v2

    .line 455
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v5

    .line 456
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    .line 457
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

    .line 468
    :goto_3b
    invoke-direct/range {v0 .. v9}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->transformAndEncode(Lcom/transsion/camera/adapter/CameraResults;[BIIIIIIZ)V

    .line 472
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[CapturePerformance] onYuvImage end"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private processPictureDataWhenRelease()V
    .registers 5

    .line 141
    invoke-static {}, Lcom/transsion/camera/adapter/CameraResults;->stub()Lcom/transsion/camera/adapter/CameraResults;

    move-result-object v0

    .line 142
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mResultPairProducer:Lcom/transsion/camera/utils/PairProducer;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/utils/PairProducer;->addFirst(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_17

    .line 144
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "processPictureDataWhenRelease pair failed"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 145
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->realReleaseImageProcessor()V

    return-void

    :cond_17
    :goto_17
    if-eqz v1, :cond_36

    .line 149
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "processPictureDataWhenRelease pair success"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 150
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/transsion/camera/adapter/CameraResults;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;

    .line 151
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->createExecuteListener()Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$IExecuteListener;

    move-result-object v3

    .line 150
    invoke-direct {p0, v2, v1, v3}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->onPictureDataAndCameraResults(Lcom/transsion/camera/adapter/CameraResults;Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$IExecuteListener;)V

    .line 152
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mResultPairProducer:Lcom/transsion/camera/utils/PairProducer;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/utils/PairProducer;->addFirst(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    goto :goto_17

    :cond_36
    return-void
.end method

.method private realReleaseImageProcessor()V
    .registers 3

    .line 119
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "realReleaseImageProcessor"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mThumbnailPairProducer:Lcom/transsion/camera/utils/PairProducer;

    invoke-virtual {v0}, Lcom/transsion/camera/utils/PairProducer;->clear()V

    .line 121
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mResultPairProducer:Lcom/transsion/camera/utils/PairProducer;

    invoke-virtual {v0}, Lcom/transsion/camera/utils/PairProducer;->clear()V

    .line 122
    new-instance v0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$1;-><init>(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;)V

    invoke-static {v0}, Lcom/transsion/camera/app/common/algorithm/util/ThreadPool;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private removeExecuteListenerLocked(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$IExecuteListener;)V
    .registers 5

    .line 177
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mExecuteListenersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 178
    :try_start_3
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mExecuteListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 179
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeExecuteListenerLocked size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mExecuteListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 180
    monitor-exit v0

    return-void

    :catchall_26
    move-exception p0

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw p0
.end method

.method private transformAndEncode(Lcom/transsion/camera/adapter/CameraResults;[BIIIIIIZ)V
    .registers 19

    .line 553
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "[CapturePerformance] transformAndEncode"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 556
    iget-boolean v8, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mMirror:Z

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-virtual/range {v0 .. v8}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->jpegEncode([BIIIIIIZ)[B

    move-result-object v2

    if-nez v2, :cond_21

    .line 559
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onNv21 jpegData is null"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 563
    :cond_21
    new-instance v0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$JpegInfo;

    move-object v1, p1

    move v3, p6

    move/from16 v4, p7

    move/from16 v5, p9

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$JpegInfo;-><init>(Lcom/transsion/camera/adapter/CameraResults;[BIIZ)V

    .line 564
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mThumbnailPairProducer:Lcom/transsion/camera/utils/PairProducer;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/utils/PairProducer;->addFirst(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_3f

    .line 566
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "pair Jpeg and Thumbnail fail"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 567
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->generateJpegWithoutThumbnail(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$JpegInfo;)V

    return-void

    .line 571
    :cond_3f
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->onPairJpegInfoAndThumbnailInfo(Landroid/util/Pair;)V

    return-void
.end method

.method private updateContinuousShotState(Z)V
    .registers 3

    .line 888
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    if-eqz v0, :cond_7

    .line 889
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->setContinuousShot(Z)V

    .line 891
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPostAlgoPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    if-eqz v0, :cond_e

    .line 892
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->setContinuousShot(Z)V

    .line 894
    :cond_e
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mQcomPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    if-eqz p0, :cond_15

    .line 895
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->setContinuousShot(Z)V

    :cond_15
    return-void
.end method

.method private updateProcessMediaItem(J)V
    .registers 7

    .line 414
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->supportProcessingMedia()Z

    move-result v0

    .line 415
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateProcessMediaItem mProcessMediaManager: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mProcessMediaManager:Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", timestamp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", processingMediaSupport: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 417
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mProcessMediaManager:Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    if-eqz v1, :cond_4b

    const-wide/16 v2, -0x1

    cmp-long v2, p1, v2

    if-eqz v2, :cond_4b

    if-eqz v0, :cond_4b

    .line 418
    invoke-virtual {v1, p1, p2}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->queryProcessMediaItem(J)Lcom/transsion/camera/app/common/provider/ProcessMediaItem;

    move-result-object p1

    if-eqz p1, :cond_43

    const/4 p0, 0x1

    .line 420
    iput-boolean p0, p1, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->mSaving:Z

    return-void

    .line 422
    :cond_43
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo p1, "updateProcessMediaItem processMediaItem is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_4b
    return-void
.end method

.method private writeJpegExif(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$JpegInfo;Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ThumbnailInfo;)[B
    .registers 7

    .line 595
    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$JpegInfo;->-$$Nest$fgetmResults(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$JpegInfo;)Lcom/transsion/camera/adapter/CameraResults;

    move-result-object v0

    .line 596
    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$JpegInfo;->-$$Nest$fgetmWidth(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$JpegInfo;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/adapter/CameraResults;->setImageWidth(J)V

    .line 597
    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$JpegInfo;->-$$Nest$fgetmHeight(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$JpegInfo;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/adapter/CameraResults;->setImageLength(J)V

    if-eqz p2, :cond_26

    .line 599
    new-instance v1, Landroid/util/Size;

    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ThumbnailInfo;->-$$Nest$fgetmWidth(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ThumbnailInfo;)I

    move-result v2

    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ThumbnailInfo;->-$$Nest$fgetmHeight(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ThumbnailInfo;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/adapter/CameraResults;->setThumbnailSize(Landroid/util/Size;)V

    .line 601
    :cond_26
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->addLocationInfoToResults(Lcom/transsion/camera/adapter/CameraResults;)V

    .line 602
    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$JpegInfo;->-$$Nest$fgetmJpeg(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$JpegInfo;)[B

    move-result-object p0

    if-eqz p2, :cond_34

    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ThumbnailInfo;->-$$Nest$fgetmThumbnail(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ThumbnailInfo;)[B

    move-result-object p1

    goto :goto_35

    :cond_34
    const/4 p1, 0x0

    :goto_35
    invoke-static {p0, p1, v0}, Lcom/transsion/camera/app/common/algorithm/exif/ExifWriter;->writeExif([B[BLcom/transsion/camera/adapter/CameraResults;)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public algorithmMigrate(Z)V
    .registers 2

    .line 199
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mAlgorithmMigrate:Z

    return-void
.end method

.method protected algorithmProcess([BIIII)[B
    .registers 6

    return-object p1
.end method

.method protected algorithmProcessAfterTransform([BIII)[B
    .registers 5

    return-object p1
.end method

.method protected algorithmProcessPostView([BIIII)[B
    .registers 6

    .line 649
    invoke-virtual/range {p0 .. p5}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->algorithmProcess([BIIII)[B

    move-result-object p0

    return-object p0
.end method

.method public checkNotifyBgOfflineErr()V
    .registers 4

    .line 313
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkNotifyBgOfflineErr, getPictureSurfaceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->getPictureSurfaceId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 314
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->getPictureSurfaceId()I

    move-result v0

    if-nez v0, :cond_21

    goto :goto_2c

    :cond_21
    const/4 v0, 0x1

    .line 317
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->removeCaptureInfo(Z)V

    .line 318
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    if-eqz p0, :cond_2c

    .line 319
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->checkNotifyBgOfflineErr()V

    :cond_2c
    :goto_2c
    return-void
.end method

.method public createProcessingMedia(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;Lcom/transsion/camera/app/common/mode/TimestampInfo;)Landroid/net/Uri;
    .registers 16

    .line 920
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->supportProcessingMedia()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_e8

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mProcessMediaManager:Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    if-nez p1, :cond_d

    goto/16 :goto_e8

    .line 923
    :cond_d
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/utils/CustomConfigUtil;->isQcomCaptureFlow()Z

    move-result p1

    if-eqz p1, :cond_29

    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isRaw10OfflineJNISupport()Z

    move-result p1

    if-eqz p1, :cond_29

    .line 924
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mQcomPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    if-nez p1, :cond_60

    .line 925
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "createProcessingMedia: mQcomPicSurface is null, return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0

    .line 929
    :cond_29
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    if-nez p1, :cond_35

    .line 930
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "createProcessingMedia: mPicSurface is null, return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0

    .line 933
    :cond_35
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->isBGEnable()Z

    move-result p1

    if-nez p1, :cond_60

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->isBGOfflineEnable()Z

    move-result p1

    if-nez p1, :cond_60

    .line 934
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "createProcessingMedia: BGEnable or isBGOffline is false, return: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0

    .line 939
    :cond_60
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    if-nez p1, :cond_6c

    .line 941
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "createProcessingMedia: storageOperator is null, return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0

    .line 944
    :cond_6c
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mPhotoHelper:Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getCameraDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p4}, Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;->createProcessingContentValues(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/TimestampInfo;)Landroid/content/ContentValues;

    move-result-object v8

    .line 945
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getInstance()Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;

    move-result-object v1

    const/16 v2, 0x1e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->setAppIOOperationStart(II)V

    .line 947
    invoke-interface {p1, v8}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->insertProcessMedia(Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    if-nez v7, :cond_8e

    .line 949
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "insertProcessMedia: fail uri is null, return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0

    .line 952
    :cond_8e
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mProcessMediaManager:Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->getFirstCaptureThumbInfo(Z)Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;

    move-result-object v9

    .line 953
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createProcessingMedia: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v9, :cond_d3

    .line 955
    iget-boolean p1, v9, Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;->captureFail:Z

    if-nez p1, :cond_d3

    .line 956
    new-instance v3, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;

    sget-object v4, Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;->INDETERMINATE:Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;

    move-object v6, p2

    move-object v5, p3

    move-object v10, p4

    invoke-direct/range {v3 .. v10}, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;-><init>(Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/content/ContentValues;Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;Lcom/transsion/camera/app/common/mode/TimestampInfo;)V

    .line 958
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mProcessMediaManager:Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    const-string p2, "datetaken"

    invoke-virtual {v8, p2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-virtual {p1, v3, p2, p3}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->add(Lcom/transsion/camera/app/common/provider/ProcessMediaItem;J)Z

    move-result v3

    :cond_d3
    if-nez v3, :cond_e7

    .line 961
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "add processMediaItem fail, remove it."

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 962
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mProcessMediaManager:Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    invoke-virtual {p1, v9}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->remove(Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;)V

    .line 963
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    invoke-interface {p0, v7}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->removeProcessMedia(Landroid/net/Uri;)V

    return-object v0

    :cond_e7
    return-object v7

    :cond_e8
    :goto_e8
    return-object v0
.end method

.method protected getContentValues([BLandroid/graphics/Bitmap;Landroid/location/Location;Ljava/lang/String;)Landroid/content/ContentValues;
    .registers 5

    .line 847
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mPhotoHelper:Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;->createContentValues([BLandroid/graphics/Bitmap;Landroid/location/Location;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object p0

    return-object p0
.end method

.method protected getProcessedContentValues([BLandroid/graphics/Bitmap;Landroid/location/Location;Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .registers 5

    .line 852
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mPhotoHelper:Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;->createProcessedContentValues([BLandroid/graphics/Bitmap;Landroid/location/Location;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object p0

    return-object p0
.end method

.method public init(Lcom/transsion/camera/app/common/location/LocationManager;Lcom/transsion/camera/app/common/algorithm/size/SizeConvert;Landroid/content/Context;)V
    .registers 4

    .line 96
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->init(Lcom/transsion/camera/app/common/location/LocationManager;Lcom/transsion/camera/app/common/algorithm/size/SizeConvert;Landroid/content/Context;)V

    .line 97
    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mSizeConvert:Lcom/transsion/camera/app/common/algorithm/size/SizeConvert;

    return-void
.end method

.method protected jpegEncode([BIII)[B
    .registers 5

    .line 691
    invoke-static {p1, p2, p3, p4}, Lcom/transsion/camera/app/common/algorithm/jpegcodec/JpegCodec;->jpegEncode([BIII)[B

    move-result-object p0

    return-object p0
.end method

.method protected jpegEncode([BIIIIIIZ)[B
    .registers 9

    .line 696
    invoke-static/range {p1 .. p8}, Lcom/transsion/camera/app/common/algorithm/jpegcodec/JpegCodec;->jpegEncode([BIIIIIIZ)[B

    move-result-object p0

    return-object p0
.end method

.method protected needAlgorithmMigrateProcess()Z
    .registers 1

    .line 483
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mWatermark:Z

    if-eqz p0, :cond_c

    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/watermark/Watermark;->algorithmMigrate()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public onCaptureCompleted(Lcom/transsion/camera/adapter/CameraResults;)V
    .registers 4

    .line 216
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->onCaptureCompleted(Lcom/transsion/camera/adapter/CameraResults;)V

    .line 217
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[CapturePerformance] onCaptureCompleted in ImageProcessor"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 218
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mAlgorithmMigrate:Z

    if-eqz v0, :cond_29

    .line 219
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mResultPairProducer:Lcom/transsion/camera/utils/PairProducer;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/utils/PairProducer;->addFirst(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    if-nez p1, :cond_1e

    .line 221
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onCaptureCompleted pair is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 224
    :cond_1e
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/camera/adapter/CameraResults;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->onPictureDataAndCameraResults(Lcom/transsion/camera/adapter/CameraResults;Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;)V

    :cond_29
    return-void
.end method

.method public onCaptureFailed(Z)V
    .registers 6

    .line 230
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->onCaptureFailed(Z)V

    .line 231
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[CapturePerformance] onCaptureFailed in ImageProcessor"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mThumbnailPairProducerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 233
    :try_start_d
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mThumbnailPairProducer:Lcom/transsion/camera/utils/PairProducer;

    invoke-virtual {v1}, Lcom/transsion/camera/utils/PairProducer;->pollSecondLast()Ljava/lang/Object;

    .line 234
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_93

    .line 236
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->isOffLineSessionSupport()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    if-eqz v0, :cond_20

    .line 237
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->decreaseCaptureCount()V

    .line 239
    :cond_20
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mSurfaceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 240
    :try_start_23
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->isPostALgoCapturing()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 241
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPostAlgoPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->decreasePicCount()V

    .line 242
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPostAlgoPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->decreaseCaptureCount()V

    goto :goto_36

    :catchall_34
    move-exception p0

    goto :goto_91

    .line 244
    :cond_36
    :goto_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_23 .. :try_end_37} :catchall_34

    if-eqz p1, :cond_90

    .line 246
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mProcessMediaManager:Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    if-eqz p1, :cond_90

    .line 247
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->getLatestCaptureThumbInfo()Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;

    move-result-object p1

    if-eqz p1, :cond_90

    .line 248
    iget v0, p1, Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;->thumbnilType:I

    if-lez v0, :cond_90

    .line 250
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mProcessMediaManager:Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->getProcessMediaItem(Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;)Lcom/transsion/camera/app/common/provider/ProcessMediaItem;

    move-result-object v0

    .line 251
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCaptureFailed,item: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eqz v0, :cond_89

    .line 253
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/utils/CustomConfigUtil;->isQcomCaptureFlow()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_77

    .line 254
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mProcessMediaManager:Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    invoke-virtual {v2, v0, v1}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->onCaptureEnded(Lcom/transsion/camera/app/common/provider/ProcessMediaItem;Z)V

    goto :goto_7c

    .line 256
    :cond_77
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mProcessMediaManager:Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    invoke-virtual {v1, v0, v3}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->onCaptureEnded(Lcom/transsion/camera/app/common/provider/ProcessMediaItem;Z)V

    .line 258
    :goto_7c
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->removeProcessMedia(Landroid/net/Uri;)V

    .line 259
    invoke-static {v3}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->setProcessStatus(Z)V

    goto :goto_8b

    .line 261
    :cond_89
    iput-boolean v1, p1, Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;->captureFail:Z

    .line 264
    :goto_8b
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mProcessMediaManager:Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->remove(Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;)V

    :cond_90
    return-void

    .line 244
    :goto_91
    :try_start_91
    monitor-exit v1
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_34

    throw p0

    :catchall_93
    move-exception p0

    .line 234
    :try_start_94
    monitor-exit v0
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_93

    throw p0
.end method

.method public onContinuousShotStart()V
    .registers 3

    .line 875
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mIsShotJpeg:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 876
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->updateContinuousShotState(Z)V

    .line 877
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    if-eqz p0, :cond_10

    .line 878
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->disableBGEnable()V

    :cond_10
    return-void
.end method

.method public onContinuousShotStop()V
    .registers 2

    const/4 v0, 0x0

    .line 884
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->updateContinuousShotState(Z)V

    return-void
.end method

.method protected onJpeg(Lcom/transsion/camera/app/common/mode/PictureInfo;)V
    .registers 10

    .line 397
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPictureCallback:Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;->checkSingleCapture()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mIsShotJpeg:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 398
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mCSImageCallback:Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->getData()[B

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;->onContinuousShotProgress([B)V

    return-void

    .line 400
    :cond_1a
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->getTimestamp()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->updateProcessMediaItem(J)V

    .line 401
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPictureCallback:Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->getData()[B

    move-result-object v3

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->isBGImage()Z

    move-result v4

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->getPicCountRemaining()I

    move-result v5

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->getTimestamp()J

    move-result-wide v6

    invoke-interface/range {v2 .. v7}, Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;->notifyPictureTaken([BZIJ)I

    move-result v0

    if-nez v0, :cond_3e

    const/4 v0, 0x0

    .line 403
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->saveJpegToFile(Lcom/transsion/camera/app/common/mode/PictureInfo;Landroid/graphics/Bitmap;)V

    return-void

    :cond_3e
    const/4 p0, -0x2

    if-ne v0, p0, :cond_4e

    .line 405
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->getListener()Lcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;

    move-result-object p0

    if-eqz p0, :cond_4e

    .line 407
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->getTimestamp()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;->onBackgroundImageSaveCancel(J)V

    :cond_4e
    return-void
.end method

.method protected onJpeg([BZI)V
    .registers 10

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 377
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->onJpeg([BZIJ)V

    return-void
.end method

.method protected onJpeg([BZIJ)V
    .registers 12

    .line 380
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPictureCallback:Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;->checkSingleCapture()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mIsShotJpeg:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 381
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mCSImageCallback:Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;->onContinuousShotProgress([B)V

    return-void

    .line 383
    :cond_16
    invoke-direct {p0, p4, p5}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->updateProcessMediaItem(J)V

    .line 384
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPictureCallback:Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;->notifyPictureTaken([BZIJ)I

    move-result p1

    if-nez p1, :cond_2c

    move v3, v2

    const/4 v2, 0x0

    move-object v0, p0

    .line 386
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->saveJpegToFile([BLandroid/graphics/Bitmap;ZJ)V

    return-void

    :cond_2c
    const/4 p0, -0x2

    if-ne p1, p0, :cond_3c

    .line 388
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getInstance()Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getLowQualityMediaSaverListener()Lcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;

    move-result-object p0

    if-eqz p0, :cond_3c

    .line 390
    invoke-interface {p0, v4, v5}, Lcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;->onBackgroundImageSaveCancel(J)V

    :cond_3c
    return-void
.end method

.method protected onPictureData(Lcom/transsion/camera/app/common/mode/PictureInfo;)V
    .registers 9

    .line 327
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->getFormat()I

    move-result v2

    .line 328
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CapturePerformance] onPictureData in ImageProcessor, format = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , isBGImage:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->isBGImage()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/16 v0, 0x100

    if-ne v0, v2, :cond_50

    .line 331
    sget-boolean v0, Lcom/transsion/camera/utils/FeatureSupport;->sRenderFaceInfoToImage:Z

    if-eqz v0, :cond_4c

    sget-object v0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->sDebugRenderFaceInfoToImageFunction:Ljava/util/function/Function;

    if-eqz v0, :cond_4c

    .line 332
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->getData()[B

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 333
    new-instance v1, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;

    invoke-direct {v1, p1}, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;-><init>(Lcom/transsion/camera/app/common/mode/PictureInfo;)V

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;->setData([B)Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;->build()Lcom/transsion/camera/app/common/mode/PictureInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->onJpeg(Lcom/transsion/camera/app/common/mode/PictureInfo;)V

    .line 335
    :cond_4c
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->onJpeg(Lcom/transsion/camera/app/common/mode/PictureInfo;)V

    goto :goto_a5

    :cond_50
    const/16 v0, 0x11

    if-eq v0, v2, :cond_71

    const v0, 0x32315659

    if-ne v0, v2, :cond_5a

    goto :goto_71

    .line 346
    :cond_5a
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid image format: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_a5

    .line 337
    :cond_71
    :goto_71
    new-instance v0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->getData()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->getWidth()I

    move-result v3

    .line 338
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->getHeight()I

    move-result v4

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->getOrientation()I

    move-result v5

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->isBGImage()Z

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;-><init>([BIIIIZ)V

    .line 339
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mResultPairProducer:Lcom/transsion/camera/utils/PairProducer;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/utils/PairProducer;->addSecond(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_9a

    .line 341
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onPictureData pair is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 344
    :cond_9a
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/transsion/camera/adapter/CameraResults;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;

    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->onPictureDataAndCameraResults(Lcom/transsion/camera/adapter/CameraResults;Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ImageInfo;)V

    .line 348
    :goto_a5
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->removeByTimestamp(J)V

    return-void
.end method

.method protected onPictureDataFail(J)V
    .registers 6

    .line 352
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[CapturePerformance] onPictureDataFail in ImageProcessor"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mProcessMediaManager:Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    if-eqz v0, :cond_49

    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    if-nez v1, :cond_29

    .line 356
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->getLatestCaptureThumbInfo()Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;

    move-result-object p1

    if-eqz p1, :cond_27

    .line 357
    iget p2, p1, Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;->thumbnilType:I

    if-lez p2, :cond_27

    .line 358
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mProcessMediaManager:Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    invoke-virtual {p2, p1}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->getProcessMediaItem(Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;)Lcom/transsion/camera/app/common/provider/ProcessMediaItem;

    move-result-object p2

    .line 359
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mProcessMediaManager:Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->remove(Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;)V

    goto :goto_38

    :cond_27
    const/4 p2, 0x0

    goto :goto_38

    .line 362
    :cond_29
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->getProcessMediaItem(J)Lcom/transsion/camera/app/common/provider/ProcessMediaItem;

    move-result-object p2

    if-eqz p2, :cond_38

    .line 364
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mProcessMediaManager:Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->removeCaptureThumbInfo(J)V

    :cond_38
    :goto_38
    if-eqz p2, :cond_49

    .line 368
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->removeProcessMedia(Landroid/net/Uri;)V

    .line 369
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mProcessMediaManager:Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->onCaptureEnded(Lcom/transsion/camera/app/common/provider/ProcessMediaItem;Z)V

    :cond_49
    const/4 p1, 0x0

    .line 372
    invoke-static {p1}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->setProcessStatus(Z)V

    .line 373
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPictureCallback:Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;->notifyPictureDataFail()V

    return-void
.end method

.method protected onPostViewData([BIIIIJ)V
    .registers 11

    .line 703
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CapturePerformance] onPostViewData in Processor. timestamp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 704
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mAlgorithmMigrate:Z

    if-eqz v0, :cond_1e

    .line 705
    invoke-direct/range {p0 .. p7}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->algorithmPostViewData([BIIIIJ)V

    return-void

    .line 708
    :cond_1e
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPictureCallback:Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;

    invoke-interface/range {p0 .. p7}, Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;->onPostViewData([BIIIIJ)V

    return-void
.end method

.method public onProcessedMediaUriSaved(Lcom/transsion/camera/app/common/provider/ProcessMediaItem;)V
    .registers 3

    .line 972
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mProcessMediaManager:Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    if-eqz p0, :cond_8

    const/4 v0, 0x1

    .line 973
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->onCaptureEnded(Lcom/transsion/camera/app/common/provider/ProcessMediaItem;Z)V

    :cond_8
    return-void
.end method

.method public onTakePicture(Lcom/transsion/camera/app/common/mode/CaptureInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/camera/app/common/mode/CaptureInfo;",
            ")V"
        }
    .end annotation

    .line 857
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->onTakePicture(Lcom/transsion/camera/app/common/mode/CaptureInfo;)V

    .line 858
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mIsShotJpeg:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 859
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->updateContinuousShotState(Z)V

    .line 860
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    if-eqz v0, :cond_32

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->isPostALgoCapturing()Z

    move-result v0

    if-nez v0, :cond_32

    .line 861
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->isOffLineSessionSupport()Z

    move-result v2

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->isOfflineJniSupport()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->resetBGEnable(ZZ)V

    move v0, v1

    .line 862
    :goto_24
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CaptureInfo;->getCaptureCount()I

    move-result v2

    if-ge v0, v2, :cond_32

    .line 863
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->increaseCaptureCount()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 866
    :cond_32
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->isPostALgoCapturing()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 867
    :goto_38
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CaptureInfo;->getCaptureCount()I

    move-result v0

    if-ge v1, v0, :cond_46

    .line 868
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPostAlgoPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->increaseCaptureCount()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    :cond_46
    return-void
.end method

.method protected onUpdateFastThumbSurface(Landroid/util/Size;)Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .registers 4

    if-nez p1, :cond_c

    .line 825
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo p1, "updateFastThumbSurface: size is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 828
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mFastThumbSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mFastThumbSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    .line 829
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_5a

    .line 830
    :cond_26
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mFastThumbSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    if-eqz v0, :cond_2d

    .line 831
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->releaseSurface()V

    .line 833
    :cond_2d
    new-instance v0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;-><init>()V

    const-string v1, "FastThumb"

    .line 834
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->setName(Ljava/lang/String;)Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;

    move-result-object v0

    .line 835
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->setSize(II)Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;

    move-result-object p1

    const/16 v0, 0x23

    .line 836
    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->setFormat(I)Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 837
    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->setPostViewSurface(Z)Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;

    move-result-object p1

    .line 838
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->build()Lcom/transsion/camera/app/common/mode/CaptureSurface;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mFastThumbSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    .line 839
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPostViewCallback:Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->setImageCallback(Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;)V

    .line 841
    :cond_5a
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mFastThumbSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    return-object p0
.end method

.method public onUpdateThumbnailSurface(Landroid/util/Size;)Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .registers 4

    if-nez p1, :cond_c

    .line 803
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo p1, "updateThumbnailSurface: size is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 806
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mThumbnailSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mThumbnailSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    .line 807
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_5a

    .line 808
    :cond_26
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mThumbnailSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    if-eqz v0, :cond_2d

    .line 809
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->releaseSurface()V

    .line 811
    :cond_2d
    new-instance v0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;-><init>()V

    const-string v1, "PostView"

    .line 812
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->setName(Ljava/lang/String;)Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;

    move-result-object v0

    .line 813
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->setSize(II)Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;

    move-result-object p1

    const/16 v0, 0x23

    .line 814
    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->setFormat(I)Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 815
    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->setPostViewSurface(Z)Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;

    move-result-object p1

    .line 816
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->build()Lcom/transsion/camera/app/common/mode/CaptureSurface;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mThumbnailSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    .line 817
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPostViewCallback:Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->setImageCallback(Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;)V

    .line 819
    :cond_5a
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mThumbnailSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    return-object p0
.end method

.method protected releaseAlgorithm()V
    .registers 2

    .line 132
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->releaseAlgorithm()V

    .line 133
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "releaseAlgorithm"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected releaseImageProcessor()V
    .registers 3

    .line 113
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->releaseImageProcessor()V

    .line 114
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "releaseImageProcessor"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 115
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->processPictureDataWhenRelease()V

    return-void
.end method

.method protected releaseSurface()V
    .registers 3

    .line 901
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->releaseSurface()V

    .line 902
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mThumbnailSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 903
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->releaseSurface()V

    .line 904
    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mThumbnailSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    .line 907
    :cond_d
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mFastThumbSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    if-eqz v0, :cond_16

    .line 908
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->releaseSurface()V

    .line 909
    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mFastThumbSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    :cond_16
    return-void
.end method

.method public removeCaptureInfo(Z)V
    .registers 10

    .line 271
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mProcessMediaManager:Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    if-nez v0, :cond_6

    goto/16 :goto_ed

    .line 274
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeCaptureInfo, getPictureSurfaceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->getPictureSurfaceId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , matchPicSurface:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mProcessMediaManager:Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->getAllCaptureThumbInfo()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_ee

    .line 276
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_38

    goto/16 :goto_ee

    .line 280
    :cond_38
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3c
    :goto_3c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ed

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;

    if-eqz v1, :cond_3c

    .line 281
    iget v2, v1, Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;->thumbnilType:I

    if-lez v2, :cond_3c

    .line 282
    const-string v2, "removeCaptureInfo , captureThumbInfo: "

    const-string v3, "removeProcessMedia , item: "

    const/4 v4, 0x1

    if-eqz p1, :cond_a5

    .line 283
    iget v5, v1, Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;->captureSurfaceId:I

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->getPictureSurfaceId()I

    move-result v6

    if-ne v5, v6, :cond_3c

    .line 284
    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mProcessMediaManager:Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    invoke-virtual {v5, v1}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->getProcessMediaItem(Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;)Lcom/transsion/camera/app/common/provider/ProcessMediaItem;

    move-result-object v5

    if-eqz v5, :cond_89

    .line 286
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 287
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mProcessMediaManager:Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v5, v4}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->onCaptureEnded(Lcom/transsion/camera/app/common/provider/ProcessMediaItem;Z)V

    .line 288
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->removeProcessMedia(Landroid/net/Uri;)V

    goto :goto_8b

    .line 290
    :cond_89
    iput-boolean v4, v1, Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;->captureFail:Z

    .line 292
    :goto_8b
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 293
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mProcessMediaManager:Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->remove(Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;)V

    goto :goto_3c

    .line 296
    :cond_a5
    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mProcessMediaManager:Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    invoke-virtual {v5, v1}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->getProcessMediaItem(Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;)Lcom/transsion/camera/app/common/provider/ProcessMediaItem;

    move-result-object v5

    if-eqz v5, :cond_d0

    .line 298
    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 299
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mProcessMediaManager:Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    invoke-virtual {v3, v5, v4}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->onCaptureEnded(Lcom/transsion/camera/app/common/provider/ProcessMediaItem;Z)V

    .line 300
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->removeProcessMedia(Landroid/net/Uri;)V

    goto :goto_d2

    .line 302
    :cond_d0
    iput-boolean v4, v1, Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;->captureFail:Z

    .line 304
    :goto_d2
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 305
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mProcessMediaManager:Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->remove(Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;)V

    goto/16 :goto_3c

    :cond_ed
    :goto_ed
    return-void

    .line 277
    :cond_ee
    :goto_ee
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "removeCaptureInfo, return for no capture info"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected setPhotoHelper(Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;)V
    .registers 2

    .line 101
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mPhotoHelper:Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;

    return-void
.end method

.method public supportProcessingMedia()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method protected transform([BIIIIIIZ)[B
    .registers 9

    .line 686
    invoke-static/range {p1 .. p8}, Lcom/transsion/camera/app/common/algorithm/jpegcodec/JpegCodec;->transform([BIIIIIIZ)[B

    move-result-object p0

    return-object p0
.end method

.method public unInit()V
    .registers 2

    .line 106
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->unInit()V

    .line 107
    new-instance v0, Lcom/transsion/camera/app/common/mode/NullContinousShotCallback;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/mode/NullContinousShotCallback;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mCSImageCallback:Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;

    .line 108
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->removeAllRunnableAndClear()V

    return-void
.end method

.method public updateYuvPicSurface(Landroid/util/Size;IZ)Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .registers 8

    .line 204
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateYuvPicSurface size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mAlgorithmMigrate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mAlgorithmMigrate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mSizeConvert:Lcom/transsion/camera/app/common/algorithm/size/SizeConvert;

    if-eqz v0, :cond_51

    .line 207
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/algorithm/size/SizeConvert;->convertSize(Landroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    .line 208
    invoke-virtual {p1, v0}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->mSizeConverted:Z

    .line 209
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateYuvPicSurface originalSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", convertSize: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    move-object p1, v0

    .line 211
    :cond_51
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->updateYuvPicSurface(Landroid/util/Size;IZ)Lcom/transsion/camera/app/common/mode/CaptureSurface;

    move-result-object p0

    return-object p0
.end method
