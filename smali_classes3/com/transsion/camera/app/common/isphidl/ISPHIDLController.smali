.class public Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/taps/IBackgroundStorageLifecycleObserver;
.implements Lcom/transsion/camera/app/common/taps/IBackgroundController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/isphidl/ISPHIDLController$ISPHidlHandler;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static isDelaySetTZConfig:Z

.field private static isPostALgoBSSing:Z

.field private static isPostALgoShot2Shoting:Z

.field private static isThumbnailClicked:Z

.field private static mCallback:Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;

.field private static mShot2ShotCallback:Ljava/lang/ref/WeakReference;

.field private static sInstance:Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;


# instance fields
.field private isLastTimestampDiff:J

.field private final mBufferCacheItemList:Ljava/util/Stack;

.field private mContext:Landroid/content/Context;

.field protected mDeferOnNextCapAfterJpeg:Z

.field private mDeferSupport:Z

.field private mHandler:Landroid/os/Handler;

.field private final mHighQualityMediaSaverListener:Lcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;

.field private mISPHidlCaptureThread:Landroid/os/HandlerThread;

.field private mISPHidlEventCallback:Lcom/transsion/camera/app/common/isphidl/IISPHidlService$IISPHidlServiceCallback;

.field private mISPHidlService:Lcom/transsion/camera/app/common/isphidl/IISPHidlService;

.field mInit:Z

.field private mIsPostAlgoSurfaceEmpty:Z

.field private mIspHidlCaptureSurfaceList:Ljava/util/List;

.field private mIspHidlMemLimit:Z

.field private mOnHighQualityJpegAvailableListener:Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager;

.field mPostAlgoDied:Z

.field private final mSupportModes:Ljava/util/Set;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHighQualityMediaSaverListener(Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;)Lcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mHighQualityMediaSaverListener:Lcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmISPHidlService(Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;)Lcom/transsion/camera/app/common/isphidl/IISPHidlService;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mISPHidlService:Lcom/transsion/camera/app/common/isphidl/IISPHidlService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnHighQualityJpegAvailableListener(Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;)Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mOnHighQualityJpegAvailableListener:Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mfindBufferCacheItemItem(Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;J)Lcom/transsion/camera/app/common/isphidl/BufferCacheItem;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->findBufferCacheItemItem(J)Lcom/transsion/camera/app/common/isphidl/BufferCacheItem;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mreleaseSurfaces(Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->releaseSurfaces()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetisDelaySetTZConfig()Z
    .registers 1

    .line 0
    sget-boolean v0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->isDelaySetTZConfig:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetisPostALgoShot2Shoting()Z
    .registers 1

    .line 0
    sget-boolean v0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->isPostALgoShot2Shoting:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetmCallback()Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetmShot2ShotCallback()Ljava/lang/ref/WeakReference;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mShot2ShotCallback:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputisDelaySetTZConfig(Z)V
    .registers 1

    .line 0
    sput-boolean p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->isDelaySetTZConfig:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputisPostALgoBSSing(Z)V
    .registers 1

    .line 0
    sput-boolean p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->isPostALgoBSSing:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputisPostALgoShot2Shoting(Z)V
    .registers 1

    .line 0
    sput-boolean p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->isPostALgoShot2Shoting:Z

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 70
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ISPHIDLController"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x0

    .line 88
    sput-object v0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->sInstance:Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;

    .line 635
    new-instance v0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController$3;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController$3;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-static {}, Lcom/transsion/camera/utils/CameraUtil;->getRam()I

    move-result v0

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mIspHidlMemLimitType:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_13

    move v0, v3

    goto :goto_14

    :cond_13
    move v0, v2

    :goto_14
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mIspHidlMemLimit:Z

    .line 87
    invoke-static {v2}, Lcom/transsion/camera/utils/FeatureSupport;->getDeferOnNextCapAfterJpeg(I)I

    move-result v0

    if-ne v0, v3, :cond_1e

    move v0, v3

    goto :goto_1f

    :cond_1e
    move v0, v2

    :goto_1f
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mDeferOnNextCapAfterJpeg:Z

    .line 89
    iput-boolean v3, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mDeferSupport:Z

    .line 91
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mSupportModes:Ljava/util/Set;

    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mISPHidlService:Lcom/transsion/camera/app/common/isphidl/IISPHidlService;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mIspHidlCaptureSurfaceList:Ljava/util/List;

    .line 97
    iput-boolean v3, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mIsPostAlgoSurfaceEmpty:Z

    .line 99
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mPostAlgoDied:Z

    .line 100
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mBufferCacheItemList:Ljava/util/Stack;

    .line 105
    new-instance v0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController$1;-><init>(Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mHighQualityMediaSaverListener:Lcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;

    .line 523
    new-instance v0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController$2;-><init>(Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mISPHidlEventCallback:Lcom/transsion/camera/app/common/isphidl/IISPHidlService$IISPHidlServiceCallback;

    .line 133
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/app/common/R$bool;->isp_hidl_support:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 135
    iput-object p1, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mContext:Landroid/content/Context;

    .line 136
    sget-object v1, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISPHIDLController:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " getPackageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-static {}, Lcom/transsion/camera/app_info/AppInfo;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", support: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mIspHidlMemLimit = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mIspHidlMemLimit:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 136
    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_bb

    .line 138
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mIspHidlMemLimit:Z

    if-nez v0, :cond_bb

    invoke-static {}, Lcom/transsion/camera/app_info/AppInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 139
    const-string v0, "com.transsion.camera.feature.isphidl.ISPHidlImpl"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/common/isphidl/IISPHidlService;

    iput-object p1, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mISPHidlService:Lcom/transsion/camera/app/common/isphidl/IISPHidlService;

    .line 141
    :cond_bb
    invoke-direct {p0}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->initSupportModes()V

    .line 142
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->hasService()Z

    move-result p1

    if-eqz p1, :cond_c8

    .line 143
    invoke-direct {p0}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->init()V

    return-void

    .line 145
    :cond_c8
    const-string p0, "hasISPHidlService: false"

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public static createInstance(Landroid/content/Context;)V
    .registers 2

    .line 127
    sget-object v0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->sInstance:Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;

    if-nez v0, :cond_e

    .line 128
    new-instance v0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->sInstance:Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;

    .line 129
    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;->createInstance()V

    :cond_e
    return-void
.end method

.method private findBufferCacheItemItem(J)Lcom/transsion/camera/app/common/isphidl/BufferCacheItem;
    .registers 10

    const/4 v0, 0x0

    move v1, v0

    .line 613
    :goto_2
    iget-object v2, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mBufferCacheItemList:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v1, v2, :cond_6e

    .line 614
    iget-object v2, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mBufferCacheItemList:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/isphidl/BufferCacheItem;

    .line 615
    sget-object v3, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findBufferCacheItemItem: i = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " timeStamp = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " cacheItem.getTimeStamp() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/isphidl/BufferCacheItem;->getTimeStamp()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 616
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/isphidl/BufferCacheItem;->getTimeStamp()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_45

    goto :goto_5a

    .line 619
    :cond_45
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/isphidl/BufferCacheItem;->getTimeStamp()J

    move-result-wide v3

    sub-long/2addr v3, p1

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_69

    .line 621
    iget-wide p1, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->isLastTimestampDiff:J

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    cmp-long p1, p1, v3

    if-lez p1, :cond_5b

    :goto_5a
    return-object v2

    :cond_5b
    iget-object p0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mBufferCacheItemList:Ljava/util/Stack;

    add-int/lit8 v1, v1, -0x1

    if-lez v1, :cond_62

    move v0, v1

    :cond_62
    invoke-virtual {p0, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/isphidl/BufferCacheItem;

    return-object p0

    .line 623
    :cond_69
    iput-wide v3, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->isLastTimestampDiff:J

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 625
    :cond_6e
    iget-object p1, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mBufferCacheItemList:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    if-lez p1, :cond_85

    .line 626
    iget-object p0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mBufferCacheItemList:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/isphidl/BufferCacheItem;

    return-object p0

    :cond_85
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance()Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;
    .registers 1

    .line 158
    sget-object v0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->sInstance:Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;

    return-object v0
.end method

.method private init()V
    .registers 4

    .line 149
    sget-object v0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mISPHidlService:Lcom/transsion/camera/app/common/isphidl/IISPHidlService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mISPHidlService:Lcom/transsion/camera/app/common/isphidl/IISPHidlService;

    iget-object v1, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mISPHidlEventCallback:Lcom/transsion/camera/app/common/isphidl/IISPHidlService$IISPHidlServiceCallback;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/isphidl/IISPHidlService;->setIISPHidlServiceCallback(Lcom/transsion/camera/app/common/isphidl/IISPHidlService$IISPHidlServiceCallback;)V

    .line 151
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ISPHidlCaptureThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mISPHidlCaptureThread:Landroid/os/HandlerThread;

    .line 152
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 153
    new-instance v0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController$ISPHidlHandler;

    iget-object v1, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mISPHidlCaptureThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController$ISPHidlHandler;-><init>(Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 154
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mInit:Z

    return-void
.end method

.method private initSupportModes()V
    .registers 3

    .line 707
    iget-object v0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mISPHidlService:Lcom/transsion/camera/app/common/isphidl/IISPHidlService;

    if-eqz v0, :cond_37

    .line 708
    iget-object v0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mSupportModes:Ljava/util/Set;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 709
    iget-object v0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mSupportModes:Ljava/util/Set;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 710
    iget-object v0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mSupportModes:Ljava/util/Set;

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 711
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIspHidlHDRSupport:Z

    if-eqz v0, :cond_37

    .line 712
    iget-object p0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mSupportModes:Ljava/util/Set;

    const/16 v0, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_37
    return-void
.end method

.method private manageCache(Lcom/transsion/camera/app/common/isphidl/BufferCacheItem;Ljava/util/Stack;Z)V
    .registers 5

    .line 671
    monitor-enter p2

    .line 672
    :goto_1
    :try_start_1
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    move-result p0

    if-eqz p3, :cond_9

    const/4 v0, 0x5

    goto :goto_b

    :cond_9
    const/16 v0, 0x1e

    :goto_b
    if-lt p0, v0, :cond_14

    const/4 p0, 0x0

    .line 673
    invoke-virtual {p2, p0}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :catchall_12
    move-exception p0

    goto :goto_19

    .line 675
    :cond_14
    invoke-virtual {p2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    monitor-exit p2

    return-void

    :goto_19
    monitor-exit p2
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_12

    throw p0
.end method

.method private releaseSurfaces()V
    .registers 6

    .line 515
    iget-object v0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mIspHidlCaptureSurfaceList:Ljava/util/List;

    monitor-enter v0

    .line 516
    :try_start_3
    iget-object v1, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mIspHidlCaptureSurfaceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/mode/CaptureSurface;

    .line 517
    iget-object v3, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_9

    :catchall_20
    move-exception p0

    goto :goto_29

    .line 519
    :cond_22
    iget-object p0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mIspHidlCaptureSurfaceList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 520
    monitor-exit v0

    return-void

    :goto_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_20

    throw p0
.end method


# virtual methods
.method public activityResume(I)V
    .registers 4

    .line 174
    iget-object v0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_13

    .line 175
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x6

    .line 176
    iput v1, v0, Landroid/os/Message;->what:I

    .line 177
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 178
    iget-object p0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_13
    return-void
.end method

.method public addCaptureSurface(Lcom/transsion/camera/app/common/mode/CaptureSurface;)V
    .registers 12

    .line 320
    iget-object v0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mIspHidlCaptureSurfaceList:Ljava/util/List;

    monitor-enter v0

    .line 321
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 322
    iget-object v3, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mIspHidlCaptureSurfaceList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 323
    :cond_d
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 324
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/app/common/mode/CaptureSurface;

    .line 325
    invoke-virtual {v4}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getPreReleaseTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_d

    sub-long v6, v1, v4

    const-wide/16 v8, 0x7530

    cmp-long v6, v6, v8

    if-lez v6, :cond_d

    .line 327
    sget-object v6, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "removeCaptureSurface: currentTime "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", preReleaseTime "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 328
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_d

    :catchall_4d
    move-exception p0

    goto :goto_56

    .line 331
    :cond_4f
    iget-object p0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mIspHidlCaptureSurfaceList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    monitor-exit v0

    return-void

    :goto_56
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_3 .. :try_end_57} :catchall_4d

    throw p0
.end method

.method public cacheBuffer([BIIJZ)V
    .registers 13

    .line 268
    new-instance v0, Lcom/transsion/camera/app/common/isphidl/BufferCacheItem;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/app/common/isphidl/BufferCacheItem;-><init>([BIIJ)V

    .line 269
    iget-object p1, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mBufferCacheItemList:Ljava/util/Stack;

    invoke-direct {p0, v0, p1, p6}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->manageCache(Lcom/transsion/camera/app/common/isphidl/BufferCacheItem;Ljava/util/Stack;Z)V

    .line 270
    sget-object p1, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "cacheBuffer: timeStamp = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " size = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mBufferCacheItemList:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->logDetection(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public configPostAlgo(Lcom/transsion/camera/adapter/CameraParameters;[[I[ILandroid/hardware/camera2/CaptureResult;I)V
    .registers 14

    .line 209
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mPostAlgoDied:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 210
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setPostAlgoOn(Z)V

    .line 211
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mDeferSupport:Z

    .line 212
    sget-object p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "configPostAlgo: mPostAlgoDied return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 215
    :cond_12
    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;->getInstance()Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;->configAlgo(Lcom/transsion/camera/adapter/CameraParameters;[[I[ILandroid/hardware/camera2/CaptureResult;I)V

    .line 216
    invoke-virtual {v3}, Lcom/transsion/camera/adapter/CameraParameters;->getPostAlgoType()I

    move-result p1

    const/4 p2, 0x1

    if-gtz p1, :cond_2e

    invoke-virtual {v3}, Lcom/transsion/camera/adapter/CameraParameters;->isAIRawLiteClose()Z

    move-result p1

    if-nez p1, :cond_2c

    goto :goto_2e

    :cond_2c
    move p1, v1

    goto :goto_2f

    :cond_2e
    :goto_2e
    move p1, p2

    :goto_2f
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mDeferSupport:Z

    .line 217
    invoke-virtual {v3}, Lcom/transsion/camera/adapter/CameraParameters;->postAlgoOn()Z

    move-result p1

    if-eqz p1, :cond_3e

    invoke-virtual {v3}, Lcom/transsion/camera/adapter/CameraParameters;->getPostAlgoType()I

    move-result p1

    if-eqz p1, :cond_3e

    move v1, p2

    :cond_3e
    sput-boolean v1, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->isPostALgoShot2Shoting:Z

    .line 218
    sput-boolean v1, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->isPostALgoBSSing:Z

    .line 219
    invoke-virtual {v3}, Lcom/transsion/camera/adapter/CameraParameters;->getPostAlgoType()I

    move-result p1

    if-nez p1, :cond_50

    .line 220
    sget-object p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "configPostAlgo: post algo type is none"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 223
    :cond_50
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->isServiceSupport()Z

    move-result p1

    if-eqz p1, :cond_5b

    .line 224
    iget-object p0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mISPHidlService:Lcom/transsion/camera/app/common/isphidl/IISPHidlService;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/isphidl/IISPHidlService;->configCaptureParam()V

    :cond_5b
    return-void
.end method

.method public getBackgroundServiceType(I)Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;
    .registers 2

    .line 375
    sget-object p0, Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;->BG_SERVICE:Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;

    return-object p0
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 1

    .line 301
    iget-object p0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public hasService()Z
    .registers 2

    .line 162
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->isServiceSupport()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object p0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mISPHidlService:Lcom/transsion/camera/app/common/isphidl/IISPHidlService;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/isphidl/IISPHidlService;->hasISPHidlService()Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public isNeedASDShot2ShotSkipPolicy()Z
    .registers 2

    .line 306
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportBackgroundShot2shotSkipPolicy:Z

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->isServiceSupport()Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public isNeedMuSlimeBodyShot2ShotSkipPolicy()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isNeedPortraitModeEnhanceShot2ShotSkipPolicy()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isNeedShotSkipByCTSTest()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isPostAlgoShot2Shoting()Z
    .registers 2

    .line 292
    sget-boolean v0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->isPostALgoShot2Shoting:Z

    if-eqz v0, :cond_a

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mDeferOnNextCapAfterJpeg:Z

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public isPostAlgoShot2ShotingOriginal()Z
    .registers 1

    .line 296
    sget-boolean p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->isPostALgoShot2Shoting:Z

    return p0
.end method

.method public isPostAlgoSurfaceEmpty()Z
    .registers 1

    .line 170
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mIsPostAlgoSurfaceEmpty:Z

    return p0
.end method

.method public isReady()Z
    .registers 1

    .line 370
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->hasService()Z

    move-result p0

    return p0
.end method

.method public isServiceSupport()Z
    .registers 1

    .line 166
    iget-object p0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mISPHidlService:Lcom/transsion/camera/app/common/isphidl/IISPHidlService;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public isShutterEnable(I)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method public isSupport()Z
    .registers 1

    .line 365
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->isServiceSupport()Z

    move-result p0

    return p0
.end method

.method public isSupportDefer(I)Z
    .registers 3

    .line 380
    iget-object v0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mSupportModes:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->isServiceSupport()Z

    move-result p1

    if-eqz p1, :cond_18

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mDeferSupport:Z

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public onBackgroundStorageCreate(Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager;)V
    .registers 2

    .line 347
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager;->setBackgroundService(Lcom/transsion/camera/app/common/taps/IBackgroundController;)V

    .line 348
    iput-object p1, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mOnHighQualityJpegAvailableListener:Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager;

    return-void
.end method

.method public onBackgroundStorageInit(Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager;)V
    .registers 2

    return-void
.end method

.method public onBackgroundStorageReady(Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager;)V
    .registers 2

    .line 358
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->isServiceSupport()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 359
    iget-object p0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mISPHidlService:Lcom/transsion/camera/app/common/isphidl/IISPHidlService;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/isphidl/IISPHidlService;->onStorageReady()V

    :cond_b
    return-void
.end method

.method public onCaptureFailed([J)V
    .registers 3

    const/4 v0, 0x0

    .line 274
    sput-boolean v0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->isPostALgoShot2Shoting:Z

    .line 275
    sput-boolean v0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->isPostALgoBSSing:Z

    .line 276
    sput-boolean v0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->isDelaySetTZConfig:Z

    .line 277
    sput-boolean v0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->isThumbnailClicked:Z

    .line 278
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->isServiceSupport()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 279
    iget-object p0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mISPHidlService:Lcom/transsion/camera/app/common/isphidl/IISPHidlService;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/isphidl/IISPHidlService;->flush([J)V

    :cond_14
    return-void
.end method

.method public onHighQualityJpegFailed(J)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 430
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->setTapCapConfig(JII)V

    return-void
.end method

.method public onLowQualityJpegSaved(JLjava/lang/String;)V
    .registers 5

    .line 423
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->isServiceSupport()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 424
    iget-object p0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mISPHidlService:Lcom/transsion/camera/app/common/isphidl/IISPHidlService;

    const-string v0, ""

    invoke-interface {p0, p1, p2, p3, v0}, Lcom/transsion/camera/app/common/isphidl/IISPHidlService;->setMappingInfo(JLjava/lang/String;Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public onThumbnailClicked()V
    .registers 5

    const/4 v0, 0x1

    .line 395
    sput-boolean v0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->isThumbnailClicked:Z

    .line 396
    sget-boolean v1, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->isPostALgoBSSing:Z

    if-nez v1, :cond_e

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 397
    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->setTZCapConfig(JII)V

    return-void

    .line 400
    :cond_e
    sput-boolean v0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->isDelaySetTZConfig:Z

    return-void
.end method

.method public pause()V
    .registers 2

    const/4 v0, 0x2

    .line 246
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->pause(I)V

    return-void
.end method

.method public pause(I)V
    .registers 4

    const/4 v0, 0x0

    .line 250
    sput-boolean v0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->isPostALgoShot2Shoting:Z

    .line 251
    sput-boolean v0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->isPostALgoBSSing:Z

    .line 252
    sput-boolean v0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->isDelaySetTZConfig:Z

    .line 253
    iget-object v1, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mBufferCacheItemList:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->clear()V

    .line 254
    sget-boolean v1, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->isThumbnailClicked:Z

    if-eqz v1, :cond_13

    if-nez p1, :cond_13

    const/4 p1, 0x1

    .line 257
    :cond_13
    sput-boolean v0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->isThumbnailClicked:Z

    .line 258
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->isServiceSupport()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 259
    iget-object v0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mISPHidlService:Lcom/transsion/camera/app/common/isphidl/IISPHidlService;

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/isphidl/IISPHidlService;->pause(I)V

    .line 261
    :cond_20
    iget-object p0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_2a

    const/4 p1, 0x5

    const-wide/16 v0, 0x7530

    .line 262
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2a
    return-void
.end method

.method public removeCaptureSurface(Lcom/transsion/camera/app/common/mode/CaptureSurface;)V
    .registers 3

    .line 340
    iget-object v0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mIspHidlCaptureSurfaceList:Ljava/util/List;

    monitor-enter v0

    .line 341
    :try_start_3
    iget-object p0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mIspHidlCaptureSurfaceList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 342
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public resume()V
    .registers 2

    .line 183
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->isServiceSupport()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 184
    iget-object v0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mISPHidlService:Lcom/transsion/camera/app/common/isphidl/IISPHidlService;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/isphidl/IISPHidlService;->resume()V

    .line 186
    :cond_b
    iget-object p0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_13

    const/4 v0, 0x0

    .line 187
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_13
    return-void
.end method

.method public set2XRemosaicAvailable(Z)V
    .registers 2

    .line 229
    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;->getInstance()Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLAlgoManager;->set2XRemosaicAvailable(Z)V

    return-void
.end method

.method public setAppIOOperationStart(II)V
    .registers 3

    return-void
.end method

.method public setScreenState(I)V
    .registers 2

    return-void
.end method

.method public setSettingShot2ShotCallback(Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;)V
    .registers 3

    .line 240
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->isServiceSupport()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 241
    iget-object p0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mISPHidlService:Lcom/transsion/camera/app/common/isphidl/IISPHidlService;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/isphidl/IISPHidlService;->setSettingShot2ShotCallback(Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;)V

    :cond_b
    return-void
.end method

.method public setShot2ShotCallback(Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;)V
    .registers 3

    .line 233
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->isServiceSupport()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 234
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mShot2ShotCallback:Ljava/lang/ref/WeakReference;

    .line 235
    iget-object p0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mISPHidlService:Lcom/transsion/camera/app/common/isphidl/IISPHidlService;

    if-nez p1, :cond_13

    const/4 p1, 0x0

    goto :goto_15

    :cond_13
    sget-object p1, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;

    :goto_15
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/isphidl/IISPHidlService;->setShot2ShotCallback(Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;)V

    :cond_18
    return-void
.end method

.method public setTZCapConfig(JII)V
    .registers 6

    .line 284
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->hasService()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 285
    iget-object p0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mISPHidlService:Lcom/transsion/camera/app/common/isphidl/IISPHidlService;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/isphidl/IISPHidlService;->setTZCapConfig(JII)I

    return-void

    .line 287
    :cond_c
    sget-object p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "setTZCapAppReady: connect ISPHidlService failed"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setTapCapConfig(JII)V
    .registers 6

    const/4 v0, 0x6

    if-eq p4, v0, :cond_6

    .line 407
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->setTZCapConfig(JII)V

    :cond_6
    return-void
.end method

.method public startPostAlgo(Landroid/view/Surface;Landroid/util/Size;Landroid/util/Size;Ljava/util/List;Landroid/util/Size;III)[Lcom/transsion/camera/app/common/mode/SurfaceInfo;
    .registers 20

    .line 193
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->isServiceSupport()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_32

    .line 194
    iget-object v0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mISPHidlService:Lcom/transsion/camera/app/common/isphidl/IISPHidlService;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/isphidl/IISPHidlService;->hasISPHidlService()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mInit:Z

    if-nez v0, :cond_16

    .line 195
    invoke-direct {p0}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->init()V

    :cond_16
    const/4 v0, 0x0

    .line 197
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mPostAlgoDied:Z

    .line 198
    iget-object v2, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mISPHidlService:Lcom/transsion/camera/app/common/isphidl/IISPHidlService;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-interface/range {v2 .. v10}, Lcom/transsion/camera/app/common/isphidl/IISPHidlService;->startPostAlgo(Landroid/view/Surface;Landroid/util/Size;Landroid/util/Size;Ljava/util/List;Landroid/util/Size;III)[Lcom/transsion/camera/app/common/mode/SurfaceInfo;

    move-result-object p1

    if-nez p1, :cond_2e

    goto :goto_2f

    :cond_2e
    move v1, v0

    .line 200
    :goto_2f
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mIsPostAlgoSurfaceEmpty:Z

    return-object p1

    .line 203
    :cond_32
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->mIsPostAlgoSurfaceEmpty:Z

    const/4 p0, 0x0

    return-object p0
.end method
