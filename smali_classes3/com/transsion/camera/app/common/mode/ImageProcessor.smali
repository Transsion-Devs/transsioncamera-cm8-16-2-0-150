.class public abstract Lcom/transsion/camera/app/common/mode/ImageProcessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/mode/IImageProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/mode/ImageProcessor$AcquirePhotoTimeout;
    }
.end annotation


# static fields
.field public static final GROUP_CAPTURE_NUMBER:I = 0x4


# instance fields
.field protected mAcquirePhotoTimeouts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/mode/ImageProcessor$AcquirePhotoTimeout;",
            ">;"
        }
    .end annotation
.end field

.field protected mCaptureOrientation:I

.field protected mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentCameraId:Ljava/lang/String;

.field protected mDataCallback:Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;

.field protected mIsBgCaptureSupport:Z

.field protected mIsGroupCapturing:Z

.field private mIsPictureCallbackReleasePending:Z

.field private mIsSavingJepg:Z

.field private volatile mIsUnInit:Z

.field private final mListenersLock:Ljava/lang/Object;

.field private final mLivePhotoPendingTaskQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;",
            ">;"
        }
    .end annotation
.end field

.field protected mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

.field protected mMirror:Z

.field private mNeedReleaseCallback:Z

.field protected mPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

.field protected volatile mPictureCallback:Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;

.field protected mPostAlgoPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

.field protected mPostViewCallback:Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;

.field protected mProcessMediaManager:Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

.field protected mQcomJpegSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

.field protected mQcomPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

.field protected mQcomRawuSurfaces:[Lcom/transsion/camera/app/common/mode/CaptureSurface;

.field protected mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field protected volatile mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

.field private mSubPictureCallBack:Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;

.field protected final mSurfaceLock:Ljava/lang/Object;

.field private final mSurfaceStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/mode/CaptureSurface$SurfaceStateListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

.field protected mTempLocation:Landroid/location/Location;

.field protected mWatermark:Z

.field protected mYuvPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;


# direct methods
.method public static synthetic $r8$lambda$3gg3UDdDfdR0csBJN_cEGtTUGpQ(Lcom/transsion/camera/app/common/mode/ImageProcessor$AcquirePhotoTimeout;)V
    .registers 1

    .line 1047
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor$AcquirePhotoTimeout;->removeTimeoutCallbacks()V

    return-void
.end method

.method public static synthetic $r8$lambda$_INZlD0yTECYkv2NIMTFnowd6PU(Lcom/transsion/camera/app/common/mode/PictureInfo;)V
    .registers 7

    .line 460
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getInstance()Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;

    move-result-object v0

    .line 461
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/PictureInfo;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/PictureInfo;->getData()[B

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 460
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->updatePostViewPicture(J[BLandroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$qOFPgTIuotajQvjZlmE8kjqKthM(Lcom/transsion/camera/app/common/mode/ImageProcessor;JLjava/lang/String;Landroid/net/Uri;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->lambda$doMediaScanner$0(JLjava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qTHOf9tMWfaqyfGaj1drWNe4aGE(JLcom/transsion/camera/app/common/mode/ImageProcessor$AcquirePhotoTimeout;)Z
    .registers 5

    if-eqz p2, :cond_c

    .line 1036
    invoke-virtual {p2}, Lcom/transsion/camera/app/common/mode/ImageProcessor$AcquirePhotoTimeout;->getPhotoTimestamp()J

    move-result-wide v0

    cmp-long p0, v0, p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    if-eqz p0, :cond_12

    .line 1038
    invoke-virtual {p2}, Lcom/transsion/camera/app/common/mode/ImageProcessor$AcquirePhotoTimeout;->removeTimeoutCallbacks()V

    :cond_12
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsPictureCallbackReleasePending(Lcom/transsion/camera/app/common/mode/ImageProcessor;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mIsPictureCallbackReleasePending:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNeedReleaseCallback(Lcom/transsion/camera/app/common/mode/ImageProcessor;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mNeedReleaseCallback:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSubPictureCallBack(Lcom/transsion/camera/app/common/mode/ImageProcessor;)Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mSubPictureCallBack:Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsSavingJepg(Lcom/transsion/camera/app/common/mode/ImageProcessor;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mIsSavingJepg:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNeedReleaseCallback(Lcom/transsion/camera/app/common/mode/ImageProcessor;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mNeedReleaseCallback:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSubPictureCallBack(Lcom/transsion/camera/app/common/mode/ImageProcessor;Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mSubPictureCallBack:Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckAllSurfaceReleased(Lcom/transsion/camera/app/common/mode/ImageProcessor;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->checkAllSurfaceReleased()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoMediaScanner(Lcom/transsion/camera/app/common/mode/ImageProcessor;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->doMediaScanner(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monBackgroundImageSave(Lcom/transsion/camera/app/common/mode/ImageProcessor;Lcom/transsion/camera/app/common/mode/PictureInfo;Lcom/transsion/camera/app/common/taps/entity/QualityInfo;Landroid/net/Uri;Landroid/content/ContentValues;IZ)V
    .registers 7

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->onBackgroundImageSave(Lcom/transsion/camera/app/common/mode/PictureInfo;Lcom/transsion/camera/app/common/taps/entity/QualityInfo;Landroid/net/Uri;Landroid/content/ContentValues;IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveSurfaceStateListenerLocked(Lcom/transsion/camera/app/common/mode/ImageProcessor;Lcom/transsion/camera/app/common/mode/CaptureSurface$SurfaceStateListener;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->removeSurfaceStateListenerLocked(Lcom/transsion/camera/app/common/mode/CaptureSurface$SurfaceStateListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;)V
    .registers 4

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTempLocation:Landroid/location/Location;

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mSurfaceLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mIsUnInit:Z

    .line 83
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mIsSavingJepg:Z

    .line 84
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mNeedReleaseCallback:Z

    const/4 v1, -0x1

    .line 89
    iput v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mCaptureOrientation:I

    .line 90
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mListenersLock:Ljava/lang/Object;

    .line 91
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mLivePhotoPendingTaskQueue:Ljava/util/Queue;

    .line 92
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mIsPictureCallbackReleasePending:Z

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mSurfaceStateListeners:Ljava/util/List;

    .line 97
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mAcquirePhotoTimeouts:Ljava/util/List;

    .line 498
    new-instance v0, Lcom/transsion/camera/app/common/mode/ImageProcessor$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor$3;-><init>(Lcom/transsion/camera/app/common/mode/ImageProcessor;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mDataCallback:Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;

    .line 515
    new-instance v0, Lcom/transsion/camera/app/common/mode/ImageProcessor$4;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor$4;-><init>(Lcom/transsion/camera/app/common/mode/ImageProcessor;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPostViewCallback:Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;

    .line 104
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 105
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPictureCallback:Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;

    .line 106
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mSubPictureCallBack:Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;

    return-void
.end method

.method private addSurfaceStateListenerLocked(Lcom/transsion/camera/app/common/mode/CaptureSurface$SurfaceStateListener;)V
    .registers 5

    .line 728
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mListenersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 729
    :try_start_3
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mSurfaceStateListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 730
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addSurfaceStateListenerLocked size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mSurfaceStateListeners:Ljava/util/List;

    .line 731
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 730
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 732
    monitor-exit v0

    return-void

    :catchall_26
    move-exception p0

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw p0
.end method

.method private checkAllSurfaceReleased()V
    .registers 2

    .line 718
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mIsUnInit:Z

    if-nez v0, :cond_c

    .line 719
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "ignore it when ImageProcessor don\'t unInit"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 722
    :cond_c
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->isSurfaceStateListenersEmptyLocked()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 723
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->releaseImageProcessor()V

    :cond_15
    return-void
.end method

.method private createSurfaceStateListener()Lcom/transsion/camera/app/common/mode/CaptureSurface$SurfaceStateListener;
    .registers 2

    .line 705
    new-instance v0, Lcom/transsion/camera/app/common/mode/ImageProcessor$5;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor$5;-><init>(Lcom/transsion/camera/app/common/mode/ImageProcessor;)V

    .line 713
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->addSurfaceStateListenerLocked(Lcom/transsion/camera/app/common/mode/CaptureSurface$SurfaceStateListener;)V

    return-object v0
.end method

.method private doMediaScanner(Ljava/lang/String;)V
    .registers 7

    .line 398
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportLowQualityPicturePublic:Z

    if-nez v0, :cond_10

    .line 399
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "doMediaScanner: not supported"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 402
    :cond_10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 403
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "doMediaScanner: path is empty"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 406
    :cond_1e
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 407
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_2e

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    goto :goto_2f

    :cond_2e
    const/4 p1, 0x0

    :goto_2f
    if-eqz p1, :cond_58

    .line 408
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_58

    .line 409
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 411
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v3, "image/jpeg"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/transsion/camera/app/common/mode/ImageProcessor$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0, v1, v2}, Lcom/transsion/camera/app/common/mode/ImageProcessor$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/app/common/mode/ImageProcessor;J)V

    .line 410
    invoke-static {p1, v0, v3, v4}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    return-void

    .line 416
    :cond_58
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "doMediaScanner: not scan"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private handleLiveShotTask([BLandroid/graphics/Bitmap;ZJLcom/transsion/camera/app/common/livephoto/PhotoTaskData;)Z
    .registers 9

    .line 222
    monitor-enter p0

    .line 223
    :try_start_1
    invoke-virtual {p6, p2, p3, p4, p5}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->saveJpegInfo(Landroid/graphics/Bitmap;ZJ)V

    .line 224
    invoke-virtual {p6, p1}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->fillJpegData([B)V

    .line 225
    invoke-virtual {p6}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->isLowQualityPicture()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 226
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mLivePhotoPendingTaskQueue:Ljava/util/Queue;

    invoke-interface {p1, p6}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 227
    monitor-exit p0

    return p1

    :catchall_15
    move-exception v0

    move-object p1, v0

    goto :goto_31

    .line 229
    :cond_18
    invoke-virtual {p6}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->getLiveVideoPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_28

    move-object v1, p2

    move-object p2, p1

    move-object p1, p6

    move-wide p5, p4

    move p4, p3

    move-object p3, v1

    .line 231
    invoke-direct/range {p0 .. p6}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->processLiveVideoTask(Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;[BLandroid/graphics/Bitmap;ZJ)V

    goto :goto_2e

    :cond_28
    move-object p1, p6

    .line 233
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mLivePhotoPendingTaskQueue:Ljava/util/Queue;

    invoke-interface {p2, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :goto_2e
    const/4 p1, 0x1

    .line 235
    monitor-exit p0

    return p1

    .line 237
    :goto_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_15

    throw p1
.end method

.method private isSurfaceStateListenersEmptyLocked()Z
    .registers 5

    .line 744
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mListenersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 745
    :try_start_3
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mSurfaceStateListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 746
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSurfaceStateListenersEmptyLocked size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez v1, :cond_23

    const/4 p0, 0x1

    goto :goto_24

    :cond_23
    const/4 p0, 0x0

    .line 747
    :goto_24
    monitor-exit v0

    return p0

    :catchall_26
    move-exception p0

    .line 748
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw p0
.end method

.method private synthetic lambda$doMediaScanner$0(JLjava/lang/String;Landroid/net/Uri;)V
    .registers 7

    .line 413
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScanCompleted: path = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", uri = "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", cost = "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    sub-long/2addr p3, p1

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 413
    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private mergePictureInfo(Landroid/content/ContentValues;Lcom/transsion/camera/app/common/mode/PictureInfo;Lcom/transsion/camera/app/common/taps/entity/QualityInfo;)Lcom/transsion/camera/app/common/mode/PictureInfo;
    .registers 7

    .line 421
    invoke-static {p2, p3}, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;->getDisplayNameInfo(Lcom/transsion/camera/app/common/mode/PictureInfo;Lcom/transsion/camera/app/common/taps/entity/QualityInfo;)Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;

    move-result-object p3

    .line 422
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getInstance()Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->removeCustomContentValues(Landroid/content/ContentValues;Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;)V

    if-nez p3, :cond_15

    .line 425
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mergePictureInfo: is not low quality"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p2

    .line 429
    :cond_15
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportLowQualityPicturePublic:Z

    if-eqz v0, :cond_34

    .line 430
    new-instance p0, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;

    invoke-direct {p0, p2}, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;-><init>(Lcom/transsion/camera/app/common/mode/PictureInfo;)V

    .line 431
    invoke-virtual {p2}, Lcom/transsion/camera/app/common/mode/PictureInfo;->getData()[B

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p3, p2}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->writeXMPMetadata([BLcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;Z)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;->setData([B)Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;

    move-result-object p0

    .line 432
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;->build()Lcom/transsion/camera/app/common/mode/PictureInfo;

    move-result-object p0

    return-object p0

    .line 434
    :cond_34
    const-string v0, "_display_name"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 435
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_51

    .line 437
    invoke-static {v1, p3}, Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;->getLowQualityDisplayName(Ljava/lang/String;Lcom/transsion/camera/app/common/taps/entity/DisplayNameInfo;)Ljava/lang/String;

    move-result-object p3

    .line 436
    invoke-virtual {p1, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x1

    .line 438
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v1, "is_pending"

    invoke-virtual {p1, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 440
    :cond_51
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 441
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mergePictureInfo: DISPLAY_NAME = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p2
.end method

.method private onBackgroundImageSave(Lcom/transsion/camera/app/common/mode/PictureInfo;Lcom/transsion/camera/app/common/taps/entity/QualityInfo;Landroid/net/Uri;Landroid/content/ContentValues;IZ)V
    .registers 10

    .line 455
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->getListener()Lcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;

    move-result-object p0

    if-eqz p0, :cond_25

    .line 457
    new-instance v0, Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->getTimestamp()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, p3, p4}, Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;-><init>(JLandroid/net/Uri;Landroid/content/ContentValues;)V

    if-eqz p6, :cond_1e

    .line 459
    new-instance p3, Lcom/transsion/camera/app/common/mode/ImageProcessor$$ExternalSyntheticLambda0;

    invoke-direct {p3, p1}, Lcom/transsion/camera/app/common/mode/ImageProcessor$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/common/mode/PictureInfo;)V

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;->onBackgroundImageSaveProgressed(Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;[Ljava/lang/Object;)V

    return-void

    .line 464
    :cond_1e
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, v0, p5, p1}, Lcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;->onBackgroundImageSaveCompleted(Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;I[Ljava/lang/Object;)V

    :cond_25
    return-void
.end method

.method private onBackgroundImageSaveStarted(Lcom/transsion/camera/app/common/mode/PictureInfo;)V
    .registers 4

    .line 447
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->getListener()Lcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 449
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->getTimestamp()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;->onBackgroundImageSaveStarted(J)V

    :cond_d
    return-void
.end method

.method private processLiveVideoTask(Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;[BLandroid/graphics/Bitmap;ZJ)V
    .registers 8

    .line 242
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->getJpegImageData()[B

    move-result-object v0

    if-eqz v0, :cond_41

    .line 244
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mLivePhotoPendingTaskQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 245
    new-instance v0, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;-><init>()V

    .line 246
    invoke-virtual {v0, p2}, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;->setData([B)Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;

    move-result-object p2

    .line 247
    invoke-virtual {p2, p5, p6}, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;->setTimestamp(J)Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;

    move-result-object p2

    .line 248
    invoke-virtual {p2, p4}, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;->setIsBGImage(Z)Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;

    move-result-object p2

    .line 249
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->isLiveShotTask()Z

    move-result p4

    invoke-virtual {p2, p4}, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;->setIsLivePhoto(Z)Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;

    move-result-object p2

    .line 250
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getInstance()Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;

    move-result-object p4

    invoke-virtual {p4}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getLowQualityMediaSaverListener()Lcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;->setListener(Lcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;)Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;

    move-result-object p2

    .line 251
    invoke-virtual {p2}, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;->build()Lcom/transsion/camera/app/common/mode/PictureInfo;

    move-result-object p2

    .line 252
    invoke-virtual {p0, p2, p3, p1}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->doSaveJpeg(Lcom/transsion/camera/app/common/mode/PictureInfo;Landroid/graphics/Bitmap;Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;)V

    return-void

    .line 254
    :cond_3b
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mLivePhotoPendingTaskQueue:Ljava/util/Queue;

    invoke-interface {p0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-void

    .line 257
    :cond_41
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mLivePhotoPendingTaskQueue:Ljava/util/Queue;

    invoke-interface {p0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private removeSurfaceStateListenerLocked(Lcom/transsion/camera/app/common/mode/CaptureSurface$SurfaceStateListener;)V
    .registers 5

    .line 736
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mListenersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 737
    :try_start_3
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mSurfaceStateListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 738
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeSurfaceStateListenerLocked size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mSurfaceStateListeners:Ljava/util/List;

    .line 739
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 738
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 740
    monitor-exit v0

    return-void

    :catchall_26
    move-exception p0

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw p0
.end method


# virtual methods
.method public addCaptureThumbInfo(Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;)V
    .registers 2

    .line 996
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mProcessMediaManager:Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    if-eqz p0, :cond_7

    .line 997
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->addCaptureThumbInfo(Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;)V

    :cond_7
    return-void
.end method

.method protected doOnFileSaved(Landroid/net/Uri;)V
    .registers 4

    .line 470
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPictureCallback:Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, v1}, Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;->doOnFileSaved(Landroid/net/Uri;ZZ)V

    .line 471
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mIsSavingJepg:Z

    return-void
.end method

.method protected doSaveJpeg(Lcom/transsion/camera/app/common/mode/PictureInfo;Landroid/graphics/Bitmap;)V
    .registers 13

    .line 202
    invoke-static {}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskDataCache;->getInstance()Lcom/transsion/camera/app/common/livephoto/PhotoTaskDataCache;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskDataCache;->getPhotoTaskData(J)Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;

    move-result-object v9

    .line 203
    new-instance v0, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;-><init>(Lcom/transsion/camera/app/common/mode/PictureInfo;)V

    const/4 p1, 0x0

    const/4 v1, 0x1

    if-eqz v9, :cond_1d

    .line 204
    invoke-virtual {v9}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->isLiveShotTask()Z

    move-result v2

    if-eqz v2, :cond_1d

    move v2, v1

    goto :goto_1e

    :cond_1d
    move v2, p1

    :goto_1e
    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;->setIsLivePhoto(Z)Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;

    move-result-object v0

    if-eqz v9, :cond_2c

    .line 205
    invoke-virtual {v9}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->isAIFrame()Z

    move-result v2

    if-eqz v2, :cond_2c

    move v2, v1

    goto :goto_2d

    :cond_2c
    move v2, p1

    :goto_2d
    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;->setIsAIFrame(Z)Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;

    move-result-object v0

    if-eqz v9, :cond_3a

    .line 206
    invoke-virtual {v9}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->isAIZoomSR()Z

    move-result v2

    if-eqz v2, :cond_3a

    move p1, v1

    :cond_3a
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;->setIsAIZoomSR(Z)Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;

    move-result-object p1

    .line 207
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;->build()Lcom/transsion/camera/app/common/mode/PictureInfo;

    move-result-object p1

    const/4 v0, 0x0

    if-nez v9, :cond_50

    .line 209
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "photoTaskData is null, save original data"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->doSaveJpeg(Lcom/transsion/camera/app/common/mode/PictureInfo;Landroid/graphics/Bitmap;Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;)V

    return-void

    .line 213
    :cond_50
    invoke-static {}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskDataCache;->getInstance()Lcom/transsion/camera/app/common/livephoto/PhotoTaskDataCache;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskDataCache;->removePhotoTaskData(J)V

    .line 214
    invoke-virtual {v9}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->isLiveShotTask()Z

    move-result v1

    if-eqz v1, :cond_77

    .line 215
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->getData()[B

    move-result-object v4

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->isBGImage()Z

    move-result v6

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->getTimestamp()J

    move-result-wide v7

    move-object v3, p0

    move-object v5, p2

    invoke-direct/range {v3 .. v9}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->handleLiveShotTask([BLandroid/graphics/Bitmap;ZJLcom/transsion/camera/app/common/livephoto/PhotoTaskData;)Z

    move-result p0

    if-nez p0, :cond_76

    goto :goto_79

    :cond_76
    return-void

    :cond_77
    move-object v3, p0

    move-object v5, p2

    .line 216
    :goto_79
    invoke-virtual {v3, p1, v5, v0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->doSaveJpeg(Lcom/transsion/camera/app/common/mode/PictureInfo;Landroid/graphics/Bitmap;Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;)V

    return-void
.end method

.method protected doSaveJpeg(Lcom/transsion/camera/app/common/mode/PictureInfo;Landroid/graphics/Bitmap;Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;)V
    .registers 17

    move-object v7, p2

    .line 262
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doSaveJpeg() called with: isBGImage = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->isBGImage()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "], timestamp = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 263
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mIsSavingJepg:Z

    .line 264
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "[CapturePerformance] saveJpegToFile image"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 265
    iget-object v8, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    if-nez v8, :cond_42

    .line 267
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "saveJpegToFile: storageOperator is null, return"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 273
    :cond_42
    :try_start_42
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

    const-string v3, "key_location"

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/location/LocationManager;->getCurrentLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2
    :try_end_4a
    .catch Ljava/lang/NullPointerException; {:try_start_42 .. :try_end_4a} :catch_4b

    goto :goto_54

    .line 275
    :catch_4b
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "mLocationManager is null, use temp location"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 276
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTempLocation:Landroid/location/Location;

    .line 279
    :goto_54
    invoke-direct/range {p0 .. p1}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->onBackgroundImageSaveStarted(Lcom/transsion/camera/app/common/mode/PictureInfo;)V

    .line 282
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->getData()[B

    move-result-object v3

    invoke-static {v3}, Lcom/transsion/camera/utils/ExifUtils;->updateExifForAnalytics([B)V

    .line 283
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ImageProcessor_SceneType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->getData()[B

    move-result-object v5

    const-string v6, "SceneType"

    invoke-static {v5, v6}, Lcom/transsion/camera/utils/ExifUtils;->getExifStringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 283
    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 285
    const-string v3, "[TranMemoryFlow] available memory when save file:"

    invoke-static {v3}, Lcom/transsion/camera/utils/MemoryUtils;->logAvailMemoryAsync(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->supportProcessingMedia()Z

    move-result v3

    .line 287
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveJpegToFile image supportProcessingMedia: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 289
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mProcessMediaManager:Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    const/4 v5, 0x0

    if-eqz v4, :cond_b9

    .line 290
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->getTimestamp()J

    move-result-wide v9

    const-wide/16 v11, -0x1

    cmp-long v4, v9, v11

    if-nez v4, :cond_bb

    if-eqz v3, :cond_b4

    .line 291
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mProcessMediaManager:Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->getFirstAndPreRemove()Lcom/transsion/camera/app/common/provider/ProcessMediaItem;

    move-result-object v5

    .line 292
    :cond_b4
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mProcessMediaManager:Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->removeCaptureThumbInfo()V

    :cond_b9
    :goto_b9
    move-object v9, v5

    goto :goto_d9

    :cond_bb
    if-eqz v3, :cond_c7

    .line 294
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mProcessMediaManager:Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->getProcessMediaItem(J)Lcom/transsion/camera/app/common/provider/ProcessMediaItem;

    move-result-object v5

    :cond_c7
    if-eqz v5, :cond_d3

    .line 296
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mProcessMediaManager:Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->getTimestamp()J

    move-result-wide v9

    invoke-virtual {v3, v9, v10}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->removeCaptureThumbInfo(J)V

    goto :goto_b9

    .line 298
    :cond_d3
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mProcessMediaManager:Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->removeCaptureThumbInfo()V

    goto :goto_b9

    .line 304
    :goto_d9
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CapturePerformance] saveJpegToFile image;[doSaveJpeg] timestamp = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->getTimestamp()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", processMediaItem = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", info.getWidth() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v9, :cond_14b

    .line 307
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->getData()[B

    move-result-object v3

    invoke-virtual {v9}, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {p0, v3, p2, v2, v4}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->getProcessedContentValues([BLandroid/graphics/Bitmap;Landroid/location/Location;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v4

    .line 308
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getInstance()Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getQualityInfo(Landroid/content/ContentValues;)Lcom/transsion/camera/app/common/taps/entity/QualityInfo;

    move-result-object v2

    .line 309
    invoke-direct {p0, v4, p1, v2}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mergePictureInfo(Landroid/content/ContentValues;Lcom/transsion/camera/app/common/mode/PictureInfo;Lcom/transsion/camera/app/common/taps/entity/QualityInfo;)Lcom/transsion/camera/app/common/mode/PictureInfo;

    move-result-object v1

    .line 310
    invoke-virtual {v9}, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->getUri()Landroid/net/Uri;

    move-result-object v3

    const/4 v5, -0x1

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->onBackgroundImageSave(Lcom/transsion/camera/app/common/mode/PictureInfo;Lcom/transsion/camera/app/common/taps/entity/QualityInfo;Landroid/net/Uri;Landroid/content/ContentValues;IZ)V

    move-object v3, v1

    move-object v1, v4

    .line 311
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/mode/PictureInfo;->getData()[B

    move-result-object v10

    new-instance v0, Lcom/transsion/camera/app/common/mode/ImageProcessor$1;

    move-object/from16 v6, p3

    move-object v5, v1

    move-object v4, v2

    move-object v2, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/common/mode/ImageProcessor$1;-><init>(Lcom/transsion/camera/app/common/mode/ImageProcessor;Lcom/transsion/camera/app/common/provider/ProcessMediaItem;Lcom/transsion/camera/app/common/mode/PictureInfo;Lcom/transsion/camera/app/common/taps/entity/QualityInfo;Landroid/content/ContentValues;Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;)V

    move-object v1, v5

    .line 357
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->getUri()Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v4, p3

    move-object v5, v0

    move-object v3, v7

    move-object v0, v8

    move-object v2, v10

    .line 311
    invoke-interface/range {v0 .. v6}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->addPhotoSaveRequest(Landroid/content/ContentValues;[BLandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;Landroid/net/Uri;)V

    goto :goto_186

    .line 359
    :cond_14b
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo;->getData()[B

    move-result-object v3

    invoke-interface {v8}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getCameraDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, p2, v2, v4}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->getContentValues([BLandroid/graphics/Bitmap;Landroid/location/Location;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    .line 360
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getInstance()Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getQualityInfo(Landroid/content/ContentValues;)Lcom/transsion/camera/app/common/taps/entity/QualityInfo;

    move-result-object v4

    .line 361
    invoke-direct {p0, v2, p1, v4}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mergePictureInfo(Landroid/content/ContentValues;Lcom/transsion/camera/app/common/mode/PictureInfo;Lcom/transsion/camera/app/common/taps/entity/QualityInfo;)Lcom/transsion/camera/app/common/mode/PictureInfo;

    move-result-object v1

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v3, 0x0

    move-object v0, v4

    move-object v4, v2

    move-object v2, v0

    move-object v0, p0

    .line 362
    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->onBackgroundImageSave(Lcom/transsion/camera/app/common/mode/PictureInfo;Lcom/transsion/camera/app/common/taps/entity/QualityInfo;Landroid/net/Uri;Landroid/content/ContentValues;IZ)V

    move-object v3, v1

    move-object v1, v4

    .line 363
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/mode/PictureInfo;->getData()[B

    move-result-object v6

    new-instance v0, Lcom/transsion/camera/app/common/mode/ImageProcessor$2;

    move-object/from16 v5, p3

    move-object v4, v2

    move-object v2, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/app/common/mode/ImageProcessor$2;-><init>(Lcom/transsion/camera/app/common/mode/ImageProcessor;Landroid/content/ContentValues;Lcom/transsion/camera/app/common/mode/PictureInfo;Lcom/transsion/camera/app/common/taps/entity/QualityInfo;Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;)V

    move-object v1, v2

    move-object v4, v5

    move-object v2, v6

    move-object v3, v7

    move-object v5, v0

    move-object v0, v8

    invoke-interface/range {v0 .. v5}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->addPhotoSaveRequest(Landroid/content/ContentValues;[BLandroid/graphics/Bitmap;Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)V

    :goto_186
    return-void
.end method

.method protected doSaveJpeg([BLandroid/graphics/Bitmap;ZJ)V
    .registers 7

    .line 192
    new-instance v0, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;-><init>()V

    .line 193
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;->setData([B)Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;

    move-result-object p1

    .line 194
    invoke-virtual {p1, p3}, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;->setIsBGImage(Z)Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;

    move-result-object p1

    .line 195
    invoke-virtual {p1, p4, p5}, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;->setTimestamp(J)Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;

    move-result-object p1

    .line 196
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getInstance()Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;

    move-result-object p3

    invoke-virtual {p3}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getLowQualityMediaSaverListener()Lcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;->setListener(Lcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;)Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;

    move-result-object p1

    .line 197
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;->build()Lcom/transsion/camera/app/common/mode/PictureInfo;

    move-result-object p1

    .line 198
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->doSaveJpeg(Lcom/transsion/camera/app/common/mode/PictureInfo;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public getCameraId()Ljava/lang/String;
    .registers 1

    .line 891
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mCurrentCameraId:Ljava/lang/String;

    return-object p0
.end method

.method protected abstract getContentValues([BLandroid/graphics/Bitmap;Landroid/location/Location;Ljava/lang/String;)Landroid/content/ContentValues;
.end method

.method public getFirstCaptureInfoType()I
    .registers 3

    .line 1014
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mProcessMediaManager:Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    const/4 v0, -0x1

    if-eqz p0, :cond_f

    const/4 v1, 0x0

    .line 1015
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->getFirstCaptureThumbInfo(Z)Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 1016
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;->thumbnilType:I

    return p0

    :cond_f
    return v0
.end method

.method public getPictureCount()I
    .registers 2

    .line 896
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    if-eqz v0, :cond_9

    .line 897
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getPictureCount()I

    move-result p0

    return p0

    .line 899
    :cond_9
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mQcomPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    if-eqz p0, :cond_12

    .line 900
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getPictureCount()I

    move-result p0

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public getPictureSurfaceId()I
    .registers 2

    .line 907
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->isPostALgoCapturing()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 908
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPostAlgoPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getId()I

    move-result p0

    return p0

    .line 910
    :cond_d
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    if-eqz v0, :cond_16

    .line 911
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getId()I

    move-result p0

    return p0

    .line 913
    :cond_16
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mQcomPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    if-eqz p0, :cond_1f

    .line 914
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getId()I

    move-result p0

    return p0

    :cond_1f
    const/4 p0, 0x0

    return p0
.end method

.method protected abstract getProcessedContentValues([BLandroid/graphics/Bitmap;Landroid/location/Location;Landroid/content/ContentValues;)Landroid/content/ContentValues;
.end method

.method public getRemainingMediaSize()I
    .registers 1

    .line 1022
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mProcessMediaManager:Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    if-eqz p0, :cond_9

    .line 1023
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->getRemainingMediaSize()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, -0x1

    return p0
.end method

.method public init(Lcom/transsion/camera/app/common/location/LocationManager;Lcom/transsion/camera/app/common/algorithm/size/SizeConvert;Landroid/content/Context;)V
    .registers 4

    .line 111
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

    .line 112
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mContext:Ljava/lang/ref/WeakReference;

    .line 113
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->supportProcessingMedia()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 115
    new-instance p1, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    invoke-direct {p1, p3}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mProcessMediaManager:Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    :cond_16
    return-void
.end method

.method protected isBGServiceEnable()Z
    .registers 1

    .line 966
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->isBGServiceSupport()Z

    move-result p0

    return p0
.end method

.method protected isNull()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected isOffLineSessionSupport()Z
    .registers 1

    .line 978
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->isOffLineSessionSupport()Z

    move-result p0

    return p0
.end method

.method protected isOfflineJniSupport()Z
    .registers 1

    .line 974
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->isOfflineJniSupport()Z

    move-result p0

    return p0
.end method

.method public isPicSurfaceDirty()Z
    .registers 1

    .line 1029
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->isSurfaceDirty()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method protected isPostALgoCapturing()Z
    .registers 1

    .line 847
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPostAlgoPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    if-eqz p0, :cond_1a

    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->getInstance()Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->hasService()Z

    move-result p0

    if-eqz p0, :cond_1a

    .line 848
    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->getInstance()Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->isPostAlgoShot2ShotingOriginal()Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method protected isSupportedAcquirePhotoTimeout()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method protected isTZServiceEnable()Z
    .registers 1

    .line 970
    invoke-static {}, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->getInstance()Lcom/transsion/camera/app/common/tzservice/TZServiceController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->isSupport()Z

    move-result p0

    return p0
.end method

.method public onCameraClosed()V
    .registers 1

    return-void
.end method

.method public onCaptureCompleted(Lcom/transsion/camera/adapter/CameraResults;)V
    .registers 2

    return-void
.end method

.method public onCaptureFailed(Z)V
    .registers 3

    .line 854
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->isSupportedAcquirePhotoTimeout()Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 855
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[DFX][onCaptureFailed] Capture failed,take tne."

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 856
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->removeAllRunnableAndClear()V

    .line 857
    invoke-static {}, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->get()Lcom/transsion/camera/utils/dfx/inter/IExDetection;

    move-result-object p0

    const/4 p1, 0x4

    invoke-interface {p0, p1}, Lcom/transsion/camera/utils/dfx/inter/ICamError;->onCamError(I)V

    .line 858
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->onCamError(I)V

    .line 861
    :cond_1f
    invoke-static {}, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->get()Lcom/transsion/camera/utils/dfx/inter/IExDetection;

    move-result-object p0

    const/16 p1, 0x3ed

    invoke-interface {p0, p1}, Lcom/transsion/camera/utils/dfx/inter/IPerformanceDfx;->onActionCancel(I)V

    return-void
.end method

.method public onCaptureStarted(IZJ)V
    .registers 8

    .line 806
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureStarted mIsGroupCapturing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mIsGroupCapturing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isPostALgoCapturing() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->isPostALgoCapturing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 807
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->isBGServiceEnable()Z

    move-result v0

    if-nez v0, :cond_30

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->isOffLineSessionSupport()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 808
    :cond_30
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mSurfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 809
    :try_start_33
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    if-eqz v1, :cond_46

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->isPostALgoCapturing()Z

    move-result v1

    if-nez v1, :cond_46

    .line 810
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    invoke-virtual {v1, p3, p4}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->increasePicCount(J)V

    goto :goto_46

    :catchall_43
    move-exception p0

    goto/16 :goto_d2

    .line 812
    :cond_46
    :goto_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_33 .. :try_end_47} :catchall_43

    .line 814
    :cond_47
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->isOfflineJniSupport()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 815
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mSurfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 816
    :try_start_50
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mQcomPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    if-eqz v1, :cond_5a

    .line 817
    invoke-virtual {v1, p3, p4}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->increasePicCount(J)V

    goto :goto_5a

    :catchall_58
    move-exception p0

    goto :goto_5c

    .line 819
    :cond_5a
    :goto_5a
    monitor-exit v0

    goto :goto_5e

    :goto_5c
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_50 .. :try_end_5d} :catchall_58

    throw p0

    .line 821
    :cond_5e
    :goto_5e
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mSurfaceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 822
    :try_start_61
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->isPostALgoCapturing()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 823
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPostAlgoPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    invoke-virtual {v0, p3, p4}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->increasePicCount(J)V

    goto :goto_6f

    :catchall_6d
    move-exception p0

    goto :goto_d0

    .line 825
    :cond_6f
    :goto_6f
    monitor-exit v1
    :try_end_70
    .catchall {:try_start_61 .. :try_end_70} :catchall_6d

    if-eqz p1, :cond_a9

    .line 827
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    if-eqz p1, :cond_7c

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->isBGEnable()Z

    move-result p1

    if-nez p1, :cond_9d

    :cond_7c
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    if-eqz p1, :cond_86

    .line 828
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->isBGOfflineEnable()Z

    move-result p1

    if-nez p1, :cond_9d

    .line 829
    :cond_86
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->isPostALgoCapturing()Z

    move-result p1

    if-nez p1, :cond_9d

    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mIsBgCaptureSupport:Z

    if-nez p1, :cond_9d

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mQcomPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    if-eqz p1, :cond_9b

    .line 830
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->isOfflineJniEnable()Z

    move-result p1

    if-eqz p1, :cond_9b

    goto :goto_9d

    :cond_9b
    const/4 p1, 0x0

    goto :goto_9e

    :cond_9d
    :goto_9d
    const/4 p1, 0x1

    .line 831
    :goto_9e
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mProcessMediaManager:Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    if-eqz v0, :cond_a9

    if-eqz p1, :cond_a9

    if-eqz p2, :cond_a9

    .line 832
    invoke-virtual {v0, p3, p4}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->onCaptureStarted(J)V

    .line 835
    :cond_a9
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->isSupportedAcquirePhotoTimeout()Z

    move-result p1

    if-eqz p1, :cond_cf

    .line 836
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[DFX][Add]Support acquire photo timeout.Timestamp is "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 837
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mAcquirePhotoTimeouts:Ljava/util/List;

    new-instance p1, Lcom/transsion/camera/app/common/mode/ImageProcessor$AcquirePhotoTimeout;

    invoke-direct {p1, p3, p4}, Lcom/transsion/camera/app/common/mode/ImageProcessor$AcquirePhotoTimeout;-><init>(J)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_cf
    return-void

    .line 825
    :goto_d0
    :try_start_d0
    monitor-exit v1
    :try_end_d1
    .catchall {:try_start_d0 .. :try_end_d1} :catchall_6d

    throw p0

    .line 812
    :goto_d2
    :try_start_d2
    monitor-exit v0
    :try_end_d3
    .catchall {:try_start_d2 .. :try_end_d3} :catchall_43

    throw p0
.end method

.method public onLiveVideoSaveCompleted(Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;)V
    .registers 8

    .line 1100
    const-string v0, "onLiveVideoSaveCompleted"

    invoke-static {v0}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 1101
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getInstance()Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;

    move-result-object v0

    const/4 v1, 0x0

    .line 1102
    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->convertToLivePhotoInfo(Z)Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;

    move-result-object v1

    .line 1101
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->onLivePhotoStateChanged(Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;)V

    .line 1103
    monitor-enter p0

    .line 1104
    :try_start_12
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->isJpegDataReady()Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->isLowQualityPicture()Z

    move-result v0

    if-nez v0, :cond_63

    .line 1105
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mLivePhotoPendingTaskQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 1107
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->getJpegImageData()[B

    move-result-object v0

    .line 1108
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->getJpegBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1109
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->isBgImage()Z

    move-result v2

    .line 1110
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->getJpegTimestamp()J

    move-result-wide v3

    .line 1111
    new-instance v5, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;

    invoke-direct {v5}, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;-><init>()V

    .line 1112
    invoke-virtual {v5, v0}, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;->setData([B)Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;

    move-result-object v0

    .line 1113
    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;->setIsBGImage(Z)Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;

    move-result-object v0

    .line 1114
    invoke-virtual {v0, v3, v4}, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;->setTimestamp(J)Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;

    move-result-object v0

    .line 1115
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getInstance()Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getLowQualityMediaSaverListener()Lcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;->setListener(Lcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;)Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;

    move-result-object v0

    .line 1116
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/PictureInfo$Builder;->build()Lcom/transsion/camera/app/common/mode/PictureInfo;

    move-result-object v0

    .line 1117
    invoke-virtual {p0, v0, v1, p1}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->doSaveJpeg(Lcom/transsion/camera/app/common/mode/PictureInfo;Landroid/graphics/Bitmap;Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;)V

    goto :goto_7b

    :catchall_5b
    move-exception p1

    goto :goto_80

    .line 1119
    :cond_5d
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mLivePhotoPendingTaskQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_7b

    .line 1121
    :cond_63
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->isPictureFilled()Z

    move-result v0

    if-eqz v0, :cond_76

    .line 1122
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onVideoClipSavingCompleted: error: jpeg data is null"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1123
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mLivePhotoPendingTaskQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_7b

    .line 1125
    :cond_76
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mLivePhotoPendingTaskQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 1127
    :goto_7b
    monitor-exit p0
    :try_end_7c
    .catchall {:try_start_12 .. :try_end_7c} :catchall_5b

    .line 1128
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-void

    .line 1127
    :goto_80
    :try_start_80
    monitor-exit p0
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_5b

    throw p1
.end method

.method protected abstract onPictureData(Lcom/transsion/camera/app/common/mode/PictureInfo;)V
.end method

.method protected abstract onPictureDataFail(J)V
.end method

.method protected onPostViewData([BIIIIJ)V
    .registers 8

    return-void
.end method

.method public onProcessedMediaUriSaved(Lcom/transsion/camera/app/common/provider/ProcessMediaItem;)V
    .registers 2

    return-void
.end method

.method public onTakePicture(Lcom/transsion/camera/app/common/mode/CaptureInfo;)V
    .registers 3

    if-nez p1, :cond_a

    .line 786
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onTakePicture CaptureInfo is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 789
    :cond_a
    iget-boolean v0, p1, Lcom/transsion/camera/app/common/mode/CaptureInfo;->mMirror:Z

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mMirror:Z

    .line 790
    iget-boolean v0, p1, Lcom/transsion/camera/app/common/mode/CaptureInfo;->mWatermark:Z

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mWatermark:Z

    .line 791
    iget p1, p1, Lcom/transsion/camera/app/common/mode/CaptureInfo;->mOrientation:I

    iput p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mCaptureOrientation:I

    return-void
.end method

.method protected abstract onUpdateFastThumbSurface(Landroid/util/Size;)Lcom/transsion/camera/app/common/mode/CaptureSurface;
.end method

.method protected abstract onUpdateThumbnailSurface(Landroid/util/Size;)Lcom/transsion/camera/app/common/mode/CaptureSurface;
.end method

.method public pause()V
    .registers 2

    .line 164
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "pause"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected releaseAlgorithm()V
    .registers 1

    return-void
.end method

.method protected releaseImageProcessor()V
    .registers 1

    return-void
.end method

.method protected releaseSurface()V
    .registers 6

    .line 921
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mSurfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 922
    :try_start_3
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    .line 923
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->releaseSurface()V

    .line 924
    iput-object v2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    goto :goto_10

    :catchall_e
    move-exception p0

    goto :goto_41

    .line 926
    :cond_10
    :goto_10
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mQcomPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    if-eqz v1, :cond_19

    .line 927
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->releaseSurface()V

    .line 928
    iput-object v2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mQcomPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    .line 930
    :cond_19
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mQcomRawuSurfaces:[Lcom/transsion/camera/app/common/mode/CaptureSurface;

    if-eqz v1, :cond_2d

    const/4 v1, 0x0

    .line 931
    :goto_1e
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mQcomRawuSurfaces:[Lcom/transsion/camera/app/common/mode/CaptureSurface;

    array-length v4, v3

    if-ge v1, v4, :cond_2b

    .line 932
    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->releaseSurface()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 934
    :cond_2b
    iput-object v2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mQcomRawuSurfaces:[Lcom/transsion/camera/app/common/mode/CaptureSurface;

    .line 936
    :cond_2d
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPostAlgoPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    if-eqz v1, :cond_36

    .line 937
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->releaseSurface()V

    .line 938
    iput-object v2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPostAlgoPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    .line 940
    :cond_36
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mYuvPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    if-eqz v1, :cond_3f

    .line 941
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->releaseSurface()V

    .line 942
    iput-object v2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mYuvPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    .line 944
    :cond_3f
    monitor-exit v0

    return-void

    :goto_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_e

    throw p0
.end method

.method protected removeAllRunnableAndClear()V
    .registers 3

    .line 1046
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mAcquirePhotoTimeouts:Ljava/util/List;

    if-eqz v0, :cond_11

    .line 1047
    new-instance v1, Lcom/transsion/camera/app/common/mode/ImageProcessor$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/mode/ImageProcessor$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 1048
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mAcquirePhotoTimeouts:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_11
    return-void
.end method

.method protected removeByTimestamp(J)V
    .registers 6

    .line 1033
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->isSupportedAcquirePhotoTimeout()Z

    move-result v0

    if-eqz v0, :cond_3a

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_3a

    .line 1034
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DFX][removeByTimestamp] remove timestamp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ;The size of mAcquirePhotoTimeouts is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mAcquirePhotoTimeouts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1035
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mAcquirePhotoTimeouts:Ljava/util/List;

    new-instance v0, Lcom/transsion/camera/app/common/mode/ImageProcessor$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2}, Lcom/transsion/camera/app/common/mode/ImageProcessor$$ExternalSyntheticLambda2;-><init>(J)V

    invoke-interface {p0, v0}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    :cond_3a
    return-void
.end method

.method public removeCaptureThumbInfo()V
    .registers 4

    .line 1002
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mProcessMediaManager:Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    if-eqz v0, :cond_7

    .line 1003
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->removeCaptureThumbInfo()V

    .line 1005
    :cond_7
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mNeedReleaseCallback:Z

    if-eqz v0, :cond_23

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mIsPictureCallbackReleasePending:Z

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPictureCallback:Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;

    .line 1006
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;->getQuickCapturingCount()I

    move-result v0

    if-gtz v0, :cond_23

    .line 1007
    new-instance v0, Lcom/transsion/camera/app/common/mode/NullPictureCallback;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/mode/NullPictureCallback;-><init>(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPictureCallback:Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;

    const/4 v0, 0x0

    .line 1008
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mNeedReleaseCallback:Z

    .line 1010
    :cond_23
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeCaptureThumbInfo mPictureCallback = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPictureCallback:Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public resetBgEnable()V
    .registers 4

    .line 987
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    if-eqz v0, :cond_f

    .line 988
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->isOffLineSessionSupport()Z

    move-result v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->isOfflineJniSupport()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->resetBGEnable(ZZ)V

    .line 990
    :cond_f
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mQcomPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    if-eqz v0, :cond_1e

    .line 991
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->isOffLineSessionSupport()Z

    move-result v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->isOfflineJniSupport()Z

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->resetBGEnable(ZZ)V

    :cond_1e
    return-void
.end method

.method public resume()V
    .registers 1

    .line 157
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mProcessMediaManager:Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    if-eqz p0, :cond_7

    .line 158
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->resume()V

    :cond_7
    return-void
.end method

.method public saveJpegToFile(Lcom/transsion/camera/app/common/mode/PictureInfo;Landroid/graphics/Bitmap;)V
    .registers 3

    .line 188
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->doSaveJpeg(Lcom/transsion/camera/app/common/mode/PictureInfo;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public saveJpegToFile([BLandroid/graphics/Bitmap;Z)V
    .registers 10

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 180
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->doSaveJpeg([BLandroid/graphics/Bitmap;ZJ)V

    return-void
.end method

.method public saveJpegToFile([BLandroid/graphics/Bitmap;ZJ)V
    .registers 6

    .line 184
    invoke-virtual/range {p0 .. p5}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->doSaveJpeg([BLandroid/graphics/Bitmap;ZJ)V

    return-void
.end method

.method protected setBgCaptureSupport(Z)V
    .registers 2

    .line 138
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mIsBgCaptureSupport:Z

    return-void
.end method

.method public setIsGroupCapturing(Z)V
    .registers 2

    .line 843
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mIsGroupCapturing:Z

    return-void
.end method

.method public setPictureCallbackReleasePending(Z)V
    .registers 4

    .line 147
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mIsPictureCallbackReleasePending:Z

    .line 148
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPictureCallbackReleasePending:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mIsPictureCallbackReleasePending:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 149
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mIsPictureCallbackReleasePending:Z

    if-nez p1, :cond_2e

    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mNeedReleaseCallback:Z

    if-eqz p1, :cond_2e

    .line 150
    new-instance p1, Lcom/transsion/camera/app/common/mode/NullPictureCallback;

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-direct {p1, v0}, Lcom/transsion/camera/app/common/mode/NullPictureCallback;-><init>(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPictureCallback:Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;

    const/4 p1, 0x0

    .line 151
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mNeedReleaseCallback:Z

    :cond_2e
    return-void
.end method

.method public setStatusMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 2

    .line 143
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public abstract supportProcessingMedia()Z
.end method

.method public unInit()V
    .registers 4

    .line 121
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

    const-string v1, "key_location"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/location/LocationManager;->getCurrentLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTempLocation:Landroid/location/Location;

    .line 122
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unInit mIsSavingJepg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mIsSavingJepg:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " getQuickCapturingCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPictureCallback:Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;->getQuickCapturingCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 123
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mIsPictureCallbackReleasePending:Z

    const/4 v1, 0x1

    if-nez v0, :cond_4c

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mIsSavingJepg:Z

    if-nez v0, :cond_4c

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPictureCallback:Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;->getQuickCapturingCount()I

    move-result v0

    if-gtz v0, :cond_4c

    .line 124
    new-instance v0, Lcom/transsion/camera/app/common/mode/NullPictureCallback;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-direct {v0, v2}, Lcom/transsion/camera/app/common/mode/NullPictureCallback;-><init>(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPictureCallback:Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;

    goto :goto_4e

    .line 126
    :cond_4c
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mNeedReleaseCallback:Z

    .line 128
    :goto_4e
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mSurfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 129
    :try_start_51
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->releaseSurface()V

    .line 130
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mIsUnInit:Z

    .line 131
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_51 .. :try_end_57} :catchall_61

    .line 132
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->isSurfaceStateListenersEmptyLocked()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 133
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->releaseImageProcessor()V

    :cond_60
    return-void

    :catchall_61
    move-exception p0

    .line 131
    :try_start_62
    monitor-exit v0
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    throw p0
.end method

.method public updateCameraId(Ljava/lang/String;)V
    .registers 2

    .line 886
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mCurrentCameraId:Ljava/lang/String;

    return-void
.end method

.method public final updateFastThumbSurface(Landroid/util/Size;)Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .registers 4

    .line 764
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mSurfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 765
    :try_start_3
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mIsUnInit:Z

    if-eqz v1, :cond_14

    .line 766
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo p1, "updateThumbnailSurface: ImageProcessor is unInit"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 767
    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    goto :goto_1a

    .line 769
    :cond_14
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->onUpdateFastThumbSurface(Landroid/util/Size;)Lcom/transsion/camera/app/common/mode/CaptureSurface;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 770
    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_12

    throw p0
.end method

.method protected updateParameters(Lcom/transsion/camera/app/common/mode/ProcesserParameters;)V
    .registers 2

    return-void
.end method

.method public updatePicSurface(Landroid/util/Size;IZZ)Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .registers 10

    .line 530
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mSurfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 531
    :try_start_3
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updatePictureSurface+ isBGSurface:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , isBGOfflineSurface:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , isPicSurfaceDirty:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->isPicSurfaceDirty()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , mPicSurface:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 531
    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 534
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mIsUnInit:Z

    if-eqz v1, :cond_4a

    .line 535
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo p1, "updatePictureSurface: ImageProcessor is unInit"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 536
    monitor-exit v0

    return-object p0

    :catchall_47
    move-exception p0

    goto/16 :goto_fd

    :cond_4a
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p3, :cond_5c

    .line 539
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->isBGServiceEnable()Z

    move-result p3

    if-nez p3, :cond_5a

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->isTZServiceEnable()Z

    move-result p3

    if-eqz p3, :cond_5c

    :cond_5a
    move p3, v2

    goto :goto_5d

    :cond_5c
    move p3, v1

    .line 540
    :goto_5d
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    if-eqz v3, :cond_87

    .line 541
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v4

    if-ne v3, v4, :cond_87

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    .line 542
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getHeight()I

    move-result v3

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v4

    if-ne v3, v4, :cond_87

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->isPicSurfaceDirty()Z

    move-result v3

    if-nez v3, :cond_87

    if-eqz p3, :cond_f9

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    .line 543
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->isBGEnable()Z

    move-result v3

    if-nez v3, :cond_f9

    .line 544
    :cond_87
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    if-eqz v3, :cond_8e

    .line 545
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->releaseSurface()V

    :cond_8e
    if-eqz p4, :cond_98

    .line 547
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->isOffLineSessionSupport()Z

    move-result p4

    if-eqz p4, :cond_98

    move p4, v2

    goto :goto_99

    :cond_98
    move p4, v1

    .line 548
    :goto_99
    new-instance v3, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;

    invoke-direct {v3}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;-><init>()V

    const-string v4, "JpegPic"

    .line 549
    invoke-virtual {v3, v4}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->setName(Ljava/lang/String;)Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;

    move-result-object v3

    .line 550
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-virtual {v3, v4, p1}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->setSize(II)Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;

    move-result-object p1

    .line 551
    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->setFormat(I)Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;

    move-result-object p1

    if-eqz p3, :cond_be

    .line 552
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->isBGServiceEnable()Z

    move-result p2

    if-eqz p2, :cond_be

    move p2, v2

    goto :goto_bf

    :cond_be
    move p2, v1

    :goto_bf
    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->setBGServiceImg(Z)Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;

    move-result-object p1

    if-eqz p3, :cond_cc

    .line 553
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->isTZServiceEnable()Z

    move-result p2

    if-eqz p2, :cond_cc

    move v1, v2

    :cond_cc
    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->setTZServiceImg(Z)Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;

    move-result-object p1

    .line 554
    invoke-virtual {p1, p4}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->setBGOfflineEnable(Z)Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;

    move-result-object p1

    .line 555
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->build()Lcom/transsion/camera/app/common/mode/CaptureSurface;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    if-eqz p3, :cond_e1

    .line 557
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mProcessMediaManager:Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->setProcessMediaManager(Lcom/transsion/camera/app/common/provider/ProcessMediaManager;)V

    .line 559
    :cond_e1
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mDataCallback:Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->setImageCallback(Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;)V

    .line 560
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->createSurfaceStateListener()Lcom/transsion/camera/app/common/mode/CaptureSurface$SurfaceStateListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->setSurfaceStateListener(Lcom/transsion/camera/app/common/mode/CaptureSurface$SurfaceStateListener;)V

    .line 561
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo p2, "updatePictureSurface-"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 563
    :cond_f9
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    monitor-exit v0

    return-object p0

    .line 564
    :goto_fd
    monitor-exit v0
    :try_end_fe
    .catchall {:try_start_3 .. :try_end_fe} :catchall_47

    throw p0
.end method

.method public updatePostAlgoPicSurface(Landroid/util/Size;IZ)Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .registers 8

    .line 641
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mSurfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 642
    :try_start_3
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mIsUnInit:Z

    if-eqz v1, :cond_14

    .line 643
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo p1, "updatePostAlgoPicSurface: ImageProcessor is unInit"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 644
    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    goto :goto_6a

    .line 646
    :cond_14
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPostAlgoPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    if-eqz v1, :cond_1b

    .line 647
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->releaseSurface()V

    .line 649
    :cond_1b
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v2, "updatePostAlgoPicSurface"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eqz p3, :cond_2e

    .line 650
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->isBGServiceEnable()Z

    move-result p3

    if-eqz p3, :cond_2e

    move p3, v1

    goto :goto_2f

    :cond_2e
    const/4 p3, 0x0

    .line 651
    :goto_2f
    new-instance v2, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;

    invoke-direct {v2}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;-><init>()V

    const-string v3, "postAlgoJpegPic"

    .line 652
    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->setName(Ljava/lang/String;)Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;

    move-result-object v2

    .line 653
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-virtual {v2, v3, p1}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->setSize(II)Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;

    move-result-object p1

    .line 654
    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->setFormat(I)Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;

    move-result-object p1

    .line 655
    invoke-virtual {p1, p3}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->setBGServiceImg(Z)Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;

    move-result-object p1

    .line 656
    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->setPostAlgoSurface(Z)Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;

    move-result-object p1

    .line 657
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->build()Lcom/transsion/camera/app/common/mode/CaptureSurface;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPostAlgoPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    .line 658
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mDataCallback:Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->setImageCallback(Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;)V

    .line 659
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPostAlgoPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->createSurfaceStateListener()Lcom/transsion/camera/app/common/mode/CaptureSurface$SurfaceStateListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->setSurfaceStateListener(Lcom/transsion/camera/app/common/mode/CaptureSurface$SurfaceStateListener;)V

    .line 660
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPostAlgoPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    monitor-exit v0

    return-object p0

    .line 661
    :goto_6a
    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_3 .. :try_end_6b} :catchall_12

    throw p0
.end method

.method public updateQcomJpegSurface(Landroid/util/Size;IZZ)Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .registers 6

    .line 569
    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mSurfaceLock:Ljava/lang/Object;

    monitor-enter p3

    .line 570
    :try_start_3
    iget-boolean p4, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mIsUnInit:Z

    if-eqz p4, :cond_13

    .line 571
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[updateQcomPicSurface] ImageProcessor is unInit"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 572
    monitor-exit p3

    return-object p0

    :catchall_11
    move-exception p0

    goto :goto_52

    .line 574
    :cond_13
    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mQcomJpegSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    if-eqz p4, :cond_1a

    .line 575
    invoke-virtual {p4}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->releaseSurface()V

    .line 577
    :cond_1a
    new-instance p4, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;

    invoke-direct {p4}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;-><init>()V

    const-string v0, "JpegPic"

    .line 578
    invoke-virtual {p4, v0}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->setName(Ljava/lang/String;)Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;

    move-result-object p4

    .line 579
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-virtual {p4, v0, p1}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->setSize(II)Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;

    move-result-object p1

    .line 580
    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->setFormat(I)Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 581
    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->setOfflineJniEnable(Z)Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;

    move-result-object p1

    .line 582
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->build()Lcom/transsion/camera/app/common/mode/CaptureSurface;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mQcomJpegSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    .line 583
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mDataCallback:Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->setImageCallback(Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;)V

    .line 584
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mQcomJpegSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->createSurfaceStateListener()Lcom/transsion/camera/app/common/mode/CaptureSurface$SurfaceStateListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->setSurfaceStateListener(Lcom/transsion/camera/app/common/mode/CaptureSurface$SurfaceStateListener;)V

    .line 585
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mQcomJpegSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    monitor-exit p3

    return-object p0

    .line 586
    :goto_52
    monitor-exit p3
    :try_end_53
    .catchall {:try_start_3 .. :try_end_53} :catchall_11

    throw p0
.end method

.method public updateQcomPicSurface(Landroid/util/Size;IIZ)Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .registers 8

    .line 591
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mSurfaceLock:Ljava/lang/Object;

    monitor-enter p1

    .line 592
    :try_start_3
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mIsUnInit:Z

    if-eqz v0, :cond_13

    .line 593
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "[updateQcomPicSurface] ImageProcessor is unInit"

    invoke-static {p0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 594
    monitor-exit p1

    return-object p0

    :catchall_11
    move-exception p0

    goto :goto_68

    .line 596
    :cond_13
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mQcomPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    if-eqz v0, :cond_1a

    .line 597
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->releaseSurface()V

    .line 599
    :cond_1a
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateQcomPicSurface] format= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", jpegMaxSize= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 600
    new-instance v0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;-><init>()V

    const-string v1, "QcomJpegPic"

    .line 601
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->setName(Ljava/lang/String;)Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 602
    invoke-virtual {v0, p2, v1}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->setSize(II)Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;

    move-result-object p2

    .line 603
    invoke-virtual {p2, p3}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->setFormat(I)Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;

    move-result-object p2

    .line 604
    invoke-virtual {p2, p4}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->setOfflineJniEnable(Z)Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;

    move-result-object p2

    .line 605
    invoke-virtual {p2}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->build()Lcom/transsion/camera/app/common/mode/CaptureSurface;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mQcomPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    .line 606
    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mDataCallback:Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;

    invoke-virtual {p2, p3}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->setImageCallback(Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;)V

    .line 607
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mQcomPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->createSurfaceStateListener()Lcom/transsion/camera/app/common/mode/CaptureSurface$SurfaceStateListener;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->setSurfaceStateListener(Lcom/transsion/camera/app/common/mode/CaptureSurface$SurfaceStateListener;)V

    .line 608
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mQcomPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    monitor-exit p1

    return-object p0

    .line 609
    :goto_68
    monitor-exit p1
    :try_end_69
    .catchall {:try_start_3 .. :try_end_69} :catchall_11

    throw p0
.end method

.method public updateQcomRawSurface(Ljava/util/List;IZ)[Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;IZ)[",
            "Lcom/transsion/camera/app/common/mode/CaptureSurface;"
        }
    .end annotation

    .line 614
    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mSurfaceLock:Ljava/lang/Object;

    monitor-enter p3

    .line 615
    :try_start_3
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mIsUnInit:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 616
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[updateQcomPicSurface] ImageProcessor is unInit"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 617
    monitor-exit p3

    return-object v1

    :catchall_11
    move-exception p0

    goto :goto_71

    .line 619
    :cond_13
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mQcomRawuSurfaces:[Lcom/transsion/camera/app/common/mode/CaptureSurface;

    const/4 v2, 0x0

    if-eqz v0, :cond_28

    move v0, v2

    .line 620
    :goto_19
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mQcomRawuSurfaces:[Lcom/transsion/camera/app/common/mode/CaptureSurface;

    array-length v4, v3

    if-ge v0, v4, :cond_26

    .line 621
    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->releaseSurface()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 623
    :cond_26
    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mQcomRawuSurfaces:[Lcom/transsion/camera/app/common/mode/CaptureSurface;

    .line 625
    :cond_28
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/transsion/camera/app/common/mode/CaptureSurface;

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mQcomRawuSurfaces:[Lcom/transsion/camera/app/common/mode/CaptureSurface;

    .line 626
    :goto_30
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_6d

    .line 627
    new-instance v0, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;-><init>()V

    const-string v1, "RawPic"

    .line 628
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->setName(Ljava/lang/String;)Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;

    move-result-object v0

    .line 629
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->setSize(II)Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;

    move-result-object v0

    .line 630
    invoke-virtual {v0, p2}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->setFormat(I)Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 631
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->setOfflineJniEnable(Z)Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;

    move-result-object v0

    .line 632
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->build()Lcom/transsion/camera/app/common/mode/CaptureSurface;

    move-result-object v0

    .line 633
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mQcomRawuSurfaces:[Lcom/transsion/camera/app/common/mode/CaptureSurface;

    aput-object v0, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 635
    :cond_6d
    monitor-exit p3
    :try_end_6e
    .catchall {:try_start_3 .. :try_end_6e} :catchall_11

    .line 636
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mQcomRawuSurfaces:[Lcom/transsion/camera/app/common/mode/CaptureSurface;

    return-object p0

    .line 635
    :goto_71
    :try_start_71
    monitor-exit p3
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_11

    throw p0
.end method

.method public updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V
    .registers 3

    .line 780
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    return-void
.end method

.method public final updateThumbnailSurface(Landroid/util/Size;)Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .registers 4

    .line 753
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mSurfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 754
    :try_start_3
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mIsUnInit:Z

    if-eqz v1, :cond_14

    .line 755
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo p1, "updateThumbnailSurface: ImageProcessor is unInit"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 756
    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    goto :goto_1a

    .line 758
    :cond_14
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->onUpdateThumbnailSurface(Landroid/util/Size;)Lcom/transsion/camera/app/common/mode/CaptureSurface;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 759
    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_12

    throw p0
.end method

.method public updateYuvPicSurface(Landroid/util/Size;IZ)Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .registers 7

    .line 675
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mSurfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 676
    :try_start_3
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mIsUnInit:Z

    if-eqz v1, :cond_14

    .line 677
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo p1, "updateYuvPicSurface: ImageProcessor is unInit"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 678
    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    goto :goto_88

    .line 680
    :cond_14
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mYuvPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    if-eqz v1, :cond_2e

    .line 681
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    if-ne v1, v2, :cond_2e

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mYuvPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    .line 682
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    if-eq v1, v2, :cond_84

    .line 683
    :cond_2e
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mYuvPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    if-eqz v1, :cond_35

    .line 684
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->releaseSurface()V

    .line 686
    :cond_35
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v2, "updateYuvPicSurface"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p3, :cond_47

    .line 687
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->isBGServiceEnable()Z

    move-result p3

    if-eqz p3, :cond_47

    const/4 p3, 0x1

    goto :goto_48

    :cond_47
    const/4 p3, 0x0

    .line 688
    :goto_48
    new-instance v1, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;-><init>()V

    const-string v2, "YuvPic"

    .line 689
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->setName(Ljava/lang/String;)Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;

    move-result-object v1

    .line 690
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-virtual {v1, v2, p1}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->setSize(II)Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;

    move-result-object p1

    .line 691
    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->setFormat(I)Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;

    move-result-object p1

    .line 692
    invoke-virtual {p1, p3}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->setBGServiceImg(Z)Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;

    move-result-object p1

    .line 693
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CaptureSurface$Builder;->build()Lcom/transsion/camera/app/common/mode/CaptureSurface;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mYuvPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    if-eqz p3, :cond_74

    .line 695
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mProcessMediaManager:Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->setProcessMediaManager(Lcom/transsion/camera/app/common/provider/ProcessMediaManager;)V

    .line 697
    :cond_74
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mYuvPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mDataCallback:Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->setImageCallback(Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;)V

    .line 698
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mYuvPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->createSurfaceStateListener()Lcom/transsion/camera/app/common/mode/CaptureSurface$SurfaceStateListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->setSurfaceStateListener(Lcom/transsion/camera/app/common/mode/CaptureSurface$SurfaceStateListener;)V

    .line 700
    :cond_84
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mYuvPicSurface:Lcom/transsion/camera/app/common/mode/CaptureSurface;

    monitor-exit v0

    return-object p0

    .line 701
    :goto_88
    monitor-exit v0
    :try_end_89
    .catchall {:try_start_3 .. :try_end_89} :catchall_12

    throw p0
.end method
