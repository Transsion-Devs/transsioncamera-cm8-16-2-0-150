.class public Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundTaskScheduler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundTaskScheduler$BackgroundTaskContainer;,
        Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundTaskScheduler$CancellableTask;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundTaskScheduler$BackgroundTaskContainer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmTaskList(Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundTaskScheduler;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundTaskScheduler;->mTaskList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundTaskScheduler;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 11
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "BackgroundTaskScheduler"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundTaskScheduler;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .registers 3

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundTaskScheduler;->mTaskList:Ljava/util/List;

    .line 47
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundTaskScheduler;->mExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public abortRemainingTasks()V
    .registers 3

    .line 51
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundTaskScheduler;->mTaskList:Ljava/util/List;

    monitor-enter v0

    .line 52
    :try_start_3
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundTaskScheduler;->mTaskList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundTaskScheduler$BackgroundTaskContainer;

    .line 53
    invoke-static {v1}, Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundTaskScheduler$BackgroundTaskContainer;->-$$Nest$mcancel(Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundTaskScheduler$BackgroundTaskContainer;)V

    goto :goto_9

    :catchall_19
    move-exception p0

    goto :goto_1d

    .line 55
    :cond_1b
    monitor-exit v0

    return-void

    :goto_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_19

    throw p0
.end method

.method public execute(Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundTaskScheduler$CancellableTask;)V
    .registers 5

    .line 59
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundTaskScheduler;->mTaskList:Ljava/util/List;

    monitor-enter v0

    .line 60
    :try_start_3
    new-instance v1, Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundTaskScheduler$BackgroundTaskContainer;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundTaskScheduler$BackgroundTaskContainer;-><init>(Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundTaskScheduler;Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundTaskScheduler$CancellableTask;Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundTaskScheduler-IA;)V

    .line 61
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundTaskScheduler;->mTaskList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundTaskScheduler;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 63
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public shutdown()V
    .registers 1

    .line 67
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundTaskScheduler;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method
