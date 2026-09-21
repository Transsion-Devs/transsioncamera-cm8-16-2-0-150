.class Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundTaskScheduler$BackgroundTaskContainer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundTaskScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackgroundTaskContainer"
.end annotation


# instance fields
.field private final mTask:Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundTaskScheduler$CancellableTask;

.field final synthetic this$0:Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundTaskScheduler;


# direct methods
.method static bridge synthetic -$$Nest$mcancel(Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundTaskScheduler$BackgroundTaskContainer;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundTaskScheduler$BackgroundTaskContainer;->cancel()V

    return-void
.end method

.method private constructor <init>(Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundTaskScheduler;Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundTaskScheduler$CancellableTask;)V
    .registers 3

    .line 33
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundTaskScheduler$BackgroundTaskContainer;->this$0:Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundTaskScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundTaskScheduler$BackgroundTaskContainer;->mTask:Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundTaskScheduler$CancellableTask;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundTaskScheduler;Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundTaskScheduler$CancellableTask;Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundTaskScheduler-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundTaskScheduler$BackgroundTaskContainer;-><init>(Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundTaskScheduler;Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundTaskScheduler$CancellableTask;)V

    return-void
.end method

.method private cancel()V
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundTaskScheduler$BackgroundTaskContainer;->mTask:Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundTaskScheduler$CancellableTask;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundTaskScheduler$CancellableTask;->setCancelled()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 25
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundTaskScheduler$BackgroundTaskContainer;->this$0:Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundTaskScheduler;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundTaskScheduler;->-$$Nest$fgetmTaskList(Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundTaskScheduler;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 26
    :try_start_7
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundTaskScheduler$BackgroundTaskContainer;->this$0:Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundTaskScheduler;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundTaskScheduler;->-$$Nest$fgetmTaskList(Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundTaskScheduler;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 27
    invoke-static {}, Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundTaskScheduler;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    const-string v2, "This task does not exist in task list."

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1f

    :catchall_1d
    move-exception p0

    goto :goto_26

    .line 29
    :cond_1f
    :goto_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_1d

    .line 30
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundTaskScheduler$BackgroundTaskContainer;->mTask:Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundTaskScheduler$CancellableTask;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 29
    :goto_26
    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_1d

    throw p0
.end method
