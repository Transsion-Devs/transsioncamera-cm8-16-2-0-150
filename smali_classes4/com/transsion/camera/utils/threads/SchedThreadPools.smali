.class public Lcom/transsion/camera/utils/threads/SchedThreadPools;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/utils/threads/SchedThreadPools$InstanceHolder;
    }
.end annotation


# static fields
.field private static sScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance p0, Lcom/transsion/camera/utils/threads/WorkThreadFactory;

    const-string v0, "ScheduledExecutor"

    invoke-direct {p0, v0}, Lcom/transsion/camera/utils/threads/WorkThreadFactory;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-static {v0, p0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p0

    sput-object p0, Lcom/transsion/camera/utils/threads/SchedThreadPools;->sScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/utils/threads/SchedThreadPools-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/utils/threads/SchedThreadPools;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/transsion/camera/utils/threads/SchedThreadPools;
    .registers 2

    const-class v0, Lcom/transsion/camera/utils/threads/SchedThreadPools;

    monitor-enter v0

    .line 21
    :try_start_3
    invoke-static {}, Lcom/transsion/camera/utils/threads/SchedThreadPools$InstanceHolder;->-$$Nest$sfgetINSTANCE()Lcom/transsion/camera/utils/threads/SchedThreadPools;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_9

    monitor-exit v0

    return-object v1

    :catchall_9
    move-exception v1

    :try_start_a
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v1
.end method


# virtual methods
.method public schedule(Lcom/transsion/camera/utils/threads/WorkTask;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .registers 5

    .line 25
    sget-object p0, Lcom/transsion/camera/utils/threads/SchedThreadPools;->sScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p0, p1, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    return-object p0
.end method

.method public scheduleAtFixedRate(Lcom/transsion/camera/utils/threads/WorkTask;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .registers 7

    .line 29
    sget-object p0, Lcom/transsion/camera/utils/threads/SchedThreadPools;->sScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface/range {p0 .. p6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    return-object p0
.end method

.method public scheduleWithFixedDelay(Lcom/transsion/camera/utils/threads/WorkTask;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .registers 7

    .line 33
    sget-object p0, Lcom/transsion/camera/utils/threads/SchedThreadPools;->sScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface/range {p0 .. p6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    return-object p0
.end method
