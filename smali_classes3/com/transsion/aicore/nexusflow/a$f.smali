.class public final Lcom/transsion/aicore/nexusflow/a$f;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/aicore/nexusflow/a;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/aicore/nexusflow/a;

.field public final synthetic b:Lcom/transsion/aicore/nexusflow/e;


# direct methods
.method public constructor <init>(Lcom/transsion/aicore/nexusflow/a;Lcom/transsion/aicore/nexusflow/e;Lkotlin/coroutines/Continuation;)V
    .registers 4

    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/a$f;->a:Lcom/transsion/aicore/nexusflow/a;

    iput-object p2, p0, Lcom/transsion/aicore/nexusflow/a$f;->b:Lcom/transsion/aicore/nexusflow/e;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4

    new-instance p1, Lcom/transsion/aicore/nexusflow/a$f;

    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/a$f;->a:Lcom/transsion/aicore/nexusflow/a;

    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/a$f;->b:Lcom/transsion/aicore/nexusflow/e;

    invoke-direct {p1, v0, p0, p2}, Lcom/transsion/aicore/nexusflow/a$f;-><init>(Lcom/transsion/aicore/nexusflow/a;Lcom/transsion/aicore/nexusflow/e;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 1
    new-instance p1, Lcom/transsion/aicore/nexusflow/a$f;

    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/a$f;->a:Lcom/transsion/aicore/nexusflow/a;

    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/a$f;->b:Lcom/transsion/aicore/nexusflow/e;

    invoke-direct {p1, v0, p0, p2}, Lcom/transsion/aicore/nexusflow/a$f;-><init>(Lcom/transsion/aicore/nexusflow/a;Lcom/transsion/aicore/nexusflow/e;Lkotlin/coroutines/Continuation;)V

    .line 2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p0}, Lcom/transsion/aicore/nexusflow/a$f;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/transsion/aicore/nexusflow/a$f;->a:Lcom/transsion/aicore/nexusflow/a;

    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/a$f;->b:Lcom/transsion/aicore/nexusflow/e;

    .line 3
    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/e;->a:Ljava/lang/String;

    .line 4
    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/e;->b:Lcom/transsion/aicore/nexusflow/FlowConfig;

    .line 5
    invoke-virtual {p1, v0, p0}, Lcom/transsion/aicore/nexusflow/a;->a(Ljava/lang/String;Lcom/transsion/aicore/nexusflow/FlowConfig;)V

    .line 6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
