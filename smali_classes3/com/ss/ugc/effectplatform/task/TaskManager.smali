.class public final Lcom/ss/ugc/effectplatform/task/TaskManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ugc/effectplatform/task/TaskManager$Builder;,
        Lcom/ss/ugc/effectplatform/task/TaskManager$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/ss/ugc/effectplatform/task/TaskManager$Companion;


# instance fields
.field private final executingTask:Lbytekn/foundation/collections/SharedMutableMap;

.field private executor:Lbytekn/foundation/concurrent/executor/ExecutorService;

.field private final interceptions:Lbytekn/foundation/collections/SharedMutableMap;

.field private needShutDown:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/ss/ugc/effectplatform/task/TaskManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ss/ugc/effectplatform/task/TaskManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ss/ugc/effectplatform/task/TaskManager;->Companion:Lcom/ss/ugc/effectplatform/task/TaskManager$Companion;

    return-void
.end method

.method private constructor <init>(ZLbytekn/foundation/concurrent/executor/ExecutorService;)V
    .registers 5

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/ss/ugc/effectplatform/task/TaskManager;->needShutDown:Z

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/task/TaskManager;->executor:Lbytekn/foundation/concurrent/executor/ExecutorService;

    .line 16
    new-instance p1, Lbytekn/foundation/collections/SharedMutableMap;

    const/4 p2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1, p2}, Lbytekn/foundation/collections/SharedMutableMap;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/task/TaskManager;->interceptions:Lbytekn/foundation/collections/SharedMutableMap;

    .line 17
    new-instance p1, Lbytekn/foundation/collections/SharedMutableMap;

    invoke-direct {p1, v1}, Lbytekn/foundation/collections/SharedMutableMap;-><init>(Z)V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/task/TaskManager;->executingTask:Lbytekn/foundation/collections/SharedMutableMap;

    return-void
.end method

.method public synthetic constructor <init>(ZLbytekn/foundation/concurrent/executor/ExecutorService;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/ss/ugc/effectplatform/task/TaskManager;-><init>(ZLbytekn/foundation/concurrent/executor/ExecutorService;)V

    return-void
.end method

.method public static final synthetic access$getExecutingTask$p(Lcom/ss/ugc/effectplatform/task/TaskManager;)Lbytekn/foundation/collections/SharedMutableMap;
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/task/TaskManager;->executingTask:Lbytekn/foundation/collections/SharedMutableMap;

    return-object p0
.end method


# virtual methods
.method public final commit(Lbytekn/foundation/task/ITask;)V
    .registers 4

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/task/TaskManager;->interceptions:Lbytekn/foundation/collections/SharedMutableMap;

    invoke-virtual {v0}, Lbytekn/foundation/collections/SharedMutableMap;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 1642
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 28
    instance-of v0, p1, Lcom/ss/ugc/effectplatform/task/BaseTask;

    if-eqz v0, :cond_21

    .line 29
    move-object v0, p1

    check-cast v0, Lcom/ss/ugc/effectplatform/task/BaseTask;

    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/task/BaseTask;->onPreExecute()V

    .line 32
    :cond_21
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/task/TaskManager;->executor:Lbytekn/foundation/concurrent/executor/ExecutorService;

    new-instance v1, Lcom/ss/ugc/effectplatform/task/TaskManager$commit$2;

    invoke-direct {v1, p0, p1}, Lcom/ss/ugc/effectplatform/task/TaskManager$commit$2;-><init>(Lcom/ss/ugc/effectplatform/task/TaskManager;Lbytekn/foundation/task/ITask;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 1642
    :cond_2c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 22
    throw p0
.end method
