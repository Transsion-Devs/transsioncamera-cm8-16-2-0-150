.class public final Lcom/transsion/aicore/nexusflow/NexusFlow;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/aicore/nexusflow/NexusFlow$Companion;,
        Lcom/transsion/aicore/nexusflow/NexusFlow$LogLevel;,
        Lcom/transsion/aicore/nexusflow/NexusFlow$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/transsion/aicore/nexusflow/NexusFlow$Companion;

.field private static final TAG:Ljava/lang/String; = "NexusFlow"


# instance fields
.field private final context:Landroid/content/Context;

.field private final instanceId:Ljava/lang/String;

.field private final instanceIndex:I

.field private isLocalMode:Z


# direct methods
.method public static synthetic $r8$lambda$02UvQpb9YIm7___GhFRViRfV2Ks(Lcom/transsion/aicore/nexusflow/NexusFlow;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Lkotlin/jvm/functions/Function1;Lcom/transsion/aicore/nexusflow/a;)Lkotlin/Unit;
    .registers 6

    .line 0
    invoke-static/range {p0 .. p5}, Lcom/transsion/aicore/nexusflow/NexusFlow;->init$lambda$11$lambda$10(Lcom/transsion/aicore/nexusflow/NexusFlow;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Lkotlin/jvm/functions/Function1;Lcom/transsion/aicore/nexusflow/a;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$SkRY6NBjTsMb74exZiBeJ-ujT_8(Landroid/os/Bundle;)Lkotlin/Unit;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/transsion/aicore/nexusflow/NexusFlow;->deInit$lambda$12(Landroid/os/Bundle;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$dESfeuJWuMceStAC9dIi6aKBERQ(Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/transsion/aicore/nexusflow/NexusFlow;->executeSyncFlowInternal$lambda$1(Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xyTMrtAmHFExxoYifnIB_OiVC58(Ljava/lang/String;Landroid/os/Bundle;)Lkotlin/Unit;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/transsion/aicore/nexusflow/NexusFlow;->executeSyncFlowInternal$lambda$0(Ljava/lang/String;Landroid/os/Bundle;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/transsion/aicore/nexusflow/NexusFlow$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/aicore/nexusflow/NexusFlow$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/aicore/nexusflow/NexusFlow;->Companion:Lcom/transsion/aicore/nexusflow/NexusFlow$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/aicore/nexusflow/NexusFlow;->instanceId:Ljava/lang/String;

    .line 28
    sget-object v0, Lcom/transsion/aicore/nexusflow/d;->a:Lcom/transsion/aicore/nexusflow/d;

    monitor-enter v0

    .line 29
    :try_start_15
    sget-object v1, Lcom/transsion/aicore/nexusflow/d;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_68

    .line 30
    iput v1, p0, Lcom/transsion/aicore/nexusflow/NexusFlow;->instanceIndex:I

    .line 34
    :try_start_1e
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_22} :catch_23

    goto :goto_2e

    :catch_23
    move-exception p1

    .line 36
    sget-object v0, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    const-string v1, "NexusFlow"

    const-string v2, "Failed to get application context"

    invoke-virtual {v0, v1, v2, p1}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 37
    :goto_2e
    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/NexusFlow;->context:Landroid/content/Context;

    .line 46
    sget-object p1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    .line 47
    const-string v0, "NexusFlow"

    .line 48
    iget v1, p0, Lcom/transsion/aicore/nexusflow/NexusFlow;->instanceIndex:I

    .line 49
    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/NexusFlow;->instanceId:Ljava/lang/String;

    .line 50
    sget-object v2, Lcom/transsion/aicore/nexusflow/d;->a:Lcom/transsion/aicore/nexusflow/d;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    sget-object v2, Lcom/transsion/aicore/nexusflow/d;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NexusFlow instance created. Instance Index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Instance ID: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", Total Instances Now: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 53
    invoke-virtual {p1, v0, p0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_68
    move-exception p0

    .line 54
    monitor-exit v0

    throw p0
.end method

.method public static final synthetic access$setLocalMode$p(Lcom/transsion/aicore/nexusflow/NexusFlow;Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/transsion/aicore/nexusflow/NexusFlow;->isLocalMode:Z

    return-void
.end method

.method private final createErrorResult(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/aicore/nexusflow/FlowInvokeResult$ErrorResult;
    .registers 6

    .line 1
    sget-object v0, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating error result for flowId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NexusFlow"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$ErrorResult;

    .line 4
    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/NexusFlow;->instanceId:Ljava/lang/String;

    const/4 v1, -0x1

    .line 5
    invoke-direct {v0, p1, p0, p2, v1}, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$ErrorResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method private final createStreamerInternal(Ljava/lang/String;Lcom/transsion/aicore/nexusflow/a;)Lcom/transsion/aicore/nexusflow/utils/Streamer;
    .registers 6

    .line 1
    sget-object p0, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createStreamerInternal called for flowId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NexusFlow"

    invoke-virtual {p0, v1, v0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :try_start_18
    new-instance p0, Lcom/transsion/aicore/nexusflow/utils/Streamer;

    invoke-direct {p0, p1, p2}, Lcom/transsion/aicore/nexusflow/utils/Streamer;-><init>(Ljava/lang/String;Lcom/transsion/aicore/nexusflow/a;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1d} :catch_1e

    return-object p0

    :catch_1e
    move-exception p0

    .line 5
    sget-object p2, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create streamer internally for flowId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v1, p1, p0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic deInit$default(Lcom/transsion/aicore/nexusflow/NexusFlow;ZILjava/lang/Object;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    .line 1
    :cond_5
    invoke-virtual {p0, p1}, Lcom/transsion/aicore/nexusflow/NexusFlow;->deInit(Z)V

    return-void
.end method

.method private static final deInit$lambda$12(Landroid/os/Bundle;)Lkotlin/Unit;
    .registers 4

    const-string v0, "res"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Local deInit result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "NexusFlow"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final dispatchLocalIfNeed(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Lkotlin/jvm/functions/Function1;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Lkotlin/jvm/functions/Function1;",
            ")Z"
        }
    .end annotation

    .line 1
    const-string v0, "FLOW_INIT"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "preProcess"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_16

    if-eqz p4, :cond_16

    invoke-virtual {p4, v1, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-ne v0, v2, :cond_16

    move v0, v2

    goto :goto_17

    :cond_16
    move v0, v3

    .line 2
    :goto_17
    const-string v4, "FLOW_DEINIT"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    iget-boolean v4, p0, Lcom/transsion/aicore/nexusflow/NexusFlow;->isLocalMode:Z

    if-nez v4, :cond_2b

    if-eqz p4, :cond_2d

    .line 3
    invoke-virtual {p4, v1, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-ne v4, v2, :cond_2d

    :cond_2b
    move v4, v2

    goto :goto_2e

    :cond_2d
    move v4, v3

    :goto_2e
    if-nez v0, :cond_33

    if-nez v4, :cond_33

    return v3

    .line 12
    :cond_33
    sget-object v0, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    iget-object v4, p0, Lcom/transsion/aicore/nexusflow/NexusFlow;->instanceId:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Local-Route] Intercepting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " for instance: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NexusFlow"

    invoke-virtual {v0, v5, v4}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    sget-object v0, Lcom/transsion/aicore/nexusflow/SafeExecutor;->INSTANCE:Lcom/transsion/aicore/nexusflow/SafeExecutor;

    .line 15
    :try_start_57
    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/NexusFlow;->context:Landroid/content/Context;

    if-eqz v0, :cond_a3

    .line 18
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 19
    const-string v4, "action"

    invoke-virtual {v0, v4, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    const-string v4, "instanceId"

    iget-object v6, p0, Lcom/transsion/aicore/nexusflow/NexusFlow;->instanceId:Ljava/lang/String;

    invoke-virtual {v0, v4, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    const-string v4, "flowId"

    invoke-virtual {v0, v4, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_89

    .line 23
    const-string p2, "capabilities"

    .line 372
    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {p3, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    .line 373
    invoke-virtual {v0, p2, p3}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_89

    :catchall_81
    move-exception p0

    goto :goto_a6

    :catch_83
    move-exception p0

    goto :goto_c1

    :catch_85
    move-exception p0

    goto :goto_dc

    :catch_87
    move-exception p0

    goto :goto_f7

    :cond_89
    :goto_89
    if-eqz p4, :cond_8e

    .line 376
    invoke-virtual {v0, p4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 379
    :cond_8e
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 383
    sget-object p2, Lcom/transsion/aicore/nexusflow/d;->a:Lcom/transsion/aicore/nexusflow/d;

    iget-object p3, p0, Lcom/transsion/aicore/nexusflow/NexusFlow;->context:Landroid/content/Context;

    invoke-virtual {p2, p3}, Lcom/transsion/aicore/nexusflow/d;->b(Landroid/content/Context;)Lcom/example/dispatcher_client/FlowPreDispatcher;

    move-result-object p2

    .line 386
    new-instance p3, Lcom/transsion/aicore/nexusflow/NexusFlow$b;

    invoke-direct {p3, p1, p0, p5}, Lcom/transsion/aicore/nexusflow/NexusFlow$b;-><init>(Ljava/lang/String;Lcom/transsion/aicore/nexusflow/NexusFlow;Lkotlin/jvm/functions/Function1;)V

    .line 411
    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/NexusFlow;->context:Landroid/content/Context;

    invoke-virtual {p2, p0, v0, p3}, Lcom/example/dispatcher_client/FlowPreDispatcher;->submitFlow(Landroid/content/Context;Landroid/os/Bundle;Lcom/example/dispatcher_client/ClientProcessCallBack;)V

    .line 412
    :cond_a3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_a5
    .catch Landroid/os/DeadObjectException; {:try_start_57 .. :try_end_a5} :catch_87
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_a5} :catch_85
    .catch Ljava/lang/Error; {:try_start_57 .. :try_end_a5} :catch_83
    .catchall {:try_start_57 .. :try_end_a5} :catchall_81

    goto :goto_111

    .line 413
    :goto_a6
    sget-object p1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Safe execution failed with Throwable: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v5, p2, p0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_111

    .line 414
    :goto_c1
    sget-object p1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Safe execution failed with Error: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v5, p2, p0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_111

    .line 415
    :goto_dc
    sget-object p1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Safe execution failed: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v5, p2, p0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_111

    .line 416
    :goto_f7
    sget-object p1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Safe execution failed due to DeadObjectException: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v5, p2, p0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_111
    return v2
.end method

.method public static synthetic dispatchLocalIfNeed$default(Lcom/transsion/aicore/nexusflow/NexusFlow;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Z
    .registers 9

    and-int/lit8 p7, p6, 0x4

    const/4 v0, 0x0

    if-eqz p7, :cond_6

    move-object p3, v0

    :cond_6
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_b

    move-object p4, v0

    :cond_b
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_10

    move-object p5, v0

    .line 1
    :cond_10
    invoke-direct/range {p0 .. p5}, Lcom/transsion/aicore/nexusflow/NexusFlow;->dispatchLocalIfNeed(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Lkotlin/jvm/functions/Function1;)Z

    move-result p0

    return p0
.end method

.method private final executeSyncFlowInternal(Lcom/transsion/aicore/nexusflow/FlowConfig;Lcom/transsion/aicore/nexusflow/a;)Lcom/transsion/aicore/nexusflow/FlowInvokeResult;
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 1
    const-string v3, "Sync timeout after "

    const-string v4, "ms"

    const-string v5, "[SYNC_DEBUG] exception finally Cleaned up internal sync waiter for "

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/aicore/nexusflow/FlowConfig;->getFlowId()Ljava/lang/String;

    move-result-object v8

    .line 2
    sget-object v9, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[SYNC_DEBUG] executeSyncFlowInternal for flowId: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v15, "NexusFlow"

    invoke-virtual {v9, v15, v0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v2, v8}, Lcom/transsion/aicore/nexusflow/a;->d(Ljava/lang/String;)V

    .line 8
    :try_start_29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[SYNC_DEBUG] Starting sync flow internal for "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v15, v0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    sget-object v0, Lcom/transsion/aicore/nexusflow/callback/CallbackFactory;->INSTANCE:Lcom/transsion/aicore/nexusflow/callback/CallbackFactory;

    new-instance v6, Lcom/transsion/aicore/nexusflow/NexusFlow$$ExternalSyntheticLambda2;

    invoke-direct {v6, v8}, Lcom/transsion/aicore/nexusflow/NexusFlow$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    new-instance v7, Lcom/transsion/aicore/nexusflow/NexusFlow$$ExternalSyntheticLambda3;

    invoke-direct {v7, v8}, Lcom/transsion/aicore/nexusflow/NexusFlow$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8, v6, v7}, Lcom/transsion/aicore/nexusflow/callback/CallbackFactory;->createSyncInternalCallback(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lcom/transsion/aicore/nexusflow/FlowCallback;

    move-result-object v0

    move-object/from16 v6, p1

    .line 18
    invoke-virtual {v2, v6, v0}, Lcom/transsion/aicore/nexusflow/a;->a(Lcom/transsion/aicore/nexusflow/FlowConfig;Lcom/transsion/aicore/nexusflow/FlowCallback;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_91

    .line 21
    const-string v10, "NexusFlow"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[SYNC_DEBUG] Failed to start internal flow for "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x4

    const/4 v14, 0x0

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e$default(Lcom/transsion/aicore/nexusflow/utils/NFLog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    move-object v0, v9

    .line 22
    const-string v7, "Failed to start sync flow."

    invoke-direct {v1, v8, v7}, Lcom/transsion/aicore/nexusflow/NexusFlow;->createErrorResult(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/aicore/nexusflow/FlowInvokeResult$ErrorResult;

    move-result-object v1
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_75} :catch_8e
    .catchall {:try_start_29 .. :try_end_75} :catchall_8b

    .line 71
    invoke-virtual {v2, v8}, Lcom/transsion/aicore/nexusflow/a;->c(Ljava/lang/String;)V

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 75
    invoke-virtual {v0, v15, v2}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :catchall_8b
    move-exception v0

    goto/16 :goto_1ad

    :catch_8e
    move-exception v0

    goto/16 :goto_167

    :cond_91
    move-object v0, v9

    .line 76
    :try_start_92
    invoke-virtual {v6}, Lcom/transsion/aicore/nexusflow/FlowConfig;->getDisableTimeout()Z

    move-result v7

    if-eqz v7, :cond_a1

    .line 77
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v9, 0x5

    invoke-virtual {v7, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    goto :goto_a5

    .line 79
    :cond_a1
    invoke-virtual {v6}, Lcom/transsion/aicore/nexusflow/FlowConfig;->getTimeoutMs()J

    move-result-wide v9

    .line 84
    :goto_a5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[SYNC_DEBUG] Waiting for internal sync result for "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " with timeout "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 85
    invoke-virtual {v0, v15, v7}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v2, v8, v9, v10}, Lcom/transsion/aicore/nexusflow/a;->a(Ljava/lang/String;J)Landroid/os/Bundle;

    move-result-object v7

    const/4 v9, 0x0

    if-eqz v7, :cond_cd

    const/4 v10, 0x1

    goto :goto_ce

    :cond_cd
    move v10, v9

    .line 92
    :goto_ce
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[SYNC_DEBUG] Internal wait completed for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", result: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 93
    invoke-virtual {v0, v15, v10}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v7, :cond_118

    .line 100
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[SYNC_DEBUG] Creating SyncResult for flowId: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v15, v10}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    new-instance v6, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$SyncResult;

    .line 104
    iget-object v10, v1, Lcom/transsion/aicore/nexusflow/NexusFlow;->instanceId:Ljava/lang/String;

    .line 106
    const-string v11, "success"

    .line 107
    invoke-virtual {v7, v11, v9}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    const/16 v12, 0x10

    const/4 v13, 0x0

    const/4 v11, 0x0

    move-object/from16 v16, v10

    move v10, v9

    move-object/from16 v9, v16

    .line 108
    invoke-direct/range {v6 .. v13}, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$SyncResult;-><init>(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v9, v0

    goto :goto_151

    .line 121
    :cond_118
    const-string v10, "NexusFlow"

    .line 122
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[SYNC_DEBUG] Unexpected null result with disabled timeout for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x4

    const/4 v14, 0x0

    const/4 v12, 0x0

    move-object v9, v0

    .line 123
    invoke-static/range {v9 .. v14}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->w$default(Lcom/transsion/aicore/nexusflow/utils/NFLog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 128
    const-string v0, "Sync timeout"

    invoke-virtual {v2, v8, v0}, Lcom/transsion/aicore/nexusflow/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/aicore/nexusflow/FlowConfig;->getTimeoutMs()J

    move-result-wide v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v8, v0}, Lcom/transsion/aicore/nexusflow/NexusFlow;->createErrorResult(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/aicore/nexusflow/FlowInvokeResult$ErrorResult;

    move-result-object v6
    :try_end_151
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_151} :catch_8e
    .catchall {:try_start_92 .. :try_end_151} :catchall_8b

    .line 136
    :goto_151
    invoke-virtual {v2, v8}, Lcom/transsion/aicore/nexusflow/a;->c(Ljava/lang/String;)V

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-virtual {v9, v15, v0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    .line 141
    :goto_167
    :try_start_167
    sget-object v6, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[SYNC_DEBUG] Exception in executeSyncFlowInternal for "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v15, v7, v0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 142
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/aicore/nexusflow/FlowConfig;->getTimeoutMs()J

    move-result-wide v9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v8, v0}, Lcom/transsion/aicore/nexusflow/NexusFlow;->createErrorResult(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/aicore/nexusflow/FlowInvokeResult$ErrorResult;

    move-result-object v0
    :try_end_197
    .catchall {:try_start_167 .. :try_end_197} :catchall_8b

    .line 145
    invoke-virtual {v2, v8}, Lcom/transsion/aicore/nexusflow/a;->c(Ljava/lang/String;)V

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 149
    invoke-virtual {v6, v15, v1}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 150
    :goto_1ad
    invoke-virtual {v2, v8}, Lcom/transsion/aicore/nexusflow/a;->c(Ljava/lang/String;)V

    .line 151
    sget-object v1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 154
    invoke-virtual {v1, v15, v2}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method private static final executeSyncFlowInternal$lambda$0(Ljava/lang/String;Landroid/os/Bundle;)Lkotlin/Unit;
    .registers 4

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SYNC_DEBUG] Internal flow completed for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NexusFlow"

    invoke-virtual {p1, v0, p0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final executeSyncFlowInternal$lambda$1(Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .registers 9

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SYNC_DEBUG] Internal flow error for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "NexusFlow"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e$default(Lcom/transsion/aicore/nexusflow/utils/NFLog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic init$default(Lcom/transsion/aicore/nexusflow/NexusFlow;Ljava/util/List;Landroid/os/Bundle;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .registers 6

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_5

    const/4 p2, 0x0

    .line 1
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/aicore/nexusflow/NexusFlow;->init(Ljava/util/List;Landroid/os/Bundle;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final init$lambda$11$lambda$10(Lcom/transsion/aicore/nexusflow/NexusFlow;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Lkotlin/jvm/functions/Function1;Lcom/transsion/aicore/nexusflow/a;)Lkotlin/Unit;
    .registers 16

    const-string v0, "flowManager"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/transsion/aicore/nexusflow/SafeExecutor;->INSTANCE:Lcom/transsion/aicore/nexusflow/SafeExecutor;

    const-string v1, "NexusFlow"

    .line 2
    :try_start_9
    sget-object v0, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    iget-object v2, p0, Lcom/transsion/aicore/nexusflow/NexusFlow;->instanceId:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Initializing capabilities for instanceId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v4, p0, Lcom/transsion/aicore/nexusflow/NexusFlow;->context:Landroid/content/Context;

    .line 6
    iget-object v6, p0, Lcom/transsion/aicore/nexusflow/NexusFlow;->instanceId:Ljava/lang/String;

    move-object v5, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    move-object v3, p5

    .line 7
    invoke-virtual/range {v3 .. v9}, Lcom/transsion/aicore/nexusflow/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Lkotlin/jvm/functions/Function1;)V

    .line 16
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2f
    .catch Landroid/os/DeadObjectException; {:try_start_9 .. :try_end_2f} :catch_3a
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_2f} :catch_37
    .catch Ljava/lang/Error; {:try_start_9 .. :try_end_2f} :catch_34
    .catchall {:try_start_9 .. :try_end_2f} :catchall_31

    goto/16 :goto_a8

    :catchall_31
    move-exception v0

    move-object p0, v0

    goto :goto_3d

    :catch_34
    move-exception v0

    move-object p0, v0

    goto :goto_58

    :catch_37
    move-exception v0

    move-object p0, v0

    goto :goto_73

    :catch_3a
    move-exception v0

    move-object p0, v0

    goto :goto_8e

    .line 17
    :goto_3d
    sget-object p1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Safe execution failed with Throwable: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2, p0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a8

    .line 18
    :goto_58
    sget-object p1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Safe execution failed with Error: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2, p0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a8

    .line 19
    :goto_73
    sget-object p1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Safe execution failed: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2, p0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a8

    .line 20
    :goto_8e
    sget-object p1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Safe execution failed due to DeadObjectException: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2, p0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    :goto_a8
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic setConnectionCallbacks$default(Lcom/transsion/aicore/nexusflow/NexusFlow;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .registers 6

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_6

    move-object p1, v0

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_b

    move-object p2, v0

    .line 1
    :cond_b
    invoke-virtual {p0, p1, p2}, Lcom/transsion/aicore/nexusflow/NexusFlow;->setConnectionCallbacks(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final setLogLevel(Lcom/transsion/aicore/nexusflow/NexusFlow$LogLevel;)V
    .registers 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    sget-object v0, Lcom/transsion/aicore/nexusflow/NexusFlow;->Companion:Lcom/transsion/aicore/nexusflow/NexusFlow$Companion;

    invoke-virtual {v0, p0}, Lcom/transsion/aicore/nexusflow/NexusFlow$Companion;->setLogLevel(Lcom/transsion/aicore/nexusflow/NexusFlow$LogLevel;)V

    return-void
.end method


# virtual methods
.method public final builder()Lcom/transsion/aicore/nexusflow/FlowBuilder;
    .registers 7

    .line 1
    sget-object v0, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    const-string v1, "NexusFlow.builder called"

    const-string v2, "NexusFlow"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/NexusFlow;->context:Landroid/content/Context;

    if-eqz v1, :cond_2d

    .line 7
    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/NexusFlow;->instanceId:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating FlowBuilder with instanceId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance v0, Lcom/transsion/aicore/nexusflow/FlowBuilder;

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/NexusFlow;->context:Landroid/content/Context;

    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/NexusFlow;->instanceId:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/transsion/aicore/nexusflow/FlowBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0

    :cond_2d
    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 9
    const-string v1, "NexusFlow"

    const-string v2, "Context is null, cannot create FlowBuilder."

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e$default(Lcom/transsion/aicore/nexusflow/utils/NFLog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 10
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "NexusFlow cannot be used with a null context. Please ensure it\'s initialized properly."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final createStreamer(Ljava/lang/String;)Lcom/transsion/aicore/nexusflow/utils/Streamer;
    .registers 9

    const-string v0, "flowId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createStreamer called for flowId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NexusFlow"

    invoke-virtual {v1, v2, v0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/NexusFlow;->context:Landroid/content/Context;

    if-nez p0, :cond_2d

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 3
    const-string v2, "NexusFlow"

    const-string v3, "Cannot create com.transsion.aicore.nexusflow.utils.Streamer, context is null."

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e$default(Lcom/transsion/aicore/nexusflow/utils/NFLog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    .line 10
    :cond_2d
    sget-object v0, Lcom/transsion/aicore/nexusflow/d;->a:Lcom/transsion/aicore/nexusflow/d;

    invoke-virtual {v0, p0}, Lcom/transsion/aicore/nexusflow/d;->a(Landroid/content/Context;)Lcom/transsion/aicore/nexusflow/a;

    move-result-object p0

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating Streamer for flowId: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    new-instance v0, Lcom/transsion/aicore/nexusflow/utils/Streamer;

    invoke-direct {v0, p1, p0}, Lcom/transsion/aicore/nexusflow/utils/Streamer;-><init>(Ljava/lang/String;Lcom/transsion/aicore/nexusflow/a;)V

    return-object v0
.end method

.method public final deInit()V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    invoke-static {p0, v2, v0, v1}, Lcom/transsion/aicore/nexusflow/NexusFlow;->deInit$default(Lcom/transsion/aicore/nexusflow/NexusFlow;ZILjava/lang/Object;)V

    return-void
.end method

.method public final deInit(Z)V
    .registers 13

    .line 2
    sget-object v0, Lcom/transsion/aicore/nexusflow/FlowBuilder;->Companion:Lcom/transsion/aicore/nexusflow/FlowBuilder$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/transsion/aicore/nexusflow/FlowBuilder$a;->a()Ljava/lang/String;

    move-result-object v3

    .line 3
    sget-object v0, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    .line 5
    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/NexusFlow;->instanceId:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NexusFlow.deInit called. isAsync="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ". Releasing server resources for instanceId: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6
    const-string v10, "NexusFlow"

    invoke-virtual {v0, v10, v1}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    new-instance v6, Lcom/transsion/aicore/nexusflow/NexusFlow$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Lcom/transsion/aicore/nexusflow/NexusFlow$$ExternalSyntheticLambda1;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v2, "FLOW_DEINIT"

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/transsion/aicore/nexusflow/NexusFlow;->dispatchLocalIfNeed(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Lkotlin/jvm/functions/Function1;)Z

    move-result p0

    if-eqz p0, :cond_3d

    goto/16 :goto_f4

    .line 15
    :cond_3d
    sget-object p0, Lcom/transsion/aicore/nexusflow/SafeExecutor;->INSTANCE:Lcom/transsion/aicore/nexusflow/SafeExecutor;

    .line 16
    :try_start_3f
    iget-object p0, v1, Lcom/transsion/aicore/nexusflow/NexusFlow;->context:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez p0, :cond_61

    .line 17
    const-string v5, "NexusFlow"

    const-string v6, "Context is null during deInit. Directly notifying factory."

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v4, v0

    invoke-static/range {v4 .. v9}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e$default(Lcom/transsion/aicore/nexusflow/utils/NFLog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    const/4 p0, 0x0

    .line 18
    invoke-static {v2, v2, p0}, Lcom/transsion/aicore/nexusflow/d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_86

    :catchall_54
    move-exception v0

    move-object p0, v0

    goto :goto_89

    :catch_57
    move-exception v0

    move-object p0, v0

    goto :goto_a4

    :catch_5a
    move-exception v0

    move-object p0, v0

    goto :goto_bf

    :catch_5d
    move-exception v0

    move-object p0, v0

    goto/16 :goto_da

    :cond_61
    move-object v4, v0

    .line 19
    sget-object v0, Lcom/transsion/aicore/nexusflow/d;->a:Lcom/transsion/aicore/nexusflow/d;

    invoke-virtual {v0, p0}, Lcom/transsion/aicore/nexusflow/d;->a(Landroid/content/Context;)Lcom/transsion/aicore/nexusflow/a;

    move-result-object p0

    .line 22
    iget-object v0, v1, Lcom/transsion/aicore/nexusflow/NexusFlow;->instanceId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/aicore/nexusflow/a;->b(Ljava/lang/String;)V

    .line 23
    const-string v0, "FlowManager"

    const-string v3, "setConnectionCallbacks called"

    invoke-virtual {v4, v0, v3}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iput-object v2, p0, Lcom/transsion/aicore/nexusflow/a;->n:Lkotlin/jvm/functions/Function0;

    .line 25
    iput-object v2, p0, Lcom/transsion/aicore/nexusflow/a;->o:Lkotlin/jvm/functions/Function1;

    .line 26
    invoke-static {}, Lcom/transsion/aicore/nexusflow/FlowBuilder$a;->a()Ljava/lang/String;

    move-result-object p0

    .line 27
    iget-object v0, v1, Lcom/transsion/aicore/nexusflow/NexusFlow;->instanceId:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/transsion/aicore/nexusflow/d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 29
    const-string p0, "Instance deInit completed."

    invoke-virtual {v4, v10, p0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :goto_86
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_88
    .catch Landroid/os/DeadObjectException; {:try_start_3f .. :try_end_88} :catch_5d
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_88} :catch_5a
    .catch Ljava/lang/Error; {:try_start_3f .. :try_end_88} :catch_57
    .catchall {:try_start_3f .. :try_end_88} :catchall_54

    return-void

    .line 31
    :goto_89
    sget-object p1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Safe execution failed with Throwable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v10, v0, p0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f4

    .line 32
    :goto_a4
    sget-object p1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Safe execution failed with Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v10, v0, p0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f4

    .line 33
    :goto_bf
    sget-object p1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Safe execution failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v10, v0, p0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f4

    .line 34
    :goto_da
    sget-object p1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Safe execution failed due to DeadObjectException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v10, v0, p0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_f4
    return-void
.end method

.method public final init(Ljava/util/List;Landroid/os/Bundle;Lkotlin/jvm/functions/Function1;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    const-string v0, "capabilities"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/transsion/aicore/nexusflow/FlowBuilder;->Companion:Lcom/transsion/aicore/nexusflow/FlowBuilder$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/transsion/aicore/nexusflow/FlowBuilder$a;->a()Ljava/lang/String;

    move-result-object v3

    .line 2
    sget-object v0, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    .line 4
    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/NexusFlow;->instanceId:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NexusFlow.init called for instanceId: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (tracked by internal flowId: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    const-string v10, "NexusFlow"

    invoke-virtual {v0, v10, v1}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    const-string v2, "FLOW_INIT"

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/transsion/aicore/nexusflow/NexusFlow;->dispatchLocalIfNeed(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Lkotlin/jvm/functions/Function1;)Z

    move-result p0

    move-object p1, v6

    if-eqz p0, :cond_49

    goto/16 :goto_116

    .line 19
    :cond_49
    sget-object p0, Lcom/transsion/aicore/nexusflow/SafeExecutor;->INSTANCE:Lcom/transsion/aicore/nexusflow/SafeExecutor;

    .line 20
    :try_start_4b
    iget-object p0, v1, Lcom/transsion/aicore/nexusflow/NexusFlow;->context:Landroid/content/Context;

    if-nez p0, :cond_91

    .line 21
    const-string v5, "NexusFlow"

    const-string v6, "Context is null, cannot init"

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v4, v0

    invoke-static/range {v4 .. v9}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e$default(Lcom/transsion/aicore/nexusflow/utils/NFLog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    move-object p0, v4

    .line 22
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 23
    const-string p3, "success"

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 25
    const-string p3, "error"

    .line 26
    const-string v0, "Context is null, cannot init."

    .line 27
    invoke-virtual {p2, p3, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string p3, "flowId"

    invoke-virtual {p2, p3, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_72
    .catch Landroid/os/DeadObjectException; {:try_start_4b .. :try_end_72} :catch_8e
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_72} :catch_8b
    .catch Ljava/lang/Error; {:try_start_4b .. :try_end_72} :catch_88
    .catchall {:try_start_4b .. :try_end_72} :catchall_85

    .line 34
    :try_start_72
    const-string p3, "Calling user callback with error"

    invoke-virtual {p0, v10, p3}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7a
    .catchall {:try_start_72 .. :try_end_7a} :catchall_7b

    goto :goto_a8

    :catchall_7b
    move-exception v0

    move-object p0, v0

    .line 37
    :try_start_7d
    sget-object p1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    const-string p2, "Error in user\'s init callback"

    invoke-virtual {p1, v10, p2, p0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a8

    :catchall_85
    move-exception v0

    move-object p0, v0

    goto :goto_ab

    :catch_88
    move-exception v0

    move-object p0, v0

    goto :goto_c6

    :catch_8b
    move-exception v0

    move-object p0, v0

    goto :goto_e1

    :catch_8e
    move-exception v0

    move-object p0, v0

    goto :goto_fc

    :cond_91
    move-object p0, v0

    .line 43
    const-string p2, "Initializing FlowManager when ready"

    invoke-virtual {p0, v10, p2}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    sget-object p0, Lcom/transsion/aicore/nexusflow/d;->a:Lcom/transsion/aicore/nexusflow/d;

    iget-object p2, v1, Lcom/transsion/aicore/nexusflow/NexusFlow;->context:Landroid/content/Context;

    move-object v2, v1

    new-instance v1, Lcom/transsion/aicore/nexusflow/NexusFlow$$ExternalSyntheticLambda0;

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/transsion/aicore/nexusflow/NexusFlow$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/aicore/nexusflow/NexusFlow;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, v1}, Lcom/transsion/aicore/nexusflow/d;->a(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V

    .line 59
    :goto_a8
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_aa
    .catch Landroid/os/DeadObjectException; {:try_start_7d .. :try_end_aa} :catch_8e
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_aa} :catch_8b
    .catch Ljava/lang/Error; {:try_start_7d .. :try_end_aa} :catch_88
    .catchall {:try_start_7d .. :try_end_aa} :catchall_85

    goto :goto_116

    .line 60
    :goto_ab
    sget-object p1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Safe execution failed with Throwable: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v10, p2, p0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_116

    .line 61
    :goto_c6
    sget-object p1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Safe execution failed with Error: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v10, p2, p0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_116

    .line 62
    :goto_e1
    sget-object p1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Safe execution failed: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v10, p2, p0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_116

    .line 63
    :goto_fc
    sget-object p1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Safe execution failed due to DeadObjectException: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v10, p2, p0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_116
    return-void
.end method

.method public final invoke(Lcom/transsion/aicore/nexusflow/FlowConfig;)Lcom/transsion/aicore/nexusflow/FlowInvokeResult;
    .registers 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "config"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v3, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    .line 3
    invoke-virtual {v0}, Lcom/transsion/aicore/nexusflow/FlowConfig;->getFlowId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/transsion/aicore/nexusflow/FlowConfig;->getMethod()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NexusFlow.invoke called with config: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", method: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4
    const-string v9, "NexusFlow"

    invoke-virtual {v3, v9, v2}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    sget-object v2, Lcom/transsion/aicore/nexusflow/SafeExecutor;->INSTANCE:Lcom/transsion/aicore/nexusflow/SafeExecutor;

    .line 11
    invoke-virtual {v0}, Lcom/transsion/aicore/nexusflow/FlowConfig;->getFlowId()Ljava/lang/String;

    move-result-object v2

    .line 12
    const-string v4, "Internal config error during invoke"

    invoke-direct {v1, v2, v4}, Lcom/transsion/aicore/nexusflow/NexusFlow;->createErrorResult(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/aicore/nexusflow/FlowInvokeResult$ErrorResult;

    move-result-object v2

    const-string v4, "null cannot be cast to non-null type com.transsion.aicore.nexusflow.FlowInvokeResult"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    :try_start_42
    iget-object v4, v1, Lcom/transsion/aicore/nexusflow/NexusFlow;->context:Landroid/content/Context;

    if-nez v4, :cond_67

    .line 19
    const-string v4, "NexusFlow"

    const-string v5, "Context is null, cannot invoke flow"

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e$default(Lcom/transsion/aicore/nexusflow/utils/NFLog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 21
    invoke-virtual {v0}, Lcom/transsion/aicore/nexusflow/FlowConfig;->getFlowId()Ljava/lang/String;

    move-result-object v0

    .line 22
    const-string v3, "Context is null,cannot invoke."

    .line 23
    invoke-direct {v1, v0, v3}, Lcom/transsion/aicore/nexusflow/NexusFlow;->createErrorResult(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/aicore/nexusflow/FlowInvokeResult$ErrorResult;

    move-result-object v0

    return-object v0

    :catchall_5b
    move-exception v0

    goto/16 :goto_1fa

    :catch_5e
    move-exception v0

    goto/16 :goto_215

    :catch_61
    move-exception v0

    goto/16 :goto_230

    :catch_64
    move-exception v0

    goto/16 :goto_24b

    .line 29
    :cond_67
    invoke-virtual {v0}, Lcom/transsion/aicore/nexusflow/FlowConfig;->getFlowId()Ljava/lang/String;

    move-result-object v12

    .line 31
    sget-object v4, Lcom/transsion/aicore/nexusflow/d;->a:Lcom/transsion/aicore/nexusflow/d;

    iget-object v5, v1, Lcom/transsion/aicore/nexusflow/NexusFlow;->context:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/transsion/aicore/nexusflow/d;->a(Landroid/content/Context;)Lcom/transsion/aicore/nexusflow/a;

    move-result-object v5

    .line 35
    invoke-virtual {v0}, Lcom/transsion/aicore/nexusflow/FlowConfig;->getMethod()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/transsion/aicore/nexusflow/FlowConfig;->getExecutionMode()Lcom/transsion/aicore/nexusflow/ExecutionMode;

    move-result-object v7

    invoke-virtual {v0}, Lcom/transsion/aicore/nexusflow/FlowConfig;->getParams()Landroid/os/Bundle;

    move-result-object v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "invoke called with config: flowId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", method="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", executionMode="

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ",Config params: "

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 36
    invoke-virtual {v3, v9, v6}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {v0}, Lcom/transsion/aicore/nexusflow/FlowConfig;->getExecutionMode()Lcom/transsion/aicore/nexusflow/ExecutionMode;

    move-result-object v6

    sget-object v7, Lcom/transsion/aicore/nexusflow/NexusFlow$a;->$EnumSwitchMapping$0:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v7, v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_141

    const/4 v4, 0x2

    if-ne v6, v4, :cond_13b

    .line 90
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ASYNC_DEBUG] Executing ASYNC flow for flowId: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v9, v4}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    sget-object v13, Lcom/transsion/aicore/nexusflow/callback/CallbackFactory;->INSTANCE:Lcom/transsion/aicore/nexusflow/callback/CallbackFactory;

    .line 94
    invoke-virtual {v0}, Lcom/transsion/aicore/nexusflow/FlowConfig;->getFlowId()Ljava/lang/String;

    move-result-object v14

    .line 95
    invoke-virtual {v0}, Lcom/transsion/aicore/nexusflow/FlowConfig;->getCallback()Lcom/transsion/aicore/nexusflow/FlowCallback;

    move-result-object v15

    const/16 v17, 0x4

    const/16 v18, 0x0

    const/16 v16, 0x0

    .line 96
    invoke-static/range {v13 .. v18}, Lcom/transsion/aicore/nexusflow/callback/CallbackFactory;->createAsyncWrapperCallback$default(Lcom/transsion/aicore/nexusflow/callback/CallbackFactory;Ljava/lang/String;Lcom/transsion/aicore/nexusflow/FlowCallback;Ljava/lang/String;ILjava/lang/Object;)Lcom/transsion/aicore/nexusflow/FlowCallback;

    move-result-object v4

    .line 101
    invoke-virtual {v5, v0, v4}, Lcom/transsion/aicore/nexusflow/a;->a(Lcom/transsion/aicore/nexusflow/FlowConfig;Lcom/transsion/aicore/nexusflow/FlowCallback;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_10f

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ASYNC_DEBUG] Async flow started successfully: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v9, v0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    new-instance v13, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$AsyncResult;

    iget-object v15, v1, Lcom/transsion/aicore/nexusflow/NexusFlow;->instanceId:Ljava/lang/String;

    const/16 v18, 0x8

    const/16 v19, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-direct/range {v13 .. v19}, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$AsyncResult;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v13

    .line 107
    :cond_10f
    const-string v4, "NexusFlow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ASYNC_DEBUG] Failed to start async flow for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e$default(Lcom/transsion/aicore/nexusflow/utils/NFLog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 108
    new-instance v10, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$ErrorResult;

    .line 109
    invoke-virtual {v0}, Lcom/transsion/aicore/nexusflow/FlowConfig;->getFlowId()Ljava/lang/String;

    move-result-object v11

    .line 110
    iget-object v12, v1, Lcom/transsion/aicore/nexusflow/NexusFlow;->instanceId:Ljava/lang/String;

    .line 111
    const-string v13, "Failed to start async flow"

    const/16 v15, 0x8

    const/16 v16, 0x0

    const/4 v14, 0x0

    .line 112
    invoke-direct/range {v10 .. v16}, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$ErrorResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v10

    .line 113
    :cond_13b
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 115
    :cond_141
    sget-object v6, Lcom/example/dispatcher_client/FlowPreDispatcher;->Companion:Lcom/example/dispatcher_client/FlowPreDispatcher$Companion;

    invoke-virtual {v0}, Lcom/transsion/aicore/nexusflow/FlowConfig;->getParams()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/example/dispatcher_client/FlowPreDispatcher$Companion;->isInterceptFlowParams(Landroid/os/Bundle;)Z

    move-result v6

    if-eqz v6, :cond_1a2

    .line 116
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Local-Route] Intercepting SYNC flow: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v9, v5}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_161
    .catch Landroid/os/DeadObjectException; {:try_start_42 .. :try_end_161} :catch_64
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_161} :catch_61
    .catch Ljava/lang/Error; {:try_start_42 .. :try_end_161} :catch_5e
    .catchall {:try_start_42 .. :try_end_161} :catchall_5b

    .line 121
    :try_start_161
    iget-object v3, v1, Lcom/transsion/aicore/nexusflow/NexusFlow;->context:Landroid/content/Context;

    invoke-virtual {v4, v3}, Lcom/transsion/aicore/nexusflow/d;->b(Landroid/content/Context;)Lcom/example/dispatcher_client/FlowPreDispatcher;

    move-result-object v3

    .line 122
    iget-object v4, v1, Lcom/transsion/aicore/nexusflow/NexusFlow;->context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/transsion/aicore/nexusflow/FlowConfig;->getParams()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, v4, v0}, Lcom/example/dispatcher_client/FlowPreDispatcher;->dispatchSync(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v11

    .line 124
    new-instance v10, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$SyncResult;

    .line 127
    iget-object v13, v1, Lcom/transsion/aicore/nexusflow/NexusFlow;->instanceId:Ljava/lang/String;

    .line 128
    const-string v0, "success"

    invoke-virtual {v11, v0, v7}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    const/16 v16, 0x10

    const/16 v17, 0x0

    const/4 v15, 0x0

    .line 129
    invoke-direct/range {v10 .. v17}, Lcom/transsion/aicore/nexusflow/FlowInvokeResult$SyncResult;-><init>(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_186
    .catch Ljava/lang/Exception; {:try_start_161 .. :try_end_186} :catch_187
    .catch Ljava/lang/Error; {:try_start_161 .. :try_end_186} :catch_5e
    .catchall {:try_start_161 .. :try_end_186} :catchall_5b

    return-object v10

    :catch_187
    move-exception v0

    .line 136
    :try_start_188
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Local Sync Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v12, v0}, Lcom/transsion/aicore/nexusflow/NexusFlow;->createErrorResult(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/aicore/nexusflow/FlowInvokeResult$ErrorResult;

    move-result-object v0

    return-object v0

    .line 139
    :cond_1a2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    .line 140
    invoke-virtual {v5}, Lcom/transsion/aicore/nexusflow/a;->c()Z

    move-result v6

    .line 142
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[SYNC_DEBUG] Executing SYNC flow for flowId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v9, v7}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[SYNC_DEBUG] isMainThread: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", isServiceBound: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 146
    invoke-virtual {v3, v9, v7}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_1f0

    if-nez v6, :cond_1f0

    .line 155
    const-string v4, "[SYNC_DEBUG] Executing sync flow on main thread with unbound service"

    .line 156
    invoke-virtual {v3, v9, v4}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-direct {v1, v0, v5}, Lcom/transsion/aicore/nexusflow/NexusFlow;->executeSyncFlowInternal(Lcom/transsion/aicore/nexusflow/FlowConfig;Lcom/transsion/aicore/nexusflow/a;)Lcom/transsion/aicore/nexusflow/FlowInvokeResult;

    move-result-object v0

    return-object v0

    .line 167
    :cond_1f0
    const-string v4, "[SYNC_DEBUG] Executing sync flow on background thread or with bound service"

    .line 168
    invoke-virtual {v3, v9, v4}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-direct {v1, v0, v5}, Lcom/transsion/aicore/nexusflow/NexusFlow;->executeSyncFlowInternal(Lcom/transsion/aicore/nexusflow/FlowConfig;Lcom/transsion/aicore/nexusflow/a;)Lcom/transsion/aicore/nexusflow/FlowInvokeResult;

    move-result-object v0
    :try_end_1f9
    .catch Landroid/os/DeadObjectException; {:try_start_188 .. :try_end_1f9} :catch_64
    .catch Ljava/lang/Exception; {:try_start_188 .. :try_end_1f9} :catch_61
    .catch Ljava/lang/Error; {:try_start_188 .. :try_end_1f9} :catch_5e
    .catchall {:try_start_188 .. :try_end_1f9} :catchall_5b

    return-object v0

    .line 173
    :goto_1fa
    sget-object v1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Safe execution failed with Throwable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v9, v3, v0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_265

    .line 174
    :goto_215
    sget-object v1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Safe execution failed with Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v9, v3, v0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_265

    .line 175
    :goto_230
    sget-object v1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Safe execution failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v9, v3, v0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_265

    .line 176
    :goto_24b
    sget-object v1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Safe execution failed due to DeadObjectException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v9, v3, v0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_265
    return-object v2
.end method

.method public final setConnectionCallbacks(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    const-string v1, "Setting connection callbacks."

    const-string v6, "NexusFlow"

    invoke-virtual {v0, v6, v1}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v1, Lcom/transsion/aicore/nexusflow/SafeExecutor;->INSTANCE:Lcom/transsion/aicore/nexusflow/SafeExecutor;

    .line 3
    :try_start_b
    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/NexusFlow;->context:Landroid/content/Context;

    if-nez p0, :cond_26

    .line 4
    const-string v1, "NexusFlow"

    const-string v2, "Context is null, cannot set callbacks."

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e$default(Lcom/transsion/aicore/nexusflow/utils/NFLog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_41

    :catchall_1a
    move-exception v0

    move-object p0, v0

    goto :goto_44

    :catch_1d
    move-exception v0

    move-object p0, v0

    goto :goto_5f

    :catch_20
    move-exception v0

    move-object p0, v0

    goto :goto_7a

    :catch_23
    move-exception v0

    move-object p0, v0

    goto :goto_95

    .line 7
    :cond_26
    sget-object v1, Lcom/transsion/aicore/nexusflow/d;->a:Lcom/transsion/aicore/nexusflow/d;

    invoke-virtual {v1, p0}, Lcom/transsion/aicore/nexusflow/d;->a(Landroid/content/Context;)Lcom/transsion/aicore/nexusflow/a;

    move-result-object p0

    .line 8
    const-string v1, "Setting connection callbacks on FlowManager"

    invoke-virtual {v0, v6, v1}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    const-string v1, "FlowManager"

    const-string v2, "setConnectionCallbacks called"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/a;->n:Lkotlin/jvm/functions/Function0;

    .line 11
    iput-object p2, p0, Lcom/transsion/aicore/nexusflow/a;->o:Lkotlin/jvm/functions/Function1;

    .line 12
    const-string p0, "Connection callbacks set successfully"

    invoke-virtual {v0, v6, p0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :goto_41
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_43
    .catch Landroid/os/DeadObjectException; {:try_start_b .. :try_end_43} :catch_23
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_43} :catch_20
    .catch Ljava/lang/Error; {:try_start_b .. :try_end_43} :catch_1d
    .catchall {:try_start_b .. :try_end_43} :catchall_1a

    return-void

    .line 14
    :goto_44
    sget-object p1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Safe execution failed with Throwable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v6, p2, p0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_af

    .line 15
    :goto_5f
    sget-object p1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Safe execution failed with Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v6, p2, p0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_af

    .line 16
    :goto_7a
    sget-object p1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Safe execution failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v6, p2, p0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_af

    .line 17
    :goto_95
    sget-object p1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Safe execution failed due to DeadObjectException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v6, p2, p0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_af
    return-void
.end method

.method public final startStreaming(Lcom/transsion/aicore/nexusflow/FlowConfig;)Lcom/transsion/aicore/nexusflow/utils/Streamer;
    .registers 10

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {p1}, Lcom/transsion/aicore/nexusflow/FlowConfig;->getFlowId()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startStreaming called with config flowId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NexusFlow"

    invoke-virtual {v1, v2, v0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/NexusFlow;->context:Landroid/content/Context;

    const/4 v7, 0x0

    if-nez v0, :cond_31

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 3
    const-string v2, "NexusFlow"

    const-string v3, "Context is null."

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e$default(Lcom/transsion/aicore/nexusflow/utils/NFLog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-object v7

    .line 8
    :cond_31
    invoke-virtual {p1}, Lcom/transsion/aicore/nexusflow/FlowConfig;->getExecutionMode()Lcom/transsion/aicore/nexusflow/ExecutionMode;

    move-result-object v0

    sget-object v3, Lcom/transsion/aicore/nexusflow/ExecutionMode;->ASYNC:Lcom/transsion/aicore/nexusflow/ExecutionMode;

    if-ne v0, v3, :cond_c3

    invoke-virtual {p1}, Lcom/transsion/aicore/nexusflow/FlowConfig;->getParams()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_c3

    const/4 v3, 0x0

    .line 9
    const-string v4, "streaming"

    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_c3

    .line 18
    invoke-virtual {p1}, Lcom/transsion/aicore/nexusflow/FlowConfig;->getParams()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 20
    invoke-virtual {p1}, Lcom/transsion/aicore/nexusflow/FlowConfig;->getFlowId()Ljava/lang/String;

    move-result-object v0

    .line 21
    sget-object v3, Lcom/transsion/aicore/nexusflow/d;->a:Lcom/transsion/aicore/nexusflow/d;

    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/NexusFlow;->context:Landroid/content/Context;

    invoke-virtual {v3, p0}, Lcom/transsion/aicore/nexusflow/d;->a(Landroid/content/Context;)Lcom/transsion/aicore/nexusflow/a;

    move-result-object p0

    .line 24
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating Streamer for flowId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    new-instance v3, Lcom/transsion/aicore/nexusflow/utils/Streamer;

    invoke-direct {v3, v0, p0}, Lcom/transsion/aicore/nexusflow/utils/Streamer;-><init>(Ljava/lang/String;Lcom/transsion/aicore/nexusflow/a;)V

    .line 28
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Starting flow for streaming config with flowId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Lcom/transsion/aicore/nexusflow/FlowConfig;->getCallback()Lcom/transsion/aicore/nexusflow/FlowCallback;

    move-result-object v4

    if-nez v4, :cond_94

    new-instance v4, Lcom/transsion/aicore/nexusflow/NexusFlow$c;

    invoke-direct {v4}, Lcom/transsion/aicore/nexusflow/NexusFlow$c;-><init>()V

    .line 32
    :cond_94
    invoke-virtual {p0, p1, v4}, Lcom/transsion/aicore/nexusflow/a;->a(Lcom/transsion/aicore/nexusflow/FlowConfig;Lcom/transsion/aicore/nexusflow/FlowCallback;)Ljava/lang/String;

    .line 71
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Transporting pipe to server for flowId: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {v3}, Lcom/transsion/aicore/nexusflow/utils/Streamer;->transportPipeToServer$ipc_business_v2Release()V

    .line 75
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Returning streamer for flowId: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_c3
    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 76
    const-string v2, "NexusFlow"

    const-string v3, "startStreaming can only be used with async, streaming configs."

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e$default(Lcom/transsion/aicore/nexusflow/utils/NFLog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-object v7
.end method

.method public final stop(Ljava/lang/String;)Z
    .registers 11

    const-string v0, "flowId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NexusFlow.stop called for flowId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "NexusFlow"

    invoke-virtual {v1, v7, v0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/transsion/aicore/nexusflow/SafeExecutor;->INSTANCE:Lcom/transsion/aicore/nexusflow/SafeExecutor;

    const/4 v8, 0x0

    .line 3
    :try_start_20
    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/NexusFlow;->context:Landroid/content/Context;

    if-nez v0, :cond_3c

    .line 4
    const-string v2, "NexusFlow"

    const-string v3, "Context is null, cannot stop flow"

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e$default(Lcom/transsion/aicore/nexusflow/utils/NFLog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return v8

    :catchall_2f
    move-exception v0

    move-object p0, v0

    goto :goto_71

    :catch_32
    move-exception v0

    move-object p0, v0

    goto :goto_8c

    :catch_35
    move-exception v0

    move-object p0, v0

    goto :goto_a7

    :catch_38
    move-exception v0

    move-object p0, v0

    goto/16 :goto_c2

    .line 8
    :cond_3c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping flow with flowId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v7, v0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    sget-object v0, Lcom/transsion/aicore/nexusflow/d;->a:Lcom/transsion/aicore/nexusflow/d;

    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/NexusFlow;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/transsion/aicore/nexusflow/d;->a(Landroid/content/Context;)Lcom/transsion/aicore/nexusflow/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/aicore/nexusflow/a;->f(Ljava/lang/String;)V

    .line 10
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Flow stopped successfully with flowId: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v7, p0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6f
    .catch Landroid/os/DeadObjectException; {:try_start_20 .. :try_end_6f} :catch_38
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_6f} :catch_35
    .catch Ljava/lang/Error; {:try_start_20 .. :try_end_6f} :catch_32
    .catchall {:try_start_20 .. :try_end_6f} :catchall_2f

    const/4 p0, 0x1

    return p0

    .line 11
    :goto_71
    sget-object p1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Safe execution failed with Throwable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v7, v0, p0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_dc

    .line 12
    :goto_8c
    sget-object p1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Safe execution failed with Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v7, v0, p0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_dc

    .line 13
    :goto_a7
    sget-object p1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Safe execution failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v7, v0, p0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_dc

    .line 14
    :goto_c2
    sget-object p1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Safe execution failed due to DeadObjectException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v7, v0, p0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_dc
    return v8
.end method

.method public final stopAll()V
    .registers 8

    .line 1
    sget-object v0, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/NexusFlow;->instanceId:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NexusFlow.stopAll called for instanceId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "NexusFlow"

    invoke-virtual {v0, v6, v1}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v1, Lcom/transsion/aicore/nexusflow/SafeExecutor;->INSTANCE:Lcom/transsion/aicore/nexusflow/SafeExecutor;

    .line 3
    :try_start_1c
    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/NexusFlow;->context:Landroid/content/Context;

    if-nez v1, :cond_39

    .line 4
    const-string v1, "NexusFlow"

    const-string v2, "Cannot stop all flows, context is null."

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e$default(Lcom/transsion/aicore/nexusflow/utils/NFLog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_81

    :catchall_2b
    move-exception v0

    move-object p0, v0

    goto :goto_84

    :catch_2e
    move-exception v0

    move-object p0, v0

    goto :goto_9f

    :catch_31
    move-exception v0

    move-object p0, v0

    goto/16 :goto_ba

    :catch_35
    move-exception v0

    move-object p0, v0

    goto/16 :goto_d5

    .line 7
    :cond_39
    sget-object v2, Lcom/transsion/aicore/nexusflow/d;->a:Lcom/transsion/aicore/nexusflow/d;

    invoke-virtual {v2, v1}, Lcom/transsion/aicore/nexusflow/d;->a(Landroid/content/Context;)Lcom/transsion/aicore/nexusflow/a;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/transsion/aicore/nexusflow/a;->b()Ljava/util/List;

    move-result-object v2

    .line 10
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " active flows to stop: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v6, v3}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 13
    const-string p0, "No active flows to stop"

    invoke-virtual {v0, v6, p0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_81

    .line 17
    :cond_6f
    const-string v2, "Stopping all flows"

    invoke-virtual {v0, v6, v2}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v1}, Lcom/transsion/aicore/nexusflow/a;->f()V

    .line 19
    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/NexusFlow;->instanceId:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/transsion/aicore/nexusflow/a;->b(Ljava/lang/String;)V

    .line 20
    const-string p0, "All flows stopped successfully"

    invoke-virtual {v0, v6, p0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    :goto_81
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_83
    .catch Landroid/os/DeadObjectException; {:try_start_1c .. :try_end_83} :catch_35
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_83} :catch_31
    .catch Ljava/lang/Error; {:try_start_1c .. :try_end_83} :catch_2e
    .catchall {:try_start_1c .. :try_end_83} :catchall_2b

    return-void

    .line 22
    :goto_84
    sget-object v0, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Safe execution failed with Throwable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v1, p0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_ef

    .line 23
    :goto_9f
    sget-object v0, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Safe execution failed with Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v1, p0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_ef

    .line 24
    :goto_ba
    sget-object v0, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Safe execution failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v1, p0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_ef

    .line 25
    :goto_d5
    sget-object v0, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Safe execution failed due to DeadObjectException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v1, p0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_ef
    return-void
.end method
