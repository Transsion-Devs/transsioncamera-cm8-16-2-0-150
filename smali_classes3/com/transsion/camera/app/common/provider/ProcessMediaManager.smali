.class public final Lcom/transsion/camera/app/common/provider/ProcessMediaManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final mCaptureInfoList:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private static mCaptureStartNumber:I

.field private static mIsProcessingUri:Z

.field private static final mProcessMediaList:Ljava/util/List;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$YsXq0rNPtFSwRCSZGPd3-StJN3A(Lcom/transsion/camera/app/common/provider/ProcessMediaItem;)Ljava/lang/String;
    .registers 1

    .line 119
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->getUri()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$oKx0AVloh_Ej9tCDYMRZDtDMnf0(Ljava/lang/String;)V
    .registers 1

    .line 422
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->removeProcessingUri(Landroid/net/Uri;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 37
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ProcessMediaManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mProcessMediaList:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mCaptureInfoList:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    .line 42
    sput-boolean v0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mIsProcessingUri:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static applicationOnCreate()V
    .registers 4

    .line 420
    invoke-static {}, Lcom/transsion/camera/app/common/provider/ProcessMediaDataManager;->loadData()Ljava/util/Set;

    move-result-object v0

    .line 421
    sget-object v1, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applicationOnCreate() called data = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 422
    new-instance v1, Lcom/transsion/camera/app/common/provider/ProcessMediaManager$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 423
    invoke-static {}, Lcom/transsion/camera/app/common/provider/ProcessMediaDataManager;->clearData()V

    return-void
.end method

.method private clearProcessMedia(Ljava/util/function/Predicate;)V
    .registers 8

    .line 96
    const-string p0, "removeProcessingUri : "

    if-nez p1, :cond_3c

    .line 97
    sget-object p1, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mProcessMediaList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;

    .line 98
    sget-object v1, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->removeProcessingUri(Landroid/net/Uri;)V

    goto :goto_a

    .line 101
    :cond_36
    sget-object p0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mProcessMediaList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void

    .line 103
    :cond_3c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    sget-object v1, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mProcessMediaList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_47
    :goto_47
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;

    .line 105
    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 106
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_47

    .line 109
    :cond_5d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x0

    :goto_62
    if-ge v1, p1, :cond_8c

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;

    .line 110
    sget-object v3, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 111
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->removeProcessingUri(Landroid/net/Uri;)V

    goto :goto_62

    .line 113
    :cond_8c
    sget-object p0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mProcessMediaList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static getProcessStatus()Z
    .registers 3

    .line 298
    sget-object v0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getProcessStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mIsProcessingUri:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 299
    sget-boolean v0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mIsProcessingUri:Z

    return v0
.end method

.method public static declared-synchronized getProcessingMedia()Ljava/util/List;
    .registers 2

    const-class v0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    monitor-enter v0

    .line 53
    :try_start_3
    sget-object v1, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mProcessMediaList:Ljava/util/List;

    invoke-static {v1}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    monitor-exit v0

    return-object v1

    :catchall_b
    move-exception v1

    :try_start_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v1
.end method

.method public static getProcessingMediaNumber()I
    .registers 1

    .line 57
    invoke-static {}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->getProcessingMedia()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method private static removeProcessingUri(Landroid/net/Uri;)V
    .registers 5

    .line 413
    :try_start_0
    sget-object v0, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception v0

    .line 415
    sget-object v1, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to remove uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private saveProcessMediaData()V
    .registers 2

    .line 118
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mEnableBgServiceDisorderImage:Z

    if-nez p0, :cond_9

    return-void

    .line 119
    :cond_9
    sget-object p0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mProcessMediaList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcom/transsion/camera/app/common/provider/ProcessMediaDataManager;->saveData(Ljava/util/List;)V

    return-void
.end method

.method public static setProcessStatus(Z)V
    .registers 4

    .line 293
    sget-object v0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProcessStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 294
    sput-boolean p0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mIsProcessingUri:Z

    return-void
.end method


# virtual methods
.method public add(Lcom/transsion/camera/app/common/provider/ProcessMediaItem;J)Z
    .registers 8

    .line 151
    const-class v0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    monitor-enter v0

    .line 152
    :try_start_3
    sget-object v1, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->setToGalleryTimestamp(J)V

    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add getToGalleryTimestamp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 155
    sget-object p2, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mProcessMediaList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    invoke-direct {p0}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->saveProcessMediaData()V

    .line 157
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->getMediaStoreId()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->notifyProcessingUri(J)V

    const/4 p0, 0x1

    .line 158
    monitor-exit v0

    return p0

    :catchall_42
    move-exception p0

    .line 159
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_42

    throw p0
.end method

.method public addCaptureThumbInfo(Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;)V
    .registers 6

    .line 303
    const-class p0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    monitor-enter p0

    .line 304
    :try_start_3
    sget-object v0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mCaptureInfoList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    sget-object v1, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addCaptureInfo,info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",size: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 306
    monitor-exit p0

    return-void

    :catchall_2c
    move-exception p1

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw p1
.end method

.method public getAllCaptureThumbInfo()Ljava/util/List;
    .registers 2

    .line 364
    const-class p0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    monitor-enter p0

    .line 365
    :try_start_3
    sget-object v0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mCaptureInfoList:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-exit p0

    return-object v0

    :catchall_7
    move-exception v0

    .line 366
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public getFirstAndPreRemove()Lcom/transsion/camera/app/common/provider/ProcessMediaItem;
    .registers 6

    .line 179
    const-class p0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    monitor-enter p0

    .line 180
    :try_start_3
    sget-object v0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mCaptureInfoList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_31

    const/4 v1, 0x0

    .line 181
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;

    iget v0, v0, Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;->thumbnilType:I

    .line 182
    sget-object v1, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFirstAndPreRemove type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez v0, :cond_38

    .line 184
    monitor-exit p0

    return-object v2

    :catchall_2f
    move-exception v0

    goto :goto_62

    .line 187
    :cond_31
    sget-object v0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "getFirstAndPreRemove, mCaptureInfoList is null!!!"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 190
    :cond_38
    sget-object v0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mProcessMediaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_59

    .line 191
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_44
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;

    .line 192
    iget-boolean v3, v1, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->mIsPreProcessed:Z

    if-nez v3, :cond_44

    const/4 v0, 0x1

    .line 193
    iput-boolean v0, v1, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->mIsPreProcessed:Z

    .line 194
    monitor-exit p0

    return-object v1

    .line 198
    :cond_59
    sget-object v0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "getFirstAndPreRemove return null"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 200
    monitor-exit p0

    return-object v2

    .line 201
    :goto_62
    monitor-exit p0
    :try_end_63
    .catchall {:try_start_3 .. :try_end_63} :catchall_2f

    throw v0
.end method

.method public getFirstCaptureThumbInfo(Z)Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;
    .registers 5

    .line 382
    const-class p0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    monitor-enter p0

    .line 383
    :try_start_3
    sget-object v0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mCaptureInfoList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;

    if-nez p1, :cond_1b

    .line 385
    monitor-exit p0

    return-object v1

    :catchall_19
    move-exception p1

    goto :goto_32

    .line 386
    :cond_1b
    iget v2, v1, Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;->thumbnilType:I

    if-lez v2, :cond_9

    iget-boolean v2, v1, Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;->preProcessed:Z

    if-nez v2, :cond_9

    const/4 p1, 0x1

    .line 387
    iput-boolean p1, v1, Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;->preProcessed:Z

    .line 388
    monitor-exit p0

    return-object v1

    .line 392
    :cond_28
    sget-object p1, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "getFirstCaptureThumbInfo, mCaptureInfoList is null!!!"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 393
    monitor-exit p0

    return-object p1

    .line 394
    :goto_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_19

    throw p1
.end method

.method public getLatestCaptureThumbInfo()Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;
    .registers 3

    .line 370
    const-class p0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    monitor-enter p0

    .line 371
    :try_start_3
    sget-object v0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mCaptureInfoList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_17

    add-int/lit8 v1, v1, -0x1

    .line 373
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;

    monitor-exit p0

    return-object v0

    :catchall_15
    move-exception v0

    goto :goto_21

    .line 376
    :cond_17
    sget-object v0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "getLatestCaptureThumbInfo, mCaptureInfoList is null!!!"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 377
    monitor-exit p0

    return-object v0

    .line 378
    :goto_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_15

    throw v0
.end method

.method public getProcessMediaItem(J)Lcom/transsion/camera/app/common/provider/ProcessMediaItem;
    .registers 9

    .line 233
    sget-object p0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getProcessMediaItem timestamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 234
    const-class v0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    monitor-enter v0

    .line 235
    :try_start_19
    sget-object v1, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mCaptureInfoList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_46

    const/4 v2, 0x0

    .line 236
    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;

    iget v1, v1, Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;->thumbnilType:I

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getProcessMediaItem type: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez v1, :cond_4b

    .line 239
    monitor-exit v0

    return-object v3

    :catchall_43
    move-exception p0

    goto/16 :goto_d4

    .line 242
    :cond_46
    const-string v1, "getProcessMediaItem, mCaptureInfoList is null!!!"

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 245
    :cond_4b
    sget-object v1, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mProcessMediaList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c6

    .line 246
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_57
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_8e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;

    .line 247
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->getTimestamp()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_57

    .line 248
    iput-boolean v2, v1, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->mIsPreProcessed:Z

    .line 249
    sget-object p0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProcessMediaItem() called with: 1 timestamp = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "], item = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 250
    monitor-exit v0

    return-object v1

    .line 253
    :cond_8e
    sget-object p0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mProcessMediaList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_94
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_cb

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;

    .line 254
    iget-boolean v4, v1, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->mIsPreProcessed:Z

    if-nez v4, :cond_94

    .line 255
    iput-boolean v2, v1, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->mIsPreProcessed:Z

    .line 256
    sget-object p0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProcessMediaItem() called with: 2 timestamp = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "], item = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 257
    monitor-exit v0

    return-object v1

    .line 261
    :cond_c6
    const-string p1, "getProcessMediaItem, mProcessMediaList is null!!!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 263
    :cond_cb
    sget-object p0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "getProcessMediaItem return null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 264
    monitor-exit v0

    return-object v3

    .line 265
    :goto_d4
    monitor-exit v0
    :try_end_d5
    .catchall {:try_start_19 .. :try_end_d5} :catchall_43

    throw p0
.end method

.method public getProcessMediaItem(Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;)Lcom/transsion/camera/app/common/provider/ProcessMediaItem;
    .registers 6

    .line 163
    const-class p0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    monitor-enter p0

    .line 164
    :try_start_3
    sget-object v0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mProcessMediaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;

    .line 165
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->getCaptureThumbInfo()Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;->id:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 166
    monitor-exit p0

    return-object v1

    :catchall_25
    move-exception p1

    goto :goto_2a

    :cond_27
    const/4 p1, 0x0

    .line 169
    monitor-exit p0

    return-object p1

    .line 170
    :goto_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_25

    throw p1
.end method

.method public getRemainingMediaSize()I
    .registers 4

    .line 398
    const-class p0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    monitor-enter p0

    .line 400
    :try_start_3
    sget-object v0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mProcessMediaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_25

    .line 401
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;

    .line 402
    iget-boolean v1, v1, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->mIsPreProcessed:Z

    if-nez v1, :cond_10

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :catchall_23
    move-exception v0

    goto :goto_27

    .line 407
    :cond_25
    monitor-exit p0

    return v2

    .line 408
    :goto_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_23

    throw v0
.end method

.method public notifyProcessingUri(J)V
    .registers 4

    .line 287
    const-string v0, "external"

    invoke-static {v0, p1, p2}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object p1

    .line 288
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 289
    sget-object p0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notifyProcessingUri: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onCaptureEnded(Lcom/transsion/camera/app/common/provider/ProcessMediaItem;Z)V
    .registers 8

    .line 131
    const-class v0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    monitor-enter v0

    if-eqz p2, :cond_e

    .line 133
    :try_start_5
    sget v1, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mCaptureStartNumber:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mCaptureStartNumber:I

    goto :goto_e

    :catchall_c
    move-exception p0

    goto :goto_4b

    .line 135
    :cond_e
    :goto_e
    sget-object v1, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCaptureEnded: -- mCaptureStartNumber = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mCaptureStartNumber:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", hasCaptureStart = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", mediaStoreId = "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->getMediaStoreId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 135
    invoke-static {v1, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 137
    sget-object p2, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mProcessMediaList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 138
    invoke-direct {p0}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->saveProcessMediaData()V

    .line 139
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->getMediaStoreId()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->notifyProcessingUri(J)V

    .line 140
    monitor-exit v0

    return-void

    :goto_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_5 .. :try_end_4c} :catchall_c

    throw p0
.end method

.method public onCaptureStarted(J)V
    .registers 6

    .line 123
    const-class p0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    monitor-enter p0

    .line 124
    :try_start_3
    sget v0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mCaptureStartNumber:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mCaptureStartNumber:I

    .line 126
    sget-object v0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureStarted: ++ mCaptureStartNumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mCaptureStartNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " timestamp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 127
    monitor-exit p0

    return-void

    :catchall_2b
    move-exception p1

    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw p1
.end method

.method public onCaptureSurfaceReleased(Lcom/transsion/camera/app/common/mode/CaptureSurface;)V
    .registers 8

    .line 326
    sget-object v0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureSurfaceReleased: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 327
    const-class v0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    monitor-enter v0

    .line 328
    :try_start_19
    sget-object v1, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mProcessMediaList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 329
    :cond_1f
    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_88

    .line 330
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;

    if-nez v2, :cond_3a

    .line 332
    sget-object v2, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "next is null"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 333
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1f

    :catchall_38
    move-exception p0

    goto :goto_8d

    .line 336
    :cond_3a
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->getCaptureThumbInfo()Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;

    move-result-object v3

    if-nez v3, :cond_4b

    .line 338
    sget-object v2, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "captureThumbInfo is null"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 339
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1f

    .line 342
    :cond_4b
    iget v4, v3, Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;->captureSurfaceId:I

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->getId()I

    move-result v5

    if-ne v4, v5, :cond_1f

    .line 343
    iget-boolean v4, v2, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->mSaving:Z

    if-nez v4, :cond_1f

    .line 344
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 345
    sget-object v4, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mCaptureInfoList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 347
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->getUri()Landroid/net/Uri;

    move-result-object v2

    .line 348
    sget-object v3, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeProcessingUri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v2, :cond_1f

    .line 350
    invoke-static {v2}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->removeProcessingUri(Landroid/net/Uri;)V

    .line 351
    invoke-static {}, Lcom/transsion/camera/app/common/mode/AppUICache;->getAppUI()Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 353
    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUI;->loadLatestThumbnail()V

    goto :goto_1f

    .line 359
    :cond_88
    invoke-direct {p0}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->saveProcessMediaData()V

    .line 360
    monitor-exit v0

    return-void

    :goto_8d
    monitor-exit v0
    :try_end_8e
    .catchall {:try_start_19 .. :try_end_8e} :catchall_38

    throw p0
.end method

.method public queryProcessMediaItem(J)Lcom/transsion/camera/app/common/provider/ProcessMediaItem;
    .registers 9

    .line 205
    sget-object p0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryProcessMediaItem timestamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 206
    const-class v0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    monitor-enter v0

    .line 207
    :try_start_19
    sget-object v1, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mCaptureInfoList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_45

    const/4 v2, 0x0

    .line 208
    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;

    iget v1, v1, Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;->thumbnilType:I

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryProcessMediaItem type: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez v1, :cond_4a

    .line 211
    monitor-exit v0

    return-object v3

    :catchall_43
    move-exception p0

    goto :goto_98

    .line 214
    :cond_45
    const-string v1, "queryProcessMediaItem, mCaptureInfoList is null!!!"

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 217
    :cond_4a
    sget-object v1, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mProcessMediaList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8a

    .line 218
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_56
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;

    .line 219
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->getTimestamp()J

    move-result-wide v4

    cmp-long v2, v4, p1

    if-nez v2, :cond_56

    .line 220
    sget-object p0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryProcessMediaItem called with: 1 timestamp = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "], item = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 221
    monitor-exit v0

    return-object v1

    .line 225
    :cond_8a
    const-string p1, "queryProcessMediaItem, mProcessMediaList is null!!!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 227
    :cond_8f
    sget-object p0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "queryProcessMediaItem return null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 228
    monitor-exit v0

    return-object v3

    .line 229
    :goto_98
    monitor-exit v0
    :try_end_99
    .catchall {:try_start_19 .. :try_end_99} :catchall_43

    throw p0
.end method

.method public remove(Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;)V
    .registers 5

    .line 319
    const-class p0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    monitor-enter p0

    .line 320
    :try_start_3
    sget-object v0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mCaptureInfoList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 321
    sget-object v0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 322
    monitor-exit p0

    return-void

    :catchall_20
    move-exception p1

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw p1
.end method

.method public removeCaptureThumbInfo()V
    .registers 6

    .line 310
    const-class p0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    monitor-enter p0

    .line 311
    :try_start_3
    sget-object v0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mCaptureInfoList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_37

    const/4 v1, 0x0

    .line 312
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;

    .line 313
    sget-object v2, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeCaptureInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " , leftSize:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_37

    :catchall_35
    move-exception v0

    goto :goto_39

    .line 315
    :cond_37
    :goto_37
    monitor-exit p0

    return-void

    :goto_39
    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_35

    throw v0
.end method

.method public removeCaptureThumbInfo(J)V
    .registers 7

    .line 269
    sget-object p0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeCaptureThumbInfo() called with: timestamp = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 270
    const-class p0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    monitor-enter p0

    .line 271
    :try_start_1e
    sget-object v0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mCaptureInfoList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_72

    .line 272
    sget-object v0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mProcessMediaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_72

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;

    .line 273
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->getTimestamp()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_2c

    .line 274
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->getCaptureThumbInfo()Lcom/transsion/camera/app/common/mode/CaptureThumbInfo;

    move-result-object p1

    if-eqz p1, :cond_4e

    .line 276
    sget-object p2, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mCaptureInfoList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_4e

    :catchall_4c
    move-exception p1

    goto :goto_74

    .line 278
    :cond_4e
    :goto_4e
    sget-object p1, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "removeCaptureInfo: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mCaptureInfoList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", item = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 283
    :cond_72
    monitor-exit p0

    return-void

    :goto_74
    monitor-exit p0
    :try_end_75
    .catchall {:try_start_1e .. :try_end_75} :catchall_4c

    throw p1
.end method

.method public resume()V
    .registers 9

    .line 61
    const-class v0, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;

    monitor-enter v0

    .line 62
    :try_start_3
    sget-object v1, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mProcessMediaList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 63
    sget-object v3, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mCaptureInfoList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    .line 64
    sget-object v5, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[resume]  mCaptureStartNumber:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mCaptureStartNumber:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", processMediaSize:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " , captureInfoSize:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v5

    iget-boolean v5, v5, Lcom/transsion/camera/utils/CustomConfigUtil;->mPhotosSupportProcessingApi:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_68

    .line 66
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->isOffLineSessionSupport()Z

    move-result v5

    if-eqz v5, :cond_68

    .line 67
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getOfflineSessionCount()I

    move-result v5

    const/4 v7, 0x1

    if-ge v5, v7, :cond_68

    if-lez v2, :cond_5e

    const/4 v1, 0x0

    .line 71
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->clearProcessMedia(Ljava/util/function/Predicate;)V

    goto :goto_5e

    :catchall_5c
    move-exception p0

    goto :goto_be

    :cond_5e
    :goto_5e
    if-lez v4, :cond_63

    .line 74
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 76
    :cond_63
    sput v6, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mCaptureStartNumber:I

    .line 77
    sput-boolean v6, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mIsProcessingUri:Z

    goto :goto_b9

    .line 79
    :cond_68
    sget v3, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mCaptureStartNumber:I

    if-le v2, v3, :cond_b9

    .line 80
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-interface {v1, v3, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 81
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_78
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;

    .line 82
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->removeProcessingUri(Landroid/net/Uri;)V

    goto :goto_78

    .line 84
    :cond_8c
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 85
    sput v6, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mCaptureStartNumber:I

    .line 86
    sput-boolean v6, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mIsProcessingUri:Z

    .line 87
    sget-object v1, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "after resume: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mCaptureStartNumber:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->mProcessMediaList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 91
    :cond_b9
    :goto_b9
    invoke-direct {p0}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->saveProcessMediaData()V

    .line 92
    monitor-exit v0

    return-void

    :goto_be
    monitor-exit v0
    :try_end_bf
    .catchall {:try_start_3 .. :try_end_bf} :catchall_5c

    throw p0
.end method
