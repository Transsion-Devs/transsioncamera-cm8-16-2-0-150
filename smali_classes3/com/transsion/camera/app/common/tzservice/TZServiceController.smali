.class public Lcom/transsion/camera/app/common/tzservice/TZServiceController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/taps/IBackgroundStorageLifecycleObserver;
.implements Lcom/transsion/camera/app/common/taps/IBackgroundController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/tzservice/TZServiceController$TZHandler;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static sInstance:Lcom/transsion/camera/app/common/tzservice/TZServiceController;


# instance fields
.field private final mCaptureSurfaceList:Ljava/util/List;

.field private mHandler:Landroid/os/Handler;

.field private final mHighQualityMediaSaverListener:Lcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;

.field private mMainHandler:Landroid/os/Handler;

.field private mOnCaptureProgressListener:Lcom/transsion/camera/app/common/taps/OnCaptureProgressListener;

.field private mOnHighQualityJpegAvailableListener:Lcom/transsion/camera/app/common/taps/OnHighQualityJpegAvailableListener;

.field private mShot2ShotCallback:Ljava/lang/ref/WeakReference;

.field private final mSupportModes:Ljava/util/Set;

.field private final mTZEventCallback:Lcom/transsion/camera/app/common/tzservice/ITZService$ITZServiceCallback;

.field private mTZService:Lcom/transsion/camera/app/common/tzservice/ITZService;


# direct methods
.method public static synthetic $r8$lambda$01Zziwt3Xv4hbwiAsKi44DIpmIE(Lcom/transsion/camera/app/common/tzservice/TZServiceController;Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->lambda$onBackgroundStorageReady$0(Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QUQJBqfSXOgHNvPh0GK4Y4odo1U(Lcom/transsion/camera/app/common/tzservice/TZServiceController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->lambda$onTZServiceConnected$1(Lcom/transsion/camera/app/common/storage/DataStore;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmCaptureSurfaceList(Lcom/transsion/camera/app/common/tzservice/TZServiceController;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->mCaptureSurfaceList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/transsion/camera/app/common/tzservice/TZServiceController;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHighQualityMediaSaverListener(Lcom/transsion/camera/app/common/tzservice/TZServiceController;)Lcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->mHighQualityMediaSaverListener:Lcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnCaptureProgressListener(Lcom/transsion/camera/app/common/tzservice/TZServiceController;)Lcom/transsion/camera/app/common/taps/OnCaptureProgressListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->mOnCaptureProgressListener:Lcom/transsion/camera/app/common/taps/OnCaptureProgressListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnHighQualityJpegAvailableListener(Lcom/transsion/camera/app/common/tzservice/TZServiceController;)Lcom/transsion/camera/app/common/taps/OnHighQualityJpegAvailableListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->mOnHighQualityJpegAvailableListener:Lcom/transsion/camera/app/common/taps/OnHighQualityJpegAvailableListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmShot2ShotCallback(Lcom/transsion/camera/app/common/tzservice/TZServiceController;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->mShot2ShotCallback:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetSurface(Lcom/transsion/camera/app/common/tzservice/TZServiceController;I)Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->getSurface(I)Lcom/transsion/camera/app/common/mode/CaptureSurface;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 44
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "TZServiceController"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x0

    .line 88
    sput-object v0, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->sInstance:Lcom/transsion/camera/app/common/tzservice/TZServiceController;

    return-void
.end method

.method private constructor <init>(Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 6

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->mSupportModes:Ljava/util/Set;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->mCaptureSurfaceList:Ljava/util/List;

    .line 59
    new-instance v0, Lcom/transsion/camera/app/common/tzservice/TZServiceController$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/tzservice/TZServiceController$1;-><init>(Lcom/transsion/camera/app/common/tzservice/TZServiceController;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->mHighQualityMediaSaverListener:Lcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->mTZService:Lcom/transsion/camera/app/common/tzservice/ITZService;

    .line 375
    new-instance v0, Lcom/transsion/camera/app/common/tzservice/TZServiceController$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/tzservice/TZServiceController$2;-><init>(Lcom/transsion/camera/app/common/tzservice/TZServiceController;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->mTZEventCallback:Lcom/transsion/camera/app/common/tzservice/ITZService$ITZServiceCallback;

    .line 93
    invoke-static {}, Lcom/transsion/camera/app_info/AppInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/app/common/R$bool;->tz_service_support:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 94
    sget-object v1, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TZServiceController:  processName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", userid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-static {}, Lcom/transsion/camera/utils/FileUtil;->getUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", support: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 94
    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_87

    .line 97
    invoke-static {}, Lcom/transsion/camera/utils/FileUtil;->getUserId()I

    move-result v0

    const/16 v1, 0x3e7

    if-eq v0, v1, :cond_87

    .line 98
    invoke-static {}, Lcom/transsion/camera/app_info/AppInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_87

    const/4 v0, 0x0

    .line 99
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "com.transsion.camera.feature.tzservice.TZServiceProxy"

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/tzservice/ITZService;

    iput-object v0, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->mTZService:Lcom/transsion/camera/app/common/tzservice/ITZService;

    .line 101
    :cond_87
    iget-object v0, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->mTZService:Lcom/transsion/camera/app/common/tzservice/ITZService;

    if-nez v0, :cond_8c

    return-void

    .line 104
    :cond_8c
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->onTZServiceConnected(Lcom/transsion/camera/app/common/storage/DataStore;)V

    return-void
.end method

.method public static createInstance(Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 2

    .line 108
    sget-object v0, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->sInstance:Lcom/transsion/camera/app/common/tzservice/TZServiceController;

    if-nez v0, :cond_b

    .line 109
    new-instance v0, Lcom/transsion/camera/app/common/tzservice/TZServiceController;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/tzservice/TZServiceController;-><init>(Lcom/transsion/camera/app/common/storage/DataStore;)V

    sput-object v0, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->sInstance:Lcom/transsion/camera/app/common/tzservice/TZServiceController;

    :cond_b
    return-void
.end method

.method public static getInstance()Lcom/transsion/camera/app/common/tzservice/TZServiceController;
    .registers 1

    .line 256
    sget-object v0, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->sInstance:Lcom/transsion/camera/app/common/tzservice/TZServiceController;

    return-object v0
.end method

.method private getSurface(I)Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .registers 6

    .line 428
    iget-object v0, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->mCaptureSurfaceList:Ljava/util/List;

    monitor-enter v0

    .line 429
    :try_start_3
    iget-object p0, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->mCaptureSurfaceList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/mode/CaptureSurface;

    .line 430
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getId()I

    move-result v2

    if-ne p1, v2, :cond_9

    .line 431
    sget-object p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSurface , surface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " ,surfaceId :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 432
    monitor-exit v0

    return-object v1

    :catchall_47
    move-exception p0

    goto :goto_4c

    .line 435
    :cond_49
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :goto_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_3 .. :try_end_4d} :catchall_47

    throw p0
.end method

.method private initSupportModes([I)V
    .registers 6

    if-eqz p1, :cond_19

    .line 142
    iget-object v0, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->mSupportModes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 143
    array-length v0, p1

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_19

    aget v2, p1, v1

    .line 144
    iget-object v3, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->mSupportModes:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_19
    return-void
.end method

.method private initSupportModesFromDataStore(Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 5

    if-eqz p1, :cond_4a

    .line 129
    const-string v0, ""

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "tz_support_modes"

    invoke-virtual {p1, v2, v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 130
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 131
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/ConfigFlow$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/transsion/camera/app/ConfigFlow$$ExternalSyntheticLambda0;-><init>()V

    .line 132
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 133
    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    .line 134
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->initSupportModes([I)V

    .line 135
    sget-object p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initSupportModesFromSetting: modes = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_4a
    return-void
.end method

.method private initSupportModesFromService(Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 5

    .line 114
    iget-object v0, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->mTZService:Lcom/transsion/camera/app/common/tzservice/ITZService;

    if-eqz v0, :cond_5a

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/tzservice/ITZService;->hasTZService(Z)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 115
    iget-object v0, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->mTZService:Lcom/transsion/camera/app/common/tzservice/ITZService;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/tzservice/ITZService;->getOffPeakModeSupportCfg()[I

    move-result-object v0

    .line 116
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->initSupportModes([I)V

    if-eqz p1, :cond_5a

    .line 117
    invoke-static {v0}, Lcom/transsion/camera/utils/ArrayUtils;->isEmpty([I)Z

    move-result p0

    if-nez p0, :cond_5a

    .line 118
    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/app/ConfigFlow$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/transsion/camera/app/ConfigFlow$$ExternalSyntheticLambda2;-><init>()V

    .line 119
    invoke-interface {p0, v0}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object p0

    const-string v0, ","

    .line 120
    invoke-static {v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 121
    const-string/jumbo v0, "tz_support_modes"

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, p0, v2, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 122
    sget-object p1, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initSupportModesFromService: modes = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_5a
    return-void
.end method

.method private synthetic lambda$onBackgroundStorageReady$0(Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager;)V
    .registers 2

    .line 168
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->onBackgroundStorageReady(Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager;)V

    return-void
.end method

.method private synthetic lambda$onTZServiceConnected$1(Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 2

    .line 250
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->onTZServiceConnected(Lcom/transsion/camera/app/common/storage/DataStore;)V

    return-void
.end method

.method private onTZServiceConnected(Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 4

    .line 234
    iget-object v0, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->mSupportModes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 235
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->initSupportModesFromDataStore(Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 237
    :cond_b
    iget-object v0, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->mTZService:Lcom/transsion/camera/app/common/tzservice/ITZService;

    if-eqz v0, :cond_44

    invoke-interface {v0}, Lcom/transsion/camera/app/common/tzservice/ITZService;->hasTZService()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 238
    iget-object v0, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->mSupportModes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 239
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->initSupportModesFromService(Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 241
    :cond_20
    iget-object p1, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->mTZService:Lcom/transsion/camera/app/common/tzservice/ITZService;

    iget-object v0, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->mTZEventCallback:Lcom/transsion/camera/app/common/tzservice/ITZService$ITZServiceCallback;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/tzservice/ITZService;->setTZServiceCallback(Lcom/transsion/camera/app/common/tzservice/ITZService$ITZServiceCallback;)V

    .line 242
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "TZCaptureThread"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 244
    new-instance v0, Lcom/transsion/camera/app/common/tzservice/TZServiceController$TZHandler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/app/common/tzservice/TZServiceController$TZHandler;-><init>(Lcom/transsion/camera/app/common/tzservice/TZServiceController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->mHandler:Landroid/os/Handler;

    .line 245
    sget-object p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onTZServiceConnected: connect success"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 247
    :cond_44
    iget-object v0, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->mMainHandler:Landroid/os/Handler;

    if-nez v0, :cond_53

    .line 248
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->mMainHandler:Landroid/os/Handler;

    .line 250
    :cond_53
    iget-object v0, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/app/common/tzservice/TZServiceController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/app/common/tzservice/TZServiceController$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/common/tzservice/TZServiceController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    const-wide/16 p0, 0x1f4

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 251
    sget-object p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onTZServiceConnected: retry connect tzservice"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addCaptureSurface(Lcom/transsion/camera/app/common/mode/CaptureSurface;)V
    .registers 13

    .line 289
    iget-object v0, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->mCaptureSurfaceList:Ljava/util/List;

    monitor-enter v0

    .line 290
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 291
    iget-object v3, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->mCaptureSurfaceList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 292
    :cond_d
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_61

    .line 293
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/app/common/mode/CaptureSurface;

    .line 294
    invoke-virtual {v4}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getPreReleaseTime()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-eqz v7, :cond_d

    sub-long v7, v1, v5

    const-wide/16 v9, 0x4e20

    cmp-long v7, v7, v9

    if-lez v7, :cond_d

    .line 296
    sget-object v7, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "removeCaptureSurface, currentTime: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", preReleaseTime: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", surface: "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 298
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 299
    iget-object v5, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x3

    invoke-virtual {v5, v6, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_d

    :catchall_5f
    move-exception p0

    goto :goto_68

    .line 302
    :cond_61
    iget-object p0, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->mCaptureSurfaceList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    monitor-exit v0

    return-void

    :goto_68
    monitor-exit v0
    :try_end_69
    .catchall {:try_start_3 .. :try_end_69} :catchall_5f

    throw p0
.end method

.method public getBackgroundServiceType(I)Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;
    .registers 2

    .line 185
    iget-object p0, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->mSupportModes:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    .line 186
    sget-object p0, Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;->TZ_SERVICE:Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;

    return-object p0

    .line 187
    :cond_f
    sget-object p0, Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;->BG_SERVICE:Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager$BackgroundServiceType;

    return-object p0
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 1

    .line 261
    iget-object p0, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public isNeedASDShot2ShotSkipPolicy()Z
    .registers 2

    .line 271
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportBackgroundShot2shotSkipPolicy:Z

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->isSupport()Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public isNeedMuSlimeBodyShot2ShotSkipPolicy()Z
    .registers 2

    .line 276
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportBackgroundShot2shotSkipPolicy:Z

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->isSupport()Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public isNeedPortraitModeEnhanceShot2ShotSkipPolicy()Z
    .registers 2

    .line 281
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportBackgroundShot2shotSkipPolicy:Z

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->isSupport()Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public isNeedShotSkipByCTSTest()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public isReady()Z
    .registers 1

    .line 180
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->isTZServiceSupport()Z

    move-result p0

    return p0
.end method

.method public isShutterEnable(I)Z
    .registers 2

    .line 197
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->isSupportDefer(I)Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->isReady()Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method public isSupport()Z
    .registers 1

    .line 175
    iget-object p0, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->mTZService:Lcom/transsion/camera/app/common/tzservice/ITZService;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public isSupportDefer(I)Z
    .registers 2

    .line 192
    iget-object p0, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->mSupportModes:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isTZServiceSupport()Z
    .registers 1

    .line 285
    iget-object p0, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->mTZService:Lcom/transsion/camera/app/common/tzservice/ITZService;

    if-eqz p0, :cond_c

    invoke-interface {p0}, Lcom/transsion/camera/app/common/tzservice/ITZService;->hasTZService()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public onBackgroundStorageCreate(Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager;)V
    .registers 2

    .line 151
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager;->setBackgroundService(Lcom/transsion/camera/app/common/taps/IBackgroundController;)V

    .line 152
    iput-object p1, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->mOnHighQualityJpegAvailableListener:Lcom/transsion/camera/app/common/taps/OnHighQualityJpegAvailableListener;

    .line 153
    iput-object p1, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->mOnCaptureProgressListener:Lcom/transsion/camera/app/common/taps/OnCaptureProgressListener;

    return-void
.end method

.method public onBackgroundStorageInit(Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager;)V
    .registers 2

    .line 158
    iget-object p0, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->mTZService:Lcom/transsion/camera/app/common/tzservice/ITZService;

    if-eqz p0, :cond_7

    .line 159
    invoke-interface {p0}, Lcom/transsion/camera/app/common/tzservice/ITZService;->onBackgroundStorageInit()V

    :cond_7
    return-void
.end method

.method public onBackgroundStorageReady(Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager;)V
    .registers 4

    .line 165
    iget-object v0, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->mTZService:Lcom/transsion/camera/app/common/tzservice/ITZService;

    if-eqz v0, :cond_16

    .line 166
    invoke-interface {v0}, Lcom/transsion/camera/app/common/tzservice/ITZService;->onStorageReady()Z

    move-result v0

    if-nez v0, :cond_16

    .line 168
    iget-object v0, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/app/common/tzservice/TZServiceController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/app/common/tzservice/TZServiceController$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/common/tzservice/TZServiceController;Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager;)V

    const-wide/16 p0, 0x3e8

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_16
    return-void
.end method

.method public onHighQualityJpegFailed(J)V
    .registers 6

    .line 227
    iget-object v0, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2b

    .line 228
    sget-object v0, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHighQualityJpegFailed: timestamp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 229
    iget-object p0, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/transsion/camera/app/common/tzservice/TZEvent;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/transsion/camera/app/common/tzservice/TZEvent;-><init>([BJI)V

    const/4 p1, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_2b
    return-void
.end method

.method public onLowQualityJpegSaved(JLjava/lang/String;)V
    .registers 5

    .line 222
    const-string v0, ""

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->setMappingInfo(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onThumbnailClicked()V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 202
    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->setTZCapConfig(JII)V

    return-void
.end method

.method public removeCaptureSurface(Lcom/transsion/camera/app/common/mode/CaptureSurface;)V
    .registers 5

    .line 307
    sget-object v0, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeCaptureSurface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->mCaptureSurfaceList:Ljava/util/List;

    monitor-enter v0

    .line 309
    :try_start_19
    iget-object p0, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->mCaptureSurfaceList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 310
    monitor-exit v0

    return-void

    :catchall_20
    move-exception p0

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_20

    throw p0
.end method

.method public setAppIOOperationStart(II)V
    .registers 4

    .line 213
    iget-object v0, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->mTZService:Lcom/transsion/camera/app/common/tzservice/ITZService;

    if-eqz v0, :cond_10

    invoke-interface {v0}, Lcom/transsion/camera/app/common/tzservice/ITZService;->hasTZService()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 214
    iget-object p0, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->mTZService:Lcom/transsion/camera/app/common/tzservice/ITZService;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/common/tzservice/ITZService;->setAppIOOperationStart(II)V

    return-void

    .line 216
    :cond_10
    sget-object p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "setAppIOOperationStart: connect mTZService failed"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setMappingInfo(JLjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 415
    iget-object v0, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->mTZService:Lcom/transsion/camera/app/common/tzservice/ITZService;

    if-eqz v0, :cond_10

    invoke-interface {v0}, Lcom/transsion/camera/app/common/tzservice/ITZService;->hasTZService()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 416
    iget-object p0, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->mTZService:Lcom/transsion/camera/app/common/tzservice/ITZService;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/tzservice/ITZService;->setMappingInfo(JLjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 418
    :cond_10
    sget-object p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "setMappingInfo: connect mTZService failed"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setScreenState(I)V
    .registers 3

    .line 407
    iget-object v0, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->mTZService:Lcom/transsion/camera/app/common/tzservice/ITZService;

    if-eqz v0, :cond_10

    invoke-interface {v0}, Lcom/transsion/camera/app/common/tzservice/ITZService;->hasTZService()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 408
    iget-object p0, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->mTZService:Lcom/transsion/camera/app/common/tzservice/ITZService;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/tzservice/ITZService;->setScreenState(I)V

    return-void

    .line 410
    :cond_10
    sget-object p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "setScreenState: connect mTZService failed"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setShot2ShotCallback(Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;)V
    .registers 3

    .line 424
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->mShot2ShotCallback:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setTZCapConfig(JII)V
    .registers 6

    .line 399
    iget-object v0, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->mTZService:Lcom/transsion/camera/app/common/tzservice/ITZService;

    if-eqz v0, :cond_10

    invoke-interface {v0}, Lcom/transsion/camera/app/common/tzservice/ITZService;->hasTZService()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 400
    iget-object p0, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->mTZService:Lcom/transsion/camera/app/common/tzservice/ITZService;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/tzservice/ITZService;->setTZCapConfig(JII)V

    return-void

    .line 402
    :cond_10
    sget-object p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "setTZCapConfig: connect mTZService failed"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setTapCapConfig(JII)V
    .registers 5

    .line 208
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->setTZCapConfig(JII)V

    return-void
.end method
