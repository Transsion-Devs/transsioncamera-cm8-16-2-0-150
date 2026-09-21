.class public final Lcom/transsion/aicore/nexusflow/a$d;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/aicore/nexusflow/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;JLkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lcom/transsion/aicore/nexusflow/a;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lkotlin/jvm/functions/Function1;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:J

.field public final synthetic g:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/transsion/aicore/nexusflow/a;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Ljava/lang/String;JLandroid/os/Bundle;Lkotlin/coroutines/Continuation;)V
    .registers 9

    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/a$d;->b:Lcom/transsion/aicore/nexusflow/a;

    iput-object p2, p0, Lcom/transsion/aicore/nexusflow/a$d;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/aicore/nexusflow/a$d;->d:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/transsion/aicore/nexusflow/a$d;->e:Ljava/lang/String;

    iput-wide p5, p0, Lcom/transsion/aicore/nexusflow/a$d;->f:J

    iput-object p7, p0, Lcom/transsion/aicore/nexusflow/a$d;->g:Landroid/os/Bundle;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/aicore/nexusflow/a;JLandroid/os/Bundle;Landroid/os/Bundle;)Lkotlin/Unit;
    .registers 9

    .line 1
    const-string v0, "action"

    const-string v1, "FLOW_INIT"

    invoke-virtual {p6, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    const-string v0, "instance_id"

    invoke-virtual {p6, v0, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    const-string p0, "flowId"

    invoke-virtual {p6, p0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object p0, p2, Lcom/transsion/aicore/nexusflow/a;->b:Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;

    if-eqz p0, :cond_41

    .line 13
    invoke-virtual {p0}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->getLastBindDuration()J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p2, p0, v0

    if-lez p2, :cond_41

    .line 15
    const-string p2, "bind_service_cost"

    invoke-virtual {p6, p2, p0, p1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 16
    sget-object p2, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Injecting bind duration into init params: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " ms"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FlowManager"

    invoke-virtual {p2, p1, p0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_41
    const-string/jumbo p0, "timeout_ms"

    invoke-virtual {p6, p0, p3, p4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    if-eqz p5, :cond_53

    .line 20
    sget-object p1, Lcom/transsion/aicore/nexusflow/utils/BundleUtils;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/BundleUtils;

    move-object p2, p5

    const/4 p5, 0x4

    move-object p3, p6

    const/4 p6, 0x0

    const/4 p4, 0x0

    invoke-static/range {p1 .. p6}, Lcom/transsion/aicore/nexusflow/utils/BundleUtils;->copyBundle$default(Lcom/transsion/aicore/nexusflow/utils/BundleUtils;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/Set;ILjava/lang/Object;)V

    .line 21
    :cond_53
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 12

    new-instance v0, Lcom/transsion/aicore/nexusflow/a$d;

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/a$d;->b:Lcom/transsion/aicore/nexusflow/a;

    iget-object v2, p0, Lcom/transsion/aicore/nexusflow/a$d;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/aicore/nexusflow/a$d;->d:Lkotlin/jvm/functions/Function1;

    iget-object v4, p0, Lcom/transsion/aicore/nexusflow/a$d;->e:Ljava/lang/String;

    iget-wide v5, p0, Lcom/transsion/aicore/nexusflow/a$d;->f:J

    iget-object v7, p0, Lcom/transsion/aicore/nexusflow/a$d;->g:Landroid/os/Bundle;

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/transsion/aicore/nexusflow/a$d;-><init>(Lcom/transsion/aicore/nexusflow/a;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Ljava/lang/String;JLandroid/os/Bundle;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/transsion/aicore/nexusflow/a$d;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/aicore/nexusflow/a$d;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/transsion/aicore/nexusflow/a$d;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/transsion/aicore/nexusflow/a$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/aicore/nexusflow/a$d;->a:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    sget-object v0, Lcom/transsion/aicore/nexusflow/utils/BundleUtils;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/BundleUtils;

    iget-object v2, p0, Lcom/transsion/aicore/nexusflow/a$d;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/aicore/nexusflow/a$d;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/aicore/nexusflow/a$d;->b:Lcom/transsion/aicore/nexusflow/a;

    iget-wide v5, p0, Lcom/transsion/aicore/nexusflow/a$d;->f:J

    iget-object v7, p0, Lcom/transsion/aicore/nexusflow/a$d;->g:Landroid/os/Bundle;

    new-instance v1, Lcom/transsion/aicore/nexusflow/a$d$$ExternalSyntheticLambda0;

    invoke-direct/range {v1 .. v7}, Lcom/transsion/aicore/nexusflow/a$d$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/aicore/nexusflow/a;JLandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lcom/transsion/aicore/nexusflow/utils/BundleUtils;->createOptimizedBundle(Lkotlin/jvm/functions/Function1;)Landroid/os/Bundle;

    move-result-object p1

    .line 28
    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/a$d;->b:Lcom/transsion/aicore/nexusflow/a;

    .line 29
    iget-object v1, v1, Lcom/transsion/aicore/nexusflow/a;->b:Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;

    if-eqz v1, :cond_39

    .line 30
    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/a$d;->b:Lcom/transsion/aicore/nexusflow/a;

    iget-object v2, p0, Lcom/transsion/aicore/nexusflow/a$d;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/a$d;->d:Lkotlin/jvm/functions/Function1;

    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    new-instance v0, Lcom/transsion/aicore/nexusflow/c;

    const-string v3, "Initialization"

    invoke-direct {v0, v3, v2, p0}, Lcom/transsion/aicore/nexusflow/c;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 33
    invoke-virtual {v1, p1, v0}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->triggerFlow(Landroid/os/Bundle;Lcom/transsion/aicore/nexusflow/FlowResultCallback;)V

    goto :goto_49

    .line 37
    :cond_39
    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/a$d;->d:Lkotlin/jvm/functions/Function1;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/16 v1, -0x3eb

    .line 38
    const-string v2, "Service is not bound"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/transsion/aicore/nexusflow/utils/BundleUtils;->createErrorBundle$default(Lcom/transsion/aicore/nexusflow/utils/BundleUtils;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/os/Bundle;

    move-result-object p1

    .line 42
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :goto_49
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
