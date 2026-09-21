.class final Lcom/ss/ugc/effectplatform/task/dag/DefaultEndDagTask;
.super Lcom/ss/ugc/effectplatform/task/dag/DefaultRootDagTask;
.source "SourceFile"


# instance fields
.field private customOnFail:Lkotlin/jvm/functions/Function1;

.field private customOnSuccess:Lkotlin/jvm/functions/Function0;

.field private volatile isFailed:Z


# direct methods
.method public constructor <init>(Lcom/ss/ugc/effectplatform/task/TaskManager;)V
    .registers 2

    .line 158
    invoke-direct {p0, p1}, Lcom/ss/ugc/effectplatform/task/dag/DefaultRootDagTask;-><init>(Lcom/ss/ugc/effectplatform/task/TaskManager;)V

    return-void
.end method


# virtual methods
.method public notifyBehindTasksFailed(Ljava/lang/Exception;)V
    .registers 3

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    iget-boolean v0, p0, Lcom/ss/ugc/effectplatform/task/dag/DefaultEndDagTask;->isFailed:Z

    if-eqz v0, :cond_a

    goto :goto_17

    :cond_a
    const/4 v0, 0x1

    .line 169
    iput-boolean v0, p0, Lcom/ss/ugc/effectplatform/task/dag/DefaultEndDagTask;->isFailed:Z

    .line 170
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/task/dag/DefaultEndDagTask;->customOnFail:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_17

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/Unit;

    :cond_17
    :goto_17
    return-void
.end method

.method public notifyBehindTasksSuccess()V
    .registers 1

    .line 174
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/task/dag/DefaultEndDagTask;->customOnSuccess:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_a

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/Unit;

    :cond_a
    return-void
.end method

.method public final setCustomOnFail(Lkotlin/jvm/functions/Function1;)V
    .registers 2

    .line 163
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/task/dag/DefaultEndDagTask;->customOnFail:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setCustomOnSuccess(Lkotlin/jvm/functions/Function0;)V
    .registers 2

    .line 162
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/task/dag/DefaultEndDagTask;->customOnSuccess:Lkotlin/jvm/functions/Function0;

    return-void
.end method
