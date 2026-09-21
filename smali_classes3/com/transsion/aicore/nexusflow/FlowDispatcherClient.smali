.class public final Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/aicore/nexusflow/FlowDispatcherClient$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/transsion/aicore/nexusflow/FlowDispatcherClient$a;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private bindStartTime:J

.field private final conn:Lcom/transsion/aicore/nexusflow/FlowDispatcherClient$b;

.field private final context:Landroid/content/Context;

.field private final deathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private final disconnectCallback:Lcom/transsion/aicore/nexusflow/FlowDispatcherClient$d;

.field private final disconnectListener:Lkotlin/jvm/functions/Function0;

.field private final handler:Landroid/os/Handler;

.field private hasInitCallbackFired:Z

.field private final isBindingInternal:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile isBound:Z

.field private final isDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isHandlingDisconnection:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile lastBindDuration:J

.field private final lastBindRequestTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private onInitSuccess:Lkotlin/jvm/functions/Function0;

.field private volatile service:Lcom/transsion/aicore/nexusflow/IFlowDispatcher;

.field private final serviceCallbackExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public static synthetic $r8$lambda$CTCuoCkFH0WGlHDy_MSFviZY4is(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->deathRecipient$lambda$9(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dNuMhiWxf1A2RCyrewbz0qq-_Gs(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->startBindingProcess$lambda$14(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;)V

    return-void
.end method

.method public static synthetic $r8$lambda$km7csH6Bzjz0bJ5NTrjGdkI0PLE(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;)Lkotlin/Unit;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->destroy$lambda$5(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$uYIioKJDJMsFJw1N0S-NpG7upI4(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->startBindingProcess$lambda$14$lambda$13(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zT7CA_TXp1P9no0d9C87gUV2fww(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->serviceCallbackExecutor$lambda$1(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient$a;

    invoke-direct {v0}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient$a;-><init>()V

    sput-object v0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->Companion:Lcom/transsion/aicore/nexusflow/FlowDispatcherClient$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .registers 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "TAG"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->context:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->onInitSuccess:Lkotlin/jvm/functions/Function0;

    .line 5
    iput-object p4, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->disconnectListener:Lkotlin/jvm/functions/Function0;

    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->isDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->isHandlingDisconnection:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->isBindingInternal:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 p2, 0x0

    invoke-direct {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->lastBindRequestTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 13
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 p1, -0x1

    .line 14
    iput-wide p1, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->lastBindDuration:J

    .line 15
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->handler:Landroid/os/Handler;

    .line 19
    new-instance p1, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient$$ExternalSyntheticLambda1;-><init>()V

    .line 20
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    const-string p2, "newSingleThreadExecutor(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->serviceCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    .line 259
    new-instance p1, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient$b;

    invoke-direct {p1, p0}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient$b;-><init>(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;)V

    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->conn:Lcom/transsion/aicore/nexusflow/FlowDispatcherClient$b;

    .line 316
    new-instance p1, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;)V

    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 321
    new-instance p1, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient$d;

    invoke-direct {p1, p0}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient$d;-><init>(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;)V

    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->disconnectCallback:Lcom/transsion/aicore/nexusflow/FlowDispatcherClient$d;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 8

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_6

    .line 322
    const-string p2, "FlowDispatcherClient"

    :cond_6
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_c

    move-object p3, v0

    :cond_c
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_11

    move-object p4, v0

    .line 323
    :cond_11
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;-><init>(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final synthetic access$getBindStartTime$p(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->bindStartTime:J

    return-wide v0
.end method

.method public static final synthetic access$getDeathRecipient$p(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;)Landroid/os/IBinder$DeathRecipient;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method public static final synthetic access$getDisconnectCallback$p(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;)Lcom/transsion/aicore/nexusflow/FlowDispatcherClient$d;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->disconnectCallback:Lcom/transsion/aicore/nexusflow/FlowDispatcherClient$d;

    return-object p0
.end method

.method public static final synthetic access$getHandler$p(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;)Landroid/os/Handler;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$getHasInitCallbackFired$p(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->hasInitCallbackFired:Z

    return p0
.end method

.method public static final synthetic access$getLock$p(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;)Ljava/util/concurrent/locks/ReentrantLock;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method public static final synthetic access$getTAG$p(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$handleServiceDisconnection(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->handleServiceDisconnection()V

    return-void
.end method

.method public static final synthetic access$isBindingInternal$p(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->isBindingInternal:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic access$isBound$p(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->isBound:Z

    return p0
.end method

.method public static final synthetic access$isDestroyed$p(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->isDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic access$isHandlingDisconnection$p(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->isHandlingDisconnection:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic access$setBindStartTime$p(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->bindStartTime:J

    return-void
.end method

.method public static final synthetic access$setBound$p(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->isBound:Z

    return-void
.end method

.method public static final synthetic access$setHasInitCallbackFired$p(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->hasInitCallbackFired:Z

    return-void
.end method

.method public static final synthetic access$setService$p(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;Lcom/transsion/aicore/nexusflow/IFlowDispatcher;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->service:Lcom/transsion/aicore/nexusflow/IFlowDispatcher;

    return-void
.end method

.method private static final deathRecipient$lambda$9(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;)V
    .registers 7

    .line 1
    sget-object v0, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "Binder died! Service process has terminated."

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->w$default(Lcom/transsion/aicore/nexusflow/utils/NFLog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 2
    invoke-direct {p0}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->handleServiceDisconnection()V

    return-void
.end method

.method private static final destroy$lambda$5(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;)Lkotlin/Unit;
    .registers 7

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 4
    :try_start_4
    invoke-virtual {p0}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->unbindService()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_12

    :catch_8
    move-exception v2

    .line 6
    sget-object v3, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    iget-object v4, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;

    const-string v5, "Error during unbind"

    invoke-virtual {v3, v4, v5, v2}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    :goto_12
    invoke-direct {p0}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->shutdownExecutorService()V

    .line 10
    sget-object v2, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FlowDispatcherClient resources released. Cost: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p0, v0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final getClientAppInfo()Ljava/lang/String;
    .registers 6

    .line 1
    sget-object v0, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;

    const-string v2, "getClientAppInfo called"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/transsion/aicore/nexusflow/SafeExecutor;->INSTANCE:Lcom/transsion/aicore/nexusflow/SafeExecutor;

    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;

    .line 3
    :try_start_d
    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->context:Landroid/content/Context;

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v2, 0x0

    .line 6
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 7
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 9
    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v3

    .line 10
    sget-object p0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 11
    const-string p0, "%s (Version: %s, Code: %d)"

    .line 14
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x3

    .line 15
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "format(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3c
    .catch Landroid/os/DeadObjectException; {:try_start_d .. :try_end_3c} :catch_43
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_3c} :catch_41
    .catch Ljava/lang/Error; {:try_start_d .. :try_end_3c} :catch_3f
    .catchall {:try_start_d .. :try_end_3c} :catchall_3d

    return-object p0

    :catchall_3d
    move-exception p0

    goto :goto_45

    :catch_3f
    move-exception p0

    goto :goto_60

    :catch_41
    move-exception p0

    goto :goto_7b

    :catch_43
    move-exception p0

    goto :goto_96

    .line 16
    :goto_45
    sget-object v1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Safe execution failed with Throwable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2, p0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b0

    .line 17
    :goto_60
    sget-object v1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Safe execution failed with Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2, p0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b0

    .line 18
    :goto_7b
    sget-object v1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Safe execution failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2, p0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b0

    .line 19
    :goto_96
    sget-object v1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Safe execution failed due to DeadObjectException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2, p0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_b0
    const-string p0, "Unknown App"

    return-object p0
.end method

.method private final handleRemoteException(Ljava/lang/Exception;Ljava/lang/String;Lcom/transsion/aicore/nexusflow/FlowResultCallback;)V
    .registers 11

    .line 1
    sget-object v0, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote exception during \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    instance-of v1, p1, Landroid/os/DeadObjectException;

    if-eqz v1, :cond_47

    .line 5
    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service has died during operation: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e$default(Lcom/transsion/aicore/nexusflow/utils/NFLog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    if-eqz p3, :cond_43

    .line 7
    const-string p1, "Service disconnected unexpectedly"

    const/16 p2, -0x3e9

    invoke-direct {p0, p3, p1, p2}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->notifyError(Lcom/transsion/aicore/nexusflow/FlowResultCallback;Ljava/lang/String;I)V

    .line 14
    :cond_43
    invoke-direct {p0}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->handleServiceDisconnection()V

    return-void

    .line 16
    :cond_47
    instance-of v1, p1, Landroid/os/RemoteException;

    if-eqz v1, :cond_6d

    .line 17
    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote communication failed during operation: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e$default(Lcom/transsion/aicore/nexusflow/utils/NFLog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    if-eqz p3, :cond_a5

    .line 19
    const-string p1, "Flow execution failed"

    const/4 p2, -0x3

    invoke-direct {p0, p3, p1, p2}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->notifyError(Lcom/transsion/aicore/nexusflow/FlowResultCallback;Ljava/lang/String;I)V

    return-void

    .line 27
    :cond_6d
    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected error during operation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e$default(Lcom/transsion/aicore/nexusflow/utils/NFLog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    if-eqz p3, :cond_a5

    .line 31
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Flow execution failed: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p3

    .line 32
    invoke-static/range {v1 .. v6}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->notifyError$default(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;Lcom/transsion/aicore/nexusflow/FlowResultCallback;Ljava/lang/String;IILjava/lang/Object;)V

    :cond_a5
    return-void
.end method

.method public static synthetic handleRemoteException$default(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;Ljava/lang/Exception;Ljava/lang/String;Lcom/transsion/aicore/nexusflow/FlowResultCallback;ILjava/lang/Object;)V
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    const/4 p3, 0x0

    .line 1
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->handleRemoteException(Ljava/lang/Exception;Ljava/lang/String;Lcom/transsion/aicore/nexusflow/FlowResultCallback;)V

    return-void
.end method

.method private final handleServiceDisconnection()V
    .registers 8

    .line 1
    sget-object v0, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;

    const-string v2, "handleServiceDisconnection called"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->isHandlingDisconnection:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 6
    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;

    const-string v1, "Disconnection is already being handled. Ignoring subsequent call."

    invoke-virtual {v0, p0, v1}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 10
    :cond_1b
    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->isDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 11
    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->isHandlingDisconnection:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 12
    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;

    const-string v1, "Ignoring disconnection, client is destroyed."

    invoke-virtual {v0, p0, v1}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 15
    :cond_30
    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "Handling service disconnection."

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->w$default(Lcom/transsion/aicore/nexusflow/utils/NFLog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 17
    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 18
    :try_start_3f
    invoke-direct {p0}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->resetConnectionState()V

    .line 19
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_44
    .catchall {:try_start_3f .. :try_end_44} :catchall_db

    .line 20
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 23
    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->isBindingInternal:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 25
    sget-object v1, Lcom/transsion/aicore/nexusflow/SafeExecutor;->INSTANCE:Lcom/transsion/aicore/nexusflow/SafeExecutor;

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;

    .line 26
    :try_start_50
    const-string v2, "Executing disconnectListener callback"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->disconnectListener:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_d1

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_5c
    .catch Landroid/os/DeadObjectException; {:try_start_50 .. :try_end_5c} :catch_64
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_5c} :catch_62
    .catch Ljava/lang/Error; {:try_start_50 .. :try_end_5c} :catch_60
    .catchall {:try_start_50 .. :try_end_5c} :catchall_5e

    goto/16 :goto_d1

    :catchall_5e
    move-exception v0

    goto :goto_66

    :catch_60
    move-exception v0

    goto :goto_81

    :catch_62
    move-exception v0

    goto :goto_9c

    :catch_64
    move-exception v0

    goto :goto_b7

    .line 28
    :goto_66
    sget-object v2, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Safe execution failed with Throwable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3, v0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d1

    .line 29
    :goto_81
    sget-object v2, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Safe execution failed with Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3, v0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d1

    .line 30
    :goto_9c
    sget-object v2, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Safe execution failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3, v0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d1

    .line 31
    :goto_b7
    sget-object v2, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Safe execution failed due to DeadObjectException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3, v0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    :cond_d1
    :goto_d1
    sget-object v0, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;

    const-string v1, "Scheduling reconnection"

    invoke-virtual {v0, p0, v1}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_db
    move-exception v0

    move-object p0, v0

    .line 33
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method private final notifyError(Lcom/transsion/aicore/nexusflow/FlowResultCallback;Ljava/lang/String;I)V
    .registers 12

    .line 1
    const-string v1, "FlowResultCallback"

    sget-object v2, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyError called with errorMessage: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", errorCode: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p0, v0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object p0, Lcom/transsion/aicore/nexusflow/SafeExecutor;->INSTANCE:Lcom/transsion/aicore/nexusflow/SafeExecutor;

    if-nez p1, :cond_31

    const/4 v6, 0x4

    const/4 v7, 0x0

    .line 3
    const-string v3, "FlowResultCallback"

    const-string v4, "Callback is null, skipping execution"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->w$default(Lcom/transsion/aicore/nexusflow/utils/NFLog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    .line 4
    :cond_31
    :try_start_31
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "] "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/aicore/nexusflow/FlowResultCallback;->onError(Ljava/lang/String;)V
    :try_end_4d
    .catch Landroid/os/DeadObjectException; {:try_start_31 .. :try_end_4d} :catch_57
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_4d} :catch_54
    .catch Ljava/lang/Error; {:try_start_31 .. :try_end_4d} :catch_51
    .catchall {:try_start_31 .. :try_end_4d} :catchall_4e

    return-void

    :catchall_4e
    move-exception v0

    move-object p0, v0

    goto :goto_5a

    :catch_51
    move-exception v0

    move-object p0, v0

    goto :goto_75

    :catch_54
    move-exception v0

    move-object p0, v0

    goto :goto_90

    :catch_57
    move-exception v0

    move-object p0, v0

    goto :goto_ab

    .line 5
    :goto_5a
    sget-object p1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    .line 7
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Safe callback execution failed with Throwable: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 8
    invoke-virtual {p1, v1, p2, p0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c5

    .line 9
    :goto_75
    sget-object p1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    .line 11
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Safe callback execution failed with Error: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 12
    invoke-virtual {p1, v1, p2, p0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c5

    .line 13
    :goto_90
    sget-object p1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Safe callback execution failed: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2, p0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c5

    .line 14
    :goto_ab
    sget-object p1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    .line 16
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Safe callback execution failed due to DeadObjectException: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 17
    invoke-virtual {p1, v1, p2, p0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_c5
    return-void
.end method

.method public static synthetic notifyError$default(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;Lcom/transsion/aicore/nexusflow/FlowResultCallback;Ljava/lang/String;IILjava/lang/Object;)V
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    const/4 p3, -0x3

    .line 1
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->notifyError(Lcom/transsion/aicore/nexusflow/FlowResultCallback;Ljava/lang/String;I)V

    return-void
.end method

.method private final resetConnectionState()V
    .registers 7

    .line 1
    sget-object v0, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;

    const-string v2, "resetConnectionState called"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->service:Lcom/transsion/aicore/nexusflow/IFlowDispatcher;

    const/4 v2, 0x0

    if-eqz v1, :cond_37

    const/4 v1, 0x0

    .line 5
    :try_start_f
    iget-object v3, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;

    const-string v4, "Unlinking binder from death recipient"

    invoke-virtual {v0, v3, v4}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget-object v0, Lcom/transsion/aicore/nexusflow/SafeExecutor;->INSTANCE:Lcom/transsion/aicore/nexusflow/SafeExecutor;

    iget-object v3, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->service:Lcom/transsion/aicore/nexusflow/IFlowDispatcher;

    if-eqz v3, :cond_23

    invoke-interface {v3}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_24

    :catch_21
    move-exception v0

    goto :goto_2c

    :cond_23
    move-object v3, v1

    .line 7
    :goto_24
    iget-object v4, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    iget-object v5, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v3, v4, v2, v5}, Lcom/transsion/aicore/nexusflow/SafeExecutor;->safeUnlinkToDeath(Landroid/os/IBinder;Landroid/os/IBinder$DeathRecipient;ILjava/lang/String;)Z
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2b} :catch_21

    goto :goto_35

    .line 9
    :goto_2c
    sget-object v3, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    iget-object v4, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;

    const-string v5, "Error unlinking binder to death"

    invoke-virtual {v3, v4, v5, v0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    :goto_35
    iput-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->service:Lcom/transsion/aicore/nexusflow/IFlowDispatcher;

    .line 13
    :cond_37
    iput-boolean v2, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->isBound:Z

    .line 14
    sget-object v0, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->isBound:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connection state reset: isBound="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final serviceCallbackExecutor$lambda$1(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FlowDispatcher-Service-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method

.method private final shutdownExecutorService()V
    .registers 6

    .line 1
    sget-object v0, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;

    const-string v2, "shutdownExecutorService called"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->serviceCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 4
    :try_start_e
    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->serviceCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x2

    invoke-interface {v1, v3, v4, v2}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 5
    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;

    const-string v2, "Forcing shutdown of executor service"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->serviceCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_26
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_26} :catch_27

    :cond_26
    return-void

    .line 9
    :catch_27
    sget-object v0, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;

    const-string v2, "Interrupted while waiting for executor service termination"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->serviceCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 11
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method private final startBindingProcess()V
    .registers 8

    .line 1
    sget-object v0, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;

    const-string v2, "startBindingProcess called"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 7
    iget-object v3, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->lastBindRequestTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    sub-long v3, v1, v3

    const-wide/16 v5, 0x7d0

    cmp-long v3, v3, v5

    if-gez v3, :cond_26

    .line 10
    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 11
    const-string v2, "Bind request too frequent. Ignored. (Interval < 2000ms)"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->w$default(Lcom/transsion/aicore/nexusflow/utils/NFLog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    .line 17
    :cond_26
    iget-object v3, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->lastBindRequestTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 18
    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->isBindingInternal:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 19
    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "Binding is already in progress (Internal check). Ignoring request."

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->w$default(Lcom/transsion/aicore/nexusflow/utils/NFLog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    .line 22
    :cond_3f
    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 23
    :try_start_44
    iget-boolean v2, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->isBound:Z

    if-nez v2, :cond_64

    iget-object v2, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->isDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_51

    goto :goto_64

    .line 31
    :cond_51
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_53
    .catchall {:try_start_44 .. :try_end_53} :catchall_61

    .line 32
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 45
    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->serviceCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_61
    move-exception v0

    move-object p0, v0

    goto :goto_94

    .line 46
    :cond_64
    :goto_64
    :try_start_64
    iget-object v2, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;

    .line 47
    iget-boolean v3, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->isBound:Z

    iget-object v4, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->isDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping bind request. isBound="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isDestroyed="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 48
    invoke-virtual {v0, v2, v3}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->isBindingInternal:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_90
    .catchall {:try_start_64 .. :try_end_90} :catchall_61

    .line 53
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 54
    :goto_94
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method private static final startBindingProcess$lambda$14(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;)V
    .registers 14

    .line 1
    sget-object v0, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;

    const-string v2, "Executing binding process in background thread"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 4
    sget-object v2, Lcom/transsion/aicore/nexusflow/FlowConstant;->INSTANCE:Lcom/transsion/aicore/nexusflow/FlowConstant;

    invoke-virtual {v2}, Lcom/transsion/aicore/nexusflow/FlowConstant;->getServerPkg()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {v2}, Lcom/transsion/aicore/nexusflow/FlowConstant;->getServerClz()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v6, 0x0

    if-nez v4, :cond_20

    goto :goto_26

    :cond_20
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_36

    .line 7
    :goto_26
    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "Server package or class is not configured."

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e$default(Lcom/transsion/aicore/nexusflow/utils/NFLog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 9
    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->isBindingInternal:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 12
    :cond_36
    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 13
    iget-object v2, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Target service component set: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    sget-object v2, Lcom/transsion/aicore/nexusflow/SafeExecutor;->INSTANCE:Lcom/transsion/aicore/nexusflow/SafeExecutor;

    iget-object v2, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;

    .line 18
    :try_start_5c
    const-string v3, "bindService called"

    invoke-virtual {v0, v2, v3}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object v3, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;

    const-string v4, "================ NexusFlow Binding Request ================"

    invoke-virtual {v0, v3, v4}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object v3, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;

    const-string v4, "2.0.0-202601161428-RELEASE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SDK Version    : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object v3, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;

    const-string v4, "2026-01-16T14:28:47Z"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Build Time     : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object v3, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->getClientAppInfo()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Client App     : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object v3, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_c7

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    goto :goto_c8

    :catchall_bf
    move-exception v0

    goto :goto_e6

    :catch_c1
    move-exception v0

    goto :goto_101

    :catch_c3
    move-exception v0

    goto :goto_11c

    :catch_c5
    move-exception v0

    goto :goto_137

    :cond_c7
    const/4 v4, 0x0

    .line 24
    :goto_c8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Target Service : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object v3, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;

    const-string v4, "========================================================="

    invoke-virtual {v0, v3, v4}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_e5
    .catch Landroid/os/DeadObjectException; {:try_start_5c .. :try_end_e5} :catch_c5
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_e5} :catch_c3
    .catch Ljava/lang/Error; {:try_start_5c .. :try_end_e5} :catch_c1
    .catchall {:try_start_5c .. :try_end_e5} :catchall_bf

    goto :goto_151

    .line 27
    :goto_e6
    sget-object v3, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Safe execution failed with Throwable: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4, v0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_151

    .line 28
    :goto_101
    sget-object v3, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Safe execution failed with Error: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4, v0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_151

    .line 29
    :goto_11c
    sget-object v3, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Safe execution failed: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4, v0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_151

    .line 30
    :goto_137
    sget-object v3, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Safe execution failed due to DeadObjectException: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4, v0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    :goto_151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->bindStartTime:J

    const-wide/16 v2, -0x1

    .line 32
    iput-wide v2, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->lastBindDuration:J

    .line 35
    :try_start_15b
    sget-object v0, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    iget-object v2, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;

    const-string v3, "Calling context.bindService"

    invoke-virtual {v0, v2, v3}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v2, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->serviceCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v4, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->conn:Lcom/transsion/aicore/nexusflow/FlowDispatcherClient$b;

    const/4 v5, 0x1

    invoke-virtual {v2, v1, v5, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;ILjava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z

    move-result v1

    .line 37
    iget-object v2, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindService returned: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_185
    .catch Ljava/lang/Exception; {:try_start_15b .. :try_end_185} :catch_186

    goto :goto_191

    :catch_186
    move-exception v0

    .line 40
    sget-object v1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    iget-object v2, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;

    const-string v3, "Exception during bindService call"

    invoke-virtual {v1, v2, v3, v0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v1, v6

    :goto_191
    if-nez v1, :cond_1b0

    .line 44
    sget-object v7, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    iget-object v8, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;

    const/4 v11, 0x4

    const/4 v12, 0x0

    const-string v9, "bindService returned false. Scheduling reconnect."

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e$default(Lcom/transsion/aicore/nexusflow/utils/NFLog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 46
    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->isBindingInternal:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 47
    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;)V

    const-wide/16 v2, 0xbb8

    .line 48
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1b0
    return-void
.end method

.method private static final startBindingProcess$lambda$14$lambda$13(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->isDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_17

    .line 2
    sget-object v1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    iget-object v2, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v3, "Reporting bind failure to listeners after delay."

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->w$default(Lcom/transsion/aicore/nexusflow/utils/NFLog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 3
    invoke-direct {p0}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->handleServiceDisconnection()V

    :cond_17
    return-void
.end method


# virtual methods
.method public final bindService()V
    .registers 4

    .line 1
    sget-object v0, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;

    const-string v2, "External bindService call received."

    invoke-virtual {v0, v1, v2}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->startBindingProcess()V

    return-void
.end method

.method public final destroy(Z)V
    .registers 15

    .line 1
    sget-object v0, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destroy called, isAsync: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->isDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 3
    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;

    const-string v2, "Destroying FlowDispatcherClient..."

    invoke-virtual {v0, v1, v2}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 7
    :try_start_2e
    iget-object v2, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;

    const-string v3, "Removing all pending callbacks and messages"

    invoke-virtual {v0, v2, v3}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v2, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->handler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 9
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3d
    .catchall {:try_start_2e .. :try_end_3d} :catchall_78

    .line 10
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 16
    new-instance v6, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient$$ExternalSyntheticLambda4;

    invoke-direct {v6, p0}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;)V

    if-eqz p1, :cond_63

    .line 30
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v7

    new-instance v10, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient$c;

    invoke-direct {v10, v6, v3}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient$c;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 33
    iget-object p1, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;

    const-string v1, "Destroy task submitted to background thread."

    invoke-virtual {v0, p1, v1}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_70

    .line 36
    :cond_63
    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "Destroy task executing on CURRENT thread (Sync mode)."

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->w$default(Lcom/transsion/aicore/nexusflow/utils/NFLog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 37
    invoke-interface {v6}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 40
    :goto_70
    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;

    const-string p1, "FlowDispatcherClient destroyed successfully."

    invoke-virtual {v0, p0, p1}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_78
    move-exception v0

    move-object p0, v0

    .line 41
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0

    :cond_7e
    return-void
.end method

.method public final getLastBindDuration()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->lastBindDuration:J

    return-wide v0
.end method

.method public final getOnInitSuccess()Lkotlin/jvm/functions/Function0;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->onInitSuccess:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final setLastBindDuration(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->lastBindDuration:J

    return-void
.end method

.method public final setOnInitSuccess(Lkotlin/jvm/functions/Function0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->onInitSuccess:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final stopFlow(Ljava/lang/String;)V
    .registers 11

    const-string v0, "flowId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopFlow called for flowId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->isDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_29

    iget-boolean v0, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->isBound:Z

    if-nez v0, :cond_2c

    :cond_29
    move-object v3, p0

    goto/16 :goto_e0

    .line 8
    :cond_2c
    sget-object v0, Lcom/transsion/aicore/nexusflow/SafeExecutor;->INSTANCE:Lcom/transsion/aicore/nexusflow/SafeExecutor;

    iget-object v2, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;

    .line 10
    :try_start_30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling stopFlow on service for flowId: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->service:Lcom/transsion/aicore/nexusflow/IFlowDispatcher;

    if-eqz v0, :cond_df

    invoke-interface {v0, p1}, Lcom/transsion/aicore/nexusflow/IFlowDispatcher;->stopFlow(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_4d} :catch_55
    .catch Ljava/lang/Error; {:try_start_30 .. :try_end_4d} :catch_52
    .catchall {:try_start_30 .. :try_end_4d} :catchall_4f

    goto/16 :goto_df

    :catchall_4f
    move-exception v0

    move-object p0, v0

    goto :goto_74

    :catch_52
    move-exception v0

    move-object p0, v0

    goto :goto_8f

    :catch_55
    move-exception v0

    move-object p1, v0

    move-object v4, p1

    .line 13
    :try_start_58
    sget-object p1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;

    const-string v1, "Exception during stopFlow"

    invoke-virtual {p1, v0, v1, v4}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    const-string v5, "stopFlow"

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->handleRemoteException$default(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;Ljava/lang/Exception;Ljava/lang/String;Lcom/transsion/aicore/nexusflow/FlowResultCallback;ILjava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_6c
    .catch Landroid/os/DeadObjectException; {:try_start_58 .. :try_end_6c} :catch_71
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_6c} :catch_6e
    .catch Ljava/lang/Error; {:try_start_58 .. :try_end_6c} :catch_52
    .catchall {:try_start_58 .. :try_end_6c} :catchall_4f

    goto/16 :goto_df

    :catch_6e
    move-exception v0

    move-object p0, v0

    goto :goto_aa

    :catch_71
    move-exception v0

    move-object p0, v0

    goto :goto_c5

    .line 15
    :goto_74
    sget-object p1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Safe execution failed with Throwable: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0, p0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_df

    .line 16
    :goto_8f
    sget-object p1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Safe execution failed with Error: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0, p0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_df

    .line 17
    :goto_aa
    sget-object p1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Safe execution failed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0, p0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_df

    .line 18
    :goto_c5
    sget-object p1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Safe execution failed due to DeadObjectException: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0, p0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_df
    :goto_df
    return-void

    .line 19
    :goto_e0
    iget-object v2, v3, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v3, "Cannot stop flow, client destroyed or service not available."

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->w$default(Lcom/transsion/aicore/nexusflow/utils/NFLog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method public final transportStream(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .registers 12

    const-string v0, "flowId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audioStream"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "transportStream called for flowId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->isDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2f

    iget-boolean v0, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->isBound:Z

    if-nez v0, :cond_32

    :cond_2f
    move-object v3, p0

    goto/16 :goto_e7

    .line 6
    :cond_32
    sget-object v0, Lcom/transsion/aicore/nexusflow/SafeExecutor;->INSTANCE:Lcom/transsion/aicore/nexusflow/SafeExecutor;

    iget-object v2, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;

    .line 8
    :try_start_36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling transportStream on service for flowId: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->service:Lcom/transsion/aicore/nexusflow/IFlowDispatcher;

    if-eqz v0, :cond_e6

    invoke-interface {v0, p1, p2}, Lcom/transsion/aicore/nexusflow/IFlowDispatcher;->transportStream(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_53} :catch_5b
    .catch Ljava/lang/Error; {:try_start_36 .. :try_end_53} :catch_58
    .catchall {:try_start_36 .. :try_end_53} :catchall_55

    goto/16 :goto_e6

    :catchall_55
    move-exception v0

    move-object p0, v0

    goto :goto_7b

    :catch_58
    move-exception v0

    move-object p0, v0

    goto :goto_96

    :catch_5b
    move-exception v0

    move-object p1, v0

    move-object v4, p1

    .line 11
    :try_start_5e
    sget-object p1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    iget-object p2, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;

    const-string v0, "Exception during transportStream"

    invoke-virtual {p1, p2, v0, v4}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    const-string/jumbo v5, "transportStream"

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->handleRemoteException$default(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;Ljava/lang/Exception;Ljava/lang/String;Lcom/transsion/aicore/nexusflow/FlowResultCallback;ILjava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_73
    .catch Landroid/os/DeadObjectException; {:try_start_5e .. :try_end_73} :catch_78
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_73} :catch_75
    .catch Ljava/lang/Error; {:try_start_5e .. :try_end_73} :catch_58
    .catchall {:try_start_5e .. :try_end_73} :catchall_55

    goto/16 :goto_e6

    :catch_75
    move-exception v0

    move-object p0, v0

    goto :goto_b1

    :catch_78
    move-exception v0

    move-object p0, v0

    goto :goto_cc

    .line 13
    :goto_7b
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

    invoke-virtual {p1, v2, p2, p0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e6

    .line 14
    :goto_96
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

    invoke-virtual {p1, v2, p2, p0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e6

    .line 15
    :goto_b1
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

    invoke-virtual {p1, v2, p2, p0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e6

    .line 16
    :goto_cc
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

    invoke-virtual {p1, v2, p2, p0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_e6
    :goto_e6
    return-void

    .line 17
    :goto_e7
    iget-object v2, v3, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v3, "Cannot transport stream, client destroyed or service not available."

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->w$default(Lcom/transsion/aicore/nexusflow/utils/NFLog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method public final triggerFlow(Landroid/os/Bundle;Lcom/transsion/aicore/nexusflow/FlowResultCallback;)V
    .registers 10

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "triggerFlow called with params: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->isDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 3
    iget-object v2, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v3, "Client has been destroyed"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e$default(Lcom/transsion/aicore/nexusflow/utils/NFLog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 4
    const-string p1, "Client has been destroyed"

    const/4 v0, -0x3

    invoke-direct {p0, p2, p1, v0}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->notifyError(Lcom/transsion/aicore/nexusflow/FlowResultCallback;Ljava/lang/String;I)V

    return-void

    .line 12
    :cond_3c
    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->service:Lcom/transsion/aicore/nexusflow/IFlowDispatcher;

    .line 15
    iget-boolean v2, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->isBound:Z

    if-eqz v2, :cond_f9

    if-nez v0, :cond_5a

    goto/16 :goto_f9

    .line 25
    :cond_5a
    sget-object v2, Lcom/transsion/aicore/nexusflow/SafeExecutor;->INSTANCE:Lcom/transsion/aicore/nexusflow/SafeExecutor;

    iget-object v2, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;

    .line 27
    :try_start_5e
    const-string v3, "Calling launchAiTask on service"

    invoke-virtual {v1, v2, v3}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    new-instance v1, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient$e;

    invoke-direct {v1, p0, p2}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient$e;-><init>(Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;Lcom/transsion/aicore/nexusflow/FlowResultCallback;)V

    invoke-interface {v0, p1, v1}, Lcom/transsion/aicore/nexusflow/IFlowDispatcher;->launchAiTask(Landroid/os/Bundle;Lcom/transsion/aicore/nexusflow/IFlowCallback;)V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_6b} :catch_72
    .catch Ljava/lang/Error; {:try_start_5e .. :try_end_6b} :catch_6f
    .catchall {:try_start_5e .. :try_end_6b} :catchall_6c

    goto :goto_83

    :catchall_6c
    move-exception v0

    move-object p0, v0

    goto :goto_8d

    :catch_6f
    move-exception v0

    move-object p0, v0

    goto :goto_a8

    :catch_72
    move-exception v0

    move-object p1, v0

    .line 62
    :try_start_74
    sget-object v0, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;

    const-string v3, "Exception during triggerFlow"

    invoke-virtual {v0, v1, v3, p1}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    const-string/jumbo v0, "triggerFlow"

    invoke-direct {p0, p1, v0, p2}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->handleRemoteException(Ljava/lang/Exception;Ljava/lang/String;Lcom/transsion/aicore/nexusflow/FlowResultCallback;)V

    .line 65
    :goto_83
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_85
    .catch Landroid/os/DeadObjectException; {:try_start_74 .. :try_end_85} :catch_8a
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_85} :catch_87
    .catch Ljava/lang/Error; {:try_start_74 .. :try_end_85} :catch_6f
    .catchall {:try_start_74 .. :try_end_85} :catchall_6c

    goto/16 :goto_f8

    :catch_87
    move-exception v0

    move-object p0, v0

    goto :goto_c3

    :catch_8a
    move-exception v0

    move-object p0, v0

    goto :goto_de

    .line 66
    :goto_8d
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

    invoke-virtual {p1, v2, p2, p0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f8

    .line 67
    :goto_a8
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

    invoke-virtual {p1, v2, p2, p0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f8

    .line 68
    :goto_c3
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

    invoke-virtual {p1, v2, p2, p0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f8

    .line 69
    :goto_de
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

    invoke-virtual {p1, v2, p2, p0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_f8
    return-void

    .line 70
    :cond_f9
    :goto_f9
    iget-object v2, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v3, "Service is not bound for operation: triggerFlow"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e$default(Lcom/transsion/aicore/nexusflow/utils/NFLog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 71
    const-string p1, "Service is not bound"

    const/4 v0, -0x2

    invoke-direct {p0, p2, p1, v0}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->notifyError(Lcom/transsion/aicore/nexusflow/FlowResultCallback;Ljava/lang/String;I)V

    return-void
.end method

.method public final unbindService()V
    .registers 7

    .line 1
    sget-object v0, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "unbindService called"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;

    const-string v2, "Unbind service requested."

    invoke-virtual {v0, v1, v2}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 6
    :try_start_16
    iget-boolean v2, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->isBound:Z

    if-nez v2, :cond_28

    .line 7
    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;

    const-string v2, "Service already unbound or not bound yet."

    invoke-virtual {v0, p0, v2}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_25

    .line 8
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_25
    move-exception p0

    goto/16 :goto_dc

    .line 10
    :cond_28
    :try_start_28
    iget-object v2, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;

    const-string v3, "Unbinding service from context"

    invoke-virtual {v0, v2, v3}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v2, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->conn:Lcom/transsion/aicore/nexusflow/FlowDispatcherClient$b;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 12
    iget-object v2, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->service:Lcom/transsion/aicore/nexusflow/IFlowDispatcher;

    .line 13
    invoke-direct {p0}, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->resetConnectionState()V
    :try_end_3b
    .catchall {:try_start_28 .. :try_end_3b} :catchall_25

    .line 14
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 27
    sget-object v1, Lcom/transsion/aicore/nexusflow/SafeExecutor;->INSTANCE:Lcom/transsion/aicore/nexusflow/SafeExecutor;

    iget-object v1, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;

    .line 29
    :try_start_42
    const-string v3, "Unregistering disconnect callback"

    invoke-virtual {v0, v1, v3}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_d2

    .line 30
    iget-object v0, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->disconnectCallback:Lcom/transsion/aicore/nexusflow/FlowDispatcherClient$d;

    invoke-interface {v2, v0}, Lcom/transsion/aicore/nexusflow/IFlowDispatcher;->unregisterDisconnectCallback(Lcom/transsion/aicore/nexusflow/IDisconnectCallback;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_50} :catch_56
    .catch Ljava/lang/Error; {:try_start_42 .. :try_end_50} :catch_54
    .catchall {:try_start_42 .. :try_end_50} :catchall_52

    goto/16 :goto_d2

    :catchall_52
    move-exception v0

    goto :goto_67

    :catch_54
    move-exception v0

    goto :goto_82

    :catch_56
    move-exception v0

    .line 32
    :try_start_57
    sget-object v2, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    .line 33
    iget-object v3, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;

    .line 34
    const-string v4, "Exception during unregisterDisconnectCallback, service might have died."

    .line 35
    invoke-virtual {v2, v3, v4, v0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_62
    .catch Landroid/os/DeadObjectException; {:try_start_57 .. :try_end_62} :catch_65
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_62} :catch_63
    .catch Ljava/lang/Error; {:try_start_57 .. :try_end_62} :catch_54
    .catchall {:try_start_57 .. :try_end_62} :catchall_52

    goto :goto_d2

    :catch_63
    move-exception v0

    goto :goto_9d

    :catch_65
    move-exception v0

    goto :goto_b8

    .line 36
    :goto_67
    sget-object v2, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Safe execution failed with Throwable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3, v0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d2

    .line 37
    :goto_82
    sget-object v2, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Safe execution failed with Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3, v0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d2

    .line 38
    :goto_9d
    sget-object v2, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Safe execution failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3, v0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d2

    .line 39
    :goto_b8
    sget-object v2, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Safe execution failed due to DeadObjectException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3, v0}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    :cond_d2
    :goto_d2
    sget-object v0, Lcom/transsion/aicore/nexusflow/utils/NFLog;->INSTANCE:Lcom/transsion/aicore/nexusflow/utils/NFLog;

    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/FlowDispatcherClient;->TAG:Ljava/lang/String;

    const-string v1, "Service unbound and connection state reset."

    invoke-virtual {v0, p0, v1}, Lcom/transsion/aicore/nexusflow/utils/NFLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 41
    :goto_dc
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method
