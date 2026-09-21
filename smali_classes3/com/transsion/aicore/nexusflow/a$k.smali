.class public final Lcom/transsion/aicore/nexusflow/a$k;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/aicore/nexusflow/a;->f(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/transsion/aicore/nexusflow/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/transsion/aicore/nexusflow/a;Lkotlin/coroutines/Continuation;)V
    .registers 4

    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/a$k;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/aicore/nexusflow/a$k;->b:Lcom/transsion/aicore/nexusflow/a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4

    new-instance p1, Lcom/transsion/aicore/nexusflow/a$k;

    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/a$k;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/a$k;->b:Lcom/transsion/aicore/nexusflow/a;

    invoke-direct {p1, v0, p0, p2}, Lcom/transsion/aicore/nexusflow/a$k;-><init>(Ljava/lang/String;Lcom/transsion/aicore/nexusflow/a;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 1
    new-instance p1, Lcom/transsion/aicore/nexusflow/a$k;

    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/a$k;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/a$k;->b:Lcom/transsion/aicore/nexusflow/a;

    invoke-direct {p1, v0, p0, p2}, Lcom/transsion/aicore/nexusflow/a$k;-><init>(Ljava/lang/String;Lcom/transsion/aicore/nexusflow/a;Lkotlin/coroutines/Continuation;)V

    .line 2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p0}, Lcom/transsion/aicore/nexusflow/a$k;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    const-string v0, "FlowManager"

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 3
    :try_start_8
    sget-object p1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/a$k;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requesting service to stop flow (Async): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/transsion/aicore/nexusflow/a$k;->b:Lcom/transsion/aicore/nexusflow/a;

    .line 5
    iget-object p1, p1, Lcom/transsion/aicore/nexusflow/a;->b:Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;

    if-eqz p1, :cond_45

    .line 6
    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/a$k;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->stopFlow(Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2b} :catch_2c

    goto :goto_45

    :catch_2c
    move-exception p1

    .line 8
    sget-object v1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/a$k;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to notify server to stop flow "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v0, p0, p1}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    :cond_45
    :goto_45
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
