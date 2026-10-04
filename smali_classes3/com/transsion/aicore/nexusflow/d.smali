.class public final Lcom/transsion/aicore/nexusflow/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/transsion/aicore/nexusflow/d;

.field public static final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static volatile c:Lcom/transsion/aicore/nexusflow/a;

.field public static volatile d:Ljava/lang/ref/WeakReference;

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

.method public static final a(Lkotlin/jvm/functions/Function1;Landroid/content/Context;)Lkotlin/Unit;
    .registers 5

    .line 70
    sget-object v0, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    const-string v1, "FlowManagerFactory"

    const-string v2, "Executing initialization action."

    invoke-virtual {v0, v1, v2}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    sget-object v0, Lcom/transsion/aicore/nexusflow/d;->a:Lcom/transsion/aicore/nexusflow/d;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/aicore/nexusflow/d;->a(Landroid/content/Context;)Lcom/transsion/aicore/nexusflow/a;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final a(ZLcom/transsion/aicore/nexusflow/a;)Lkotlin/Unit;
    .registers 7

    .line 74
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

    .line 77
    invoke-virtual {p1, p0}, Lcom/transsion/aicore/nexusflow/a;->a(Z)V

    .line 79
    sget-object p0, Lcom/transsion/aicore/nexusflow/d;->a:Lcom/transsion/aicore/nexusflow/d;

    monitor-enter p0

    .line 80
    :try_start_1e
    sget-object v1, Lcom/transsion/aicore/nexusflow/d;->c:Lcom/transsion/aicore/nexusflow/a;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2c

    .line 81
    sput-object v1, Lcom/transsion/aicore/nexusflow/d;->c:Lcom/transsion/aicore/nexusflow/a;

    goto :goto_2c

    :catchall_2a
    move-exception p1

    goto :goto_4e

    .line 83
    :cond_2c
    :goto_2c
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2e
    .catchall {:try_start_1e .. :try_end_2e} :catchall_2a

    .line 84
    monitor-exit p0

    .line 92
    sget-object p0, Lcom/transsion/aicore/nexusflow/d;->e:Ljava/lang/Object;

    monitor-enter p0

    .line 93
    :try_start_32
    sget-object v2, Lcom/transsion/aicore/nexusflow/d;->g:Lkotlin/jvm/functions/Function0;

    .line 94
    sput-object v1, Lcom/transsion/aicore/nexusflow/d;->g:Lkotlin/jvm/functions/Function0;

    .line 95
    sget-object v3, Lcom/transsion/aicore/nexusflow/d;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 96
    const-string v3, "FlowManagerFactory"

    const-string v4, "DeInit process completed. Flag cleared."

    invoke-virtual {v0, v3, v4}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_43
    .catchall {:try_start_32 .. :try_end_43} :catchall_4b

    .line 97
    monitor-exit p0

    if-eqz v2, :cond_4a

    .line 103
    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-object p1

    :cond_4a
    return-object v1

    :catchall_4b
    move-exception p1

    .line 104
    monitor-exit p0

    throw p1

    .line 105
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

    .line 44
    new-instance v0, Lcom/transsion/aicore/nexusflow/d$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p0}, Lcom/transsion/aicore/nexusflow/d$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;Landroid/content/Context;)V

    .line 50
    sget-object p0, Lcom/transsion/aicore/nexusflow/d;->e:Ljava/lang/Object;

    monitor-enter p0

    .line 51
    :try_start_12
    sget-object p1, Lcom/transsion/aicore/nexusflow/d;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_29

    .line 52
    sget-object p1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    const-string v1, "FlowManagerFactory"

    const-string v2, "DeInit in progress. Queuing the new init request."

    invoke-virtual {p1, v1, v2}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    sput-object v0, Lcom/transsion/aicore/nexusflow/d;->g:Lkotlin/jvm/functions/Function0;
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_27

    .line 55
    monitor-exit p0

    return-void

    :catchall_27
    move-exception p1

    goto :goto_30

    .line 57
    :cond_29
    :try_start_29
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2b
    .catchall {:try_start_29 .. :try_end_2b} :catchall_27

    .line 58
    monitor-exit p0

    .line 68
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void

    .line 69
    :goto_30
    monitor-exit p0

    throw p1
.end method

.method public static final a(Lkotlin/jvm/functions/Function0;)V
    .registers 1

    .line 106
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public static final declared-synchronized a(Z)V
    .registers 10

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

    .line 17
    :cond_38
    :try_start_38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Last instance is being destroyed. Starting full teardown process. isAsync="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 18
    const-string v2, "FlowManagerFactory"

    invoke-virtual {v3, v2, v0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    sget-object v0, Lcom/transsion/aicore/nexusflow/d;->a:Lcom/transsion/aicore/nexusflow/d;

    invoke-virtual {v0, p0}, Lcom/transsion/aicore/nexusflow/d;->b(Z)V
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


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;)Lcom/transsion/aicore/nexusflow/a;
    .registers 9

    monitor-enter p0

    if-eqz p1, :cond_13

    .line 23
    :try_start_3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/transsion/aicore/nexusflow/d;->d:Ljava/lang/ref/WeakReference;

    goto :goto_13

    :catchall_f
    move-exception v0

    move-object p1, v0

    goto/16 :goto_8f

    .line 25
    :cond_13
    :goto_13
    monitor-enter p0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_f

    .line 26
    :try_start_14
    sget-object v0, Lcom/transsion/aicore/nexusflow/d;->c:Lcom/transsion/aicore/nexusflow/a;
    :try_end_16
    .catchall {:try_start_14 .. :try_end_16} :catchall_28

    if-eqz v0, :cond_1b

    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_f

    monitor-exit p0

    return-object v0

    .line 28
    :cond_1b
    :try_start_1b
    sget-object v0, Lcom/transsion/aicore/nexusflow/d;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_7a

    goto :goto_2b

    :catchall_28
    move-exception v0

    move-object p1, v0

    goto :goto_8d

    :cond_2b
    :goto_2b
    const/4 v1, 0x0

    if-eqz p1, :cond_34

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    move-object v0, p1

    goto :goto_35

    :cond_34
    move-object v0, v1

    :goto_35
    if-nez v0, :cond_7a

    .line 30
    sget-object p1, Lcom/transsion/aicore/nexusflow/d;->a:Lcom/transsion/aicore/nexusflow/d;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_3c
    .catchall {:try_start_1b .. :try_end_3c} :catchall_28

    .line 31
    :try_start_3c
    const-string p1, "android.app.ActivityThread"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 32
    const-string v0, "currentApplication"

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1, v1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 33
    instance-of v0, p1, Landroid/content/Context;

    if-eqz v0, :cond_57

    check-cast p1, Landroid/content/Context;
    :try_end_52
    .catchall {:try_start_3c .. :try_end_52} :catchall_54

    move-object v1, p1

    goto :goto_57

    :catchall_54
    move-exception v0

    move-object p1, v0

    goto :goto_59

    :cond_57
    :goto_57
    move-object v0, v1

    goto :goto_63

    .line 35
    :goto_59
    :try_start_59
    sget-object v0, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    const-string v2, "FlowManagerFactory"

    const-string v3, "Unable to acquire application context via reflection"

    invoke-virtual {v0, v2, v3, p1}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_57

    :goto_63
    if-eqz v0, :cond_66

    goto :goto_7a

    .line 36
    :cond_66
    sget-object v1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    const-string v2, "FlowManagerFactory"

    const-string v3, "FlowManager not initialized and no context available."

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e$default(Lcom/transsion/aicore/nexusflow/utils/NFLog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 37
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "FlowManager not initialized. Please provide a context at least once."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_7a
    :goto_7a
    sget-object p1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    const-string v1, "FlowManagerFactory"

    const-string v2, "Creating a new singleton instance of FlowManager."

    invoke-virtual {p1, v1, v2}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    new-instance p1, Lcom/transsion/aicore/nexusflow/a;

    invoke-direct {p1, v0}, Lcom/transsion/aicore/nexusflow/a;-><init>(Landroid/content/Context;)V

    .line 42
    sput-object p1, Lcom/transsion/aicore/nexusflow/d;->c:Lcom/transsion/aicore/nexusflow/a;
    :try_end_8a
    .catchall {:try_start_59 .. :try_end_8a} :catchall_28

    .line 43
    :try_start_8a
    monitor-exit p0
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_f

    monitor-exit p0

    return-object p1

    :goto_8d
    :try_start_8d
    monitor-exit p0

    throw p1

    :goto_8f
    monitor-exit p0
    :try_end_90
    .catchall {:try_start_8d .. :try_end_90} :catchall_f

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

.method public final declared-synchronized b(Z)V
    .registers 9

    monitor-enter p0

    .line 6
    :try_start_1
    sget-object v0, Lcom/transsion/aicore/nexusflow/d;->c:Lcom/transsion/aicore/nexusflow/a;

    if-nez v0, :cond_16

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

    goto :goto_59

    .line 11
    :cond_16
    :try_start_16
    sget-object v1, Lcom/transsion/aicore/nexusflow/d;->e:Ljava/lang/Object;

    monitor-enter v1
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_13

    .line 12
    :try_start_19
    sget-object v2, Lcom/transsion/aicore/nexusflow/d;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 13
    sget-object v2, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    const-string v3, "FlowManagerFactory"

    const-string v4, "Setting DEINITIALIZING flag."

    invoke-virtual {v2, v3, v4}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 14
    sput-object v2, Lcom/transsion/aicore/nexusflow/d;->g:Lkotlin/jvm/functions/Function0;

    .line 18
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_31
    .catchall {:try_start_19 .. :try_end_31} :catchall_51

    .line 19
    :try_start_31
    monitor-exit v1

    .line 28
    new-instance v1, Lcom/transsion/aicore/nexusflow/d$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, v0}, Lcom/transsion/aicore/nexusflow/d$$ExternalSyntheticLambda1;-><init>(ZLcom/transsion/aicore/nexusflow/a;)V

    if-eqz p1, :cond_4c

    .line 53
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/transsion/aicore/nexusflow/d$$ExternalSyntheticLambda2;

    invoke-direct {v0, v1}, Lcom/transsion/aicore/nexusflow/d$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4a
    .catchall {:try_start_31 .. :try_end_4a} :catchall_13

    monitor-exit p0

    return-void

    .line 59
    :cond_4c
    :try_start_4c
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_13

    monitor-exit p0

    return-void

    :catchall_51
    move-exception v0

    move-object p1, v0

    goto :goto_57

    .line 60
    :cond_54
    :try_start_54
    monitor-exit v1
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_13

    monitor-exit p0

    return-void

    .line 61
    :goto_57
    :try_start_57
    monitor-exit v1

    throw p1

    :goto_59
    monitor-exit p0
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_13

    throw p1
.end method
