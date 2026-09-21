.class public final Lcom/transsion/aicore/nexusflow/FlowDispatcherClient$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;-><init>(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;


# direct methods
.method public constructor <init>(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;)V
    .registers 2

    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient$b;->a:Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;)V
    .registers 2

    .line 1
    # getter for: Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->isHandlingDisconnection:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {p0}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->access$isHandlingDisconnection$p(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 12

    .line 1
    sget-object v0, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient$b;->a:Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;

    # getter for: Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->access$getTAG$p(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceConnected called with name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient$b;->a:Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;

    # getter for: Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->isDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v1}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->access$isDestroyed$p(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 3
    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient$b;->a:Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;

    # getter for: Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;
    invoke-static {p0}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->access$getTAG$p(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "Service connected, but client is already destroyed. Ignoring."

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->w$default(Lcom/transsion/aicore/nexusflow/utils/NFLog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    .line 7
    :cond_37
    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient$b;->a:Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;

    # getter for: Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->access$getTAG$p(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service connected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 9
    :try_start_52
    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient$b;->a:Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;

    # getter for: Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->bindStartTime:J
    invoke-static {v1}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->access$getBindStartTime$p(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_9d

    .line 10
    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient$b;->a:Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v2, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient$b;->a:Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;

    # getter for: Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->bindStartTime:J
    invoke-static {v2}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->access$getBindStartTime$p(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-virtual {v1, v5, v6}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->setLastBindDuration(J)V

    .line 11
    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient$b;->a:Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;

    # getter for: Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->access$getTAG$p(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient$b;->a:Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;

    invoke-virtual {v2}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->getLastBindDuration()J

    move-result-wide v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Metric] Bind service took: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "ms"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient$b;->a:Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;

    invoke-static {v1, v3, v4}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->access$setBindStartTime$p(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;J)V

    goto :goto_9d

    :catch_99
    move-exception v0

    move-object p2, v0

    goto/16 :goto_1b8

    .line 14
    :cond_9d
    :goto_9d
    invoke-static {p2}, Lcom/transsion/aicore/nexusflow/IFlowDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/aicore/nexusflow/IFlowDispatcher;

    move-result-object v1

    .line 15
    iget-object v2, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient$b;->a:Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;

    # getter for: Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->access$getTAG$p(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Linking to binder death recipient"

    invoke-virtual {v0, v2, v3}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_b7

    .line 16
    iget-object v2, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient$b;->a:Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;

    # getter for: Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->deathRecipient:Landroid/os/IBinder$DeathRecipient;
    invoke-static {v2}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->access$getDeathRecipient$p(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v2

    invoke-interface {p2, v2, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 17
    :cond_b7
    iget-object p2, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient$b;->a:Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;

    # getter for: Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;
    invoke-static {p2}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->access$getTAG$p(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "Registering disconnect callback"

    invoke-virtual {v0, p2, v2}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object p2, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient$b;->a:Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;

    # getter for: Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->disconnectCallback:Lcom/transsion/aicore/nexusflow/FlowDispatcherClient$d;
    invoke-static {p2}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->access$getDisconnectCallback$p(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;)Lcom/transsion/aicore/nexusflow/FlowDispatcherClient$d;

    move-result-object p2

    invoke-interface {v1, p2}, Lcom/transsion/aicore/nexusflow/IFlowDispatcher;->registerDisconnectCallback(Lcom/transsion/aicore/nexusflow/IDisconnectCallback;)V

    .line 20
    iget-object p2, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient$b;->a:Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;

    # getter for: Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {p2}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->access$getLock$p(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p2

    iget-object v2, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient$b;->a:Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_d6} :catch_99

    .line 22
    :try_start_d6
    invoke-static {v2, v1}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->access$setService$p(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;Lcom/transsion/aicore/nexusflow/IFlowDispatcher;)V

    const/4 v1, 0x1

    .line 23
    invoke-static {v2, v1}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->access$setBound$p(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;Z)V

    .line 25
    # getter for: Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->access$getHandler$p(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient$b$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient$b$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;)V

    const-wide/16 v5, 0x1f4

    .line 26
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 30
    # getter for: Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->isBindingInternal:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v2}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->access$isBindingInternal$p(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 32
    # getter for: Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->access$getTAG$p(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;)Ljava/lang/String;

    move-result-object v3

    .line 33
    # getter for: Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->isBound:Z
    invoke-static {v2}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->access$isBound$p(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;)Z

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connection state updated: isBound="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 34
    invoke-virtual {v0, v3, v2}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_110
    .catchall {:try_start_d6 .. :try_end_110} :catchall_1b3

    .line 39
    :try_start_110
    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 55
    iget-object p2, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient$b;->a:Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;

    # getter for: Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->hasInitCallbackFired:Z
    invoke-static {p2}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->access$getHasInitCallbackFired$p(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;)Z

    move-result p2

    if-nez p2, :cond_1d3

    .line 56
    iget-object p2, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient$b;->a:Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;

    invoke-static {p2, v1}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->access$setHasInitCallbackFired$p(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;Z)V

    .line 58
    iget-object p2, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient$b;->a:Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;

    # getter for: Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;
    invoke-static {p2}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->access$getTAG$p(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "Executing onInitSuccess callback"

    invoke-virtual {v0, p2, v1}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    sget-object p2, Lcom/transsion/aicore/nexusflow/SafeExecutor;->INSTANCE:Lcom/transsion/aicore/nexusflow/SafeExecutor;

    iget-object p2, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient$b;->a:Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;

    # getter for: Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;
    invoke-static {p2}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->access$getTAG$p(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient$b;->a:Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;
    :try_end_135
    .catch Ljava/lang/Exception; {:try_start_110 .. :try_end_135} :catch_99

    :try_start_135
    invoke-virtual {v0}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->getOnInitSuccess()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    if-eqz v0, :cond_1d3

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_13e
    .catch Landroid/os/DeadObjectException; {:try_start_135 .. :try_end_13e} :catch_145
    .catch Ljava/lang/Exception; {:try_start_135 .. :try_end_13e} :catch_143
    .catch Ljava/lang/Error; {:try_start_135 .. :try_end_13e} :catch_141
    .catchall {:try_start_135 .. :try_end_13e} :catchall_13f

    return-void

    :catchall_13f
    move-exception v0

    goto :goto_147

    :catch_141
    move-exception v0

    goto :goto_162

    :catch_143
    move-exception v0

    goto :goto_17d

    :catch_145
    move-exception v0

    goto :goto_198

    .line 60
    :goto_147
    :try_start_147
    sget-object v1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Safe execution failed with Throwable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v2, v0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1d3

    .line 61
    :goto_162
    sget-object v1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Safe execution failed with Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v2, v0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1d3

    .line 62
    :goto_17d
    sget-object v1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Safe execution failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v2, v0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1d3

    .line 63
    :goto_198
    sget-object v1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Safe execution failed due to DeadObjectException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v2, v0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1d3

    :catchall_1b3
    move-exception v0

    .line 64
    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
    :try_end_1b8
    .catch Ljava/lang/Exception; {:try_start_147 .. :try_end_1b8} :catch_99

    .line 87
    :goto_1b8
    sget-object v0, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient$b;->a:Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;

    # getter for: Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->access$getTAG$p(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed during onServiceConnected setup"

    invoke-virtual {v0, v1, v2, p2}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    iget-object p2, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient$b;->a:Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;

    # getter for: Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->isBindingInternal:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {p2}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->access$isBindingInternal$p(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 89
    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient$b;->a:Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;

    # invokes: Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->handleServiceDisconnection()V
    invoke-static {p0}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->access$handleServiceDisconnection(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;)V

    :cond_1d3
    :goto_1d3
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 8

    .line 1
    sget-object v0, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient$b;->a:Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;

    # getter for: Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->access$getTAG$p(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service disconnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->w$default(Lcom/transsion/aicore/nexusflow/utils/NFLog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 2
    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient$b;->a:Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;

    # invokes: Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->handleServiceDisconnection()V
    invoke-static {p0}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->access$handleServiceDisconnection(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;)V

    return-void
.end method
