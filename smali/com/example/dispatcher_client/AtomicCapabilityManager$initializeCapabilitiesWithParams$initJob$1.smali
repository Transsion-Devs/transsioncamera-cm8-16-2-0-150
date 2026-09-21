.class final Lcom/example/dispatcher_client/AtomicCapabilityManager$initializeCapabilitiesWithParams$initJob$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/dispatcher_client/AtomicCapabilityManager;->initializeCapabilitiesWithParams(Landroid/content/Context;Ljava/util/List;JLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $allSuccess:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $capabilities:Ljava/util/List;

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $customParams:Landroid/os/Bundle;

.field final synthetic $errorMessages:Ljava/util/List;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Ljava/util/List;Landroid/content/Context;Landroid/os/Bundle;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/util/List;Lkotlin/coroutines/Continuation;)V
    .registers 7

    iput-object p1, p0, Lcom/example/dispatcher_client/AtomicCapabilityManager$initializeCapabilitiesWithParams$initJob$1;->$capabilities:Ljava/util/List;

    iput-object p2, p0, Lcom/example/dispatcher_client/AtomicCapabilityManager$initializeCapabilitiesWithParams$initJob$1;->$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/example/dispatcher_client/AtomicCapabilityManager$initializeCapabilitiesWithParams$initJob$1;->$customParams:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/example/dispatcher_client/AtomicCapabilityManager$initializeCapabilitiesWithParams$initJob$1;->$allSuccess:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p5, p0, Lcom/example/dispatcher_client/AtomicCapabilityManager$initializeCapabilitiesWithParams$initJob$1;->$errorMessages:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 10

    new-instance v0, Lcom/example/dispatcher_client/AtomicCapabilityManager$initializeCapabilitiesWithParams$initJob$1;

    iget-object v1, p0, Lcom/example/dispatcher_client/AtomicCapabilityManager$initializeCapabilitiesWithParams$initJob$1;->$capabilities:Ljava/util/List;

    iget-object v2, p0, Lcom/example/dispatcher_client/AtomicCapabilityManager$initializeCapabilitiesWithParams$initJob$1;->$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/example/dispatcher_client/AtomicCapabilityManager$initializeCapabilitiesWithParams$initJob$1;->$customParams:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/example/dispatcher_client/AtomicCapabilityManager$initializeCapabilitiesWithParams$initJob$1;->$allSuccess:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v5, p0, Lcom/example/dispatcher_client/AtomicCapabilityManager$initializeCapabilitiesWithParams$initJob$1;->$errorMessages:Ljava/util/List;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/example/dispatcher_client/AtomicCapabilityManager$initializeCapabilitiesWithParams$initJob$1;-><init>(Ljava/util/List;Landroid/content/Context;Landroid/os/Bundle;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/example/dispatcher_client/AtomicCapabilityManager$initializeCapabilitiesWithParams$initJob$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/example/dispatcher_client/AtomicCapabilityManager$initializeCapabilitiesWithParams$initJob$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/example/dispatcher_client/AtomicCapabilityManager$initializeCapabilitiesWithParams$initJob$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/example/dispatcher_client/AtomicCapabilityManager$initializeCapabilitiesWithParams$initJob$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/example/dispatcher_client/AtomicCapabilityManager$initializeCapabilitiesWithParams$initJob$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 61
    iget v1, p0, Lcom/example/dispatcher_client/AtomicCapabilityManager$initializeCapabilitiesWithParams$initJob$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1b

    if-ne v1, v2, :cond_13

    iget-object v0, p0, Lcom/example/dispatcher_client/AtomicCapabilityManager$initializeCapabilitiesWithParams$initJob$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_69

    :cond_13
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/example/dispatcher_client/AtomicCapabilityManager$initializeCapabilitiesWithParams$initJob$1;->L$0:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    .line 62
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 65
    iget-object v1, p0, Lcom/example/dispatcher_client/AtomicCapabilityManager$initializeCapabilitiesWithParams$initJob$1;->$capabilities:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    iget-object v9, p0, Lcom/example/dispatcher_client/AtomicCapabilityManager$initializeCapabilitiesWithParams$initJob$1;->$context:Landroid/content/Context;

    iget-object v10, p0, Lcom/example/dispatcher_client/AtomicCapabilityManager$initializeCapabilitiesWithParams$initJob$1;->$customParams:Landroid/os/Bundle;

    .line 332
    new-instance v11, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v11, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 333
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 334
    check-cast v4, Ljava/lang/String;

    .line 66
    new-instance v6, Lcom/example/dispatcher_client/AtomicCapabilityManager$initializeCapabilitiesWithParams$initJob$1$jobs$1$1;

    const/4 v5, 0x0

    invoke-direct {v6, v4, v9, v10, v5}, Lcom/example/dispatcher_client/AtomicCapabilityManager$initializeCapabilitiesWithParams$initJob$1$jobs$1$1;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/os/Bundle;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v4

    .line 334
    invoke-interface {v11, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3f

    .line 108
    :cond_5c
    iput-object p1, p0, Lcom/example/dispatcher_client/AtomicCapabilityManager$initializeCapabilitiesWithParams$initJob$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/example/dispatcher_client/AtomicCapabilityManager$initializeCapabilitiesWithParams$initJob$1;->label:I

    invoke-static {v11, p0}, Lkotlinx/coroutines/AwaitKt;->awaitAll(Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_67

    return-object v0

    :cond_67
    move-object v0, p1

    move-object p1, v1

    .line 61
    :goto_69
    check-cast p1, Ljava/util/List;

    .line 109
    check-cast p1, Ljava/lang/Iterable;

    iget-object v1, p0, Lcom/example/dispatcher_client/AtomicCapabilityManager$initializeCapabilitiesWithParams$initJob$1;->$allSuccess:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object p0, p0, Lcom/example/dispatcher_client/AtomicCapabilityManager$initializeCapabilitiesWithParams$initJob$1;->$errorMessages:Ljava/util/List;

    .line 336
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_75
    :goto_75
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/Pair;

    .line 109
    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 110
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v2, :cond_75

    const/4 v2, 0x0

    .line 112
    iput-boolean v2, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \u521d\u59cb\u5316\u5931\u8d25"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_75

    :cond_b2
    return-object v0
.end method
