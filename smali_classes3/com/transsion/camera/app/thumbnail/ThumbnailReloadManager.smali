.class public Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$BGMediaChangeListener;,
        Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$WorkHandler;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mBaseCameraActivity:Ljava/lang/ref/WeakReference;

.field private final mBgUriChangeIds:Ljava/util/Set;

.field private final mContentObservers:Landroid/util/LongSparseArray;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mIsPaused:Z

.field private final mLock:Ljava/lang/Object;

.field private mMediaChangeListener:Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$BGMediaChangeListener;

.field private mNeedReloadLatestThumbnail:Z

.field private mThumbnailImageUriObserver:Landroid/database/ContentObserver;

.field private mThumbnailUri:Landroid/net/Uri;

.field private mThumbnailVideoUriObserver:Landroid/database/ContentObserver;

.field private final mTranActivityTaskManager:Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;

.field private mUpdateThumbnailUriDelay:J

.field private final mUriChangedIds:Ljava/util/Set;

.field private mWorkHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$BANtuKgxy_FMHUh2LWw241diUz0(Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;Landroid/os/Handler;Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->lambda$onUpdateThumbnailUri$3(Landroid/os/Handler;Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MpPTzxLkbAzGc-2JBJnBYkjAPck(Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;Landroid/database/ContentObserver;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->lambda$registerThumbnailUriObserver$5(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public static synthetic $r8$lambda$N4CjcPd76mkW2mM2hib1C_V7adU(Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;Landroid/database/ContentObserver;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->lambda$registerThumbnailUriObserver$4(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public static synthetic $r8$lambda$P9rF73D9m7B6xsdc-3_PHC5P2_c(Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;Landroid/database/ContentObserver;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->lambda$onPause$0(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public static synthetic $r8$lambda$X0dHVztCYR63TW-Fq_88Vvg1bJ0(Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;Landroid/database/ContentObserver;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->lambda$unRegisterThumbnailUriObserver$6(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bFesH7YPez1X88_B7BFH-s8l3gc(Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;Ljava/lang/Long;)Landroid/database/ContentObserver;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->lambda$onUpdateThumbnailUri$1(Ljava/lang/Long;)Landroid/database/ContentObserver;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$eCDkmQC1kUrjuxqTmfsE0pfoTv8(Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;Landroid/os/Handler;Landroid/net/Uri;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->lambda$onMediaChanged$8(Landroid/os/Handler;Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eNrj_WaOIPXntRrUrT3MLiDZj7g(Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;Landroid/database/ContentObserver;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->lambda$unRegisterThumbnailUriObserver$7(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sXuCwjP3RBIeVyGboMrLB00h3d8(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .registers 4

    .line 179
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 180
    sget-object p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onUpdateThumbnailUri] unregisterContentObserver : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmBaseCameraActivity(Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->mBaseCameraActivity:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBgUriChangeIds(Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;)Ljava/util/Set;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->mBgUriChangeIds:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsPaused(Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->mIsPaused:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMediaChangeListener(Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;)Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$BGMediaChangeListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->mMediaChangeListener:Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$BGMediaChangeListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNeedReloadLatestThumbnail(Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->mNeedReloadLatestThumbnail:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUriChangedIds(Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;)Ljava/util/Set;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->mUriChangedIds:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmNeedReloadLatestThumbnail(Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->mNeedReloadLatestThumbnail:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUpdateThumbnailUriDelay(Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->mUpdateThumbnailUriDelay:J

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetThumbnailUri(Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;)Landroid/net/Uri;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->getThumbnailUri()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhasMultiWindow(Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->hasMultiWindow()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$monMediaChanged(Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;Landroid/net/Uri;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->onMediaChanged(Landroid/net/Uri;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mparseId(Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;Landroid/net/Uri;)J
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->parseId(Landroid/net/Uri;)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 31
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ThumbnailReload"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/BaseCameraActivity;)V
    .registers 3

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->mLock:Ljava/lang/Object;

    .line 40
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->mContentObservers:Landroid/util/LongSparseArray;

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->mUriChangedIds:Ljava/util/Set;

    .line 42
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->mBgUriChangeIds:Ljava/util/Set;

    .line 43
    new-instance v0, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->mTranActivityTaskManager:Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->mIsPaused:Z

    .line 58
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->mBaseCameraActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private getThumbnailUri()Landroid/net/Uri;
    .registers 2

    .line 239
    iget-object v0, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 240
    :try_start_3
    iget-object p0, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->mThumbnailUri:Landroid/net/Uri;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 241
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method private hasMultiWindow()Z
    .registers 4

    .line 277
    :try_start_0
    iget-object p0, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->mTranActivityTaskManager:Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;

    invoke-virtual {p0}, Lcom/transsion/hubsdk/api/app/TranActivityTaskManager;->hasMultiWindow()Z

    move-result p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    :catch_7
    move-exception p0

    .line 279
    sget-object v0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasMultiWindow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$onMediaChanged$8(Landroid/os/Handler;Landroid/net/Uri;)V
    .registers 8

    .line 250
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-gtz v2, :cond_b

    return-void

    :cond_b
    const/4 v2, 0x1

    .line 254
    invoke-virtual {p1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 255
    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 257
    :cond_15
    iget-object v3, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->mUriChangedIds:Ljava/util/Set;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 258
    iget-wide v0, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->mUpdateThumbnailUriDelay:J

    const-wide/16 v3, 0xc8

    add-long/2addr v0, v3

    const-wide/16 v3, 0x3e8

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->mUpdateThumbnailUriDelay:J

    .line 259
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 260
    sget-object p1, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onMediaChanged] uri : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", mUpdateThumbnailUriDelay : "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->mUpdateThumbnailUriDelay:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onPause$0(Landroid/database/ContentObserver;)V
    .registers 4

    .line 145
    iget-object p0, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 146
    sget-object p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onPause] unregisterContentObserver : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onUpdateThumbnailUri$1(Ljava/lang/Long;)Landroid/database/ContentObserver;
    .registers 5

    .line 174
    iget-object v0, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->mContentObservers:Landroid/util/LongSparseArray;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/ContentObserver;

    .line 175
    iget-object p0, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->mContentObservers:Landroid/util/LongSparseArray;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroid/util/LongSparseArray;->remove(J)V

    return-object v0
.end method

.method private synthetic lambda$onUpdateThumbnailUri$3(Landroid/os/Handler;Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .registers 6

    .line 183
    new-instance v0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$3;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$3;-><init>(Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;Landroid/os/Handler;)V

    const/4 p1, 0x0

    .line 194
    invoke-virtual {p2, p3, p1, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 195
    sget-object p1, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onUpdateThumbnailUri] registerContentObserver : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 196
    iget-object p0, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->mContentObservers:Landroid/util/LongSparseArray;

    invoke-static {p3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2, v0}, Landroid/util/LongSparseArray;->append(JLjava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$registerThumbnailUriObserver$4(Landroid/database/ContentObserver;)V
    .registers 4

    .line 208
    iget-object p0, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private synthetic lambda$registerThumbnailUriObserver$5(Landroid/database/ContentObserver;)V
    .registers 4

    .line 212
    iget-object p0, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private synthetic lambda$unRegisterThumbnailUriObserver$6(Landroid/database/ContentObserver;)V
    .registers 3

    .line 222
    iget-object v0, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 p1, 0x0

    .line 223
    iput-object p1, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->mThumbnailImageUriObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private synthetic lambda$unRegisterThumbnailUriObserver$7(Landroid/database/ContentObserver;)V
    .registers 3

    .line 226
    iget-object v0, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 p1, 0x0

    .line 227
    iput-object p1, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->mThumbnailVideoUriObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private onMediaChanged(Landroid/net/Uri;)V
    .registers 4

    .line 245
    iget-object v0, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->mWorkHandler:Landroid/os/Handler;

    if-nez v0, :cond_5

    return-void

    .line 249
    :cond_5
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v1, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$$ExternalSyntheticLambda9;-><init>(Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;Landroid/os/Handler;)V

    invoke-virtual {p1, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private parseId(Landroid/net/Uri;)J
    .registers 4

    .line 267
    :try_start_0
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide p0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_5

    return-wide p0

    :catch_5
    move-exception p0

    .line 270
    sget-object p1, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[parseId] error : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method private registerThumbnailUriObserver()V
    .registers 3

    .line 204
    iget-object v0, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->mContentResolver:Landroid/content/ContentResolver;

    if-nez v0, :cond_5

    return-void

    .line 207
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->mThumbnailImageUriObserver:Landroid/database/ContentObserver;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$$ExternalSyntheticLambda7;-><init>(Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 211
    iget-object v0, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->mThumbnailVideoUriObserver:Landroid/database/ContentObserver;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$$ExternalSyntheticLambda8;-><init>(Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private setThumbnailUri(Landroid/net/Uri;)V
    .registers 6

    .line 232
    iget-object v0, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 233
    :try_start_3
    sget-object v1, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setThumbnailUri] mThumbnailUri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 234
    iput-object p1, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->mThumbnailUri:Landroid/net/Uri;

    .line 235
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method private unRegisterThumbnailUriObserver()V
    .registers 3

    .line 218
    iget-object v0, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->mContentResolver:Landroid/content/ContentResolver;

    if-nez v0, :cond_5

    return-void

    .line 221
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->mThumbnailImageUriObserver:Landroid/database/ContentObserver;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 225
    iget-object v0, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->mThumbnailVideoUriObserver:Landroid/database/ContentObserver;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .registers 4

    .line 131
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 132
    sget-object v0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ThumbnailReloadManager] finalize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onCreate()V
    .registers 3

    .line 70
    iget-object v0, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->mBaseCameraActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/BaseCameraActivity;

    if-eqz v0, :cond_16

    .line 72
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 73
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->mContext:Landroid/content/Context;

    .line 75
    :cond_16
    iget-object v0, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1b

    return-void

    .line 79
    :cond_1b
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ThumbnailReload"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 81
    new-instance v1, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$WorkHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$WorkHandler;-><init>(Landroid/os/Looper;Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;)V

    iput-object v1, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->mWorkHandler:Landroid/os/Handler;

    .line 82
    new-instance v0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$1;

    iget-object v1, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->mWorkHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$1;-><init>(Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->mThumbnailImageUriObserver:Landroid/database/ContentObserver;

    .line 111
    new-instance v0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$2;

    iget-object v1, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->mWorkHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$2;-><init>(Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->mThumbnailVideoUriObserver:Landroid/database/ContentObserver;

    .line 126
    invoke-direct {p0}, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->registerThumbnailUriObserver()V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 155
    invoke-direct {p0}, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->unRegisterThumbnailUriObserver()V

    .line 156
    iget-object v0, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->mWorkHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    .line 157
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 158
    iget-object v0, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 159
    iput-object v1, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->mWorkHandler:Landroid/os/Handler;

    .line 161
    :cond_16
    iput-object v1, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method public onPause()V
    .registers 4

    const/4 v0, 0x1

    .line 141
    iput-boolean v0, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->mIsPaused:Z

    .line 142
    iget-object v0, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_27

    const/4 v0, 0x0

    .line 143
    :goto_8
    iget-object v1, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->mContentObservers:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 144
    iget-object v1, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->mContentObservers:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/ContentObserver;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$$ExternalSyntheticLambda6;-><init>(Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 150
    :cond_27
    iget-object v0, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->mContentObservers:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 151
    iget-object p0, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->mUriChangedIds:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public onResume()V
    .registers 2

    const/4 v0, 0x0

    .line 136
    iput-boolean v0, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->mIsPaused:Z

    .line 137
    iget-object p0, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->mBgUriChangeIds:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public onUpdateThumbnailUri(Landroid/net/Uri;Landroid/net/Uri;)V
    .registers 6

    .line 166
    sget-object v0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onUpdateThumbnailUri] lastUri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", newUri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 168
    iget-object v1, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->mWorkHandler:Landroid/os/Handler;

    .line 169
    invoke-direct {p0}, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->hasMultiWindow()Z

    move-result v2

    if-eqz v2, :cond_5b

    if-eqz v0, :cond_5b

    if-eqz v1, :cond_5b

    .line 170
    iget-object v2, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->mUriChangedIds:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 171
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v2, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$$ExternalSyntheticLambda2;-><init>()V

    .line 172
    invoke-virtual {p1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    new-instance v2, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;)V

    .line 173
    invoke-virtual {p1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    new-instance v2, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0}, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$$ExternalSyntheticLambda4;-><init>(Landroid/content/ContentResolver;)V

    .line 178
    invoke-virtual {p1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 182
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v2, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v1, v0}, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    invoke-virtual {p1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 200
    :cond_5b
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->setThumbnailUri(Landroid/net/Uri;)V

    return-void
.end method

.method public setMediaChangeListener(Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$BGMediaChangeListener;)V
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->mMediaChangeListener:Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$BGMediaChangeListener;

    return-void
.end method
