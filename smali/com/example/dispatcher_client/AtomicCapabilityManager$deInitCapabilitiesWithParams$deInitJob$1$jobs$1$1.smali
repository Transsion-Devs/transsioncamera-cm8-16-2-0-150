.class final Lcom/example/dispatcher_client/AtomicCapabilityManager$deInitCapabilitiesWithParams$deInitJob$1$jobs$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/dispatcher_client/AtomicCapabilityManager$deInitCapabilitiesWithParams$deInitJob$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $capability:Ljava/lang/String;

.field final synthetic $customParams:Landroid/os/Bundle;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/os/Bundle;Lkotlin/coroutines/Continuation;)V
    .registers 4

    iput-object p1, p0, Lcom/example/dispatcher_client/AtomicCapabilityManager$deInitCapabilitiesWithParams$deInitJob$1$jobs$1$1;->$capability:Ljava/lang/String;

    iput-object p2, p0, Lcom/example/dispatcher_client/AtomicCapabilityManager$deInitCapabilitiesWithParams$deInitJob$1$jobs$1$1;->$customParams:Landroid/os/Bundle;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4

    new-instance p1, Lcom/example/dispatcher_client/AtomicCapabilityManager$deInitCapabilitiesWithParams$deInitJob$1$jobs$1$1;

    iget-object v0, p0, Lcom/example/dispatcher_client/AtomicCapabilityManager$deInitCapabilitiesWithParams$deInitJob$1$jobs$1$1;->$capability:Ljava/lang/String;

    iget-object p0, p0, Lcom/example/dispatcher_client/AtomicCapabilityManager$deInitCapabilitiesWithParams$deInitJob$1$jobs$1$1;->$customParams:Landroid/os/Bundle;

    invoke-direct {p1, v0, p0, p2}, Lcom/example/dispatcher_client/AtomicCapabilityManager$deInitCapabilitiesWithParams$deInitJob$1$jobs$1$1;-><init>(Ljava/lang/String;Landroid/os/Bundle;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/example/dispatcher_client/AtomicCapabilityManager$deInitCapabilitiesWithParams$deInitJob$1$jobs$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/example/dispatcher_client/AtomicCapabilityManager$deInitCapabilitiesWithParams$deInitJob$1$jobs$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/example/dispatcher_client/AtomicCapabilityManager$deInitCapabilitiesWithParams$deInitJob$1$jobs$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/example/dispatcher_client/AtomicCapabilityManager$deInitCapabilitiesWithParams$deInitJob$1$jobs$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 216
    iget v0, p0, Lcom/example/dispatcher_client/AtomicCapabilityManager$deInitCapabilitiesWithParams$deInitJob$1$jobs$1$1;->label:I

    if-nez v0, :cond_85

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 217
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 218
    iget-object p1, p0, Lcom/example/dispatcher_client/AtomicCapabilityManager$deInitCapabilitiesWithParams$deInitJob$1$jobs$1$1;->$capability:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "toUpperCase(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    sget-object v2, Lcom/example/dispatcher_client/FlowBusType;->GENERATE:Lcom/example/dispatcher_client/FlowBusType;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_78

    .line 236
    iget-object p1, p0, Lcom/example/dispatcher_client/AtomicCapabilityManager$deInitCapabilitiesWithParams$deInitJob$1$jobs$1$1;->$capability:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u672a\u77e5\u7684\u80fd\u529b\u7c7b\u578b: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "AtomicCapabilityManager"

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    .line 244
    iget-object p1, p0, Lcom/example/dispatcher_client/AtomicCapabilityManager$deInitCapabilitiesWithParams$deInitJob$1$jobs$1$1;->$capability:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \u521d\u59cb\u5316\u8017\u65f6: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms, \u7ed3\u679c: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u5931\u8d25"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 242
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object p0, p0, Lcom/example/dispatcher_client/AtomicCapabilityManager$deInitCapabilitiesWithParams$deInitJob$1$jobs$1$1;->$capability:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0

    .line 221
    :cond_78
    sget-object p0, Lcom/example/dispatcher_client/FlowBusAdapterFactory;->INSTANCE:Lcom/example/dispatcher_client/FlowBusAdapterFactory;

    invoke-virtual {p0, v2}, Lcom/example/dispatcher_client/FlowBusAdapterFactory;->getAdapter(Lcom/example/dispatcher_client/FlowBusType;)Lcom/example/dispatcher_client/FlowBusAdapter;

    .line 222
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "cvEngineAdapter \u4e0d\u80fd\u4e3a null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 216
    :cond_85
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
