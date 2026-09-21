.class public final Lcom/ss/ugc/effectplatform/task/dag/DagTask$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ugc/effectplatform/task/dag/DagTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private cacheTask:Lcom/ss/ugc/effectplatform/task/dag/DagTask;

.field private endTask:Lcom/ss/ugc/effectplatform/task/dag/DefaultEndDagTask;

.field private rootTask:Lcom/ss/ugc/effectplatform/task/dag/DefaultRootDagTask;

.field private final taskManager:Lcom/ss/ugc/effectplatform/task/TaskManager;


# direct methods
.method public constructor <init>(Lcom/ss/ugc/effectplatform/task/TaskManager;)V
    .registers 3

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/task/dag/DagTask$Builder;->taskManager:Lcom/ss/ugc/effectplatform/task/TaskManager;

    .line 112
    new-instance v0, Lcom/ss/ugc/effectplatform/task/dag/DefaultEndDagTask;

    invoke-direct {v0, p1}, Lcom/ss/ugc/effectplatform/task/dag/DefaultEndDagTask;-><init>(Lcom/ss/ugc/effectplatform/task/TaskManager;)V

    iput-object v0, p0, Lcom/ss/ugc/effectplatform/task/dag/DagTask$Builder;->endTask:Lcom/ss/ugc/effectplatform/task/dag/DefaultEndDagTask;

    .line 113
    new-instance v0, Lcom/ss/ugc/effectplatform/task/dag/DefaultRootDagTask;

    invoke-direct {v0, p1}, Lcom/ss/ugc/effectplatform/task/dag/DefaultRootDagTask;-><init>(Lcom/ss/ugc/effectplatform/task/TaskManager;)V

    iput-object v0, p0, Lcom/ss/ugc/effectplatform/task/dag/DagTask$Builder;->rootTask:Lcom/ss/ugc/effectplatform/task/dag/DefaultRootDagTask;

    .line 114
    iput-object v0, p0, Lcom/ss/ugc/effectplatform/task/dag/DagTask$Builder;->cacheTask:Lcom/ss/ugc/effectplatform/task/dag/DagTask;

    return-void
.end method


# virtual methods
.method public final add(Lcom/ss/ugc/effectplatform/task/dag/DagTask;)Lcom/ss/ugc/effectplatform/task/dag/DagTask$Builder;
    .registers 3

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/task/dag/DagTask$Builder;->taskManager:Lcom/ss/ugc/effectplatform/task/TaskManager;

    invoke-virtual {p1, v0}, Lcom/ss/ugc/effectplatform/task/dag/DagTask;->setTaskManager(Lcom/ss/ugc/effectplatform/task/TaskManager;)V

    .line 122
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/task/dag/DagTask$Builder;->rootTask:Lcom/ss/ugc/effectplatform/task/dag/DefaultRootDagTask;

    invoke-virtual {p1, v0}, Lcom/ss/ugc/effectplatform/task/dag/DagTask;->dependOn$effect_base_release(Lcom/ss/ugc/effectplatform/task/dag/DagTask;)V

    .line 123
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/task/dag/DagTask$Builder;->endTask:Lcom/ss/ugc/effectplatform/task/dag/DefaultEndDagTask;

    invoke-virtual {v0, p1}, Lcom/ss/ugc/effectplatform/task/dag/DagTask;->dependOn$effect_base_release(Lcom/ss/ugc/effectplatform/task/dag/DagTask;)V

    .line 124
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/task/dag/DagTask$Builder;->cacheTask:Lcom/ss/ugc/effectplatform/task/dag/DagTask;

    return-object p0
.end method

.method public final build()Lcom/ss/ugc/effectplatform/task/dag/DagTask;
    .registers 1

    .line 117
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/task/dag/DagTask$Builder;->rootTask:Lcom/ss/ugc/effectplatform/task/dag/DefaultRootDagTask;

    return-object p0
.end method

.method public final dependOn(Lcom/ss/ugc/effectplatform/task/dag/DagTask;)Lcom/ss/ugc/effectplatform/task/dag/DagTask$Builder;
    .registers 3

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/task/dag/DagTask$Builder;->cacheTask:Lcom/ss/ugc/effectplatform/task/dag/DagTask;

    invoke-virtual {v0, p1}, Lcom/ss/ugc/effectplatform/task/dag/DagTask;->dependOn$effect_base_release(Lcom/ss/ugc/effectplatform/task/dag/DagTask;)V

    .line 130
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/task/dag/DagTask$Builder;->endTask:Lcom/ss/ugc/effectplatform/task/dag/DefaultEndDagTask;

    invoke-virtual {v0, p1}, Lcom/ss/ugc/effectplatform/task/dag/DagTask;->removeDependence$effect_base_release(Lcom/ss/ugc/effectplatform/task/dag/DagTask;)V

    .line 131
    iget-object p1, p0, Lcom/ss/ugc/effectplatform/task/dag/DagTask$Builder;->cacheTask:Lcom/ss/ugc/effectplatform/task/dag/DagTask;

    iget-object v0, p0, Lcom/ss/ugc/effectplatform/task/dag/DagTask$Builder;->rootTask:Lcom/ss/ugc/effectplatform/task/dag/DefaultRootDagTask;

    invoke-virtual {p1, v0}, Lcom/ss/ugc/effectplatform/task/dag/DagTask;->removeDependence$effect_base_release(Lcom/ss/ugc/effectplatform/task/dag/DagTask;)V

    return-object p0
.end method

.method public final onFail(Lkotlin/jvm/functions/Function1;)Lcom/ss/ugc/effectplatform/task/dag/DagTask$Builder;
    .registers 3

    const-string v0, "onFail"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/task/dag/DagTask$Builder;->endTask:Lcom/ss/ugc/effectplatform/task/dag/DefaultEndDagTask;

    invoke-virtual {v0, p1}, Lcom/ss/ugc/effectplatform/task/dag/DefaultEndDagTask;->setCustomOnFail(Lkotlin/jvm/functions/Function1;)V

    return-object p0
.end method

.method public final onSuccess(Lkotlin/jvm/functions/Function0;)Lcom/ss/ugc/effectplatform/task/dag/DagTask$Builder;
    .registers 3

    const-string v0, "onSuccess"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/task/dag/DagTask$Builder;->endTask:Lcom/ss/ugc/effectplatform/task/dag/DefaultEndDagTask;

    invoke-virtual {v0, p1}, Lcom/ss/ugc/effectplatform/task/dag/DefaultEndDagTask;->setCustomOnSuccess(Lkotlin/jvm/functions/Function0;)V

    return-object p0
.end method
