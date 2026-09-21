.class public abstract Lcom/ss/ugc/effectplatform/task/dag/DagTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbytekn/foundation/task/ITask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ugc/effectplatform/task/dag/DagTask$Builder;
    }
.end annotation


# instance fields
.field private final behindTasks:Ljava/util/HashSet;

.field private final dependTasks:Ljava/util/HashSet;

.field private exception:Ljava/lang/Exception;

.field private isDependTaskFailed:Z

.field private final lock:Lbytekn/foundation/concurrent/lock/Lock;

.field private taskManager:Lcom/ss/ugc/effectplatform/task/TaskManager;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lbytekn/foundation/concurrent/lock/Lock;

    invoke-direct {v0}, Lbytekn/foundation/concurrent/lock/Lock;-><init>()V

    iput-object v0, p0, Lcom/ss/ugc/effectplatform/task/dag/DagTask;->lock:Lbytekn/foundation/concurrent/lock/Lock;

    .line 17
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ss/ugc/effectplatform/task/dag/DagTask;->behindTasks:Ljava/util/HashSet;

    .line 18
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ss/ugc/effectplatform/task/dag/DagTask;->dependTasks:Ljava/util/HashSet;

    return-void
.end method

.method private final behind(Lcom/ss/ugc/effectplatform/task/dag/DagTask;)V
    .registers 3

    if-eq p1, p0, :cond_15

    .line 61
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/task/dag/DagTask;->lock:Lbytekn/foundation/concurrent/lock/Lock;

    .line 4
    invoke-virtual {v0}, Lbytekn/foundation/concurrent/lock/Lock;->acquire()V

    .line 62
    :try_start_7
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/task/dag/DagTask;->behindTasks:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_10

    .line 8
    invoke-virtual {v0}, Lbytekn/foundation/concurrent/lock/Lock;->release()V

    return-void

    :catchall_10
    move-exception p0

    invoke-virtual {v0}, Lbytekn/foundation/concurrent/lock/Lock;->release()V

    throw p0

    :cond_15
    return-void
.end method

.method private final notifyBehindTasksFinished(Ljava/lang/Exception;)V
    .registers 5

    .line 99
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 100
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/task/dag/DagTask;->lock:Lbytekn/foundation/concurrent/lock/Lock;

    .line 4
    invoke-virtual {v0}, Lbytekn/foundation/concurrent/lock/Lock;->acquire()V

    .line 101
    :try_start_a
    iget-object v1, p0, Lcom/ss/ugc/effectplatform/task/dag/DagTask;->behindTasks:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_36

    if-eqz v1, :cond_16

    .line 8
    invoke-virtual {v0}, Lbytekn/foundation/concurrent/lock/Lock;->release()V

    return-void

    .line 104
    :cond_16
    :try_start_16
    iget-object v1, p0, Lcom/ss/ugc/effectplatform/task/dag/DagTask;->behindTasks:Ljava/util/HashSet;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    .line 105
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_36

    .line 8
    invoke-virtual {v0}, Lbytekn/foundation/concurrent/lock/Lock;->release()V

    .line 106
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/ugc/effectplatform/task/dag/DagTask;

    .line 107
    invoke-direct {v1, p0, p1}, Lcom/ss/ugc/effectplatform/task/dag/DagTask;->onDependTaskFinished(Lcom/ss/ugc/effectplatform/task/dag/DagTask;Ljava/lang/Exception;)V

    goto :goto_25

    :cond_35
    return-void

    :catchall_36
    move-exception p0

    .line 8
    invoke-virtual {v0}, Lbytekn/foundation/concurrent/lock/Lock;->release()V

    throw p0
.end method

.method static synthetic notifyBehindTasksFinished$default(Lcom/ss/ugc/effectplatform/task/dag/DagTask;Ljava/lang/Exception;ILjava/lang/Object;)V
    .registers 4

    if-nez p3, :cond_b

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_7

    const/4 p1, 0x0

    .line 98
    :cond_7
    invoke-direct {p0, p1}, Lcom/ss/ugc/effectplatform/task/dag/DagTask;->notifyBehindTasksFinished(Ljava/lang/Exception;)V

    return-void

    .line 0
    :cond_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: notifyBehindTasksFinished"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final onDependTaskFinished(Lcom/ss/ugc/effectplatform/task/dag/DagTask;Ljava/lang/Exception;)V
    .registers 5

    .line 76
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/task/dag/DagTask;->lock:Lbytekn/foundation/concurrent/lock/Lock;

    .line 4
    invoke-virtual {v0}, Lbytekn/foundation/concurrent/lock/Lock;->acquire()V

    .line 77
    :try_start_5
    iget-object v1, p0, Lcom/ss/ugc/effectplatform/task/dag/DagTask;->dependTasks:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_20

    if-eqz v1, :cond_11

    .line 8
    invoke-virtual {v0}, Lbytekn/foundation/concurrent/lock/Lock;->release()V

    return-void

    .line 80
    :cond_11
    :try_start_11
    iget-object v1, p0, Lcom/ss/ugc/effectplatform/task/dag/DagTask;->dependTasks:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    if-eqz p2, :cond_22

    const/4 p1, 0x1

    .line 82
    iput-boolean p1, p0, Lcom/ss/ugc/effectplatform/task/dag/DagTask;->isDependTaskFailed:Z

    .line 83
    iput-object p2, p0, Lcom/ss/ugc/effectplatform/task/dag/DagTask;->exception:Ljava/lang/Exception;

    .line 84
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1f
    .catchall {:try_start_11 .. :try_end_1f} :catchall_20

    goto :goto_22

    :catchall_20
    move-exception p0

    goto :goto_52

    .line 8
    :cond_22
    :goto_22
    invoke-virtual {v0}, Lbytekn/foundation/concurrent/lock/Lock;->release()V

    .line 86
    iget-object p1, p0, Lcom/ss/ugc/effectplatform/task/dag/DagTask;->dependTasks:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_51

    .line 87
    iget-boolean p1, p0, Lcom/ss/ugc/effectplatform/task/dag/DagTask;->isDependTaskFailed:Z

    if-eqz p1, :cond_42

    .line 88
    iget-object p1, p0, Lcom/ss/ugc/effectplatform/task/dag/DagTask;->exception:Ljava/lang/Exception;

    if-eqz p1, :cond_36

    goto :goto_3e

    .line 89
    :cond_36
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo p2, "unknown error"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 88
    :goto_3e
    invoke-virtual {p0, p1}, Lcom/ss/ugc/effectplatform/task/dag/DagTask;->notifyBehindTasksFailed(Ljava/lang/Exception;)V

    return-void

    .line 91
    :cond_42
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/task/dag/DagTask;->getTaskManager()Lcom/ss/ugc/effectplatform/task/TaskManager;

    move-result-object p1

    if-eqz p1, :cond_4c

    .line 92
    invoke-virtual {p1, p0}, Lcom/ss/ugc/effectplatform/task/TaskManager;->commit(Lbytekn/foundation/task/ITask;)V

    return-void

    .line 93
    :cond_4c
    invoke-interface {p0}, Lbytekn/foundation/task/ITask;->run()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_51
    return-void

    .line 8
    :goto_52
    invoke-virtual {v0}, Lbytekn/foundation/concurrent/lock/Lock;->release()V

    throw p0
.end method

.method private final removeBehind(Lcom/ss/ugc/effectplatform/task/dag/DagTask;)V
    .registers 3

    if-eq p1, p0, :cond_15

    .line 69
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/task/dag/DagTask;->lock:Lbytekn/foundation/concurrent/lock/Lock;

    .line 4
    invoke-virtual {v0}, Lbytekn/foundation/concurrent/lock/Lock;->acquire()V

    .line 70
    :try_start_7
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/task/dag/DagTask;->behindTasks:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_10

    .line 8
    invoke-virtual {v0}, Lbytekn/foundation/concurrent/lock/Lock;->release()V

    return-void

    :catchall_10
    move-exception p0

    invoke-virtual {v0}, Lbytekn/foundation/concurrent/lock/Lock;->release()V

    throw p0

    :cond_15
    return-void
.end method


# virtual methods
.method public final dependOn$effect_base_release(Lcom/ss/ugc/effectplatform/task/dag/DagTask;)V
    .registers 4

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq p1, p0, :cond_1d

    .line 43
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/task/dag/DagTask;->lock:Lbytekn/foundation/concurrent/lock/Lock;

    .line 4
    invoke-virtual {v0}, Lbytekn/foundation/concurrent/lock/Lock;->acquire()V

    .line 44
    :try_start_c
    iget-object v1, p0, Lcom/ss/ugc/effectplatform/task/dag/DagTask;->dependTasks:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_18

    .line 8
    invoke-virtual {v0}, Lbytekn/foundation/concurrent/lock/Lock;->release()V

    .line 46
    invoke-direct {p1, p0}, Lcom/ss/ugc/effectplatform/task/dag/DagTask;->behind(Lcom/ss/ugc/effectplatform/task/dag/DagTask;)V

    return-void

    :catchall_18
    move-exception p0

    .line 8
    invoke-virtual {v0}, Lbytekn/foundation/concurrent/lock/Lock;->release()V

    throw p0

    :cond_1d
    return-void
.end method

.method public getTaskManager()Lcom/ss/ugc/effectplatform/task/TaskManager;
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/task/dag/DagTask;->taskManager:Lcom/ss/ugc/effectplatform/task/TaskManager;

    return-object p0
.end method

.method public notifyBehindTasksFailed(Ljava/lang/Exception;)V
    .registers 3

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, p1}, Lcom/ss/ugc/effectplatform/task/dag/DagTask;->notifyBehindTasksFinished(Ljava/lang/Exception;)V

    return-void
.end method

.method public notifyBehindTasksSuccess()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 21
    invoke-static {p0, v0, v1, v0}, Lcom/ss/ugc/effectplatform/task/dag/DagTask;->notifyBehindTasksFinished$default(Lcom/ss/ugc/effectplatform/task/dag/DagTask;Ljava/lang/Exception;ILjava/lang/Object;)V

    return-void
.end method

.method public final removeDependence$effect_base_release(Lcom/ss/ugc/effectplatform/task/dag/DagTask;)V
    .registers 4

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq p1, p0, :cond_1d

    .line 52
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/task/dag/DagTask;->lock:Lbytekn/foundation/concurrent/lock/Lock;

    .line 4
    invoke-virtual {v0}, Lbytekn/foundation/concurrent/lock/Lock;->acquire()V

    .line 53
    :try_start_c
    iget-object v1, p0, Lcom/ss/ugc/effectplatform/task/dag/DagTask;->dependTasks:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_18

    .line 8
    invoke-virtual {v0}, Lbytekn/foundation/concurrent/lock/Lock;->release()V

    .line 55
    invoke-direct {p1, p0}, Lcom/ss/ugc/effectplatform/task/dag/DagTask;->removeBehind(Lcom/ss/ugc/effectplatform/task/dag/DagTask;)V

    return-void

    :catchall_18
    move-exception p0

    .line 8
    invoke-virtual {v0}, Lbytekn/foundation/concurrent/lock/Lock;->release()V

    throw p0

    :cond_1d
    return-void
.end method

.method protected final runOnMainThread(Lkotlin/jvm/functions/Function0;)V
    .registers 3

    const-string p0, "block"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lbytekn/foundation/concurrent/CurrentThreadKt;->isMainThread()Z

    move-result p0

    if-eqz p0, :cond_f

    .line 30
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void

    .line 34
    :cond_f
    sget-object p0, Lbytekn/foundation/utils/Transmitter;->INSTANCE:Lbytekn/foundation/utils/Transmitter;

    new-instance v0, Lcom/ss/ugc/effectplatform/task/dag/DagTask$runOnMainThread$1;

    invoke-direct {v0, p1}, Lcom/ss/ugc/effectplatform/task/dag/DagTask$runOnMainThread$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p0, v0}, Lbytekn/foundation/utils/Transmitter;->transmitToMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setTaskManager(Lcom/ss/ugc/effectplatform/task/TaskManager;)V
    .registers 2

    .line 14
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/task/dag/DagTask;->taskManager:Lcom/ss/ugc/effectplatform/task/TaskManager;

    return-void
.end method
