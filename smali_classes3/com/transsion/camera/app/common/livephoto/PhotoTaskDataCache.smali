.class public Lcom/transsion/camera/app/common/livephoto/PhotoTaskDataCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/livephoto/PhotoTaskDataCache$SingletonHolder;
    }
.end annotation


# static fields
.field private static final mTag:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mPhotoTaskHashMap:Ljava/util/HashMap;

.field private final mTaskLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 8
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "PhotoTaskCache"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/livephoto/PhotoTaskDataCache;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/livephoto/PhotoTaskDataCache;->mPhotoTaskHashMap:Ljava/util/HashMap;

    .line 11
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/livephoto/PhotoTaskDataCache;->mTaskLock:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/common/livephoto/PhotoTaskDataCache-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskDataCache;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/transsion/camera/app/common/livephoto/PhotoTaskDataCache;
    .registers 1

    .line 20
    invoke-static {}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskDataCache$SingletonHolder;->-$$Nest$sfgetINSTANCE()Lcom/transsion/camera/app/common/livephoto/PhotoTaskDataCache;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getPhotoTaskData(J)Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;
    .registers 6

    .line 35
    iget-object v0, p0, Lcom/transsion/camera/app/common/livephoto/PhotoTaskDataCache;->mTaskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 36
    :try_start_3
    iget-object p0, p0, Lcom/transsion/camera/app/common/livephoto/PhotoTaskDataCache;->mPhotoTaskHashMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;

    .line 37
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_2f

    .line 38
    sget-object v0, Lcom/transsion/camera/app/common/livephoto/PhotoTaskDataCache;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPhotoTaskData, photoTaskData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " timestamp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p0

    :catchall_2f
    move-exception p0

    .line 37
    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw p0
.end method

.method public putPhotoTaskData(JLcom/transsion/camera/app/common/livephoto/PhotoTaskData;)V
    .registers 8

    .line 24
    iget-object v0, p0, Lcom/transsion/camera/app/common/livephoto/PhotoTaskDataCache;->mTaskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 25
    :try_start_3
    iget-object v1, p0, Lcom/transsion/camera/app/common/livephoto/PhotoTaskDataCache;->mPhotoTaskHashMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 26
    sget-object v1, Lcom/transsion/camera/app/common/livephoto/PhotoTaskDataCache;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "putPhotoTaskData : data for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " already existed !!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_2d

    :catchall_2b
    move-exception p0

    goto :goto_56

    .line 28
    :cond_2d
    :goto_2d
    sget-object v1, Lcom/transsion/camera/app/common/livephoto/PhotoTaskDataCache;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "putPhotoTaskData, photoTaskData: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " timestamp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 29
    iget-object p0, p0, Lcom/transsion/camera/app/common/livephoto/PhotoTaskDataCache;->mPhotoTaskHashMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    monitor-exit v0

    return-void

    :goto_56
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_3 .. :try_end_57} :catchall_2b

    throw p0
.end method

.method public removePhotoTaskData(J)V
    .registers 4

    .line 43
    iget-object v0, p0, Lcom/transsion/camera/app/common/livephoto/PhotoTaskDataCache;->mTaskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 44
    :try_start_3
    iget-object p0, p0, Lcom/transsion/camera/app/common/livephoto/PhotoTaskDataCache;->mPhotoTaskHashMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method
