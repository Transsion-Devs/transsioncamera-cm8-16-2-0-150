.class public final Lcom/transsion/aicore/nexusflow/a$g;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/aicore/nexusflow/a;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/aicore/nexusflow/a;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lkotlin/jvm/functions/Function1;

.field public final synthetic d:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/transsion/aicore/nexusflow/a;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroid/os/Bundle;Lkotlin/coroutines/Continuation;)V
    .registers 6

    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/a$g;->a:Lcom/transsion/aicore/nexusflow/a;

    iput-object p2, p0, Lcom/transsion/aicore/nexusflow/a$g;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/aicore/nexusflow/a$g;->c:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/transsion/aicore/nexusflow/a$g;->d:Landroid/os/Bundle;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public static final a(Lkotlin/jvm/functions/Function1;Landroid/os/Bundle;)Lkotlin/Unit;
    .registers 2

    .line 1
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 9

    new-instance v0, Lcom/transsion/aicore/nexusflow/a$g;

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/a$g;->a:Lcom/transsion/aicore/nexusflow/a;

    iget-object v2, p0, Lcom/transsion/aicore/nexusflow/a$g;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/aicore/nexusflow/a$g;->c:Lkotlin/jvm/functions/Function1;

    iget-object v4, p0, Lcom/transsion/aicore/nexusflow/a$g;->d:Landroid/os/Bundle;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/transsion/aicore/nexusflow/a$g;-><init>(Lcom/transsion/aicore/nexusflow/a;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroid/os/Bundle;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/aicore/nexusflow/a$g;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/transsion/aicore/nexusflow/a$g;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/transsion/aicore/nexusflow/a$g;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/transsion/aicore/nexusflow/a$g;->a:Lcom/transsion/aicore/nexusflow/a;

    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/a$g;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/a$g;->c:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/a$g;->d:Landroid/os/Bundle;

    new-instance v2, Lcom/transsion/aicore/nexusflow/a$g$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p0}, Lcom/transsion/aicore/nexusflow/a$g$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;Landroid/os/Bundle;)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v2}, Lcom/transsion/aicore/nexusflow/a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
