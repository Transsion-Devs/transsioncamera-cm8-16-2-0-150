.class public final Lcom/transsion/aicore/nexusflow/a$b;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/aicore/nexusflow/a;->a(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/aicore/nexusflow/a;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lkotlin/jvm/functions/Function1;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/transsion/aicore/nexusflow/a;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .registers 6

    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/a$b;->a:Lcom/transsion/aicore/nexusflow/a;

    iput-object p2, p0, Lcom/transsion/aicore/nexusflow/a$b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/aicore/nexusflow/a$b;->c:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/transsion/aicore/nexusflow/a$b;->d:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 9

    new-instance v0, Lcom/transsion/aicore/nexusflow/a$b;

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/a$b;->a:Lcom/transsion/aicore/nexusflow/a;

    iget-object v2, p0, Lcom/transsion/aicore/nexusflow/a$b;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/aicore/nexusflow/a$b;->c:Lkotlin/jvm/functions/Function1;

    iget-object v4, p0, Lcom/transsion/aicore/nexusflow/a$b;->d:Ljava/lang/String;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/transsion/aicore/nexusflow/a$b;-><init>(Lcom/transsion/aicore/nexusflow/a;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/aicore/nexusflow/a$b;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/transsion/aicore/nexusflow/a$b;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/transsion/aicore/nexusflow/a$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/a$b;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/a$b;->b:Ljava/lang/String;

    .line 3
    const-string v2, "action"

    const-string v3, "FLOW_DEINIT"

    invoke-virtual {p1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    const-string v2, "instance_id"

    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    const-string v0, "flowId"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/a$b;->a:Lcom/transsion/aicore/nexusflow/a;

    .line 17
    iget-object v0, v0, Lcom/transsion/aicore/nexusflow/a;->b:Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;

    if-eqz v0, :cond_34

    .line 18
    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/a$b;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/a$b;->c:Lkotlin/jvm/functions/Function1;

    .line 19
    new-instance v2, Lcom/transsion/aicore/nexusflow/c;

    const-string v3, "deInit"

    invoke-direct {v2, v3, v1, p0}, Lcom/transsion/aicore/nexusflow/c;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 20
    invoke-virtual {v0, p1, v2}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->triggerFlow(Landroid/os/Bundle;Lcom/transsion/aicore/nexusflow/FlowResultCallback;)V

    .line 24
    :cond_34
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
