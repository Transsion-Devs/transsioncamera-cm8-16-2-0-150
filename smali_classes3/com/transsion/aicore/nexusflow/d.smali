.class public final Lcom/transsion/aicore/nexusflow/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/transsion/aicore/nexusflow/d;

.field public static final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static volatile c:Lcom/transsion/aicore/nexusflow/a;

.field public static volatile d:Landroid/content/Context;

.field public static final e:Ljava/lang/Object;

.field public static final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static g:Lkotlin/jvm/functions/Function0;

.field public static volatile h:Lcom/example/dispatcher_client/FlowPreDispatcher;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/transsion/aicore/nexusflow/d;

    invoke-direct {v0}, Lcom/transsion/aicore/nexusflow/d;-><init>()V

    sput-object v0, Lcom/transsion/aicore/nexusflow/d;->a:Lcom/transsion/aicore/nexusflow/d;

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/transsion/aicore/nexusflow/d;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/transsion/aicore/nexusflow/d;->e:Ljava/lang/Object;

    .line 10
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/transsion/aicore/nexusflow/d;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/os/Bundle;)Lkotlin/Unit;
    .registers 3

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    sget-object p0, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    const-string v0, "FlowManagerFactory"

    const-string v1, "Ignored server deInit callback in Sync mode."

    invoke-virtual {p0, v0, v1}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final a(Landroid/os/Handler;Ljava/lang/Runnable;Lkotlin/jvm/functions/Function0;Landroid/os/Bundle;)Lkotlin/Unit;
    .registers 5

    const-string v0, "result"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 101
    sget-object p0, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received server deInit confirmation. Result: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "FlowManagerFactory"

    invoke-virtual {p0, p3, p1}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 103
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final a(Lkotlin/jvm/functions/Function1;Landroid/content/Context;)Lkotlin/Unit;
    .registers 5

    .line 64
    sget-object v0, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    const-string v1, "FlowManagerFactory"

    const-string v2, "Executing initialization action."

    invoke-virtual {v0, v1, v2}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    sget-object v0, Lcom/transsion/aicore/nexusflow/d;->a:Lcom/transsion/aicore/nexusflow/d;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/aicore/nexusflow/d;->a(Landroid/content/Context;)Lcom/transsion/aicore/nexusflow/a;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final a(ZLcom/transsion/aicore/nexusflow/a;)Lkotlin/Unit;
    .registers 7

    .line 68
    sget-object v0, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Executing final client-side destruction. isAsync="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FlowManagerFactory"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1, p0}, Lcom/transsion/aicore/nexusflow/a;->a(Z)V

    .line 71
    sget-object p0, Lcom/transsion/aicore/nexusflow/d;->a:Lcom/transsion/aicore/nexusflow/d;

    monitor-enter p0

    .line 72
    :try_start_1e
    sget-object v1, Lcom/transsion/aicore/nexusflow/d;->c:Lcom/transsion/aicore/nexusflow/a;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2c

    .line 73
    sput-object v1, Lcom/transsion/aicore/nexusflow/d;->c:Lcom/transsion/aicore/nexusflow/a;

    goto :goto_2c

    :catchall_2a
    move-exception p1

    goto :goto_4e

    .line 75
    :cond_2c
    :goto_2c
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2e
    .catchall {:try_start_1e .. :try_end_2e} :catchall_2a

    .line 76
    monitor-exit p0

    .line 84
    sget-object p0, Lcom/transsion/aicore/nexusflow/d;->e:Ljava/lang/Object;

    monitor-enter p0

    .line 85
    :try_start_32
    sget-object v2, Lcom/transsion/aicore/nexusflow/d;->g:Lkotlin/jvm/functions/Function0;

    .line 86
    sput-object v1, Lcom/transsion/aicore/nexusflow/d;->g:Lkotlin/jvm/functions/Function0;

    .line 87
    sget-object v3, Lcom/transsion/aicore/nexusflow/d;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 88
    const-string v3, "FlowManagerFactory"

    const-string v4, "DeInit process completed. DEINITIALIZING flag cleared."

    invoke-virtual {v0, v3, v4}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_43
    .catchall {:try_start_32 .. :try_end_43} :catchall_4b

    .line 89
    monitor-exit p0

    if-eqz v2, :cond_4a

    .line 95
    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-object p1

    :cond_4a
    return-object v1

    :catchall_4b
    move-exception p1

    .line 96
    monitor-exit p0

    throw p1

    .line 97
    :goto_4e
    monitor-exit p0

    throw p1
.end method

.method public static a(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V
    .registers 5

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    new-instance v0, Lcom/transsion/aicore/nexusflow/d$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p0}, Lcom/transsion/aicore/nexusflow/d$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;Landroid/content/Context;)V

    .line 44
    sget-object p0, Lcom/transsion/aicore/nexusflow/d;->e:Ljava/lang/Object;

    monitor-enter p0

    .line 45
    :try_start_12
    sget-object p1, Lcom/transsion/aicore/nexusflow/d;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_29

    .line 46
    sget-object p1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    const-string v1, "FlowManagerFactory"

    const-string v2, "DeInit in progress. Queuing the new init request."

    invoke-virtual {p1, v1, v2}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    sput-object v0, Lcom/transsion/aicore/nexusflow/d;->g:Lkotlin/jvm/functions/Function0;
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_27

    .line 49
    monitor-exit p0

    return-void

    :catchall_27
    move-exception p1

    goto :goto_30

    .line 51
    :cond_29
    :try_start_29
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2b
    .catchall {:try_start_29 .. :try_end_2b} :catchall_27

    .line 52
    monitor-exit p0

    .line 62
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void

    .line 63
    :goto_30
    monitor-exit p0

    throw p1
.end method

.method public static final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 12

    const-class v1, Lcom/transsion/aicore/nexusflow/d;

    monitor-enter v1

    .line 1
    :try_start_3
    sget-object v0, Lcom/transsion/aicore/nexusflow/d;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    .line 2
    sget-object v3, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Instance count decremented. Remaining: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "FlowManagerFactory"

    invoke-virtual {v3, v5, v4}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-gtz v2, :cond_55

    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_38

    .line 7
    const-string v4, "FlowManagerFactory"

    const-string v5, "Destroy check passed, but new instances were created. Aborting destroy."

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->w$default(Lcom/transsion/aicore/nexusflow/utils/NFLog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_35

    monitor-exit v1

    return-void

    :catchall_35
    move-exception v0

    move-object p0, v0

    goto :goto_57

    .line 15
    :cond_38
    :try_start_38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Last instance is being destroyed. Starting full teardown process. isAsync="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FlowManagerFactory"

    invoke-virtual {v3, v2, v0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    sget-object v0, Lcom/transsion/aicore/nexusflow/d;->a:Lcom/transsion/aicore/nexusflow/d;

    invoke-virtual {v0, p0, p1, p2}, Lcom/transsion/aicore/nexusflow/d;->b(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_53
    .catchall {:try_start_38 .. :try_end_53} :catchall_35

    monitor-exit v1

    return-void

    :cond_55
    monitor-exit v1

    return-void

    :goto_57
    :try_start_57
    monitor-exit v1
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_35

    throw p0
.end method

.method public static final a(Lkotlin/jvm/functions/Function0;)V
    .registers 7

    .line 98
    sget-object v0, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "FlowManagerFactory"

    const-string v2, "Server deInit confirmation timed out. Forcing client-side cleanup."

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->w$default(Lcom/transsion/aicore/nexusflow/utils/NFLog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 99
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;)Lcom/transsion/aicore/nexusflow/a;
    .registers 9

    monitor-enter p0

    if-eqz p1, :cond_e

    .line 17
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/transsion/aicore/nexusflow/d;->d:Landroid/content/Context;

    goto :goto_e

    :catchall_a
    move-exception v0

    move-object p1, v0

    goto/16 :goto_81

    .line 19
    :cond_e
    :goto_e
    monitor-enter p0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_a

    .line 20
    :try_start_f
    sget-object v0, Lcom/transsion/aicore/nexusflow/d;->c:Lcom/transsion/aicore/nexusflow/a;
    :try_end_11
    .catchall {:try_start_f .. :try_end_11} :catchall_23

    if-eqz v0, :cond_16

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_a

    monitor-exit p0

    return-object v0

    .line 22
    :cond_16
    :try_start_16
    sget-object v0, Lcom/transsion/aicore/nexusflow/d;->d:Landroid/content/Context;

    if-nez v0, :cond_6c

    const/4 v1, 0x0

    if-eqz p1, :cond_26

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    move-object v0, p1

    goto :goto_27

    :catchall_23
    move-exception v0

    move-object p1, v0

    goto :goto_7f

    :cond_26
    move-object v0, v1

    :goto_27
    if-nez v0, :cond_6c

    .line 24
    sget-object p1, Lcom/transsion/aicore/nexusflow/d;->a:Lcom/transsion/aicore/nexusflow/d;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_2e
    .catchall {:try_start_16 .. :try_end_2e} :catchall_23

    .line 25
    :try_start_2e
    const-string p1, "android.app.ActivityThread"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 26
    const-string v0, "currentApplication"

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1, v1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 27
    instance-of v0, p1, Landroid/content/Context;

    if-eqz v0, :cond_49

    check-cast p1, Landroid/content/Context;
    :try_end_44
    .catchall {:try_start_2e .. :try_end_44} :catchall_46

    move-object v1, p1

    goto :goto_49

    :catchall_46
    move-exception v0

    move-object p1, v0

    goto :goto_4b

    :cond_49
    :goto_49
    move-object v0, v1

    goto :goto_55

    .line 29
    :goto_4b
    :try_start_4b
    sget-object v0, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    const-string v2, "FlowManagerFactory"

    const-string v3, "Unable to acquire application context via reflection"

    invoke-virtual {v0, v2, v3, p1}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_49

    :goto_55
    if-eqz v0, :cond_58

    goto :goto_6c

    .line 30
    :cond_58
    sget-object v1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    const-string v2, "FlowManagerFactory"

    const-string v3, "FlowManager not initialized and no context available."

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e$default(Lcom/transsion/aicore/nexusflow/utils/NFLog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 31
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "FlowManager not initialized. Please provide a context at least once."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 34
    :cond_6c
    :goto_6c
    sget-object p1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    const-string v1, "FlowManagerFactory"

    const-string v2, "Creating a new singleton instance of FlowManager."

    invoke-virtual {p1, v1, v2}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    new-instance p1, Lcom/transsion/aicore/nexusflow/a;

    invoke-direct {p1, v0}, Lcom/transsion/aicore/nexusflow/a;-><init>(Landroid/content/Context;)V

    .line 36
    sput-object p1, Lcom/transsion/aicore/nexusflow/d;->c:Lcom/transsion/aicore/nexusflow/a;
    :try_end_7c
    .catchall {:try_start_4b .. :try_end_7c} :catchall_23

    .line 37
    :try_start_7c
    monitor-exit p0
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_a

    monitor-exit p0

    return-object p1

    :goto_7f
    :try_start_7f
    monitor-exit p0

    throw p1

    :goto_81
    monitor-exit p0
    :try_end_82
    .catchall {:try_start_7f .. :try_end_82} :catchall_a

    throw p1
.end method

.method public final b(Landroid/content/Context;)Lcom/example/dispatcher_client/FlowPreDispatcher;
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/transsion/aicore/nexusflow/d;->h:Lcom/example/dispatcher_client/FlowPreDispatcher;

    if-nez v0, :cond_25

    monitor-enter p0

    .line 3
    :try_start_a
    sget-object v0, Lcom/transsion/aicore/nexusflow/d;->h:Lcom/example/dispatcher_client/FlowPreDispatcher;

    if-nez v0, :cond_21

    new-instance v0, Lcom/example/dispatcher_client/FlowPreDispatcher;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "getApplicationContext(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lcom/example/dispatcher_client/FlowPreDispatcher;-><init>(Landroid/content/Context;)V

    .line 4
    sput-object v0, Lcom/transsion/aicore/nexusflow/d;->h:Lcom/example/dispatcher_client/FlowPreDispatcher;
    :try_end_1e
    .catchall {:try_start_a .. :try_end_1e} :catchall_1f

    goto :goto_21

    :catchall_1f
    move-exception p1

    goto :goto_23

    .line 5
    :cond_21
    :goto_21
    monitor-exit p0

    return-object v0

    :goto_23
    monitor-exit p0

    throw p1

    :cond_25
    return-object v0
.end method

.method public final declared-synchronized b(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 12

    monitor-enter p0

    .line 6
    :try_start_1
    sget-object v0, Lcom/transsion/aicore/nexusflow/d;->c:Lcom/transsion/aicore/nexusflow/a;

    if-nez v0, :cond_17

    .line 7
    sget-object v1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    const-string v2, "FlowManagerFactory"

    const-string v3, "Destroy called but FlowManager is already null."

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->w$default(Lcom/transsion/aicore/nexusflow/utils/NFLog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-void

    :catchall_13
    move-exception v0

    move-object p1, v0

    goto/16 :goto_a2

    .line 12
    :cond_17
    :try_start_17
    sget-object v1, Lcom/transsion/aicore/nexusflow/d;->e:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_13

    .line 13
    :try_start_1a
    sget-object v2, Lcom/transsion/aicore/nexusflow/d;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_91

    .line 14
    sget-object v2, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    const-string v3, "FlowManagerFactory"

    const-string v4, "Setting DEINITIALIZING flag. New init requests will be queued."

    invoke-virtual {v2, v3, v4}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 15
    sput-object v3, Lcom/transsion/aicore/nexusflow/d;->g:Lkotlin/jvm/functions/Function0;

    .line 20
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_32
    .catchall {:try_start_1a .. :try_end_32} :catchall_8e

    .line 21
    :try_start_32
    monitor-exit v1

    .line 32
    new-instance v1, Lcom/transsion/aicore/nexusflow/d$$ExternalSyntheticLambda1;

    invoke-direct {v1, p3, v0}, Lcom/transsion/aicore/nexusflow/d$$ExternalSyntheticLambda1;-><init>(ZLcom/transsion/aicore/nexusflow/a;)V

    if-eqz p1, :cond_7f

    if-eqz p2, :cond_7f

    .line 54
    invoke-virtual {v0}, Lcom/transsion/aicore/nexusflow/a;->c()Z

    move-result v3

    if-eqz v3, :cond_7f

    if-eqz p3, :cond_68

    .line 58
    const-string p3, "FlowManagerFactory"

    const-string v3, "Async mode: Sending deInit request and WAITING for callback/timeout."

    invoke-virtual {v2, p3, v3}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {p3, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 61
    new-instance v2, Lcom/transsion/aicore/nexusflow/d$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Lcom/transsion/aicore/nexusflow/d$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function0;)V

    const-wide/16 v3, 0x1388

    .line 65
    invoke-virtual {p3, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 67
    new-instance v3, Lcom/transsion/aicore/nexusflow/d$$ExternalSyntheticLambda3;

    invoke-direct {v3, p3, v2, v1}, Lcom/transsion/aicore/nexusflow/d$$ExternalSyntheticLambda3;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, p2, p1, v3}, Lcom/transsion/aicore/nexusflow/a;->a(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    :try_end_66
    .catchall {:try_start_32 .. :try_end_66} :catchall_13

    monitor-exit p0

    return-void

    .line 77
    :cond_68
    :try_start_68
    const-string p3, "FlowManagerFactory"

    const-string v3, "Sync mode: Sending deInit request and IMMEDIATELY cleaning up local resources."

    invoke-virtual {v2, p3, v3}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    new-instance p3, Lcom/transsion/aicore/nexusflow/d$$ExternalSyntheticLambda4;

    invoke-direct {p3}, Lcom/transsion/aicore/nexusflow/d$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v0, p2, p1, p3}, Lcom/transsion/aicore/nexusflow/a;->a(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 85
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Unit;
    :try_end_7d
    .catchall {:try_start_68 .. :try_end_7d} :catchall_13

    monitor-exit p0

    return-void

    .line 89
    :cond_7f
    :try_start_7f
    const-string p1, "FlowManagerFactory"

    const-string p2, "Service not bound or no instanceId provided. Skipping server deInit call and cleaning up client-side directly."

    invoke-virtual {v2, p1, p2}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Unit;
    :try_end_8c
    .catchall {:try_start_7f .. :try_end_8c} :catchall_13

    monitor-exit p0

    return-void

    :catchall_8e
    move-exception v0

    move-object p1, v0

    goto :goto_a0

    .line 94
    :cond_91
    :try_start_91
    sget-object v2, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    const-string v3, "FlowManagerFactory"

    const-string v4, "DeInit already in progress. Ignoring duplicate request."

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->w$default(Lcom/transsion/aicore/nexusflow/utils/NFLog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    :try_end_9d
    .catchall {:try_start_91 .. :try_end_9d} :catchall_8e

    .line 95
    :try_start_9d
    monitor-exit v1
    :try_end_9e
    .catchall {:try_start_9d .. :try_end_9e} :catchall_13

    monitor-exit p0

    return-void

    .line 96
    :goto_a0
    :try_start_a0
    monitor-exit v1

    throw p1

    :goto_a2
    monitor-exit p0
    :try_end_a3
    .catchall {:try_start_a0 .. :try_end_a3} :catchall_13

    throw p1
.end method
