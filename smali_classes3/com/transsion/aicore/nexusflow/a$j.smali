.class public final Lcom/transsion/aicore/nexusflow/a$j;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/aicore/nexusflow/a;->a(Lcom/transsion/aicore/nexusflow/FlowConfig;Lcom/transsion/aicore/nexusflow/FlowCallback;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/aicore/nexusflow/a;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/transsion/aicore/nexusflow/FlowConfig;


# direct methods
.method public constructor <init>(Lcom/transsion/aicore/nexusflow/a;Ljava/lang/String;Lcom/transsion/aicore/nexusflow/FlowConfig;Lkotlin/coroutines/Continuation;)V
    .registers 5

    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/a$j;->a:Lcom/transsion/aicore/nexusflow/a;

    iput-object p2, p0, Lcom/transsion/aicore/nexusflow/a$j;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/aicore/nexusflow/a$j;->c:Lcom/transsion/aicore/nexusflow/FlowConfig;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5

    new-instance p1, Lcom/transsion/aicore/nexusflow/a$j;

    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/a$j;->a:Lcom/transsion/aicore/nexusflow/a;

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/a$j;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/a$j;->c:Lcom/transsion/aicore/nexusflow/FlowConfig;

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/transsion/aicore/nexusflow/a$j;-><init>(Lcom/transsion/aicore/nexusflow/a;Ljava/lang/String;Lcom/transsion/aicore/nexusflow/FlowConfig;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/aicore/nexusflow/a$j;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/transsion/aicore/nexusflow/a$j;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/transsion/aicore/nexusflow/a$j;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/transsion/aicore/nexusflow/a$j;->a:Lcom/transsion/aicore/nexusflow/a;

    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/a$j;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/a$j;->c:Lcom/transsion/aicore/nexusflow/FlowConfig;

    .line 3
    invoke-virtual {p1, v0, p0}, Lcom/transsion/aicore/nexusflow/a;->a(Ljava/lang/String;Lcom/transsion/aicore/nexusflow/FlowConfig;)V

    .line 4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
