.class public final Lkotlinx/coroutines/DefaultExecutorKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DefaultDelay:Lkotlinx/coroutines/Delay;

.field private static final defaultMainDelayOptIn:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 7
    const-string v0, "kotlinx.coroutines.main.delay"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lkotlinx/coroutines/internal/SystemPropsKt;->systemProp(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lkotlinx/coroutines/DefaultExecutorKt;->defaultMainDelayOptIn:Z

    .line 10
    invoke-static {}, Lkotlinx/coroutines/DefaultExecutorKt;->initializeDefaultDelay()Lkotlinx/coroutines/Delay;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/DefaultExecutorKt;->DefaultDelay:Lkotlinx/coroutines/Delay;

    return-void
.end method

.method public static final getDefaultDelay()Lkotlinx/coroutines/Delay;
    .registers 1

    .line 10
    sget-object v0, Lkotlinx/coroutines/DefaultExecutorKt;->DefaultDelay:Lkotlinx/coroutines/Delay;

    return-object v0
.end method

.method public static synthetic getDefaultDelay$annotations()V
    .registers 0

    return-void
.end method

.method private static final initializeDefaultDelay()Lkotlinx/coroutines/Delay;
    .registers 2

    .line 14
    sget-boolean v0, Lkotlinx/coroutines/DefaultExecutorKt;->defaultMainDelayOptIn:Z

    if-nez v0, :cond_7

    sget-object v0, Lkotlinx/coroutines/DefaultExecutor;->INSTANCE:Lkotlinx/coroutines/DefaultExecutor;

    return-object v0

    .line 15
    :cond_7
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    .line 21
    invoke-static {v0}, Lkotlinx/coroutines/internal/MainDispatchersKt;->isMissing(Lkotlinx/coroutines/MainCoroutineDispatcher;)Z

    move-result v1

    if-nez v1, :cond_19

    instance-of v1, v0, Lkotlinx/coroutines/Delay;

    if-nez v1, :cond_16

    goto :goto_19

    :cond_16
    check-cast v0, Lkotlinx/coroutines/Delay;

    return-object v0

    :cond_19
    :goto_19
    sget-object v0, Lkotlinx/coroutines/DefaultExecutor;->INSTANCE:Lkotlinx/coroutines/DefaultExecutor;

    return-object v0
.end method
